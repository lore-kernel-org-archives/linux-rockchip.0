From: Soeren Moch <smoch@web.de>
Subject: [PATCH v2 1/9] brcmfmac: reset two D11 cores if chip has two D11 cores
Date: Thu, 12 Dec 2019 00:52:45 +0100
Message-ID: <20191211235253.2539-2-smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191211235253.2539-1-smoch@web.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Kalle Valo <kvalo@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Wright Feng <wright.feng@cypress.com>, Soeren Moch <smoch@web.de>, Arend van Spriel <arend.vanspriel@broadcom.com>, Franky Lin <franky.lin@broadcom.com>, Hante Meuleman <hante.meuleman@broadcom.com>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>, linux-wireless@vger.kernel.org, brcm80211-dev-list.pdl@broadcom.com, brcm80211-dev-list@cypress.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Wright Feng <wright.feng@cypress.com>

There are two D11 cores in RSDB chips like 4359. We have to reset two
D11 cores simutaneously before firmware download, or the firmware may
not be initialized correctly and cause "fw initialized failed" error.

Signed-off-by: Wright Feng <wright.feng@cypress.com>
Signed-off-by: Soeren Moch <smoch@web.de>
Reviewed-by: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
=2D--
changes in v2:
- add missing s-o-b
- add review tag received for v1

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Arend van Spriel <arend.vanspriel@broadcom.com>
Cc: Franky Lin <franky.lin@broadcom.com>
Cc: Hante Meuleman <hante.meuleman@broadcom.com>
Cc: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
Cc: Wright Feng <wright.feng@cypress.com>
Cc: linux-wireless@vger.kernel.org
Cc: brcm80211-dev-list.pdl@broadcom.com
Cc: brcm80211-dev-list@cypress.com
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
=2D--
 .../broadcom/brcm80211/brcmfmac/chip.c        | 50 +++++++++++++++++++
 .../broadcom/brcm80211/brcmfmac/chip.h        |  1 +
 .../broadcom/brcm80211/brcmfmac/pcie.c        |  2 +-
 3 files changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c b/dri=
vers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
index a795d781b4c5..0b5fbe5d8270 100644
=2D-- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
@@ -433,11 +433,25 @@ static void brcmf_chip_ai_resetcore(struct brcmf_cor=
e_priv *core, u32 prereset,
 {
 	struct brcmf_chip_priv *ci;
 	int count;
+	struct brcmf_core *d11core2 =3D NULL;
+	struct brcmf_core_priv *d11priv2 =3D NULL;

 	ci =3D core->chip;

+	/* special handle two D11 cores reset */
+	if (core->pub.id =3D=3D BCMA_CORE_80211) {
+		d11core2 =3D brcmf_chip_get_d11core(&ci->pub, 1);
+		if (d11core2) {
+			brcmf_dbg(INFO, "found two d11 cores, reset both\n");
+			d11priv2 =3D container_of(d11core2,
+						struct brcmf_core_priv, pub);
+		}
+	}
+
 	/* must disable first to work for arbitrary current core state */
 	brcmf_chip_ai_coredisable(core, prereset, reset);
+	if (d11priv2)
+		brcmf_chip_ai_coredisable(d11priv2, prereset, reset);

 	count =3D 0;
 	while (ci->ops->read32(ci->ctx, core->wrapbase + BCMA_RESET_CTL) &
@@ -449,9 +463,30 @@ static void brcmf_chip_ai_resetcore(struct brcmf_core=
_priv *core, u32 prereset,
 		usleep_range(40, 60);
 	}

+	if (d11priv2) {
+		count =3D 0;
+		while (ci->ops->read32(ci->ctx,
+				       d11priv2->wrapbase + BCMA_RESET_CTL) &
+				       BCMA_RESET_CTL_RESET) {
+			ci->ops->write32(ci->ctx,
+					 d11priv2->wrapbase + BCMA_RESET_CTL,
+					 0);
+			count++;
+			if (count > 50)
+				break;
+			usleep_range(40, 60);
+		}
+	}
+
 	ci->ops->write32(ci->ctx, core->wrapbase + BCMA_IOCTL,
 			 postreset | BCMA_IOCTL_CLK);
 	ci->ops->read32(ci->ctx, core->wrapbase + BCMA_IOCTL);
+
+	if (d11priv2) {
+		ci->ops->write32(ci->ctx, d11priv2->wrapbase + BCMA_IOCTL,
+				 postreset | BCMA_IOCTL_CLK);
+		ci->ops->read32(ci->ctx, d11priv2->wrapbase + BCMA_IOCTL);
+	}
 }

 char *brcmf_chip_name(u32 id, u32 rev, char *buf, uint len)
@@ -1109,6 +1144,21 @@ void brcmf_chip_detach(struct brcmf_chip *pub)
 	kfree(chip);
 }

+struct brcmf_core *brcmf_chip_get_d11core(struct brcmf_chip *pub, u8 unit=
)
+{
+	struct brcmf_chip_priv *chip;
+	struct brcmf_core_priv *core;
+
+	chip =3D container_of(pub, struct brcmf_chip_priv, pub);
+	list_for_each_entry(core, &chip->cores, list) {
+		if (core->pub.id =3D=3D BCMA_CORE_80211) {
+			if (unit-- =3D=3D 0)
+				return &core->pub;
+		}
+	}
+	return NULL;
+}
+
 struct brcmf_core *brcmf_chip_get_core(struct brcmf_chip *pub, u16 coreid=
)
 {
 	struct brcmf_chip_priv *chip;
diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.h b/dri=
vers/net/wireless/broadcom/brcm80211/brcmfmac/chip.h
index 7b00f6a59e89..8fa38658e727 100644
=2D-- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.h
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.h
@@ -74,6 +74,7 @@ struct brcmf_chip *brcmf_chip_attach(void *ctx,
 				     const struct brcmf_buscore_ops *ops);
 void brcmf_chip_detach(struct brcmf_chip *chip);
 struct brcmf_core *brcmf_chip_get_core(struct brcmf_chip *chip, u16 corei=
d);
+struct brcmf_core *brcmf_chip_get_d11core(struct brcmf_chip *pub, u8 unit=
);
 struct brcmf_core *brcmf_chip_get_chipcommon(struct brcmf_chip *chip);
 struct brcmf_core *brcmf_chip_get_pmu(struct brcmf_chip *pub);
 bool brcmf_chip_iscoreup(struct brcmf_core *core);
diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c b/dri=
vers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
index f64ce5074a55..7ac72804e285 100644
=2D-- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
@@ -78,7 +78,7 @@ static const struct brcmf_firmware_mapping brcmf_pcie_fw=
names[] =3D {
 	BRCMF_FW_ENTRY(BRCM_CC_4371_CHIP_ID, 0xFFFFFFFF, 4371),
 };

-#define BRCMF_PCIE_FW_UP_TIMEOUT		2000 /* msec */
+#define BRCMF_PCIE_FW_UP_TIMEOUT		5000 /* msec */

 #define BRCMF_PCIE_REG_MAP_SIZE			(32 * 1024)

=2D-
2.17.1
