From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v5 3/3] usb: dwc2: Properly account for the force mode
 delays
Date: Tue, 13 Sep 2016 20:39:39 +0200
Message-ID: <2928813.DT7ys6u6xZ@diego>
References: <cover.1473302184.git.johnyoun@synopsys.com>
 <27811373.44ZqrxQai6@phil>
 <19473401.122600.97acfbc9-df96-4427-b533-911010ce5c3f.open-xchange@email.1und1.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <19473401.122600.97acfbc9-df96-4427-b533-911010ce5c3f.open-xchange-7tX72C7vayboQLBSYMtkGA@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
Cc: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 13. September 2016, 20:07:25 schrieb Stefan Wahren:
> Hi Heiko,
> 
> > Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> hat am 12. September 2016 um 13:05
> > geschrieben:
> > 
> > 
> > Hi Stefan,
> > 
> > Am Montag, 12. September 2016, 07:20:44 CEST schrieb Stefan Wahren:
> > > > Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> hat am 11. September 2016 um 23:19
> > > > geschrieben:
> > > > 
> > > > Am Mittwoch, 7. September 2016, 19:39:43 CEST schrieb John Youn:
> > > > > When a force mode bit is set and the IDDIG debounce filter is
> > > > > enabled,
> > > > > there is a delay for the forced mode to take effect. This delay is
> > > > > due
> > > > > to the IDDIG debounce filter and is variable depending on the
> > > > > platform's
> > > > > PHY clock speed. To account for this delay we can poll for the
> > > > > expected
> > > > > mode.
> > > > > 
> > > > > On a clear force mode, since we don't know what mode to poll for,
> > > > > delay
> > > > > for a fixed 100 ms. This is the maximum delay based on the slowest
> > > > > PHY
> > > > > clock speed.
> > > > > 
> > > > > Tested-by: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
> > > > > Signed-off-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
> > > > > ---
> > > > 
> > > > [...]
> > > > 
> > > > > @@ -475,12 +478,6 @@ void dwc2_force_dr_mode(struct dwc2_hsotg
> > > > > *hsotg)
> > > > > 
> > > > >  			 __func__, hsotg->dr_mode);
> > > > >  		
> > > > >  		break;
> > > > >  	
> > > > >  	}
> > > > > 
> > > > > -
> > > > > -	/*
> > > > > -	 * NOTE: This is required for some rockchip soc based
> > > > > -	 * platforms.
> > > > > -	 */
> > > > > -	msleep(50);
> > > > > 
> > > > >  }
> > > > 
> > > > sorry for not finding the time to test your subsequent versions, but
> > > > this
> > > > still
> > > > acts up on my Rockchip boards, as I'm still running into errors like
> > > > 
> > > > 	[    4.875570] usb usb2-port1: connect-debounce failed
> > > 
> > > could you please name the relevant DTS file of the affected boards?
> > 
> > So far I've been able to see that on
> > 
> > rk3188-radxarock
> > rk3036-kylin
> > 
> > both on host-only dwc2 controllers.
> 
> thanks, does patch 1 & 2 already have a negative effect on these
> controllers?

nope, patches 1+2 alone are ok and only the msleep(50) going away causes 
problems. I'm back home now, so I'll hopefully have time to check host-only 
vs. otg dwc2 controllers tomorrow as well.


Heiko
