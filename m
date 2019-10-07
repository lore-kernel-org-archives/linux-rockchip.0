From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v2 for 5.4 2/4] media: hantro: Fix H264 max frmsize supported on RK3288
Date: Mon,  7 Oct 2019 14:45:03 -0300
Message-ID: <20191007174505.10681-3-ezequiel@collabora.com>
References: <20191007174505.10681-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191007174505.10681-1-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

From: Jonas Karlman <jonas@kwiboo.se>

TRM specify supported image size 48x48 to 4096x2304 at step size 16 pixels,
change frmsize max_width/max_height to match TRM.

Fixes: 760327930e10 ("media: hantro: Enable H264 decoding on rk3288")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2:
* No changes.

 drivers/staging/media/hantro/rk3288_vpu_hw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
index 6bfcc47d1e58..ebb017b8a334 100644
--- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
+++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
@@ -67,10 +67,10 @@ static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
 		.max_depth = 2,
 		.frmsize = {
 			.min_width = 48,
-			.max_width = 3840,
+			.max_width = 4096,
 			.step_width = H264_MB_DIM,
 			.min_height = 48,
-			.max_height = 2160,
+			.max_height = 2304,
 			.step_height = H264_MB_DIM,
 		},
 	},
-- 
2.22.0
