////////////////////////////////////////////////////////////////////////////////
//
//  ADOBE SYSTEMS INCORPORATED
//  Copyright 2005-2007 Adobe Systems Incorporated
//  All Rights Reserved.
//
//  NOTICE: Adobe permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package mx.rpc
{

/**
 * Object that represents a fault in a remote procedure call (RPC) service
 * invocation.
 */
public class Fault extends Error
{
    /**
     * Creates a new Fault object.
     */
    public function Fault(faultCode:String, faultString:String, faultDetail:String = null)
    {
        super("faultCode:" + faultCode + " faultString:'" + faultString + "' faultDetail:'" + faultDetail + "'");
        
		this._faultCode = faultCode;
        this._faultString = faultString ? faultString : "";
        this._faultDetail = faultDetail;
    }


    //--------------------------------------------------------------------------
    //
    // Variables
    // 
    //--------------------------------------------------------------------------

    /**
     * The cause of the fault. The value will be null if the cause is
     * unknown or whether this fault represents the root itself.
     */
    public var rootCause:Object;


    //--------------------------------------------------------------------------
    //
    // Properties
    // 
    //--------------------------------------------------------------------------

    /**
     * A simple code describing the fault.
     */
    public function get faultCode():String
    {
        return _faultCode;
    }

    /**
     * Any extra details of the fault.
     */
    public function get faultDetail():String
    {
        return _faultDetail;
    }

    /**
     * Text description of the fault.
     */
    public function get faultString():String
    {
        return _faultString;
    }


    //--------------------------------------------------------------------------
    //
    // Methods
    // 
    //--------------------------------------------------------------------------

    public function toString():String
    {
        var s:String = "[RPC Fault";
        s += " faultString=\"" + faultString + "\"";
        s += " faultCode=\"" + faultCode + "\"";
        s += " faultDetail=\"" + faultDetail + "\"]";
        return s;
    }

    protected var _faultCode:String;
    
	protected var _faultString:String;
    
	protected var _faultDetail:String;
}

}
