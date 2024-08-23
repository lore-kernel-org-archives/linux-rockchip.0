Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50F8EC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 09:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nc0w8n3sHT7SSWhS7zkFuEbcsYBASbHNYI2rx4Iwd68=; b=vn2u5Uhl/jcrZ/
	+GF6ndyQxwpPcrgeqQLa8cfWgsw18DnSs8fXWDi3xvu2FD8UT5rBMMGpHAc0/GhWcwPmgDmNZ0C/k
	3krOese3unO8LntokLUyb2hKUMagNX8G+FiEPbA2niV3/pHQH2OYb8FC/TNnYa5U2arOxLvcM7j0C
	kH38uhPx4nJJRMucuAUg7VDU08BlchNsE9C0GUYr4itHqzkHDQuaux8z772Of85PvMCdlLWTeUM4r
	++hyWO5JZoGy4piDLt95gb2a/KGiTND6zy6zkXRGWkWzepH3/SRa6dsYXBcjc5VDoWY5kxgvZrtVT
	Nj0yI0fSzpZexr2Ckkow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQQP-0000000G4Bx-2QnX;
	Fri, 23 Aug 2024 09:17:41 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQMI-0000000G33C-3FBW;
	Fri, 23 Aug 2024 09:13:29 +0000
Received: from mail.maildlp.com (unknown [172.19.163.48])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4WqvVH6mtQz13dVH;
	Fri, 23 Aug 2024 17:12:39 +0800 (CST)
Received: from kwepemh500013.china.huawei.com (unknown [7.202.181.146])
	by mail.maildlp.com (Postfix) with ESMTPS id 6E37718005F;
	Fri, 23 Aug 2024 17:13:21 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemh500013.china.huawei.com
 (7.202.181.146) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Fri, 23 Aug
 2024 17:13:20 +0800
From: Jinjie Ruan <ruanjinjie@huawei.com>
To: <hjc@rock-chips.com>, <heiko@sntech.de>, <andy.yan@rock-chips.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <daniel@ffwll.ch>,
	<dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<krzk@kernel.org>, <jic23@kernel.org>
CC: <ruanjinjie@huawei.com>
Subject: [PATCH -next 5/5] gpu: host1x: Use for_each_available_child_of_node_scoped()
Date: Fri, 23 Aug 2024 17:20:53 +0800
Message-ID: <20240823092053.3170445-6-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240823092053.3170445-1-ruanjinjie@huawei.com>
References: <20240823092053.3170445-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemh500013.china.huawei.com (7.202.181.146)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_021327_193325_CCA704D6 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Avoids the need for manual cleanup of_node_put() in early exits
from the loop.

Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
---
 drivers/gpu/host1x/bus.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/host1x/bus.c b/drivers/gpu/host1x/bus.c
index 8e09d6d328d2..344cc9e741c1 100644
--- a/drivers/gpu/host1x/bus.c
+++ b/drivers/gpu/host1x/bus.c
@@ -41,7 +41,6 @@ static int host1x_subdev_add(struct host1x_device *device,
 			     struct device_node *np)
 {
 	struct host1x_subdev *subdev;
-	struct device_node *child;
 	int err;
 
 	subdev = kzalloc(sizeof(*subdev), GFP_KERNEL);
@@ -56,13 +55,12 @@ static int host1x_subdev_add(struct host1x_device *device,
 	mutex_unlock(&device->subdevs_lock);
 
 	/* recursively add children */
-	for_each_child_of_node(np, child) {
+	for_each_child_of_node_scoped(np, child) {
 		if (of_match_node(driver->subdevs, child) &&
 		    of_device_is_available(child)) {
 			err = host1x_subdev_add(device, driver, child);
 			if (err < 0) {
 				/* XXX cleanup? */
-				of_node_put(child);
 				return err;
 			}
 		}
@@ -90,17 +88,14 @@ static void host1x_subdev_del(struct host1x_subdev *subdev)
 static int host1x_device_parse_dt(struct host1x_device *device,
 				  struct host1x_driver *driver)
 {
-	struct device_node *np;
 	int err;
 
-	for_each_child_of_node(device->dev.parent->of_node, np) {
+	for_each_child_of_node_scoped(device->dev.parent->of_node, np) {
 		if (of_match_node(driver->subdevs, np) &&
 		    of_device_is_available(np)) {
 			err = host1x_subdev_add(device, driver, np);
-			if (err < 0) {
-				of_node_put(np);
+			if (err < 0)
 				return err;
-			}
 		}
 	}
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
