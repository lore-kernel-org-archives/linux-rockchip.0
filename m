From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2] MAINTAINERS: Track Rockchip PMIC drivers
Date: Tue, 24 Dec 2019 14:41:22 +0100
Message-ID: <20191224134122.20385-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Miquel Raynal <miquel.raynal@bootlin.com>
List-Id: linux-rockchip.vger.kernel.org

The current Rockchip section misses all the PMIC related drivers. They
are all prefixed rk8* and are as wide as clks, regulators, pinctrl,
RTCs, audio, etc.

Add a dedicated MAINTAINER's entry.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---

Changes since v1:
* Create a PMIC entry in MAINTAINERS.
* Track files with rk8 and not rk80.

 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 9d3a5c54a41d..d3f814212ba8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13943,6 +13943,17 @@ S:	Maintained
 F:	drivers/staging/media/hantro/
 F:	Documentation/devicetree/bindings/media/rockchip-vpu.txt
 
+ROCKCHIP PMIC DRIVERS
+M:	Heiko Stuebner <heiko@sntech.de>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+L:	linux-rockchip@lists.infradead.org
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
+S:	Maintained
+F:	Documentation/devicetree/bindings/*/*rk8*
+F:	include/*/*/rk8*
+F:	include/*/*/*/rk8*
+F:	drivers/*/*rk8*
+
 ROCKER DRIVER
 M:	Jiri Pirko <jiri@resnulli.us>
 L:	netdev@vger.kernel.org
-- 
2.20.1
