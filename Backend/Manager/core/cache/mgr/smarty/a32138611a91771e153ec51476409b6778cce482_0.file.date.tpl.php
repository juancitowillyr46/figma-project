<?php
/* Smarty version 3.1.39, created on 2021-06-26 19:53:41
  from 'C:\xampp\htdocs\figma-project\Backend\Manager\manager\templates\default\element\tv\renders\properties\date.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_60d769a5dce6f6_68785077',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a32138611a91771e153ec51476409b6778cce482' => 
    array (
      0 => 'C:\\xampp\\htdocs\\figma-project\\Backend\\Manager\\manager\\templates\\default\\element\\tv\\renders\\properties\\date.tpl',
      1 => 1622192678,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_60d769a5dce6f6_68785077 (Smarty_Internal_Template $_smarty_tpl) {
?><div id="modx-tv-wprops-form<?php echo (($tmp = @$_smarty_tpl->tpl_vars['tv']->value)===null||$tmp==='' ? '' : $tmp);?>
"></div>


<?php echo '<script'; ?>
>
// <![CDATA[
var params = {
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['params']->value, 'v', false, 'k', 'p', array (
  'last' => true,
  'iteration' => true,
  'total' => true,
));
$_smarty_tpl->tpl_vars['v']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->do_else = false;
$_smarty_tpl->tpl_vars['__smarty_foreach_p']->value['iteration']++;
$_smarty_tpl->tpl_vars['__smarty_foreach_p']->value['last'] = $_smarty_tpl->tpl_vars['__smarty_foreach_p']->value['iteration'] === $_smarty_tpl->tpl_vars['__smarty_foreach_p']->value['total'];
?>
 '<?php echo $_smarty_tpl->tpl_vars['k']->value;?>
': '<?php echo strtr($_smarty_tpl->tpl_vars['v']->value, array("\\" => "\\\\", "'" => "\\'", "\"" => "\\\"", "\r" => "\\r", "\n" => "\\n", "</" => "<\/" ));?>
'<?php if (!(isset($_smarty_tpl->tpl_vars['__smarty_foreach_p']->value['last']) ? $_smarty_tpl->tpl_vars['__smarty_foreach_p']->value['last'] : null)) {?>,<?php }
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
};
var oc = {'change':{fn:function(){Ext.getCmp('modx-panel-tv').markDirty();},scope:this}};
MODx.load({
    xtype: 'panel'
    ,layout: 'form'
    ,autoHeight: true
    ,labelAlign: 'top'
    ,cls: 'form-with-labels'
    ,border: false
    ,items: [{
        xtype: 'textfield'
        ,fieldLabel: _('date_format')
        ,description: MODx.expandHelp ? '' : _('date_format_desc')
        ,name: 'prop_format'
        ,id: 'prop_format<?php echo (($tmp = @$_smarty_tpl->tpl_vars['tv']->value)===null||$tmp==='' ? '' : $tmp);?>
'
        ,value: params['format'] || '%A %d, %B %Y'
        ,listeners: oc
        ,anchor: '100%'
    },{
        xtype: MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'prop_format<?php echo (($tmp = @$_smarty_tpl->tpl_vars['tv']->value)===null||$tmp==='' ? '' : $tmp);?>
'
        ,html: _('date_format_desc')
        ,cls: 'desc-under'
    },{
        xtype: 'combo'
        ,fieldLabel: _('date_use_current')
        ,description: MODx.expandHelp ? '' : _('date_use_current_desc')
        ,name: 'prop_default'
        ,hiddenName: 'prop_default'
        ,id: 'prop_default<?php echo (($tmp = @$_smarty_tpl->tpl_vars['tv']->value)===null||$tmp==='' ? '' : $tmp);?>
'
        ,store: new Ext.data.SimpleStore({
            fields: ['v','d']
            ,data: [[1,_('yes')],[0,_('no')]]
        })
        ,displayField: 'd'
        ,valueField: 'v'
        ,mode: 'local'
        ,editable: false
        ,forceSelection: true
        ,typeAhead: false
        ,triggerAction: 'all'
        ,value: params['default'] || 'no'
        ,listeners: oc
        ,width: 200
    },{
        xtype: MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'prop_default<?php echo (($tmp = @$_smarty_tpl->tpl_vars['tv']->value)===null||$tmp==='' ? '' : $tmp);?>
'
        ,html: _('default_desc')
        ,cls: 'desc-under'
    }]
    ,renderTo: 'modx-tv-wprops-form<?php echo (($tmp = @$_smarty_tpl->tpl_vars['tv']->value)===null||$tmp==='' ? '' : $tmp);?>
'
});
// ]]>
<?php echo '</script'; ?>
>

<?php }
}
