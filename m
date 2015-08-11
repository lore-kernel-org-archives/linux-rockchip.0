From: Shunqian Zheng <zhengsq@rock-chips.com>
Subject: [PATCH v1 2/5] nvmem: fix the out-of-range leak in read/write()
Date: Tue, 11 Aug 2015 14:15:03 +0800
Message-ID: <1439273706-28274-3-git-send-email-zhengsq@rock-chips.com>
References: <1439273706-28274-1-git-send-email-zhengsq@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1439273706-28274-1-git-send-email-zhengsq@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: gregkh@linuxfoundation.org, srinivas.kandagatla@linaro.org, maxime.ripard@free-electrons.com, heiko@sntech.de, caesar.wang@rock-chips.com
Cc: dianders@chromium.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xjq@rock-chips.com, ZhengShunQian <zhengsq@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

From: ZhengShunQian <zhengsq@rock-chips.com>

The position to read/write must be less than max
register size.

Signed-off-by: ZhengShunQian <zhengsq@rock-chips.com>
Acked-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/nvmem/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index d3c6676..f4af8e5 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -67,7 +67,7 @@ static ssize_t bin_attr_nvmem_read(struct file *filp, struct kobject *kobj,
 	int rc;
 
 	/* Stop the user from reading */
-	if (pos > nvmem->size)
+	if (pos >= nvmem->size)
 		return 0;
 
 	if (pos + count > nvmem->size)
@@ -92,7 +92,7 @@ static ssize_t bin_attr_nvmem_write(struct file *filp, struct kobject *kobj,
 	int rc;
 
 	/* Stop the user from writing */
-	if (pos > nvmem->size)
+	if (pos >= nvmem->size)
 		return 0;
 
 	if (pos + count > nvmem->size)
-- 
1.9.1
