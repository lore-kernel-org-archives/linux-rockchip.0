From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH v2 net-next] net: phy: switch drivers to use dynamic feature
 detection
Date: Fri, 12 Apr 2019 20:47:03 +0200
Message-ID: <3179601a-c58d-4df3-5d90-eb3598d2827b@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
Content-Language: en-US
Sender: netdev-owner@vger.kernel.org
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>, David Miller <davem@davemloft.net>, Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, Richard Cochran <richardcochran@gmail.com>, Kevin Hilman <khilman@baylibre.com>, Heiko Stuebner <heiko@sntech.de>
Cc: bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Recently genphy_read_abilities() has been added that dynamically detects
clause 22 PHY abilities. I *think* this detection should work with all
supported PHY's, at least for the ones with basic features sets, i.e.
PHY_BASIC_FEATURES and PHY_GBIT_FEATURES. So let's remove setting these
features explicitly and rely on phylib feature detection.

I don't have access to most of these PHY's, therefore I'd appreciate
regression testing.

v2:
- make the feature constant a comment so that readers know which
  features are supported by the respective PHY

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 drivers/net/phy/amd.c        |  2 +-
 drivers/net/phy/asix.c       |  2 +-
 drivers/net/phy/at803x.c     |  6 +++---
 drivers/net/phy/bcm-cygnus.c |  4 ++--
 drivers/net/phy/bcm63xx.c    |  4 ++--
 drivers/net/phy/bcm7xxx.c    |  6 +++---
 drivers/net/phy/broadcom.c   | 34 +++++++++++++++++-----------------
 drivers/net/phy/cicada.c     |  4 ++--
 drivers/net/phy/davicom.c    |  8 ++++----
 drivers/net/phy/dp83640.c    |  2 +-
 drivers/net/phy/dp83822.c    |  2 +-
 drivers/net/phy/dp83848.c    |  2 +-
 drivers/net/phy/dp83867.c    |  2 +-
 drivers/net/phy/dp83tc811.c  |  2 +-
 drivers/net/phy/et1011c.c    |  2 +-
 drivers/net/phy/icplus.c     |  6 +++---
 drivers/net/phy/intel-xway.c | 20 ++++++++++----------
 drivers/net/phy/lxt.c        |  8 ++++----
 drivers/net/phy/marvell.c    | 28 ++++++++++++++--------------
 drivers/net/phy/meson-gxl.c  |  4 ++--
 drivers/net/phy/micrel.c     | 32 ++++++++++++++++----------------
 drivers/net/phy/microchip.c  |  2 +-
 drivers/net/phy/mscc.c       | 12 ++++++------
 drivers/net/phy/national.c   |  2 +-
 drivers/net/phy/qsemi.c      |  2 +-
 drivers/net/phy/rockchip.c   |  2 +-
 drivers/net/phy/smsc.c       | 12 ++++++------
 drivers/net/phy/ste10Xp.c    |  4 ++--
 drivers/net/phy/uPD60620.c   |  2 +-
 drivers/net/phy/vitesse.c    | 22 +++++++++++-----------
 30 files changed, 120 insertions(+), 120 deletions(-)

