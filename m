From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v5 3/3] usb: dwc2: Properly account for the force mode
 delays
Date: Sun, 11 Sep 2016 23:19:10 +0200
Message-ID: <6524429.86xzIcvWnK@phil>
References: <cover.1473302184.git.johnyoun@synopsys.com>
 <b4aac4b197241b8199c5300656d245692eb45856.1473302184.git.johnyoun@synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <b4aac4b197241b8199c5300656d245692eb45856.1473302184.git.johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi John,

Am Mittwoch, 7. September 2016, 19:39:43 CEST schrieb John Youn:
> When a force mode bit is set and the IDDIG debounce filter is enabled,
> there is a delay for the forced mode to take effect. This delay is due
> to the IDDIG debounce filter and is variable depending on the platform's
> PHY clock speed. To account for this delay we can poll for the expected
> mode.
> 
> On a clear force mode, since we don't know what mode to poll for, delay
> for a fixed 100 ms. This is the maximum delay based on the slowest PHY
> clock speed.
> 
> Tested-by: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
> Signed-off-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
> ---

[...]

> @@ -475,12 +478,6 @@ void dwc2_force_dr_mode(struct dwc2_hsotg *hsotg)
>  			 __func__, hsotg->dr_mode);
>  		break;
>  	}
> -
> -	/*
> -	 * NOTE: This is required for some rockchip soc based
> -	 * platforms.
> -	 */
> -	msleep(50);
>  }

sorry for not finding the time to test your subsequent versions, but this still 
acts up on my Rockchip boards, as I'm still running into errors like
	[    4.875570] usb usb2-port1: connect-debounce failed

And it still requires the 50ms default sleep to work properly. But it seems I 
was able to find some interesting things when testing the individual parts of 
your patch. The port that is affected is a host-only port, so I can also get

[    3.862440] dwc2 101c0000.usb: dwc2_force_dr_mode() to mode 1
{custom debug in dwc2_force_dr_mode}
[    3.868223] dwc2 101c0000.usb: dwc2_force_mode() no OTG controller
{custom debug in dwc2_force_mode at if (!dwc2_hw_is_otg) }

I remember that I also did my previous tests on the host-only ports (since the 
otg ones are often also used as power-supply) but sadly I only have remote 
access to my boards this week, so cannot change the cabling to actually try 
with a real otg dwc2.


Heiko
