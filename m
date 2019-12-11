From: Soeren Moch <smoch@web.de>
Subject: [PATCH v2 7/9] brcmfmac: not set mbss in vif if firmware does not support MBSS
Date: Thu, 12 Dec 2019 00:52:51 +0100
Message-ID: <20191211235253.2539-8-smoch@web.de>
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

With RSDB mode, FMAC and firmware are able to create 2 or more AP,
so we should not set mbss in vif structure if firmware does not
support MBSS feature.

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
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c b=
/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
index 9d9dc9195e9e..6eb3064c3721 100644
=2D-- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
@@ -5363,6 +5363,7 @@ struct brcmf_cfg80211_vif *brcmf_alloc_vif(struct br=
cmf_cfg80211_info *cfg,
 	struct brcmf_cfg80211_vif *vif_walk;
 	struct brcmf_cfg80211_vif *vif;
 	bool mbss;
+	struct brcmf_if *ifp =3D brcmf_get_ifp(cfg->pub, 0);

 	brcmf_dbg(TRACE, "allocating virtual interface (size=3D%zu)\n",
 		  sizeof(*vif));
@@ -5375,7 +5376,8 @@ struct brcmf_cfg80211_vif *brcmf_alloc_vif(struct br=
cmf_cfg80211_info *cfg,

 	brcmf_init_prof(&vif->profile);

-	if (type =3D=3D NL80211_IFTYPE_AP) {
+	if (type =3D=3D NL80211_IFTYPE_AP &&
+	    brcmf_feat_is_enabled(ifp, BRCMF_FEAT_MBSS)) {
 		mbss =3D false;
 		list_for_each_entry(vif_walk, &cfg->vif_list, list) {
 			if (vif_walk->wdev.iftype =3D=3D NL80211_IFTYPE_AP) {
=2D-
2.17.1
