From: Soeren Moch <smoch@web.de>
Subject: [PATCH v2 2/9] brcmfmac: set F2 blocksize and watermark for 4359
Date: Thu, 12 Dec 2019 00:52:46 +0100
Message-ID: <20191211235253.2539-3-smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191211235253.2539-1-smoch@web.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Kalle Valo <kvalo@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Chung-Hsien Hsu <stanley.hsu@cypress.com>, Soeren Moch <smoch@web.de>, Arend van Spriel <arend.vanspriel@broadcom.com>, Franky Lin <franky.lin@broadcom.com>, Hante Meuleman <hante.meuleman@broadcom.com>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Wright Feng <wright.feng@cypress.com>, linux-wireless@vger.kernel.org, brcm80211-dev-list.pdl@broadcom.com, brcm80211-dev-list@cypress.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Chung-Hsien Hsu <stanley.hsu@cypress.com>

Set F2 blocksize to 256 bytes and watermark to 0x40 for 4359. Also
enable and configure F1 MesBusyCtrl. It fixes DMA error while having
UDP bi-directional traffic.

Signed-off-by: Chung-Hsien Hsu <stanley.hsu@cypress.com>
[slightly adapted for rebase on mainline linux]
Signed-off-by: Soeren Moch <smoch@web.de>
Reviewed-by: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
=2D--
changes in v2:
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
 .../wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c |  6 +++++-
 .../wireless/broadcom/brcm80211/brcmfmac/sdio.c   | 15 +++++++++++++++
 2 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c b/d=
rivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
index 96fd8e2bf773..68baf0189305 100644
=2D-- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
@@ -43,6 +43,7 @@

 #define SDIO_FUNC1_BLOCKSIZE		64
 #define SDIO_FUNC2_BLOCKSIZE		512
+#define SDIO_4359_FUNC2_BLOCKSIZE	256
 /* Maximum milliseconds to wait for F2 to come up */
 #define SDIO_WAIT_F2RDY	3000

@@ -903,6 +904,7 @@ static void brcmf_sdiod_host_fixup(struct mmc_host *ho=
st)
 static int brcmf_sdiod_probe(struct brcmf_sdio_dev *sdiodev)
 {
 	int ret =3D 0;
+	unsigned int f2_blksz =3D SDIO_FUNC2_BLOCKSIZE;

 	sdio_claim_host(sdiodev->func1);

@@ -912,7 +914,9 @@ static int brcmf_sdiod_probe(struct brcmf_sdio_dev *sd=
iodev)
 		sdio_release_host(sdiodev->func1);
 		goto out;
 	}
-	ret =3D sdio_set_block_size(sdiodev->func2, SDIO_FUNC2_BLOCKSIZE);
+	if (sdiodev->func2->device =3D=3D SDIO_DEVICE_ID_BROADCOM_4359)
+		f2_blksz =3D SDIO_4359_FUNC2_BLOCKSIZE;
+	ret =3D sdio_set_block_size(sdiodev->func2, f2_blksz);
 	if (ret) {
 		brcmf_err("Failed to set F2 blocksize\n");
 		sdio_release_host(sdiodev->func1);
diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/dri=
vers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
index 264ad63232f8..21e535072f3f 100644
=2D-- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -42,6 +42,8 @@
 #define DEFAULT_F2_WATERMARK    0x8
 #define CY_4373_F2_WATERMARK    0x40
 #define CY_43012_F2_WATERMARK    0x60
+#define CY_4359_F2_WATERMARK	0x40
+#define CY_4359_F1_MESBUSYCTRL	(CY_4359_F2_WATERMARK | SBSDIO_MESBUSYCTRL=
_ENAB)

 #ifdef DEBUG

@@ -4205,6 +4207,19 @@ static void brcmf_sdio_firmware_callback(struct dev=
ice *dev, int err,
 			brcmf_sdiod_writeb(sdiod, SBSDIO_DEVICE_CTL, devctl,
 					   &err);
 			break;
+		case SDIO_DEVICE_ID_BROADCOM_4359:
+			brcmf_dbg(INFO, "set F2 watermark to 0x%x*4 bytes\n",
+				  CY_4359_F2_WATERMARK);
+			brcmf_sdiod_writeb(sdiod, SBSDIO_WATERMARK,
+					   CY_4359_F2_WATERMARK, &err);
+			devctl =3D brcmf_sdiod_readb(sdiod, SBSDIO_DEVICE_CTL,
+						   &err);
+			devctl |=3D SBSDIO_DEVCTL_F2WM_ENAB;
+			brcmf_sdiod_writeb(sdiod, SBSDIO_DEVICE_CTL, devctl,
+					   &err);
+			brcmf_sdiod_writeb(sdiod, SBSDIO_FUNC1_MESBUSYCTRL,
+					   CY_4359_F1_MESBUSYCTRL, &err);
+			break;
 		default:
 			brcmf_sdiod_writeb(sdiod, SBSDIO_WATERMARK,
 					   DEFAULT_F2_WATERMARK, &err);
=2D-
2.17.1
