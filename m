From: Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH 3/3] ARM: dts: rockchip: Remove 0 point in backlight
Date: Mon, 20 Jul 2020 21:25:22 -0700
Message-ID: <20200720212502.3.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
References: <20200721042522.2403410-1-amstan@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200721042522.2403410-1-amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Thierry Reding <thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Lee Jones <lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Daniel Thompson <daniel.thompson-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Bartlomiej Zolnierkiewicz <b.zolnierkie-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Matthias Kaehlcke <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

After the "PWM backlight interpolation adjustments" patches, the
backlight interpolation works a little differently. The way these
dts files were working before was relying on a bug (IMHO).

Remove the 0-3 range since otherwise we would have a 252 long
interpolation that would slowly go between 0 and 3, looking really bad
in userspace.

We'll still have the 0% point available to userspace, "backlight:
pwm_bl: Artificially add 0% during interpolation" takes care of that.

Signed-off-by: Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---

 arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 2 +-
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 2 +-
 arch/arm/boot/dts/rk3288-veyron-tiger.dts  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
index 171ba6185b6d..af4b21636c08 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
@@ -20,7 +20,7 @@ / {
 
 &backlight {
 	/* Jaq panel PWM must be >= 3%, so start non-zero brightness at 8 */
-	brightness-levels = <0 8 255>;
+	brightness-levels = <8 255>;
 	num-interpolated-steps = <247>;
 };
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index 383fad1a88a1..b25aa2f3cbee 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -39,7 +39,7 @@ volum_up {
 
 &backlight {
 	/* Minnie panel PWM must be >= 1%, so start non-zero brightness at 3 */
-	brightness-levels = <0 3 255>;
+	brightness-levels = <3 255>;
 	num-interpolated-steps = <252>;
 };
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-tiger.dts b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
index 069f0c2c1fdf..52a84cbe7a90 100644
--- a/arch/arm/boot/dts/rk3288-veyron-tiger.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
@@ -23,7 +23,7 @@ / {
 
 &backlight {
 	/* Tiger panel PWM must be >= 1%, so start non-zero brightness at 3 */
-	brightness-levels = <0 3 255>;
+	brightness-levels = <3 255>;
 	num-interpolated-steps = <252>;
 };
 
-- 
2.27.0
