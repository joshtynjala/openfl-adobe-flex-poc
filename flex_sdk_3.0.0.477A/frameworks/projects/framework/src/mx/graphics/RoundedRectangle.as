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

package mx.graphics
{

import flash.geom.Rectangle;

/**
 *  RoundedRectangle represents a Rectangle with curved corners
 */
public class RoundedRectangle extends Rectangle
{	
	include "../core/Version.as";

	//--------------------------------------------------------------------------
	//
	//  Constructor
	//
	//--------------------------------------------------------------------------

	/**
	 *  Constructor.
	 */
	public function RoundedRectangle(x:Number = 0, y:Number = 0,
									 width:Number = 0, height:Number = 0,
									 cornerRadius:Number = 0)
	{
		super(x, y, width, height);

		this.cornerRadius = cornerRadius;
	}

	//--------------------------------------------------------------------------
	//
	//  Properties
	//
	//--------------------------------------------------------------------------

	//----------------------------------
	//  cornerRadius
	//----------------------------------

	[Inspectable]

	/**
	 *  The radius of each corner (in pixels).
	 *  
	 *  @default 0
	 */
	public var cornerRadius:Number = 0;
}

}
