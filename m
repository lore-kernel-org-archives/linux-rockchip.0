From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH net-next] net: phy: switch drivers to use dynamic feature
 detection
Date: Sun, 7 Apr 2019 11:57:13 +0200
Message-ID: <0cc96fab-e102-c0d1-ade0-90e3e06dc9f1@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>, David Miller <davem@davemloft.net>, Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, Richard Cochran <richardcochran@gmail.com>, Kevin Hilman <khilman@baylibre.com>, Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Recently genphy_read_abilities() has been added that dynamically detects
clause 22 PHY abilities. I *think* this detection should work with all
supported PHY's, at least for the ones with basic features sets, i.e.
PHY_BASIC_FEATURES and PHY_GBIT_FEATURES. So let's remove setting these
features explicitly and rely on phylib feature detection.

I don't have access to most of these PHY's, therefore I'd appreciate
regression testing.

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 drivers/net/phy/amd.c        |  1 -
 drivers/net/phy/asix.c       |  1 -
 drivers/net/phy/at803x.c     |  3 ---
 drivers/net/phy/bcm-cygnus.c |  2 --
 drivers/net/phy/bcm63xx.c    |  2 --
 drivers/net/phy/bcm7xxx.c    |  3 ---
 drivers/net/phy/broadcom.c   | 17 -----------------
 drivers/net/phy/cicada.c     |  2 --
 drivers/net/phy/davicom.c    |  4 ----
 drivers/net/phy/dp83640.c    |  1 -
 drivers/net/phy/dp83822.c    |  1 -
 drivers/net/phy/dp83848.c    |  1 -
 drivers/net/phy/dp83867.c    |  1 -
 drivers/net/phy/dp83tc811.c  |  1 -
 drivers/net/phy/et1011c.c    |  1 -
 drivers/net/phy/icplus.c     |  3 ---
 drivers/net/phy/intel-xway.c | 10 ----------
 drivers/net/phy/lxt.c        |  4 ----
 drivers/net/phy/marvell.c    | 14 --------------
 drivers/net/phy/meson-gxl.c  |  2 --
 drivers/net/phy/micrel.c     | 16 ----------------
 drivers/net/phy/microchip.c  |  2 --
 drivers/net/phy/mscc.c       |  6 ------
 drivers/net/phy/national.c   |  1 -
 drivers/net/phy/qsemi.c      |  1 -
 drivers/net/phy/rockchip.c   |  1 -
 drivers/net/phy/smsc.c       | 11 -----------
 drivers/net/phy/ste10Xp.c    |  2 --
 drivers/net/phy/uPD60620.c   |  1 -
 drivers/net/phy/vitesse.c    | 12 ------------
 30 files changed, 127 deletions(-)

