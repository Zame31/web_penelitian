<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class m_pdf {

    function m_pdf()
    {
        $CI = & get_instance();
        log_message('Debug', 'mPDF class is loaded.');
    }

    function load($param=NULL)
    {
        include_once APPPATH.'/third_party/mpdf/mpdf.php';

        if ($params == NULL)
        {
            $param = '"en-GB-x","A4","","",40,40,40,10,6,3';
        }

        return new mPDF('utf-8', array(216,330),15,15,15,15);
    }
}
