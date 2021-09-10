////////////////////////////////////////////////////////////////////////////////
//
//  ADOBE SYSTEMS INCORPORATED
//  Copyright 2003-2007 Adobe Systems Incorporated
//  All Rights Reserved.
//
//  NOTICE: Adobe permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package mx.rpc.soap
{

import flash.xml.XMLNode;
import mx.rpc.Fault;

/**
 * A subclass of mx.rpc.Fault that provides SOAP specific information from
 * a SOAP envelope Fault element.
 */
public class SOAPFault extends Fault
{
    public function SOAPFault(faultCode:QName,
                       faultString:String,
                       detail:String = null,
                       element:XML = null,
                       faultactor:String = null)
    {
        super(faultCode.localName, faultString, detail);

        this.element = element;
        this.faultactor = faultactor;
        this.faultcode = faultCode;
    }

    //--------------------------------------------------------------------------
    //
    // Variables
    // 
    //--------------------------------------------------------------------------

    /**
     * The raw XML of this SOAP Fault.
     */
    public var element:XML;

    /**
     * A SOAP Fault may provide information about who caused the fault through
     * a faultactor property.
     */
    public var faultactor:String;

    /**
     * The faultcode property is similar to faultCode but exists to both
     * match the case of the faultcode element in a SOAP Fault and to provide
     * the fully qualified name of the code.
     * 
     * @see mx.rpc.Fault#faultDetail
     */
    public var faultcode:QName;


    //--------------------------------------------------------------------------
    //
    // Properties
    // 
    //--------------------------------------------------------------------------

    /**
     * The detail property is the same as faultDetail but exists
     * to match the case of the detail element in a SOAP Fault.
     * 
     * @see mx.rpc.Fault#faultDetail
     */
    public function get detail():String
    {
        return _faultDetail;
    }

    public function set detail(value:String):void
    {
        _faultDetail = value;
    }

    /**
     * The faultstring property is the same as faultString but exists
     * to match the case of the faultstring element in a SOAP envelope Fault.
     * 
     * @see mx.rpc.Fault#faultString
     */
    public function get faultstring():String
    {
        return _faultString;
    }

    public function set faultstring(value:String):void
    {
        _faultString = value;
    }


    //--------------------------------------------------------------------------
    //
    // Methods
    // 
    //--------------------------------------------------------------------------

    override public function toString():String
    {
        return "SOAPFault (" + faultCode + "): " + faultString + " " + faultDetail;
    }
}

}
