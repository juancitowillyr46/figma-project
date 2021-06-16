<?php


class CustomControllerOrder extends modRestController
{
    public function post()
    {
        $jwt = new SecurityToken($this->modx);

        $formData = $this->getProperties();

        try {

            $payload = (object) $jwt->verifyToken($this->request->headers);

            $userId = $payload->id;

            $dateNow = strtotime("now");

            $orderHeader = $formData['header'];
            $objOrder = $this->modx->newObject('Order');
            $objOrder->set('order_uuid', date('YmdHis'));
            $objOrder->set('product_id', (int)$orderHeader['productId']);
            $objOrder->set('order_quantity', (int) $orderHeader['orderQuantity']);
            $objOrder->set('order_total', $orderHeader['orderTotal']);
            $objOrder->set('order_timestamp', $orderHeader['orderTimeStamp']);
            $objOrder->set('createdon', $dateNow);
            $objOrder->set('createdby', $userId);

            $lst = array();
            $orderDetail = $formData['detail'];
            foreach ($orderDetail as $item) {
                $objOrderDetail = $this->modx->newObject('OrderDetail');
                $objOrderDetail->set('oder_detail_uuid', $item['orderId']);
                $objOrderDetail->set('order_size', $item['orderSize']);
                $objOrderDetail->set('order_color', $item['orderColor']);
                $objOrderDetail->set('order_price', $item['orderPrice']);
                $objOrderDetail->set('order_quantity', $item['orderQuantity']);
                $objOrderDetail->set('order_subtotal', $item['orderSubTotal']);
                $objOrderDetail->set('createdon', $dateNow);
                $objOrderDetail->set('createdby', $userId);
                $lst[] = $objOrderDetail;
            }

            $objOrder->addMany($lst, 'OrderDetail');

            $success = $objOrder->save();
            if($success) {
                $lastId = $objOrder->get('id');
                $orderHeader['id'] = $lastId;
            }

        } catch (Exception $e) {

            throw new Exception($e->getMessage(), 404);
        }

        $this->success('Ok', $formData, 200);
    }
}