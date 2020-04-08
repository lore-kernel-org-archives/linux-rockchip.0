From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v3 2/6] media: staging: rkisp1: cap: fix value written to uv swap register in selfpath
Date: Wed,  8 Apr 2020 13:48:18 +0200
Message-ID: <20200408114822.27360-3-dafna.hirschfeld@collabora.com>
References: <20200408114822.27360-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200408114822.27360-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

The value RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP should be
set to the register instead of masking with ~BIT(1)

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 8ce1d25d4c6f..5d0e489505f0 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -423,8 +423,8 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
 	if (cap->pix.cfg->uv_swap) {
 		u32 reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
 
-		rkisp1_write(rkisp1, reg & ~BIT(1),
-			     RKISP1_CIF_MI_XTD_FORMAT_CTRL);
+		reg |= RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;
+		rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
 	}
 
 	rkisp1_mi_config_ctrl(cap);
-- 
2.20.1
