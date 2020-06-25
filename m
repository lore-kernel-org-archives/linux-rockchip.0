From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 1/4] media: staging: rkisp1: remove two unused fields in uapi struct
Date: Thu, 25 Jun 2020 20:50:14 +0200
Message-ID: <20200625185017.16493-2-dafna.hirschfeld@collabora.com>
References: <20200625185017.16493-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200625185017.16493-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

The fields 'config_width', 'config_height' in struct
'rkisp1_cif_isp_lsc_config' are not used by the driver and
therefore are not needed. This patch removes them.
In later patch, documentation of the fields in struct
'rkisp1_cif_isp_lsc_config' will be added.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/uapi/rkisp1-config.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
index ca0d031b14ac..7331bacf7dfd 100644
--- a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
+++ b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
@@ -285,8 +285,6 @@ struct rkisp1_cif_isp_lsc_config {
 
 	__u32 x_size_tbl[RKISP1_CIF_ISP_LSC_SIZE_TBL_SIZE];
 	__u32 y_size_tbl[RKISP1_CIF_ISP_LSC_SIZE_TBL_SIZE];
-	__u16 config_width;
-	__u16 config_height;
 } __packed;
 
 /**
-- 
2.17.1
