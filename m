From: Soeren Moch <smoch@web.de>
Subject: [PATCH v2 4/9] brcmfmac: make errors when setting roaming parameters non-fatal
Date: Thu, 12 Dec 2019 00:52:48 +0100
Message-ID: <20191211235253.2539-5-smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191211235253.2539-1-smoch@web.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Kalle Valo <kvalo@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Soeren Moch <smoch@web.de>, Arend van Spriel <arend.vanspriel@broadcom.com>, Franky Lin <franky.lin@broadcom.com>, Hante Meuleman <hante.meuleman@broadcom.com>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Wright Feng <wright.feng@cypress.com>, linux-wireless@vger.kernel.org, brcm80211-dev-list.pdl@broadcom.com, brcm80211-dev-list@cypress.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

4359 dongles do not support setting roaming parameters (error -52).
Do not fail the 80211 configuration in this case.

Signed-off-by: Soeren Moch <smoch@web.de>
Acked-by: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
=2D--
changes in v2:
- add ack tag received for v1

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
 .../wireless/broadcom/brcm80211/brcmfmac/cfg80211.c    | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c b=
/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
index 5598bbd09b62..0cf13cea1dbe 100644
=2D-- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
@@ -6012,19 +6012,17 @@ static s32 brcmf_dongle_roam(struct brcmf_if *ifp)
 	roamtrigger[1] =3D cpu_to_le32(BRCM_BAND_ALL);
 	err =3D brcmf_fil_cmd_data_set(ifp, BRCMF_C_SET_ROAM_TRIGGER,
 				     (void *)roamtrigger, sizeof(roamtrigger));
-	if (err) {
+	if (err)
 		bphy_err(drvr, "WLC_SET_ROAM_TRIGGER error (%d)\n", err);
-		goto roam_setup_done;
-	}

 	roam_delta[0] =3D cpu_to_le32(WL_ROAM_DELTA);
 	roam_delta[1] =3D cpu_to_le32(BRCM_BAND_ALL);
 	err =3D brcmf_fil_cmd_data_set(ifp, BRCMF_C_SET_ROAM_DELTA,
 				     (void *)roam_delta, sizeof(roam_delta));
-	if (err) {
+	if (err)
 		bphy_err(drvr, "WLC_SET_ROAM_DELTA error (%d)\n", err);
-		goto roam_setup_done;
-	}
+
+	return 0;

 roam_setup_done:
 	return err;
=2D-
2.17.1
