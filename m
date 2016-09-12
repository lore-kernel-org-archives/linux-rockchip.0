From: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
Subject: Re: [PATCH v5 3/3] usb: dwc2: Properly account for the force mode
 delays
Date: Mon, 12 Sep 2016 07:20:44 +0200 (CEST)
Message-ID: <1336050364.27663.591ba3c4-a2b5-418f-9999-6b3cd631f440.open-xchange@email.1und1.de>
References: <cover.1473302184.git.johnyoun@synopsys.com>
 <b4aac4b197241b8199c5300656d245692eb45856.1473302184.git.johnyoun@synopsys.com>
 <6524429.86xzIcvWnK@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <6524429.86xzIcvWnK@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

> Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> hat am 11. September 2016 um 23:19
> geschrieben:
> 
> 
> Hi John,
> 
> Am Mittwoch, 7. September 2016, 19:39:43 CEST schrieb John Youn:
> > When a force mode bit is set and the IDDIG debounce filter is enabled,
> > there is a delay for the forced mode to take effect. This delay is due
> > to the IDDIG debounce filter and is variable depending on the platform's
> > PHY clock speed. To account for this delay we can poll for the expected
> > mode.
> > 
> > On a clear force mode, since we don't know what mode to poll for, delay
> > for a fixed 100 ms. This is the maximum delay based on the slowest PHY
> > clock speed.
> > 
> > Tested-by: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
> > Signed-off-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
> > ---
> 
> [...]
> 
> > @@ -475,12 +478,6 @@ void dwc2_force_dr_mode(struct dwc2_hsotg *hsotg)
> >  			 __func__, hsotg->dr_mode);
> >  		break;
> >  	}
> > -
> > -	/*
> > -	 * NOTE: This is required for some rockchip soc based
> > -	 * platforms.
> > -	 */
> > -	msleep(50);
> >  }
> 
> sorry for not finding the time to test your subsequent versions, but this
> still 
> acts up on my Rockchip boards, as I'm still running into errors like
> 	[    4.875570] usb usb2-port1: connect-debounce failed

could you please name the relevant DTS file of the affected boards?

Regards
Stefan
