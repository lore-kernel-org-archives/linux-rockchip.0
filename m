Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2F62C10F15
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Apr 2024 09:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gI6Bw7xTsiKtYD5FM8z+fwRDbI6686IIh+972XzOApk=; b=gBUP2NIPusksIW
	cX7CYj97MB4vf9WRE9/J4jcKRwbphHB2s66c/1+aunIdVK1+CGbNXS9tPUBS/XvKr/koDXW2vGu4w
	aih30agGY2wXa8GBUJVPrUjpvXxwmiO8u41rGGRkV+ZB1LetU2F1bx5fcSgZ+ys5Hpo47BJNxaGSR
	4KLxpGTMpozddZLnhNuvtYlNZcB995+2J/oaZjRb/Moeug7tUVl37n1vjVj6bFMJRXdENhhJFdneI
	9TVP8W2Rwi293NboN3A1oSN7Si877FCYOHb8YriKBtLCW5UjYOOZ1uyDbOiivKoqPf5LFmpVxoGD5
	Zva9u7kmy5S1I8zVy2VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzvFr-00000007aVr-3Xxo;
	Thu, 25 Apr 2024 09:18:59 +0000
Received: from smtp21.cstnet.cn ([159.226.251.21] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzvFn-00000007aPj-1IAg;
	Thu, 25 Apr 2024 09:18:57 +0000
Received: from localhost (unknown [124.16.138.129])
	by APP-01 (Coremail) with SMTP id qwCowABnbBjhHypmRq4sAA--.4146S2;
	Thu, 25 Apr 2024 17:18:26 +0800 (CST)
From: Chen Ni <nichen@iscas.ac.cn>
To: joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	heiko@sntech.de,
	jeffy.chen@rock-chips.com
Cc: iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chen Ni <nichen@iscas.ac.cn>
Subject: [PATCH] iommu/rockchip: Add missing check for of_find_device_by_node
Date: Thu, 25 Apr 2024 17:18:13 +0800
Message-Id: <20240425091813.965003-1-nichen@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: qwCowABnbBjhHypmRq4sAA--.4146S2
X-Coremail-Antispam: 1UD129KBjvdXoW7XryxKFW5XrWxuF13XF45trb_yoWfGFc_W3
	48uFnxWr4vyrs0kw12q34xWrZFkasIvrnrZrWjkw1SyFyDWr1xXw10vr4kJFW7Wr1jyF9r
	Kryj93yfCryUWjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbVkFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
	6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
	A2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_
	Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AKxVWxJr
	0_GcWle2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc2xSY4AK67AK6r4fMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r
	1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CE
	b7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0x
	vE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAI
	cVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2Kf
	nxnUUI43ZEXa7VUjMmh5UUUUU==
X-Originating-IP: [124.16.138.129]
X-CM-SenderInfo: xqlfxv3q6l2u1dvotugofq/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_021855_768986_43322584 
X-CRM114-Status: UNSURE (   8.74  )
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

Add check for the return value of of_find_device_by_node() and return
the error if it fails in order to avoid NULL pointer dereference.

Fixes: 5fd577c3eac3 ("iommu/rockchip: Use OF_IOMMU to attach devices automatically")
Signed-off-by: Chen Ni <nichen@iscas.ac.cn>
---
 drivers/iommu/rockchip-iommu.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 4b369419b32c..1225c1df6ef6 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -1152,6 +1152,8 @@ static int rk_iommu_of_xlate(struct device *dev,
 		return -ENOMEM;
 
 	iommu_dev = of_find_device_by_node(args->np);
+	if (!iommu_dev)
+		return -ENODEV;
 
 	data->iommu = platform_get_drvdata(iommu_dev);
 	data->iommu->domain = &rk_identity_domain;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