diff --git a/drivers/net/phy/amd.c b/drivers/net/phy/amd.c
index 65b4b0960..c2948e4d2 100644
--- a/drivers/net/phy/amd.c
+++ b/drivers/net/phy/amd.c
@@ -60,7 +60,6 @@ static struct phy_driver am79c_driver[] = { {
 	.phy_id		= PHY_ID_AM79C874,
 	.name		= "AM79C874",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_BASIC_FEATURES,
 	.config_init	= am79c_config_init,
 	.ack_interrupt	= am79c_ack_interrupt,
 	.config_intr	= am79c_config_intr,
diff --git a/drivers/net/phy/asix.c b/drivers/net/phy/asix.c
index f14ba5366..53b408b95 100644
--- a/drivers/net/phy/asix.c
+++ b/drivers/net/phy/asix.c
@@ -43,7 +43,6 @@ static struct phy_driver asix_driver[] = { {
 	.phy_id		= PHY_ID_ASIX_AX88796B,
 	.name		= "Asix Electronics AX88796B",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_BASIC_FEATURES,
 	.soft_reset	= asix_soft_reset,
 } };
 
diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index f315ab468..23276816e 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -389,7 +389,6 @@ static struct phy_driver at803x_driver[] = {
 	.get_wol		= at803x_get_wol,
 	.suspend		= at803x_suspend,
 	.resume			= at803x_resume,
-	.features		= PHY_GBIT_FEATURES,
 	.ack_interrupt		= at803x_ack_interrupt,
 	.config_intr		= at803x_config_intr,
 }, {
@@ -404,7 +403,6 @@ static struct phy_driver at803x_driver[] = {
 	.get_wol		= at803x_get_wol,
 	.suspend		= at803x_suspend,
 	.resume			= at803x_resume,
-	.features		= PHY_BASIC_FEATURES,
 	.ack_interrupt		= at803x_ack_interrupt,
 	.config_intr		= at803x_config_intr,
 }, {
@@ -418,7 +416,6 @@ static struct phy_driver at803x_driver[] = {
 	.get_wol		= at803x_get_wol,
 	.suspend		= at803x_suspend,
 	.resume			= at803x_resume,
-	.features		= PHY_GBIT_FEATURES,
 	.aneg_done		= at803x_aneg_done,
 	.ack_interrupt		= &at803x_ack_interrupt,
 	.config_intr		= &at803x_config_intr,
diff --git a/drivers/net/phy/bcm-cygnus.c b/drivers/net/phy/bcm-cygnus.c
index 625b7cb76..35e1fd3a1 100644
--- a/drivers/net/phy/bcm-cygnus.c
+++ b/drivers/net/phy/bcm-cygnus.c
@@ -254,7 +254,6 @@ static struct phy_driver bcm_cygnus_phy_driver[] = {
 	.phy_id        = PHY_ID_BCM_CYGNUS,
 	.phy_id_mask   = 0xfffffff0,
 	.name          = "Broadcom Cygnus PHY",
-	.features      = PHY_GBIT_FEATURES,
 	.config_init   = bcm_cygnus_config_init,
 	.ack_interrupt = bcm_phy_ack_intr,
 	.config_intr   = bcm_phy_config_intr,
@@ -264,7 +263,6 @@ static struct phy_driver bcm_cygnus_phy_driver[] = {
 	.phy_id		= PHY_ID_BCM_OMEGA,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom Omega Combo GPHY",
-	.features	= PHY_GBIT_FEATURES,
 	.flags		= PHY_IS_INTERNAL,
 	.config_init	= bcm_omega_config_init,
 	.suspend	= genphy_suspend,
diff --git a/drivers/net/phy/bcm63xx.c b/drivers/net/phy/bcm63xx.c
index 44e6cff41..ff921b1ee 100644
--- a/drivers/net/phy/bcm63xx.c
+++ b/drivers/net/phy/bcm63xx.c
@@ -64,7 +64,6 @@ static struct phy_driver bcm63xx_driver[] = {
 	.phy_id		= 0x00406000,
 	.phy_id_mask	= 0xfffffc00,
 	.name		= "Broadcom BCM63XX (1)",
-	.features	= PHY_BASIC_FEATURES,
 	.flags		= PHY_IS_INTERNAL,
 	.config_init	= bcm63xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
@@ -73,7 +72,6 @@ static struct phy_driver bcm63xx_driver[] = {
 	/* same phy as above, with just a different OUI */
 	.phy_id		= 0x002bdc00,
 	.phy_id_mask	= 0xfffffc00,
-	.features	= PHY_BASIC_FEATURES,
 	.flags		= PHY_IS_INTERNAL,
 	.config_init	= bcm63xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
diff --git a/drivers/net/phy/bcm7xxx.c b/drivers/net/phy/bcm7xxx.c
index a75e1b283..1d44aee75 100644
--- a/drivers/net/phy/bcm7xxx.c
+++ b/drivers/net/phy/bcm7xxx.c
@@ -538,7 +538,6 @@ static int bcm7xxx_28nm_probe(struct phy_device *phydev)
 	.phy_id		= (_oui),					\
 	.phy_id_mask	= 0xfffffff0,					\
 	.name		= _name,					\
-	.features	= PHY_GBIT_FEATURES,				\
 	.flags		= PHY_IS_INTERNAL,				\
 	.config_init	= bcm7xxx_28nm_config_init,			\
 	.resume		= bcm7xxx_28nm_resume,				\
@@ -555,7 +554,6 @@ static int bcm7xxx_28nm_probe(struct phy_device *phydev)
 	.phy_id		= (_oui),					\
 	.phy_id_mask	= 0xfffffff0,					\
 	.name		= _name,					\
-	.features	= PHY_BASIC_FEATURES,				\
 	.flags		= PHY_IS_INTERNAL,				\
 	.config_init	= bcm7xxx_28nm_ephy_config_init,		\
 	.resume		= bcm7xxx_28nm_ephy_resume,			\
@@ -570,7 +568,6 @@ static int bcm7xxx_28nm_probe(struct phy_device *phydev)
 	.phy_id         = (_oui),					\
 	.phy_id_mask    = 0xfffffff0,					\
 	.name           = _name,					\
-	.features       = PHY_BASIC_FEATURES,				\
 	.flags          = PHY_IS_INTERNAL,				\
 	.config_init    = bcm7xxx_config_init,				\
 	.suspend        = bcm7xxx_suspend,				\
diff --git a/drivers/net/phy/broadcom.c b/drivers/net/phy/broadcom.c
index cb86a3e90..601cdef91 100644
--- a/drivers/net/phy/broadcom.c
+++ b/drivers/net/phy/broadcom.c
@@ -610,7 +610,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM5411,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM5411",
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -618,7 +617,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM5421,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM5421",
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -626,7 +624,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM54210E,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM54210E",
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -634,7 +631,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM5461,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM5461",
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -642,7 +638,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM54612E,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM54612E",
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -650,7 +645,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM54616S,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM54616S",
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= bcm54xx_config_init,
 	.config_aneg	= bcm54616s_config_aneg,
 	.ack_interrupt	= bcm_phy_ack_intr,
@@ -659,7 +653,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM5464,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM5464",
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -667,7 +660,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM5481,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM5481",
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= bcm54xx_config_init,
 	.config_aneg	= bcm5481_config_aneg,
 	.ack_interrupt	= bcm_phy_ack_intr,
@@ -676,7 +668,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id         = PHY_ID_BCM54810,
 	.phy_id_mask    = 0xfffffff0,
 	.name           = "Broadcom BCM54810",
-	.features       = PHY_GBIT_FEATURES,
 	.config_init    = bcm54xx_config_init,
 	.config_aneg    = bcm5481_config_aneg,
 	.ack_interrupt  = bcm_phy_ack_intr,
@@ -685,7 +676,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM5482,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM5482",
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= bcm5482_config_init,
 	.read_status	= bcm5482_read_status,
 	.ack_interrupt	= bcm_phy_ack_intr,
@@ -694,7 +684,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM50610,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM50610",
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -702,7 +691,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM50610M,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM50610M",
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -710,7 +698,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM57780,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM57780",
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -718,7 +705,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCMAC131,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCMAC131",
-	.features	= PHY_BASIC_FEATURES,
 	.config_init	= brcm_fet_config_init,
 	.ack_interrupt	= brcm_fet_ack_interrupt,
 	.config_intr	= brcm_fet_config_intr,
@@ -726,7 +712,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM5241,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM5241",
-	.features	= PHY_BASIC_FEATURES,
 	.config_init	= brcm_fet_config_init,
 	.ack_interrupt	= brcm_fet_ack_interrupt,
 	.config_intr	= brcm_fet_config_intr,
@@ -735,7 +720,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM5395",
 	.flags		= PHY_IS_INTERNAL,
-	.features	= PHY_GBIT_FEATURES,
 	.get_sset_count	= bcm_phy_get_sset_count,
 	.get_strings	= bcm_phy_get_strings,
 	.get_stats	= bcm53xx_phy_get_stats,
@@ -744,7 +728,6 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id         = PHY_ID_BCM89610,
 	.phy_id_mask    = 0xfffffff0,
 	.name           = "Broadcom BCM89610",
-	.features       = PHY_GBIT_FEATURES,
 	.config_init    = bcm54xx_config_init,
 	.ack_interrupt  = bcm_phy_ack_intr,
 	.config_intr    = bcm_phy_config_intr,
diff --git a/drivers/net/phy/cicada.c b/drivers/net/phy/cicada.c
index 108ed24f8..216606958 100644
--- a/drivers/net/phy/cicada.c
+++ b/drivers/net/phy/cicada.c
@@ -102,7 +102,6 @@ static struct phy_driver cis820x_driver[] = {
 	.phy_id		= 0x000fc410,
 	.name		= "Cicada Cis8201",
 	.phy_id_mask	= 0x000ffff0,
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= &cis820x_config_init,
 	.ack_interrupt	= &cis820x_ack_interrupt,
 	.config_intr	= &cis820x_config_intr,
@@ -110,7 +109,6 @@ static struct phy_driver cis820x_driver[] = {
 	.phy_id		= 0x000fc440,
 	.name		= "Cicada Cis8204",
 	.phy_id_mask	= 0x000fffc0,
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= &cis820x_config_init,
 	.ack_interrupt	= &cis820x_ack_interrupt,
 	.config_intr	= &cis820x_config_intr,
diff --git a/drivers/net/phy/davicom.c b/drivers/net/phy/davicom.c
index bf39baa7f..eb55054b5 100644
--- a/drivers/net/phy/davicom.c
+++ b/drivers/net/phy/davicom.c
@@ -144,7 +144,6 @@ static struct phy_driver dm91xx_driver[] = {
 	.phy_id		= 0x0181b880,
 	.name		= "Davicom DM9161E",
 	.phy_id_mask	= 0x0ffffff0,
-	.features	= PHY_BASIC_FEATURES,
 	.config_init	= dm9161_config_init,
 	.config_aneg	= dm9161_config_aneg,
 	.ack_interrupt	= dm9161_ack_interrupt,
@@ -153,7 +152,6 @@ static struct phy_driver dm91xx_driver[] = {
 	.phy_id		= 0x0181b8b0,
 	.name		= "Davicom DM9161B/C",
 	.phy_id_mask	= 0x0ffffff0,
-	.features	= PHY_BASIC_FEATURES,
 	.config_init	= dm9161_config_init,
 	.config_aneg	= dm9161_config_aneg,
 	.ack_interrupt	= dm9161_ack_interrupt,
@@ -162,7 +160,6 @@ static struct phy_driver dm91xx_driver[] = {
 	.phy_id		= 0x0181b8a0,
 	.name		= "Davicom DM9161A",
 	.phy_id_mask	= 0x0ffffff0,
-	.features	= PHY_BASIC_FEATURES,
 	.config_init	= dm9161_config_init,
 	.config_aneg	= dm9161_config_aneg,
 	.ack_interrupt	= dm9161_ack_interrupt,
@@ -171,7 +168,6 @@ static struct phy_driver dm91xx_driver[] = {
 	.phy_id		= 0x00181b80,
 	.name		= "Davicom DM9131",
 	.phy_id_mask	= 0x0ffffff0,
-	.features	= PHY_BASIC_FEATURES,
 	.ack_interrupt	= dm9161_ack_interrupt,
 	.config_intr	= dm9161_config_intr,
 } };
diff --git a/drivers/net/phy/dp83640.c b/drivers/net/phy/dp83640.c
index 2fe2ebaf6..4f2bf2cd8 100644
--- a/drivers/net/phy/dp83640.c
+++ b/drivers/net/phy/dp83640.c
@@ -1514,7 +1514,6 @@ static struct phy_driver dp83640_driver = {
 	.phy_id		= DP83640_PHY_ID,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "NatSemi DP83640",
-	.features	= PHY_BASIC_FEATURES,
 	.probe		= dp83640_probe,
 	.remove		= dp83640_remove,
 	.soft_reset	= dp83640_soft_reset,
diff --git a/drivers/net/phy/dp83822.c b/drivers/net/phy/dp83822.c
index 97d45bd5b..10053a761 100644
--- a/drivers/net/phy/dp83822.c
+++ b/drivers/net/phy/dp83822.c
@@ -310,7 +310,6 @@ static int dp83822_resume(struct phy_device *phydev)
 	{							\
 		PHY_ID_MATCH_MODEL(_id),			\
 		.name		= (_name),			\
-		.features	= PHY_BASIC_FEATURES,		\
 		.soft_reset	= dp83822_phy_reset,		\
 		.config_init	= dp83822_config_init,		\
 		.get_wol = dp83822_get_wol,			\
diff --git a/drivers/net/phy/dp83848.c b/drivers/net/phy/dp83848.c
index f55dc907c..86d005815 100644
--- a/drivers/net/phy/dp83848.c
+++ b/drivers/net/phy/dp83848.c
@@ -99,7 +99,6 @@ MODULE_DEVICE_TABLE(mdio, dp83848_tbl);
 		.phy_id		= _id,				\
 		.phy_id_mask	= 0xfffffff0,			\
 		.name		= _name,			\
-		.features	= PHY_BASIC_FEATURES,		\
 								\
 		.soft_reset	= genphy_soft_reset,		\
 		.config_init	= _config_init,			\
diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index 8448d0181..11768de2e 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -315,7 +315,6 @@ static struct phy_driver dp83867_driver[] = {
 		.phy_id		= DP83867_PHY_ID,
 		.phy_id_mask	= 0xfffffff0,
 		.name		= "TI DP83867",
-		.features	= PHY_GBIT_FEATURES,
 
 		.config_init	= dp83867_config_init,
 		.soft_reset	= dp83867_phy_reset,
diff --git a/drivers/net/phy/dp83tc811.c b/drivers/net/phy/dp83tc811.c
index e9704af1d..012749d35 100644
--- a/drivers/net/phy/dp83tc811.c
+++ b/drivers/net/phy/dp83tc811.c
@@ -338,7 +338,6 @@ static struct phy_driver dp83811_driver[] = {
 		.phy_id = DP83TC811_PHY_ID,
 		.phy_id_mask = 0xfffffff0,
 		.name = "TI DP83TC811",
-		.features = PHY_BASIC_FEATURES,
 		.config_init = dp83811_config_init,
 		.config_aneg = dp83811_config_aneg,
 		.soft_reset = dp83811_phy_reset,
diff --git a/drivers/net/phy/et1011c.c b/drivers/net/phy/et1011c.c
index 2aa367c04..34354c737 100644
--- a/drivers/net/phy/et1011c.c
+++ b/drivers/net/phy/et1011c.c
@@ -86,7 +86,6 @@ static struct phy_driver et1011c_driver[] = { {
 	.phy_id		= 0x0282f014,
 	.name		= "ET1011C",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_GBIT_FEATURES,
 	.config_aneg	= et1011c_config_aneg,
 	.read_status	= et1011c_read_status,
 } };
diff --git a/drivers/net/phy/icplus.c b/drivers/net/phy/icplus.c
index ebef8354b..89e99760f 100644
--- a/drivers/net/phy/icplus.c
+++ b/drivers/net/phy/icplus.c
@@ -311,7 +311,6 @@ static struct phy_driver icplus_driver[] = {
 	.phy_id		= 0x02430d80,
 	.name		= "ICPlus IP175C",
 	.phy_id_mask	= 0x0ffffff0,
-	.features	= PHY_BASIC_FEATURES,
 	.config_init	= &ip175c_config_init,
 	.config_aneg	= &ip175c_config_aneg,
 	.read_status	= &ip175c_read_status,
@@ -321,7 +320,6 @@ static struct phy_driver icplus_driver[] = {
 	.phy_id		= 0x02430d90,
 	.name		= "ICPlus IP1001",
 	.phy_id_mask	= 0x0ffffff0,
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= &ip1001_config_init,
 	.suspend	= genphy_suspend,
 	.resume		= genphy_resume,
@@ -329,7 +327,6 @@ static struct phy_driver icplus_driver[] = {
 	.phy_id		= 0x02430c54,
 	.name		= "ICPlus IP101A/G",
 	.phy_id_mask	= 0x0ffffff0,
-	.features	= PHY_BASIC_FEATURES,
 	.probe		= ip101a_g_probe,
 	.config_intr	= ip101a_g_config_intr,
 	.did_interrupt	= ip101a_g_did_interrupt,
diff --git a/drivers/net/phy/intel-xway.c b/drivers/net/phy/intel-xway.c
index 02d971331..abad888ba 100644
--- a/drivers/net/phy/intel-xway.c
+++ b/drivers/net/phy/intel-xway.c
@@ -232,7 +232,6 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY11G_1_3,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY11G (PEF 7071/PEF 7072) v1.3",
-		.features	= PHY_GBIT_FEATURES,
 		.config_init	= xway_gphy_config_init,
 		.config_aneg	= xway_gphy14_config_aneg,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
@@ -244,7 +243,6 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY22F_1_3,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY22F (PEF 7061) v1.3",
-		.features	= PHY_BASIC_FEATURES,
 		.config_init	= xway_gphy_config_init,
 		.config_aneg	= xway_gphy14_config_aneg,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
@@ -256,7 +254,6 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY11G_1_4,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY11G (PEF 7071/PEF 7072) v1.4",
-		.features	= PHY_GBIT_FEATURES,
 		.config_init	= xway_gphy_config_init,
 		.config_aneg	= xway_gphy14_config_aneg,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
@@ -268,7 +265,6 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY22F_1_4,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY22F (PEF 7061) v1.4",
-		.features	= PHY_BASIC_FEATURES,
 		.config_init	= xway_gphy_config_init,
 		.config_aneg	= xway_gphy14_config_aneg,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
@@ -280,7 +276,6 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY11G_1_5,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY11G (PEF 7071/PEF 7072) v1.5 / v1.6",
-		.features	= PHY_GBIT_FEATURES,
 		.config_init	= xway_gphy_config_init,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
 		.did_interrupt	= xway_gphy_did_interrupt,
@@ -291,7 +286,6 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY22F_1_5,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY22F (PEF 7061) v1.5 / v1.6",
-		.features	= PHY_BASIC_FEATURES,
 		.config_init	= xway_gphy_config_init,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
 		.did_interrupt	= xway_gphy_did_interrupt,
@@ -302,7 +296,6 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY11G_VR9_1_1,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY11G (xRX v1.1 integrated)",
-		.features	= PHY_GBIT_FEATURES,
 		.config_init	= xway_gphy_config_init,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
 		.did_interrupt	= xway_gphy_did_interrupt,
@@ -313,7 +306,6 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY22F_VR9_1_1,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY22F (xRX v1.1 integrated)",
-		.features	= PHY_BASIC_FEATURES,
 		.config_init	= xway_gphy_config_init,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
 		.did_interrupt	= xway_gphy_did_interrupt,
@@ -324,7 +316,6 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY11G_VR9_1_2,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY11G (xRX v1.2 integrated)",
-		.features	= PHY_GBIT_FEATURES,
 		.config_init	= xway_gphy_config_init,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
 		.did_interrupt	= xway_gphy_did_interrupt,
@@ -335,7 +326,6 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY22F_VR9_1_2,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY22F (xRX v1.2 integrated)",
-		.features	= PHY_BASIC_FEATURES,
 		.config_init	= xway_gphy_config_init,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
 		.did_interrupt	= xway_gphy_did_interrupt,
diff --git a/drivers/net/phy/lxt.c b/drivers/net/phy/lxt.c
index a93d673ba..e540ff32e 100644
--- a/drivers/net/phy/lxt.c
+++ b/drivers/net/phy/lxt.c
@@ -251,7 +251,6 @@ static struct phy_driver lxt97x_driver[] = {
 	.phy_id		= 0x78100000,
 	.name		= "LXT970",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_BASIC_FEATURES,
 	.config_init	= lxt970_config_init,
 	.ack_interrupt	= lxt970_ack_interrupt,
 	.config_intr	= lxt970_config_intr,
@@ -259,14 +258,12 @@ static struct phy_driver lxt97x_driver[] = {
 	.phy_id		= 0x001378e0,
 	.name		= "LXT971",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_BASIC_FEATURES,
 	.ack_interrupt	= lxt971_ack_interrupt,
 	.config_intr	= lxt971_config_intr,
 }, {
 	.phy_id		= 0x00137a10,
 	.name		= "LXT973-A2",
 	.phy_id_mask	= 0xffffffff,
-	.features	= PHY_BASIC_FEATURES,
 	.flags		= 0,
 	.probe		= lxt973_probe,
 	.config_aneg	= lxt973_config_aneg,
@@ -275,7 +272,6 @@ static struct phy_driver lxt97x_driver[] = {
 	.phy_id		= 0x00137a10,
 	.name		= "LXT973",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_BASIC_FEATURES,
 	.flags		= 0,
 	.probe		= lxt973_probe,
 	.config_aneg	= lxt973_config_aneg,
diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
index 65350186d..96664f62b 100644
--- a/drivers/net/phy/marvell.c
+++ b/drivers/net/phy/marvell.c
@@ -2126,7 +2126,6 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1101,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1101",
-		.features = PHY_GBIT_FEATURES,
 		.probe = marvell_probe,
 		.config_init = &marvell_config_init,
 		.config_aneg = &m88e1101_config_aneg,
@@ -2144,7 +2143,6 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1112,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1112",
-		.features = PHY_GBIT_FEATURES,
 		.probe = marvell_probe,
 		.config_init = &m88e1111_config_init,
 		.config_aneg = &marvell_config_aneg,
@@ -2162,7 +2160,6 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1111,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1111",
-		.features = PHY_GBIT_FEATURES,
 		.probe = marvell_probe,
 		.config_init = &m88e1111_config_init,
 		.config_aneg = &marvell_config_aneg,
@@ -2181,7 +2178,6 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1118,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1118",
-		.features = PHY_GBIT_FEATURES,
 		.probe = marvell_probe,
 		.config_init = &m88e1118_config_init,
 		.config_aneg = &m88e1118_config_aneg,
@@ -2199,7 +2195,6 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1121R,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1121R",
-		.features = PHY_GBIT_FEATURES,
 		.probe = &m88e1121_probe,
 		.config_init = &marvell_config_init,
 		.config_aneg = &m88e1121_config_aneg,
@@ -2219,7 +2214,6 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1318S,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1318S",
-		.features = PHY_GBIT_FEATURES,
 		.probe = marvell_probe,
 		.config_init = &m88e1318_config_init,
 		.config_aneg = &m88e1318_config_aneg,
@@ -2241,7 +2235,6 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1145,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1145",
-		.features = PHY_GBIT_FEATURES,
 		.probe = marvell_probe,
 		.config_init = &m88e1145_config_init,
 		.config_aneg = &m88e1101_config_aneg,
@@ -2260,7 +2253,6 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1149R,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1149R",
-		.features = PHY_GBIT_FEATURES,
 		.probe = marvell_probe,
 		.config_init = &m88e1149_config_init,
 		.config_aneg = &m88e1118_config_aneg,
@@ -2278,7 +2270,6 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1240,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1240",
-		.features = PHY_GBIT_FEATURES,
 		.probe = marvell_probe,
 		.config_init = &m88e1111_config_init,
 		.config_aneg = &marvell_config_aneg,
@@ -2296,7 +2287,6 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1116R,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1116R",
-		.features = PHY_GBIT_FEATURES,
 		.probe = marvell_probe,
 		.config_init = &m88e1116r_config_init,
 		.ack_interrupt = &marvell_ack_interrupt,
@@ -2336,7 +2326,6 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1540,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1540",
-		.features = PHY_GBIT_FEATURES,
 		.probe = m88e1510_probe,
 		.config_init = &marvell_config_init,
 		.config_aneg = &m88e1510_config_aneg,
@@ -2359,7 +2348,6 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1545",
 		.probe = m88e1510_probe,
-		.features = PHY_GBIT_FEATURES,
 		.config_init = &marvell_config_init,
 		.config_aneg = &m88e1510_config_aneg,
 		.read_status = &marvell_read_status,
@@ -2378,7 +2366,6 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E3016,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E3016",
-		.features = PHY_BASIC_FEATURES,
 		.probe = marvell_probe,
 		.config_init = &m88e3016_config_init,
 		.aneg_done = &marvell_aneg_done,
@@ -2398,7 +2385,6 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E6390,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E6390",
-		.features = PHY_GBIT_FEATURES,
 		.probe = m88e6390_probe,
 		.config_init = &marvell_config_init,
 		.config_aneg = &m88e6390_config_aneg,
diff --git a/drivers/net/phy/meson-gxl.c b/drivers/net/phy/meson-gxl.c
index 6d4a8c508..d7d1b6b80 100644
--- a/drivers/net/phy/meson-gxl.c
+++ b/drivers/net/phy/meson-gxl.c
@@ -226,7 +226,6 @@ static struct phy_driver meson_gxl_phy[] = {
 	{
 		PHY_ID_MATCH_EXACT(0x01814400),
 		.name		= "Meson GXL Internal PHY",
-		.features	= PHY_BASIC_FEATURES,
 		.flags		= PHY_IS_INTERNAL,
 		.soft_reset     = genphy_soft_reset,
 		.config_init	= meson_gxl_config_init,
@@ -238,7 +237,6 @@ static struct phy_driver meson_gxl_phy[] = {
 	}, {
 		PHY_ID_MATCH_EXACT(0x01803301),
 		.name		= "Meson G12A Internal PHY",
-		.features	= PHY_BASIC_FEATURES,
 		.flags		= PHY_IS_INTERNAL,
 		.soft_reset     = genphy_soft_reset,
 		.ack_interrupt	= meson_gxl_ack_interrupt,
diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 352da24f1..084e8917a 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -908,7 +908,6 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KS8737,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Micrel KS8737",
-	.features	= PHY_BASIC_FEATURES,
 	.driver_data	= &ks8737_type,
 	.config_init	= kszphy_config_init,
 	.ack_interrupt	= kszphy_ack_interrupt,
@@ -919,7 +918,6 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8021,
 	.phy_id_mask	= 0x00ffffff,
 	.name		= "Micrel KSZ8021 or KSZ8031",
-	.features	= PHY_BASIC_FEATURES,
 	.driver_data	= &ksz8021_type,
 	.probe		= kszphy_probe,
 	.config_init	= kszphy_config_init,
@@ -934,7 +932,6 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8031,
 	.phy_id_mask	= 0x00ffffff,
 	.name		= "Micrel KSZ8031",
-	.features	= PHY_BASIC_FEATURES,
 	.driver_data	= &ksz8021_type,
 	.probe		= kszphy_probe,
 	.config_init	= kszphy_config_init,
@@ -949,7 +946,6 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8041,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Micrel KSZ8041",
-	.features	= PHY_BASIC_FEATURES,
 	.driver_data	= &ksz8041_type,
 	.probe		= kszphy_probe,
 	.config_init	= ksz8041_config_init,
@@ -965,7 +961,6 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8041RNLI,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Micrel KSZ8041RNLI",
-	.features	= PHY_BASIC_FEATURES,
 	.driver_data	= &ksz8041_type,
 	.probe		= kszphy_probe,
 	.config_init	= kszphy_config_init,
@@ -980,7 +975,6 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8051,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Micrel KSZ8051",
-	.features	= PHY_BASIC_FEATURES,
 	.driver_data	= &ksz8051_type,
 	.probe		= kszphy_probe,
 	.config_init	= kszphy_config_init,
@@ -995,7 +989,6 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8001,
 	.name		= "Micrel KSZ8001 or KS8721",
 	.phy_id_mask	= 0x00fffffc,
-	.features	= PHY_BASIC_FEATURES,
 	.driver_data	= &ksz8041_type,
 	.probe		= kszphy_probe,
 	.config_init	= kszphy_config_init,
@@ -1010,7 +1003,6 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8081,
 	.name		= "Micrel KSZ8081 or KSZ8091",
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
-	.features	= PHY_BASIC_FEATURES,
 	.driver_data	= &ksz8081_type,
 	.probe		= kszphy_probe,
 	.config_init	= kszphy_config_init,
@@ -1025,7 +1017,6 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8061,
 	.name		= "Micrel KSZ8061",
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
-	.features	= PHY_BASIC_FEATURES,
 	.config_init	= ksz8061_config_init,
 	.ack_interrupt	= kszphy_ack_interrupt,
 	.config_intr	= kszphy_config_intr,
@@ -1035,7 +1026,6 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ9021,
 	.phy_id_mask	= 0x000ffffe,
 	.name		= "Micrel KSZ9021 Gigabit PHY",
-	.features	= PHY_GBIT_FEATURES,
 	.driver_data	= &ksz9021_type,
 	.probe		= kszphy_probe,
 	.config_init	= ksz9021_config_init,
@@ -1052,7 +1042,6 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ9031,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Micrel KSZ9031 Gigabit PHY",
-	.features	= PHY_GBIT_FEATURES,
 	.driver_data	= &ksz9021_type,
 	.probe		= kszphy_probe,
 	.config_init	= ksz9031_config_init,
@@ -1069,7 +1058,6 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ9131,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Microchip KSZ9131 Gigabit PHY",
-	.features	= PHY_GBIT_FEATURES,
 	.driver_data	= &ksz9021_type,
 	.probe		= kszphy_probe,
 	.config_init	= ksz9131_config_init,
@@ -1085,7 +1073,6 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8873MLL,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Micrel KSZ8873MLL Switch",
-	.features	= PHY_BASIC_FEATURES,
 	.config_init	= kszphy_config_init,
 	.config_aneg	= ksz8873mll_config_aneg,
 	.read_status	= ksz8873mll_read_status,
@@ -1095,7 +1082,6 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ886X,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Micrel KSZ886X Switch",
-	.features	= PHY_BASIC_FEATURES,
 	.config_init	= kszphy_config_init,
 	.suspend	= genphy_suspend,
 	.resume		= genphy_resume,
@@ -1103,7 +1089,6 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8795,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Micrel KSZ8795",
-	.features	= PHY_BASIC_FEATURES,
 	.config_init	= kszphy_config_init,
 	.config_aneg	= ksz8873mll_config_aneg,
 	.read_status	= ksz8873mll_read_status,
@@ -1113,7 +1098,6 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ9477,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Microchip KSZ9477",
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= kszphy_config_init,
 	.suspend	= genphy_suspend,
 	.resume		= genphy_resume,
diff --git a/drivers/net/phy/microchip.c b/drivers/net/phy/microchip.c
index c6cbb3aa8..f77130d31 100644
--- a/drivers/net/phy/microchip.c
+++ b/drivers/net/phy/microchip.c
@@ -333,8 +333,6 @@ static struct phy_driver microchip_phy_driver[] = {
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Microchip LAN88xx",
 
-	.features	= PHY_GBIT_FEATURES,
-
 	.probe		= lan88xx_probe,
 	.remove		= lan88xx_remove,
 
diff --git a/drivers/net/phy/mscc.c b/drivers/net/phy/mscc.c
index db50efb30..a40c89fc6 100644
--- a/drivers/net/phy/mscc.c
+++ b/drivers/net/phy/mscc.c
@@ -1882,7 +1882,6 @@ static struct phy_driver vsc85xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8530,
 	.name		= "Microsemi FE VSC8530",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_BASIC_FEATURES,
 	.soft_reset	= &genphy_soft_reset,
 	.config_init	= &vsc85xx_config_init,
 	.config_aneg    = &vsc85xx_config_aneg,
@@ -1907,7 +1906,6 @@ static struct phy_driver vsc85xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8531,
 	.name		= "Microsemi VSC8531",
 	.phy_id_mask    = 0xfffffff0,
-	.features	= PHY_GBIT_FEATURES,
 	.soft_reset	= &genphy_soft_reset,
 	.config_init    = &vsc85xx_config_init,
 	.config_aneg    = &vsc85xx_config_aneg,
@@ -1932,7 +1930,6 @@ static struct phy_driver vsc85xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8540,
 	.name		= "Microsemi FE VSC8540 SyncE",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_BASIC_FEATURES,
 	.soft_reset	= &genphy_soft_reset,
 	.config_init	= &vsc85xx_config_init,
 	.config_aneg	= &vsc85xx_config_aneg,
@@ -1957,7 +1954,6 @@ static struct phy_driver vsc85xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8541,
 	.name		= "Microsemi VSC8541 SyncE",
 	.phy_id_mask    = 0xfffffff0,
-	.features	= PHY_GBIT_FEATURES,
 	.soft_reset	= &genphy_soft_reset,
 	.config_init    = &vsc85xx_config_init,
 	.config_aneg    = &vsc85xx_config_aneg,
@@ -1982,7 +1978,6 @@ static struct phy_driver vsc85xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8574,
 	.name		= "Microsemi GE VSC8574 SyncE",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_GBIT_FEATURES,
 	.soft_reset	= &genphy_soft_reset,
 	.config_init    = &vsc8584_config_init,
 	.config_aneg    = &vsc85xx_config_aneg,
@@ -2008,7 +2003,6 @@ static struct phy_driver vsc85xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8584,
 	.name		= "Microsemi GE VSC8584 SyncE",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_GBIT_FEATURES,
 	.soft_reset	= &genphy_soft_reset,
 	.config_init    = &vsc8584_config_init,
 	.config_aneg    = &vsc85xx_config_aneg,
diff --git a/drivers/net/phy/national.c b/drivers/net/phy/national.c
index 42282a86b..d233ebe27 100644
--- a/drivers/net/phy/national.c
+++ b/drivers/net/phy/national.c
@@ -128,7 +128,6 @@ static struct phy_driver dp83865_driver[] = { {
 	.phy_id = DP83865_PHY_ID,
 	.phy_id_mask = 0xfffffff0,
 	.name = "NatSemi DP83865",
-	.features = PHY_GBIT_FEATURES,
 	.config_init = ns_config_init,
 	.ack_interrupt = ns_ack_interrupt,
 	.config_intr = ns_config_intr,
diff --git a/drivers/net/phy/qsemi.c b/drivers/net/phy/qsemi.c
index 5486f6fb2..6cffae137 100644
--- a/drivers/net/phy/qsemi.c
+++ b/drivers/net/phy/qsemi.c
@@ -110,7 +110,6 @@ static struct phy_driver qs6612_driver[] = { {
 	.phy_id		= 0x00181440,
 	.name		= "QS6612",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_BASIC_FEATURES,
 	.config_init	= qs6612_config_init,
 	.ack_interrupt	= qs6612_ack_interrupt,
 	.config_intr	= qs6612_config_intr,
diff --git a/drivers/net/phy/rockchip.c b/drivers/net/phy/rockchip.c
index 9053b1d01..039c051d2 100644
--- a/drivers/net/phy/rockchip.c
+++ b/drivers/net/phy/rockchip.c
@@ -175,7 +175,6 @@ static struct phy_driver rockchip_phy_driver[] = {
 	.phy_id			= INTERNAL_EPHY_ID,
 	.phy_id_mask		= 0xfffffff0,
 	.name			= "Rockchip integrated EPHY",
-	.features		= PHY_BASIC_FEATURES,
 	.flags			= 0,
 	.link_change_notify	= rockchip_link_change_notify,
 	.soft_reset		= genphy_soft_reset,
diff --git a/drivers/net/phy/smsc.c b/drivers/net/phy/smsc.c
index c94d3bfbc..0d44709e9 100644
--- a/drivers/net/phy/smsc.c
+++ b/drivers/net/phy/smsc.c
@@ -214,8 +214,6 @@ static struct phy_driver smsc_phy_driver[] = {
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "SMSC LAN83C185",
 
-	.features	= PHY_BASIC_FEATURES,
-
 	.probe		= smsc_phy_probe,
 
 	/* basic functions */
@@ -233,8 +231,6 @@ static struct phy_driver smsc_phy_driver[] = {
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "SMSC LAN8187",
 
-	.features	= PHY_BASIC_FEATURES,
-
 	.probe		= smsc_phy_probe,
 
 	/* basic functions */
@@ -257,8 +253,6 @@ static struct phy_driver smsc_phy_driver[] = {
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "SMSC LAN8700",
 
-	.features	= PHY_BASIC_FEATURES,
-
 	.probe		= smsc_phy_probe,
 
 	/* basic functions */
@@ -282,8 +276,6 @@ static struct phy_driver smsc_phy_driver[] = {
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "SMSC LAN911x Internal PHY",
 
-	.features	= PHY_BASIC_FEATURES,
-
 	.probe		= smsc_phy_probe,
 
 	/* basic functions */
@@ -300,7 +292,6 @@ static struct phy_driver smsc_phy_driver[] = {
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "SMSC LAN8710/LAN8720",
 
-	.features	= PHY_BASIC_FEATURES,
 	.flags		= PHY_RST_AFTER_CLK_EN,
 
 	.probe		= smsc_phy_probe,
@@ -326,8 +317,6 @@ static struct phy_driver smsc_phy_driver[] = {
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "SMSC LAN8740",
 
-	.features	= PHY_BASIC_FEATURES,
-
 	.probe		= smsc_phy_probe,
 
 	/* basic functions */
diff --git a/drivers/net/phy/ste10Xp.c b/drivers/net/phy/ste10Xp.c
index 5b6acf431..a5aa89667 100644
--- a/drivers/net/phy/ste10Xp.c
+++ b/drivers/net/phy/ste10Xp.c
@@ -81,7 +81,6 @@ static struct phy_driver ste10xp_pdriver[] = {
 	.phy_id = STE101P_PHY_ID,
 	.phy_id_mask = 0xfffffff0,
 	.name = "STe101p",
-	.features = PHY_BASIC_FEATURES,
 	.config_init = ste10Xp_config_init,
 	.ack_interrupt = ste10Xp_ack_interrupt,
 	.config_intr = ste10Xp_config_intr,
@@ -91,7 +90,6 @@ static struct phy_driver ste10xp_pdriver[] = {
 	.phy_id = STE100P_PHY_ID,
 	.phy_id_mask = 0xffffffff,
 	.name = "STe100p",
-	.features = PHY_BASIC_FEATURES,
 	.config_init = ste10Xp_config_init,
 	.ack_interrupt = ste10Xp_ack_interrupt,
 	.config_intr = ste10Xp_config_intr,
diff --git a/drivers/net/phy/uPD60620.c b/drivers/net/phy/uPD60620.c
index 219fc7cdc..145689813 100644
--- a/drivers/net/phy/uPD60620.c
+++ b/drivers/net/phy/uPD60620.c
@@ -87,7 +87,6 @@ static struct phy_driver upd60620_driver[1] = { {
 	.phy_id         = UPD60620_PHY_ID,
 	.phy_id_mask    = 0xfffffffe,
 	.name           = "Renesas uPD60620",
-	.features       = PHY_BASIC_FEATURES,
 	.flags          = 0,
 	.config_init    = upd60620_config_init,
 	.read_status    = upd60620_read_status,
diff --git a/drivers/net/phy/vitesse.c b/drivers/net/phy/vitesse.c
index dc0dd87a6..34077e475 100644
--- a/drivers/net/phy/vitesse.c
+++ b/drivers/net/phy/vitesse.c
@@ -389,7 +389,6 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id         = PHY_ID_VSC8234,
 	.name           = "Vitesse VSC8234",
 	.phy_id_mask    = 0x000ffff0,
-	.features       = PHY_GBIT_FEATURES,
 	.config_init    = &vsc824x_config_init,
 	.config_aneg    = &vsc82x4_config_aneg,
 	.ack_interrupt  = &vsc824x_ack_interrupt,
@@ -398,7 +397,6 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8244,
 	.name		= "Vitesse VSC8244",
 	.phy_id_mask	= 0x000fffc0,
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= &vsc824x_config_init,
 	.config_aneg	= &vsc82x4_config_aneg,
 	.ack_interrupt	= &vsc824x_ack_interrupt,
@@ -407,7 +405,6 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8514,
 	.name		= "Vitesse VSC8514",
 	.phy_id_mask	= 0x000ffff0,
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= &vsc824x_config_init,
 	.config_aneg	= &vsc82x4_config_aneg,
 	.ack_interrupt	= &vsc824x_ack_interrupt,
@@ -416,7 +413,6 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id         = PHY_ID_VSC8572,
 	.name           = "Vitesse VSC8572",
 	.phy_id_mask    = 0x000ffff0,
-	.features       = PHY_GBIT_FEATURES,
 	.config_init    = &vsc824x_config_init,
 	.config_aneg    = &vsc82x4_config_aneg,
 	.ack_interrupt  = &vsc824x_ack_interrupt,
@@ -425,7 +421,6 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id         = PHY_ID_VSC8601,
 	.name           = "Vitesse VSC8601",
 	.phy_id_mask    = 0x000ffff0,
-	.features       = PHY_GBIT_FEATURES,
 	.config_init    = &vsc8601_config_init,
 	.ack_interrupt  = &vsc824x_ack_interrupt,
 	.config_intr    = &vsc82xx_config_intr,
@@ -433,7 +428,6 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id         = PHY_ID_VSC7385,
 	.name           = "Vitesse VSC7385",
 	.phy_id_mask    = 0x000ffff0,
-	.features       = PHY_GBIT_FEATURES,
 	.config_init    = vsc738x_config_init,
 	.config_aneg    = vsc73xx_config_aneg,
 	.read_page      = vsc73xx_read_page,
@@ -442,7 +436,6 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id         = PHY_ID_VSC7388,
 	.name           = "Vitesse VSC7388",
 	.phy_id_mask    = 0x000ffff0,
-	.features       = PHY_GBIT_FEATURES,
 	.config_init    = vsc738x_config_init,
 	.config_aneg    = vsc73xx_config_aneg,
 	.read_page      = vsc73xx_read_page,
@@ -451,7 +444,6 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id         = PHY_ID_VSC7395,
 	.name           = "Vitesse VSC7395",
 	.phy_id_mask    = 0x000ffff0,
-	.features       = PHY_GBIT_FEATURES,
 	.config_init    = vsc739x_config_init,
 	.config_aneg    = vsc73xx_config_aneg,
 	.read_page      = vsc73xx_read_page,
@@ -460,7 +452,6 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id         = PHY_ID_VSC7398,
 	.name           = "Vitesse VSC7398",
 	.phy_id_mask    = 0x000ffff0,
-	.features       = PHY_GBIT_FEATURES,
 	.config_init    = vsc739x_config_init,
 	.config_aneg    = vsc73xx_config_aneg,
 	.read_page      = vsc73xx_read_page,
@@ -469,7 +460,6 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id         = PHY_ID_VSC8662,
 	.name           = "Vitesse VSC8662",
 	.phy_id_mask    = 0x000ffff0,
-	.features       = PHY_GBIT_FEATURES,
 	.config_init    = &vsc824x_config_init,
 	.config_aneg    = &vsc82x4_config_aneg,
 	.ack_interrupt  = &vsc824x_ack_interrupt,
@@ -479,7 +469,6 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8221,
 	.phy_id_mask	= 0x000ffff0,
 	.name		= "Vitesse VSC8221",
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= &vsc8221_config_init,
 	.ack_interrupt	= &vsc824x_ack_interrupt,
 	.config_intr	= &vsc82xx_config_intr,
@@ -488,7 +477,6 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8211,
 	.phy_id_mask	= 0x000ffff0,
 	.name		= "Vitesse VSC8211",
-	.features	= PHY_GBIT_FEATURES,
 	.config_init	= &vsc8221_config_init,
 	.ack_interrupt	= &vsc824x_ack_interrupt,
 	.config_intr	= &vsc82xx_config_intr,
-- 
2.21.0