diff --git a/drivers/net/phy/amd.c b/drivers/net/phy/amd.c
index 65b4b0960..eef35f8c8 100644
--- a/drivers/net/phy/amd.c
+++ b/drivers/net/phy/amd.c
@@ -60,7 +60,7 @@ static struct phy_driver am79c_driver[] = { {
 	.phy_id		= PHY_ID_AM79C874,
 	.name		= "AM79C874",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.config_init	= am79c_config_init,
 	.ack_interrupt	= am79c_ack_interrupt,
 	.config_intr	= am79c_config_intr,
diff --git a/drivers/net/phy/asix.c b/drivers/net/phy/asix.c
index f14ba5366..79bf7ef1f 100644
--- a/drivers/net/phy/asix.c
+++ b/drivers/net/phy/asix.c
@@ -43,7 +43,7 @@ static struct phy_driver asix_driver[] = { {
 	.phy_id		= PHY_ID_ASIX_AX88796B,
 	.name		= "Asix Electronics AX88796B",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.soft_reset	= asix_soft_reset,
 } };
 
diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index f315ab468..406111753 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -389,7 +389,7 @@ static struct phy_driver at803x_driver[] = {
 	.get_wol		= at803x_get_wol,
 	.suspend		= at803x_suspend,
 	.resume			= at803x_resume,
-	.features		= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.ack_interrupt		= at803x_ack_interrupt,
 	.config_intr		= at803x_config_intr,
 }, {
@@ -404,7 +404,7 @@ static struct phy_driver at803x_driver[] = {
 	.get_wol		= at803x_get_wol,
 	.suspend		= at803x_suspend,
 	.resume			= at803x_resume,
-	.features		= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.ack_interrupt		= at803x_ack_interrupt,
 	.config_intr		= at803x_config_intr,
 }, {
@@ -418,7 +418,7 @@ static struct phy_driver at803x_driver[] = {
 	.get_wol		= at803x_get_wol,
 	.suspend		= at803x_suspend,
 	.resume			= at803x_resume,
-	.features		= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.aneg_done		= at803x_aneg_done,
 	.ack_interrupt		= &at803x_ack_interrupt,
 	.config_intr		= &at803x_config_intr,
diff --git a/drivers/net/phy/bcm-cygnus.c b/drivers/net/phy/bcm-cygnus.c
index 625b7cb76..9ccf28b0a 100644
--- a/drivers/net/phy/bcm-cygnus.c
+++ b/drivers/net/phy/bcm-cygnus.c
@@ -254,7 +254,7 @@ static struct phy_driver bcm_cygnus_phy_driver[] = {
 	.phy_id        = PHY_ID_BCM_CYGNUS,
 	.phy_id_mask   = 0xfffffff0,
 	.name          = "Broadcom Cygnus PHY",
-	.features      = PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init   = bcm_cygnus_config_init,
 	.ack_interrupt = bcm_phy_ack_intr,
 	.config_intr   = bcm_phy_config_intr,
@@ -264,7 +264,7 @@ static struct phy_driver bcm_cygnus_phy_driver[] = {
 	.phy_id		= PHY_ID_BCM_OMEGA,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom Omega Combo GPHY",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.flags		= PHY_IS_INTERNAL,
 	.config_init	= bcm_omega_config_init,
 	.suspend	= genphy_suspend,
diff --git a/drivers/net/phy/bcm63xx.c b/drivers/net/phy/bcm63xx.c
index 44e6cff41..23f1958ba 100644
--- a/drivers/net/phy/bcm63xx.c
+++ b/drivers/net/phy/bcm63xx.c
@@ -64,7 +64,7 @@ static struct phy_driver bcm63xx_driver[] = {
 	.phy_id		= 0x00406000,
 	.phy_id_mask	= 0xfffffc00,
 	.name		= "Broadcom BCM63XX (1)",
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.flags		= PHY_IS_INTERNAL,
 	.config_init	= bcm63xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
@@ -73,7 +73,7 @@ static struct phy_driver bcm63xx_driver[] = {
 	/* same phy as above, with just a different OUI */
 	.phy_id		= 0x002bdc00,
 	.phy_id_mask	= 0xfffffc00,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.flags		= PHY_IS_INTERNAL,
 	.config_init	= bcm63xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
diff --git a/drivers/net/phy/bcm7xxx.c b/drivers/net/phy/bcm7xxx.c
index a75e1b283..8fc33867e 100644
--- a/drivers/net/phy/bcm7xxx.c
+++ b/drivers/net/phy/bcm7xxx.c
@@ -538,7 +538,7 @@ static int bcm7xxx_28nm_probe(struct phy_device *phydev)
 	.phy_id		= (_oui),					\
 	.phy_id_mask	= 0xfffffff0,					\
 	.name		= _name,					\
-	.features	= PHY_GBIT_FEATURES,				\
+	/* PHY_GBIT_FEATURES */						\
 	.flags		= PHY_IS_INTERNAL,				\
 	.config_init	= bcm7xxx_28nm_config_init,			\
 	.resume		= bcm7xxx_28nm_resume,				\
@@ -555,7 +555,7 @@ static int bcm7xxx_28nm_probe(struct phy_device *phydev)
 	.phy_id		= (_oui),					\
 	.phy_id_mask	= 0xfffffff0,					\
 	.name		= _name,					\
-	.features	= PHY_BASIC_FEATURES,				\
+	/* PHY_BASIC_FEATURES */					\
 	.flags		= PHY_IS_INTERNAL,				\
 	.config_init	= bcm7xxx_28nm_ephy_config_init,		\
 	.resume		= bcm7xxx_28nm_ephy_resume,			\
@@ -570,7 +570,7 @@ static int bcm7xxx_28nm_probe(struct phy_device *phydev)
 	.phy_id         = (_oui),					\
 	.phy_id_mask    = 0xfffffff0,					\
 	.name           = _name,					\
-	.features       = PHY_BASIC_FEATURES,				\
+	/* PHY_BASIC_FEATURES */					\
 	.flags          = PHY_IS_INTERNAL,				\
 	.config_init    = bcm7xxx_config_init,				\
 	.suspend        = bcm7xxx_suspend,				\
diff --git a/drivers/net/phy/broadcom.c b/drivers/net/phy/broadcom.c
index cb86a3e90..67fa05d67 100644
--- a/drivers/net/phy/broadcom.c
+++ b/drivers/net/phy/broadcom.c
@@ -610,7 +610,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM5411,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM5411",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -618,7 +618,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM5421,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM5421",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -626,7 +626,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM54210E,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM54210E",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -634,7 +634,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM5461,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM5461",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -642,7 +642,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM54612E,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM54612E",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -650,7 +650,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM54616S,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM54616S",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= bcm54xx_config_init,
 	.config_aneg	= bcm54616s_config_aneg,
 	.ack_interrupt	= bcm_phy_ack_intr,
@@ -659,7 +659,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM5464,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM5464",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -667,7 +667,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM5481,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM5481",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= bcm54xx_config_init,
 	.config_aneg	= bcm5481_config_aneg,
 	.ack_interrupt	= bcm_phy_ack_intr,
@@ -676,7 +676,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id         = PHY_ID_BCM54810,
 	.phy_id_mask    = 0xfffffff0,
 	.name           = "Broadcom BCM54810",
-	.features       = PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init    = bcm54xx_config_init,
 	.config_aneg    = bcm5481_config_aneg,
 	.ack_interrupt  = bcm_phy_ack_intr,
@@ -685,7 +685,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM5482,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM5482",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= bcm5482_config_init,
 	.read_status	= bcm5482_read_status,
 	.ack_interrupt	= bcm_phy_ack_intr,
@@ -694,7 +694,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM50610,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM50610",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -702,7 +702,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM50610M,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM50610M",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -710,7 +710,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM57780,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM57780",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= bcm54xx_config_init,
 	.ack_interrupt	= bcm_phy_ack_intr,
 	.config_intr	= bcm_phy_config_intr,
@@ -718,7 +718,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCMAC131,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCMAC131",
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.config_init	= brcm_fet_config_init,
 	.ack_interrupt	= brcm_fet_ack_interrupt,
 	.config_intr	= brcm_fet_config_intr,
@@ -726,7 +726,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id		= PHY_ID_BCM5241,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM5241",
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.config_init	= brcm_fet_config_init,
 	.ack_interrupt	= brcm_fet_ack_interrupt,
 	.config_intr	= brcm_fet_config_intr,
@@ -735,7 +735,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Broadcom BCM5395",
 	.flags		= PHY_IS_INTERNAL,
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.get_sset_count	= bcm_phy_get_sset_count,
 	.get_strings	= bcm_phy_get_strings,
 	.get_stats	= bcm53xx_phy_get_stats,
@@ -744,7 +744,7 @@ static struct phy_driver broadcom_drivers[] = {
 	.phy_id         = PHY_ID_BCM89610,
 	.phy_id_mask    = 0xfffffff0,
 	.name           = "Broadcom BCM89610",
-	.features       = PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init    = bcm54xx_config_init,
 	.ack_interrupt  = bcm_phy_ack_intr,
 	.config_intr    = bcm_phy_config_intr,
diff --git a/drivers/net/phy/cicada.c b/drivers/net/phy/cicada.c
index 108ed24f8..9d1612a4d 100644
--- a/drivers/net/phy/cicada.c
+++ b/drivers/net/phy/cicada.c
@@ -102,7 +102,7 @@ static struct phy_driver cis820x_driver[] = {
 	.phy_id		= 0x000fc410,
 	.name		= "Cicada Cis8201",
 	.phy_id_mask	= 0x000ffff0,
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= &cis820x_config_init,
 	.ack_interrupt	= &cis820x_ack_interrupt,
 	.config_intr	= &cis820x_config_intr,
@@ -110,7 +110,7 @@ static struct phy_driver cis820x_driver[] = {
 	.phy_id		= 0x000fc440,
 	.name		= "Cicada Cis8204",
 	.phy_id_mask	= 0x000fffc0,
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= &cis820x_config_init,
 	.ack_interrupt	= &cis820x_ack_interrupt,
 	.config_intr	= &cis820x_config_intr,
diff --git a/drivers/net/phy/davicom.c b/drivers/net/phy/davicom.c
index bf39baa7f..942f27746 100644
--- a/drivers/net/phy/davicom.c
+++ b/drivers/net/phy/davicom.c
@@ -144,7 +144,7 @@ static struct phy_driver dm91xx_driver[] = {
 	.phy_id		= 0x0181b880,
 	.name		= "Davicom DM9161E",
 	.phy_id_mask	= 0x0ffffff0,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.config_init	= dm9161_config_init,
 	.config_aneg	= dm9161_config_aneg,
 	.ack_interrupt	= dm9161_ack_interrupt,
@@ -153,7 +153,7 @@ static struct phy_driver dm91xx_driver[] = {
 	.phy_id		= 0x0181b8b0,
 	.name		= "Davicom DM9161B/C",
 	.phy_id_mask	= 0x0ffffff0,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.config_init	= dm9161_config_init,
 	.config_aneg	= dm9161_config_aneg,
 	.ack_interrupt	= dm9161_ack_interrupt,
@@ -162,7 +162,7 @@ static struct phy_driver dm91xx_driver[] = {
 	.phy_id		= 0x0181b8a0,
 	.name		= "Davicom DM9161A",
 	.phy_id_mask	= 0x0ffffff0,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.config_init	= dm9161_config_init,
 	.config_aneg	= dm9161_config_aneg,
 	.ack_interrupt	= dm9161_ack_interrupt,
@@ -171,7 +171,7 @@ static struct phy_driver dm91xx_driver[] = {
 	.phy_id		= 0x00181b80,
 	.name		= "Davicom DM9131",
 	.phy_id_mask	= 0x0ffffff0,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.ack_interrupt	= dm9161_ack_interrupt,
 	.config_intr	= dm9161_config_intr,
 } };
diff --git a/drivers/net/phy/dp83640.c b/drivers/net/phy/dp83640.c
index 2fe2ebaf6..658009416 100644
--- a/drivers/net/phy/dp83640.c
+++ b/drivers/net/phy/dp83640.c
@@ -1514,7 +1514,7 @@ static struct phy_driver dp83640_driver = {
 	.phy_id		= DP83640_PHY_ID,
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "NatSemi DP83640",
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.probe		= dp83640_probe,
 	.remove		= dp83640_remove,
 	.soft_reset	= dp83640_soft_reset,
diff --git a/drivers/net/phy/dp83822.c b/drivers/net/phy/dp83822.c
index 97d45bd5b..7ed4760fb 100644
--- a/drivers/net/phy/dp83822.c
+++ b/drivers/net/phy/dp83822.c
@@ -310,7 +310,7 @@ static int dp83822_resume(struct phy_device *phydev)
 	{							\
 		PHY_ID_MATCH_MODEL(_id),			\
 		.name		= (_name),			\
-		.features	= PHY_BASIC_FEATURES,		\
+		/* PHY_BASIC_FEATURES */			\
 		.soft_reset	= dp83822_phy_reset,		\
 		.config_init	= dp83822_config_init,		\
 		.get_wol = dp83822_get_wol,			\
diff --git a/drivers/net/phy/dp83848.c b/drivers/net/phy/dp83848.c
index f55dc907c..6f9bc7d91 100644
--- a/drivers/net/phy/dp83848.c
+++ b/drivers/net/phy/dp83848.c
@@ -99,7 +99,7 @@ MODULE_DEVICE_TABLE(mdio, dp83848_tbl);
 		.phy_id		= _id,				\
 		.phy_id_mask	= 0xfffffff0,			\
 		.name		= _name,			\
-		.features	= PHY_BASIC_FEATURES,		\
+		/* PHY_BASIC_FEATURES */			\
 								\
 		.soft_reset	= genphy_soft_reset,		\
 		.config_init	= _config_init,			\
diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index 8448d0181..fd35131a0 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -315,7 +315,7 @@ static struct phy_driver dp83867_driver[] = {
 		.phy_id		= DP83867_PHY_ID,
 		.phy_id_mask	= 0xfffffff0,
 		.name		= "TI DP83867",
-		.features	= PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 
 		.config_init	= dp83867_config_init,
 		.soft_reset	= dp83867_phy_reset,
diff --git a/drivers/net/phy/dp83tc811.c b/drivers/net/phy/dp83tc811.c
index e9704af1d..ac27da168 100644
--- a/drivers/net/phy/dp83tc811.c
+++ b/drivers/net/phy/dp83tc811.c
@@ -338,7 +338,7 @@ static struct phy_driver dp83811_driver[] = {
 		.phy_id = DP83TC811_PHY_ID,
 		.phy_id_mask = 0xfffffff0,
 		.name = "TI DP83TC811",
-		.features = PHY_BASIC_FEATURES,
+		/* PHY_BASIC_FEATURES */
 		.config_init = dp83811_config_init,
 		.config_aneg = dp83811_config_aneg,
 		.soft_reset = dp83811_phy_reset,
diff --git a/drivers/net/phy/et1011c.c b/drivers/net/phy/et1011c.c
index 2aa367c04..09e07b902 100644
--- a/drivers/net/phy/et1011c.c
+++ b/drivers/net/phy/et1011c.c
@@ -86,7 +86,7 @@ static struct phy_driver et1011c_driver[] = { {
 	.phy_id		= 0x0282f014,
 	.name		= "ET1011C",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_aneg	= et1011c_config_aneg,
 	.read_status	= et1011c_read_status,
 } };
diff --git a/drivers/net/phy/icplus.c b/drivers/net/phy/icplus.c
index ebef8354b..d6e8516cd 100644
--- a/drivers/net/phy/icplus.c
+++ b/drivers/net/phy/icplus.c
@@ -311,7 +311,7 @@ static struct phy_driver icplus_driver[] = {
 	.phy_id		= 0x02430d80,
 	.name		= "ICPlus IP175C",
 	.phy_id_mask	= 0x0ffffff0,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.config_init	= &ip175c_config_init,
 	.config_aneg	= &ip175c_config_aneg,
 	.read_status	= &ip175c_read_status,
@@ -321,7 +321,7 @@ static struct phy_driver icplus_driver[] = {
 	.phy_id		= 0x02430d90,
 	.name		= "ICPlus IP1001",
 	.phy_id_mask	= 0x0ffffff0,
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= &ip1001_config_init,
 	.suspend	= genphy_suspend,
 	.resume		= genphy_resume,
@@ -329,7 +329,7 @@ static struct phy_driver icplus_driver[] = {
 	.phy_id		= 0x02430c54,
 	.name		= "ICPlus IP101A/G",
 	.phy_id_mask	= 0x0ffffff0,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.probe		= ip101a_g_probe,
 	.config_intr	= ip101a_g_config_intr,
 	.did_interrupt	= ip101a_g_did_interrupt,
diff --git a/drivers/net/phy/intel-xway.c b/drivers/net/phy/intel-xway.c
index 02d971331..b7875b360 100644
--- a/drivers/net/phy/intel-xway.c
+++ b/drivers/net/phy/intel-xway.c
@@ -232,7 +232,7 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY11G_1_3,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY11G (PEF 7071/PEF 7072) v1.3",
-		.features	= PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.config_init	= xway_gphy_config_init,
 		.config_aneg	= xway_gphy14_config_aneg,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
@@ -244,7 +244,7 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY22F_1_3,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY22F (PEF 7061) v1.3",
-		.features	= PHY_BASIC_FEATURES,
+		/* PHY_BASIC_FEATURES */
 		.config_init	= xway_gphy_config_init,
 		.config_aneg	= xway_gphy14_config_aneg,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
@@ -256,7 +256,7 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY11G_1_4,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY11G (PEF 7071/PEF 7072) v1.4",
-		.features	= PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.config_init	= xway_gphy_config_init,
 		.config_aneg	= xway_gphy14_config_aneg,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
@@ -268,7 +268,7 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY22F_1_4,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY22F (PEF 7061) v1.4",
-		.features	= PHY_BASIC_FEATURES,
+		/* PHY_BASIC_FEATURES */
 		.config_init	= xway_gphy_config_init,
 		.config_aneg	= xway_gphy14_config_aneg,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
@@ -280,7 +280,7 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY11G_1_5,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY11G (PEF 7071/PEF 7072) v1.5 / v1.6",
-		.features	= PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.config_init	= xway_gphy_config_init,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
 		.did_interrupt	= xway_gphy_did_interrupt,
@@ -291,7 +291,7 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY22F_1_5,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY22F (PEF 7061) v1.5 / v1.6",
-		.features	= PHY_BASIC_FEATURES,
+		/* PHY_BASIC_FEATURES */
 		.config_init	= xway_gphy_config_init,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
 		.did_interrupt	= xway_gphy_did_interrupt,
@@ -302,7 +302,7 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY11G_VR9_1_1,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY11G (xRX v1.1 integrated)",
-		.features	= PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.config_init	= xway_gphy_config_init,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
 		.did_interrupt	= xway_gphy_did_interrupt,
@@ -313,7 +313,7 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY22F_VR9_1_1,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY22F (xRX v1.1 integrated)",
-		.features	= PHY_BASIC_FEATURES,
+		/* PHY_BASIC_FEATURES */
 		.config_init	= xway_gphy_config_init,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
 		.did_interrupt	= xway_gphy_did_interrupt,
@@ -324,7 +324,7 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY11G_VR9_1_2,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY11G (xRX v1.2 integrated)",
-		.features	= PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.config_init	= xway_gphy_config_init,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
 		.did_interrupt	= xway_gphy_did_interrupt,
@@ -335,7 +335,7 @@ static struct phy_driver xway_gphy[] = {
 		.phy_id		= PHY_ID_PHY22F_VR9_1_2,
 		.phy_id_mask	= 0xffffffff,
 		.name		= "Intel XWAY PHY22F (xRX v1.2 integrated)",
-		.features	= PHY_BASIC_FEATURES,
+		/* PHY_BASIC_FEATURES */
 		.config_init	= xway_gphy_config_init,
 		.ack_interrupt	= xway_gphy_ack_interrupt,
 		.did_interrupt	= xway_gphy_did_interrupt,
diff --git a/drivers/net/phy/lxt.c b/drivers/net/phy/lxt.c
index a93d673ba..314486288 100644
--- a/drivers/net/phy/lxt.c
+++ b/drivers/net/phy/lxt.c
@@ -251,7 +251,7 @@ static struct phy_driver lxt97x_driver[] = {
 	.phy_id		= 0x78100000,
 	.name		= "LXT970",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.config_init	= lxt970_config_init,
 	.ack_interrupt	= lxt970_ack_interrupt,
 	.config_intr	= lxt970_config_intr,
@@ -259,14 +259,14 @@ static struct phy_driver lxt97x_driver[] = {
 	.phy_id		= 0x001378e0,
 	.name		= "LXT971",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.ack_interrupt	= lxt971_ack_interrupt,
 	.config_intr	= lxt971_config_intr,
 }, {
 	.phy_id		= 0x00137a10,
 	.name		= "LXT973-A2",
 	.phy_id_mask	= 0xffffffff,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.flags		= 0,
 	.probe		= lxt973_probe,
 	.config_aneg	= lxt973_config_aneg,
@@ -275,7 +275,7 @@ static struct phy_driver lxt97x_driver[] = {
 	.phy_id		= 0x00137a10,
 	.name		= "LXT973",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.flags		= 0,
 	.probe		= lxt973_probe,
 	.config_aneg	= lxt973_config_aneg,
diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
index 65350186d..8754cb883 100644
--- a/drivers/net/phy/marvell.c
+++ b/drivers/net/phy/marvell.c
@@ -2126,7 +2126,7 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1101,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1101",
-		.features = PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.probe = marvell_probe,
 		.config_init = &marvell_config_init,
 		.config_aneg = &m88e1101_config_aneg,
@@ -2144,7 +2144,7 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1112,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1112",
-		.features = PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.probe = marvell_probe,
 		.config_init = &m88e1111_config_init,
 		.config_aneg = &marvell_config_aneg,
@@ -2162,7 +2162,7 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1111,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1111",
-		.features = PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.probe = marvell_probe,
 		.config_init = &m88e1111_config_init,
 		.config_aneg = &marvell_config_aneg,
@@ -2181,7 +2181,7 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1118,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1118",
-		.features = PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.probe = marvell_probe,
 		.config_init = &m88e1118_config_init,
 		.config_aneg = &m88e1118_config_aneg,
@@ -2199,7 +2199,7 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1121R,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1121R",
-		.features = PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.probe = &m88e1121_probe,
 		.config_init = &marvell_config_init,
 		.config_aneg = &m88e1121_config_aneg,
@@ -2219,7 +2219,7 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1318S,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1318S",
-		.features = PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.probe = marvell_probe,
 		.config_init = &m88e1318_config_init,
 		.config_aneg = &m88e1318_config_aneg,
@@ -2241,7 +2241,7 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1145,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1145",
-		.features = PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.probe = marvell_probe,
 		.config_init = &m88e1145_config_init,
 		.config_aneg = &m88e1101_config_aneg,
@@ -2260,7 +2260,7 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1149R,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1149R",
-		.features = PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.probe = marvell_probe,
 		.config_init = &m88e1149_config_init,
 		.config_aneg = &m88e1118_config_aneg,
@@ -2278,7 +2278,7 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1240,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1240",
-		.features = PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.probe = marvell_probe,
 		.config_init = &m88e1111_config_init,
 		.config_aneg = &marvell_config_aneg,
@@ -2296,7 +2296,7 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1116R,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1116R",
-		.features = PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.probe = marvell_probe,
 		.config_init = &m88e1116r_config_init,
 		.ack_interrupt = &marvell_ack_interrupt,
@@ -2336,7 +2336,7 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E1540,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1540",
-		.features = PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.probe = m88e1510_probe,
 		.config_init = &marvell_config_init,
 		.config_aneg = &m88e1510_config_aneg,
@@ -2359,7 +2359,7 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E1545",
 		.probe = m88e1510_probe,
-		.features = PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.config_init = &marvell_config_init,
 		.config_aneg = &m88e1510_config_aneg,
 		.read_status = &marvell_read_status,
@@ -2378,7 +2378,7 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E3016,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E3016",
-		.features = PHY_BASIC_FEATURES,
+		/* PHY_BASIC_FEATURES */
 		.probe = marvell_probe,
 		.config_init = &m88e3016_config_init,
 		.aneg_done = &marvell_aneg_done,
@@ -2398,7 +2398,7 @@ static struct phy_driver marvell_drivers[] = {
 		.phy_id = MARVELL_PHY_ID_88E6390,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.name = "Marvell 88E6390",
-		.features = PHY_GBIT_FEATURES,
+		/* PHY_GBIT_FEATURES */
 		.probe = m88e6390_probe,
 		.config_init = &marvell_config_init,
 		.config_aneg = &m88e6390_config_aneg,
diff --git a/drivers/net/phy/meson-gxl.c b/drivers/net/phy/meson-gxl.c
index 6d4a8c508..fa80d6dce 100644
--- a/drivers/net/phy/meson-gxl.c
+++ b/drivers/net/phy/meson-gxl.c
@@ -226,7 +226,7 @@ static struct phy_driver meson_gxl_phy[] = {
 	{
 		PHY_ID_MATCH_EXACT(0x01814400),
 		.name		= "Meson GXL Internal PHY",
-		.features	= PHY_BASIC_FEATURES,
+		/* PHY_BASIC_FEATURES */
 		.flags		= PHY_IS_INTERNAL,
 		.soft_reset     = genphy_soft_reset,
 		.config_init	= meson_gxl_config_init,
@@ -238,7 +238,7 @@ static struct phy_driver meson_gxl_phy[] = {
 	}, {
 		PHY_ID_MATCH_EXACT(0x01803301),
 		.name		= "Meson G12A Internal PHY",
-		.features	= PHY_BASIC_FEATURES,
+		/* PHY_BASIC_FEATURES */
 		.flags		= PHY_IS_INTERNAL,
 		.soft_reset     = genphy_soft_reset,
 		.ack_interrupt	= meson_gxl_ack_interrupt,
diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 352da24f1..d6807b5bc 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -908,7 +908,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KS8737,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Micrel KS8737",
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.driver_data	= &ks8737_type,
 	.config_init	= kszphy_config_init,
 	.ack_interrupt	= kszphy_ack_interrupt,
@@ -919,7 +919,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8021,
 	.phy_id_mask	= 0x00ffffff,
 	.name		= "Micrel KSZ8021 or KSZ8031",
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.driver_data	= &ksz8021_type,
 	.probe		= kszphy_probe,
 	.config_init	= kszphy_config_init,
@@ -934,7 +934,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8031,
 	.phy_id_mask	= 0x00ffffff,
 	.name		= "Micrel KSZ8031",
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.driver_data	= &ksz8021_type,
 	.probe		= kszphy_probe,
 	.config_init	= kszphy_config_init,
@@ -949,7 +949,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8041,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Micrel KSZ8041",
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.driver_data	= &ksz8041_type,
 	.probe		= kszphy_probe,
 	.config_init	= ksz8041_config_init,
@@ -965,7 +965,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8041RNLI,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Micrel KSZ8041RNLI",
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.driver_data	= &ksz8041_type,
 	.probe		= kszphy_probe,
 	.config_init	= kszphy_config_init,
@@ -980,7 +980,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8051,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Micrel KSZ8051",
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.driver_data	= &ksz8051_type,
 	.probe		= kszphy_probe,
 	.config_init	= kszphy_config_init,
@@ -995,7 +995,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8001,
 	.name		= "Micrel KSZ8001 or KS8721",
 	.phy_id_mask	= 0x00fffffc,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.driver_data	= &ksz8041_type,
 	.probe		= kszphy_probe,
 	.config_init	= kszphy_config_init,
@@ -1010,7 +1010,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8081,
 	.name		= "Micrel KSZ8081 or KSZ8091",
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.driver_data	= &ksz8081_type,
 	.probe		= kszphy_probe,
 	.config_init	= kszphy_config_init,
@@ -1025,7 +1025,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8061,
 	.name		= "Micrel KSZ8061",
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.config_init	= ksz8061_config_init,
 	.ack_interrupt	= kszphy_ack_interrupt,
 	.config_intr	= kszphy_config_intr,
@@ -1035,7 +1035,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ9021,
 	.phy_id_mask	= 0x000ffffe,
 	.name		= "Micrel KSZ9021 Gigabit PHY",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.driver_data	= &ksz9021_type,
 	.probe		= kszphy_probe,
 	.config_init	= ksz9021_config_init,
@@ -1052,7 +1052,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ9031,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Micrel KSZ9031 Gigabit PHY",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.driver_data	= &ksz9021_type,
 	.probe		= kszphy_probe,
 	.config_init	= ksz9031_config_init,
@@ -1069,7 +1069,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ9131,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Microchip KSZ9131 Gigabit PHY",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.driver_data	= &ksz9021_type,
 	.probe		= kszphy_probe,
 	.config_init	= ksz9131_config_init,
@@ -1085,7 +1085,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8873MLL,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Micrel KSZ8873MLL Switch",
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.config_init	= kszphy_config_init,
 	.config_aneg	= ksz8873mll_config_aneg,
 	.read_status	= ksz8873mll_read_status,
@@ -1095,7 +1095,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ886X,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Micrel KSZ886X Switch",
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.config_init	= kszphy_config_init,
 	.suspend	= genphy_suspend,
 	.resume		= genphy_resume,
@@ -1103,7 +1103,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8795,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Micrel KSZ8795",
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.config_init	= kszphy_config_init,
 	.config_aneg	= ksz8873mll_config_aneg,
 	.read_status	= ksz8873mll_read_status,
@@ -1113,7 +1113,7 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ9477,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.name		= "Microchip KSZ9477",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= kszphy_config_init,
 	.suspend	= genphy_suspend,
 	.resume		= genphy_resume,
diff --git a/drivers/net/phy/microchip.c b/drivers/net/phy/microchip.c
index c6cbb3aa8..eb1b3287f 100644
--- a/drivers/net/phy/microchip.c
+++ b/drivers/net/phy/microchip.c
@@ -333,7 +333,7 @@ static struct phy_driver microchip_phy_driver[] = {
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "Microchip LAN88xx",
 
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 
 	.probe		= lan88xx_probe,
 	.remove		= lan88xx_remove,
diff --git a/drivers/net/phy/mscc.c b/drivers/net/phy/mscc.c
index db50efb30..623313f07 100644
--- a/drivers/net/phy/mscc.c
+++ b/drivers/net/phy/mscc.c
@@ -1882,7 +1882,7 @@ static struct phy_driver vsc85xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8530,
 	.name		= "Microsemi FE VSC8530",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.soft_reset	= &genphy_soft_reset,
 	.config_init	= &vsc85xx_config_init,
 	.config_aneg    = &vsc85xx_config_aneg,
@@ -1907,7 +1907,7 @@ static struct phy_driver vsc85xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8531,
 	.name		= "Microsemi VSC8531",
 	.phy_id_mask    = 0xfffffff0,
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.soft_reset	= &genphy_soft_reset,
 	.config_init    = &vsc85xx_config_init,
 	.config_aneg    = &vsc85xx_config_aneg,
@@ -1932,7 +1932,7 @@ static struct phy_driver vsc85xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8540,
 	.name		= "Microsemi FE VSC8540 SyncE",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.soft_reset	= &genphy_soft_reset,
 	.config_init	= &vsc85xx_config_init,
 	.config_aneg	= &vsc85xx_config_aneg,
@@ -1957,7 +1957,7 @@ static struct phy_driver vsc85xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8541,
 	.name		= "Microsemi VSC8541 SyncE",
 	.phy_id_mask    = 0xfffffff0,
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.soft_reset	= &genphy_soft_reset,
 	.config_init    = &vsc85xx_config_init,
 	.config_aneg    = &vsc85xx_config_aneg,
@@ -1982,7 +1982,7 @@ static struct phy_driver vsc85xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8574,
 	.name		= "Microsemi GE VSC8574 SyncE",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.soft_reset	= &genphy_soft_reset,
 	.config_init    = &vsc8584_config_init,
 	.config_aneg    = &vsc85xx_config_aneg,
@@ -2008,7 +2008,7 @@ static struct phy_driver vsc85xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8584,
 	.name		= "Microsemi GE VSC8584 SyncE",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.soft_reset	= &genphy_soft_reset,
 	.config_init    = &vsc8584_config_init,
 	.config_aneg    = &vsc85xx_config_aneg,
diff --git a/drivers/net/phy/national.c b/drivers/net/phy/national.c
index 42282a86b..a221dd552 100644
--- a/drivers/net/phy/national.c
+++ b/drivers/net/phy/national.c
@@ -128,7 +128,7 @@ static struct phy_driver dp83865_driver[] = { {
 	.phy_id = DP83865_PHY_ID,
 	.phy_id_mask = 0xfffffff0,
 	.name = "NatSemi DP83865",
-	.features = PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init = ns_config_init,
 	.ack_interrupt = ns_ack_interrupt,
 	.config_intr = ns_config_intr,
diff --git a/drivers/net/phy/qsemi.c b/drivers/net/phy/qsemi.c
index 5486f6fb2..1b15a991e 100644
--- a/drivers/net/phy/qsemi.c
+++ b/drivers/net/phy/qsemi.c
@@ -110,7 +110,7 @@ static struct phy_driver qs6612_driver[] = { {
 	.phy_id		= 0x00181440,
 	.name		= "QS6612",
 	.phy_id_mask	= 0xfffffff0,
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.config_init	= qs6612_config_init,
 	.ack_interrupt	= qs6612_ack_interrupt,
 	.config_intr	= qs6612_config_intr,
diff --git a/drivers/net/phy/rockchip.c b/drivers/net/phy/rockchip.c
index 9053b1d01..52f1f6532 100644
--- a/drivers/net/phy/rockchip.c
+++ b/drivers/net/phy/rockchip.c
@@ -175,7 +175,7 @@ static struct phy_driver rockchip_phy_driver[] = {
 	.phy_id			= INTERNAL_EPHY_ID,
 	.phy_id_mask		= 0xfffffff0,
 	.name			= "Rockchip integrated EPHY",
-	.features		= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.flags			= 0,
 	.link_change_notify	= rockchip_link_change_notify,
 	.soft_reset		= genphy_soft_reset,
diff --git a/drivers/net/phy/smsc.c b/drivers/net/phy/smsc.c
index c94d3bfbc..dc3d92d34 100644
--- a/drivers/net/phy/smsc.c
+++ b/drivers/net/phy/smsc.c
@@ -214,7 +214,7 @@ static struct phy_driver smsc_phy_driver[] = {
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "SMSC LAN83C185",
 
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 
 	.probe		= smsc_phy_probe,
 
@@ -233,7 +233,7 @@ static struct phy_driver smsc_phy_driver[] = {
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "SMSC LAN8187",
 
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 
 	.probe		= smsc_phy_probe,
 
@@ -257,7 +257,7 @@ static struct phy_driver smsc_phy_driver[] = {
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "SMSC LAN8700",
 
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 
 	.probe		= smsc_phy_probe,
 
@@ -282,7 +282,7 @@ static struct phy_driver smsc_phy_driver[] = {
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "SMSC LAN911x Internal PHY",
 
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 
 	.probe		= smsc_phy_probe,
 
@@ -300,7 +300,7 @@ static struct phy_driver smsc_phy_driver[] = {
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "SMSC LAN8710/LAN8720",
 
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.flags		= PHY_RST_AFTER_CLK_EN,
 
 	.probe		= smsc_phy_probe,
@@ -326,7 +326,7 @@ static struct phy_driver smsc_phy_driver[] = {
 	.phy_id_mask	= 0xfffffff0,
 	.name		= "SMSC LAN8740",
 
-	.features	= PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 
 	.probe		= smsc_phy_probe,
 
diff --git a/drivers/net/phy/ste10Xp.c b/drivers/net/phy/ste10Xp.c
index 5b6acf431..d735a0138 100644
--- a/drivers/net/phy/ste10Xp.c
+++ b/drivers/net/phy/ste10Xp.c
@@ -81,7 +81,7 @@ static struct phy_driver ste10xp_pdriver[] = {
 	.phy_id = STE101P_PHY_ID,
 	.phy_id_mask = 0xfffffff0,
 	.name = "STe101p",
-	.features = PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.config_init = ste10Xp_config_init,
 	.ack_interrupt = ste10Xp_ack_interrupt,
 	.config_intr = ste10Xp_config_intr,
@@ -91,7 +91,7 @@ static struct phy_driver ste10xp_pdriver[] = {
 	.phy_id = STE100P_PHY_ID,
 	.phy_id_mask = 0xffffffff,
 	.name = "STe100p",
-	.features = PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.config_init = ste10Xp_config_init,
 	.ack_interrupt = ste10Xp_ack_interrupt,
 	.config_intr = ste10Xp_config_intr,
diff --git a/drivers/net/phy/uPD60620.c b/drivers/net/phy/uPD60620.c
index 219fc7cdc..a32b3fd8a 100644
--- a/drivers/net/phy/uPD60620.c
+++ b/drivers/net/phy/uPD60620.c
@@ -87,7 +87,7 @@ static struct phy_driver upd60620_driver[1] = { {
 	.phy_id         = UPD60620_PHY_ID,
 	.phy_id_mask    = 0xfffffffe,
 	.name           = "Renesas uPD60620",
-	.features       = PHY_BASIC_FEATURES,
+	/* PHY_BASIC_FEATURES */
 	.flags          = 0,
 	.config_init    = upd60620_config_init,
 	.read_status    = upd60620_read_status,
diff --git a/drivers/net/phy/vitesse.c b/drivers/net/phy/vitesse.c
index dc0dd87a6..48a881918 100644
--- a/drivers/net/phy/vitesse.c
+++ b/drivers/net/phy/vitesse.c
@@ -389,7 +389,7 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id         = PHY_ID_VSC8234,
 	.name           = "Vitesse VSC8234",
 	.phy_id_mask    = 0x000ffff0,
-	.features       = PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init    = &vsc824x_config_init,
 	.config_aneg    = &vsc82x4_config_aneg,
 	.ack_interrupt  = &vsc824x_ack_interrupt,
@@ -398,7 +398,7 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8244,
 	.name		= "Vitesse VSC8244",
 	.phy_id_mask	= 0x000fffc0,
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= &vsc824x_config_init,
 	.config_aneg	= &vsc82x4_config_aneg,
 	.ack_interrupt	= &vsc824x_ack_interrupt,
@@ -416,7 +416,7 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id         = PHY_ID_VSC8572,
 	.name           = "Vitesse VSC8572",
 	.phy_id_mask    = 0x000ffff0,
-	.features       = PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init    = &vsc824x_config_init,
 	.config_aneg    = &vsc82x4_config_aneg,
 	.ack_interrupt  = &vsc824x_ack_interrupt,
@@ -425,7 +425,7 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id         = PHY_ID_VSC8601,
 	.name           = "Vitesse VSC8601",
 	.phy_id_mask    = 0x000ffff0,
-	.features       = PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init    = &vsc8601_config_init,
 	.ack_interrupt  = &vsc824x_ack_interrupt,
 	.config_intr    = &vsc82xx_config_intr,
@@ -433,7 +433,7 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id         = PHY_ID_VSC7385,
 	.name           = "Vitesse VSC7385",
 	.phy_id_mask    = 0x000ffff0,
-	.features       = PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init    = vsc738x_config_init,
 	.config_aneg    = vsc73xx_config_aneg,
 	.read_page      = vsc73xx_read_page,
@@ -442,7 +442,7 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id         = PHY_ID_VSC7388,
 	.name           = "Vitesse VSC7388",
 	.phy_id_mask    = 0x000ffff0,
-	.features       = PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init    = vsc738x_config_init,
 	.config_aneg    = vsc73xx_config_aneg,
 	.read_page      = vsc73xx_read_page,
@@ -451,7 +451,7 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id         = PHY_ID_VSC7395,
 	.name           = "Vitesse VSC7395",
 	.phy_id_mask    = 0x000ffff0,
-	.features       = PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init    = vsc739x_config_init,
 	.config_aneg    = vsc73xx_config_aneg,
 	.read_page      = vsc73xx_read_page,
@@ -460,7 +460,7 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id         = PHY_ID_VSC7398,
 	.name           = "Vitesse VSC7398",
 	.phy_id_mask    = 0x000ffff0,
-	.features       = PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init    = vsc739x_config_init,
 	.config_aneg    = vsc73xx_config_aneg,
 	.read_page      = vsc73xx_read_page,
@@ -469,7 +469,7 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id         = PHY_ID_VSC8662,
 	.name           = "Vitesse VSC8662",
 	.phy_id_mask    = 0x000ffff0,
-	.features       = PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init    = &vsc824x_config_init,
 	.config_aneg    = &vsc82x4_config_aneg,
 	.ack_interrupt  = &vsc824x_ack_interrupt,
@@ -479,7 +479,7 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8221,
 	.phy_id_mask	= 0x000ffff0,
 	.name		= "Vitesse VSC8221",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= &vsc8221_config_init,
 	.ack_interrupt	= &vsc824x_ack_interrupt,
 	.config_intr	= &vsc82xx_config_intr,
@@ -488,7 +488,7 @@ static struct phy_driver vsc82xx_driver[] = {
 	.phy_id		= PHY_ID_VSC8211,
 	.phy_id_mask	= 0x000ffff0,
 	.name		= "Vitesse VSC8211",
-	.features	= PHY_GBIT_FEATURES,
+	/* PHY_GBIT_FEATURES */
 	.config_init	= &vsc8221_config_init,
 	.ack_interrupt	= &vsc824x_ack_interrupt,
 	.config_intr	= &vsc82xx_config_intr,
-- 
2.21.0
