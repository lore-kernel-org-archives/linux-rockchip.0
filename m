From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH v2 1/2] media: staging: rkisp1: cap: fix return values from pm functions
Date: Mon, 16 Mar 2020 18:00:43 -0300
Message-ID: <20200316210044.595312-2-helen.koike@collabora.com>
References: <20200316210044.595312-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200316210044.595312-1-helen.koike@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: mchehab@kernel.org, linux-kernel@vger.kernel.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com, kernel@collabora.com, Helen Koike <helen.koike@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

If no errors occurs, pm functions return usage counters, so they can
return positive numbers.
This happens when streaming from multiple capture devices (mainpath and
selfpath).

Fix simultaneous streaming from mainpath and selfpath by not failing
when pm usage counters returns a positive number.

Signed-off-by: Helen Koike <helen.koike@collabora.com>
---

Changes in v2:
- Rebased on media/master

 drivers/staging/media/rkisp1/rkisp1-capture.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 24fe6a7888aa..967bd05b4507 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -939,7 +939,7 @@ static void rkisp1_vb2_stop_streaming(struct vb2_queue *queue)
 
 	v4l2_pipeline_pm_put(&node->vdev.entity);
 	ret = pm_runtime_put(rkisp1->dev);
-	if (ret)
+	if (ret < 0)
 		dev_err(rkisp1->dev, "power down failed error:%d\n", ret);
 
 	rkisp1_dummy_buf_destroy(cap);
@@ -992,7 +992,7 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 		goto err_ret_buffers;
 
 	ret = pm_runtime_get_sync(cap->rkisp1->dev);
-	if (ret) {
+	if (ret < 0) {
 		dev_err(cap->rkisp1->dev, "power up failed %d\n", ret);
 		goto err_destroy_dummy;
 	}
-- 
2.25.0
