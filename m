From: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH] usb: dwc2: host: Fix wMaxPacketSize handling (fix webcam
 regression)
Date: Mon, 3 Jun 2019 15:44:17 -0700
Message-ID: <20190603224417.GN40515@google.com>
References: <20190531200412.129429-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190531200412.129429-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Felipe Balbi <felipe.balbi@linux.intel.com>, Minas Harutyunyan <hminas@synopsys.com>, linux-rockchip@lists.infradead.org, Stefan Wahren <stefan.wahren@i2se.com>, tfiga@chromium.org, groeck@chromium.org, Martin Schiller <ms@dev.tdt.de>, stable@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, May 31, 2019 at 01:04:12PM -0700, Douglas Anderson wrote:
> In commit abb621844f6a ("usb: ch9: make usb_endpoint_maxp() return
> only packet size") the API to usb_endpoint_maxp() changed.  It used to
> just return wMaxPacketSize but after that commit it returned
> wMaxPacketSize with the high bits (the multiplier) masked off.  If you
> wanted to get the multiplier it was now up to your code to call the
> new usb_endpoint_maxp_mult() which was introduced in
> commit 541b6fe63023 ("usb: add helper to extract bits 12:11 of
> wMaxPacketSize").
> 
> Prior to the API change most host drivers were updated, but no update
> was made to dwc2.  Presumably it was assumed that dwc2 was too
> simplistic to use the multiplier and thus just didn't support a
> certain class of USB devices.  However, it turns out that dwc2 did use
> the multiplier and many devices using it were working quite nicely.
> That means that many USB devices have been broken since the API
> change.  One such device is a Logitech HD Pro Webcam C920.
> 
> Specifically, though dwc2 didn't directly call usb_endpoint_maxp(), it
> did call usb_maxpacket() which in turn called usb_endpoint_maxp().
> 
> Let's update dwc2 to work properly with the new API.
> 
> Fixes: abb621844f6a ("usb: ch9: make usb_endpoint_maxp() return only packet size")
> Cc: stable@vger.kernel.org
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

I'm not really familiar with the dwc2 driver, but this looks
reasonable to me. FWIW:

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
