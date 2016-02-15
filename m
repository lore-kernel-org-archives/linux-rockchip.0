From: Carlos Palminha <CARLOS.PALMINHA@synopsys.com>
Subject: [PATCH v2 14/17] drm/radeon: removed optional dummy encoder mode_fixup function.
Date: Mon, 15 Feb 2016 13:01:05 +0000
Message-ID: <1b99680b8cf81977597dec5daedff9b684d3ed19.1455540137.git.palminha@synopsys.com>
References: <cover.1455540137.git.palminha@synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain
Return-path: <linux-samsung-soc-owner@vger.kernel.org>
In-Reply-To: <cover.1455540137.git.palminha@synopsys.com>
Sender: linux-samsung-soc-owner@vger.kernel.org
To: dri-devel@lists.freedesktop.org
Cc: CARLOS.PALMINHA@synopsys.com, airlied@linux.ie, jingoohan1@gmail.com, kgene@kernel.org, k.kozlowski@samsung.com, patrik.r.jakobsson@gmail.com, p.zabel@pengutronix.de, mark.yao@rock-chips.com, heiko@sntech.de, benjamin.gaignard@linaro.org, vincent.abriou@st.com, kraxel@redhat.com, linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, virtualization@lists.linux-foundation.org
List-Id: linux-rockchip.vger.kernel.org

mode_fixup function for encoder drivers became optional with patch
http://patchwork.freedesktop.org/patch/msgid/1455106522-32307-1-git-send-email-palminha@synopsys.com

This patch set nukes all the dummy mode_fixup implementations.

(made on top of Daniel topic/drm-misc branch)

Signed-off-by: Carlos Palminha <palminha@synopsys.com>
Reviewed-by: Alex Deucher <alexander.deucher@amd.com>
---
 drivers/gpu/drm/radeon/atombios_encoders.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/radeon/atombios_encoders.c b/drivers/gpu/drm/radeon/atombios_encoders.c
index 01b20e1..1603751 100644
--- a/drivers/gpu/drm/radeon/atombios_encoders.c
+++ b/drivers/gpu/drm/radeon/atombios_encoders.c
@@ -2623,16 +2623,8 @@ radeon_atom_ext_dpms(struct drm_encoder *encoder, int mode)
 
 }
 
-static bool radeon_atom_ext_mode_fixup(struct drm_encoder *encoder,
-				       const struct drm_display_mode *mode,
-				       struct drm_display_mode *adjusted_mode)
-{
-	return true;
-}
-
 static const struct drm_encoder_helper_funcs radeon_atom_ext_helper_funcs = {
 	.dpms = radeon_atom_ext_dpms,
-	.mode_fixup = radeon_atom_ext_mode_fixup,
 	.prepare = radeon_atom_ext_prepare,
 	.mode_set = radeon_atom_ext_mode_set,
 	.commit = radeon_atom_ext_commit,
-- 
2.5.0
