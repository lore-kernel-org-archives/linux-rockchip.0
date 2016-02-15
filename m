From: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: [PATCH v2] usb: dwc2: Add extra delay when forcing dr_mode
Date: Mon, 15 Feb 2016 15:30:20 -0800
Message-ID: <205d8514e547231b928b14c4e61d12feb2e9a0c3.1455576846.git.johnyoun@synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Michael Niewoehner <linux-zzFNMPX9jIaDjmgdnaGrkw@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Fixes an issue found on rockchip rk3036 and rk3188 SOC platforms. For
some reason, the existing msleep(25) is not enough after the force mode.
The following patch was reported to fix the issue.

This does increase the probe delay again slightly, but not up to the
level it was before the original series of patches that this fixes. It
does not cause any other issues when tested on Synopsys HAPS and Altera
socfpga platforms.

Need to revisit this series next release to see if we can address these
issues without having an unconditional delay.

Fixes: 09c96980dc72 ("usb: dwc2: Add functions to set and clear force mode")
Reported-by: Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Reported-by: Michael Niewoehner <linux-zzFNMPX9jIaDjmgdnaGrkw@public.gmane.org>
Tested-by: Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Signed-off-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
---

Hi Felipe,

This fixes a problem introduced in 4.5-rc1. Could you please queue for
the next -rc?

Thanks,
John

v2:
- Upped the delay to 50 ms for rk3188. Reported by Michael Niewoehner.


 drivers/usb/dwc2/core.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index e991d55..46c4ba7 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -619,6 +619,12 @@ void dwc2_force_dr_mode(struct dwc2_hsotg *hsotg)
 			 __func__, hsotg->dr_mode);
 		break;
 	}
+
+	/*
+	 * NOTE: This is required for some rockchip soc based
+	 * platforms.
+	 */
+	msleep(50);
 }
 
 /*
-- 
2.6.3

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
