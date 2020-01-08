From: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Applied "regulator: bindings: add MPS mp8859 voltage regulator" to
 the regulator tree
Date: Wed, 08 Jan 2020 15:58:57 +0000
Message-ID: <applied-20200106211633.2882-5-m.reichl@fivetechno.de>
References: <20200106211633.2882-5-m.reichl@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200106211633.2882-5-m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Markus Reichl <m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org>
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Liam Girdwood <lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The patch

   regulator: bindings: add MPS mp8859 voltage regulator

has been applied to the regulator tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-5.6

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 44665f7d082977e8bb1803ec0e596f141cba7196 Mon Sep 17 00:00:00 2001
From: Markus Reichl <m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org>
Date: Mon, 6 Jan 2020 22:16:27 +0100
Subject: [PATCH] regulator: bindings: add MPS mp8859 voltage regulator

The MP8859 from Monolithic Power Systems is a single output dc/dc converter
with voltage control over i2c.

Signed-off-by: Markus Reichl <m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org>
Link: https://lore.kernel.org/r/20200106211633.2882-5-m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org
Signed-off-by: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
---
 .../devicetree/bindings/regulator/mp8859.txt  | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/mp8859.txt

diff --git a/Documentation/devicetree/bindings/regulator/mp8859.txt b/Documentation/devicetree/bindings/regulator/mp8859.txt
new file mode 100644
index 000000000000..74ad69730989
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/mp8859.txt
@@ -0,0 +1,22 @@
+Monolithic Power Systems MP8859 voltage regulator
+
+Required properties:
+- compatible: "mps,mp8859";
+- reg: I2C slave address.
+
+Optional subnode for regulator: "mp8859_dcdc", using common regulator
+bindings given in <Documentation/devicetree/bindings/regulator/regulator.txt>.
+
+Example:
+
+	mp8859: regulator@66 {
+		compatible = "mps,mp8859";
+		reg = <0x66>;
+		dc_12v: mp8859_dcdc {
+			regulator-name = "dc_12v";
+			regulator-min-microvolt = <12000000>;
+			regulator-max-microvolt = <12000000>;
+			regulator-boot-on;
+			regulator-always-on;
+		};
+	};
-- 
2.20.1
