From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v5 3/3] usb: dwc2: Properly account for the force mode
 delays
Date: Wed, 14 Sep 2016 16:05:15 +0200
Message-ID: <6145714.tWcMvDakYx@diego>
References: <cover.1473302184.git.johnyoun@synopsys.com>
 <2928813.DT7ys6u6xZ@diego>
 <97a3539d-7176-086f-71f9-371d8d4b016c@synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <97a3539d-7176-086f-71f9-371d8d4b016c-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 13. September 2016, 12:04:12 schrieb John Youn:
> On 9/13/2016 11:39 AM, Heiko St=FCbner wrote:
> > Am Dienstag, 13. September 2016, 20:07:25 schrieb Stefan Wahren:
> >> Hi Heiko,
> >> =

> >>> Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> hat am 12. September 2016 um 13:05
> >>> geschrieben:
> >>> =

> >>> =

> >>> Hi Stefan,
> >>> =

> >>> Am Montag, 12. September 2016, 07:20:44 CEST schrieb Stefan Wahren:
> >>>>> Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> hat am 11. September 2016 um 23:19
> >>>>> geschrieben:
> >>>>> =

> >>>>> Am Mittwoch, 7. September 2016, 19:39:43 CEST schrieb John Youn:
> >>>>>> When a force mode bit is set and the IDDIG debounce filter is
> >>>>>> enabled,
> >>>>>> there is a delay for the forced mode to take effect. This delay is
> >>>>>> due
> >>>>>> to the IDDIG debounce filter and is variable depending on the
> >>>>>> platform's
> >>>>>> PHY clock speed. To account for this delay we can poll for the
> >>>>>> expected
> >>>>>> mode.
> >>>>>> =

> >>>>>> On a clear force mode, since we don't know what mode to poll for,
> >>>>>> delay
> >>>>>> for a fixed 100 ms. This is the maximum delay based on the slowest
> >>>>>> PHY
> >>>>>> clock speed.
> >>>>>> =

> >>>>>> Tested-by: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
> >>>>>> Signed-off-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
> >>>>>> ---
> >>>>> =

> >>>>> [...]
> >>>>> =

> >>>>>> @@ -475,12 +478,6 @@ void dwc2_force_dr_mode(struct dwc2_hsotg
> >>>>>> *hsotg)
> >>>>>> =

> >>>>>>  			 __func__, hsotg->dr_mode);
> >>>>>>  		=

> >>>>>>  		break;
> >>>>>>  	=

> >>>>>>  	}
> >>>>>> =

> >>>>>> -
> >>>>>> -	/*
> >>>>>> -	 * NOTE: This is required for some rockchip soc based
> >>>>>> -	 * platforms.
> >>>>>> -	 */
> >>>>>> -	msleep(50);
> >>>>>> =

> >>>>>>  }
> >>>>> =

> >>>>> sorry for not finding the time to test your subsequent versions, but
> >>>>> this
> >>>>> still
> >>>>> acts up on my Rockchip boards, as I'm still running into errors like
> >>>>> =

> >>>>> 	[    4.875570] usb usb2-port1: connect-debounce failed
> >>>> =

> >>>> could you please name the relevant DTS file of the affected boards?
> >>> =

> >>> So far I've been able to see that on
> >>> =

> >>> rk3188-radxarock
> >>> rk3036-kylin
> >>> =

> >>> both on host-only dwc2 controllers.
> >> =

> >> thanks, does patch 1 & 2 already have a negative effect on these
> >> controllers?
> > =

> > nope, patches 1+2 alone are ok and only the msleep(50) going away causes
> > problems. I'm back home now, so I'll hopefully have time to check
> > host-only
> > vs. otg dwc2 controllers tomorrow as well.
> =

> Ok, thanks for testing Heiko.
> =

> Given that, let's try to fix this in the next -rc (or before) because
> I think the Raspberry Pi needs the other parts of that last patch. We
> can just revert the msleep(50) if needed.

I could nicely confirm, that only the host-only controller seems affected by
this. Same kernel image that fails on the host-only one with the "connect-
debounce failed" message seems to work once I switch that over to the  otg
controller and the system comes up nicely again.

So if we don't find the root cause in the short term, maybe we could at lea=
st
limit the delay for host-only variants, like

---------------------- 8< -------------------
diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index fa9b26b..4c0fa0b 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -463,9 +463,18 @@ static void dwc2_clear_force_mode(struct dwc2_hsotg *h=
sotg)
  */
 void dwc2_force_dr_mode(struct dwc2_hsotg *hsotg)
 {
+	bool ret;
+
 	switch (hsotg->dr_mode) {
 	case USB_DR_MODE_HOST:
-		dwc2_force_mode(hsotg, true);
+		ret =3D dwc2_force_mode(hsotg, true);
+		/*
+		 * NOTE: This is required for some rockchip soc based
+		 * platforms on their host-only dwc2.
+		 */
+		if (!ret)
+			msleep(50);
+
 		break;
 	case USB_DR_MODE_PERIPHERAL:
 		dwc2_force_mode(hsotg, false);
---------------------- 8< -------------------

I've been running with that change for some time now on both the
rk3036-kylin and rk3188-radxarock. Plugged and unplugged different
combinations of usb-devices on the usb otg and host ports, so far
seems to work.


Heiko
