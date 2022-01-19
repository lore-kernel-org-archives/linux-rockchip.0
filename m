Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 527C2C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jan 2022 04:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hf/XyqH/yOjABPT++ncsK1qAR/ESK/xKug6o8FMSrVg=; b=vDNZvkyxrGrobK
	mDcdVyDGil4oEr4HBCj5AsKIkXyZgDwhfFMo/n2/Sslf6B7P2ZrD226x/E2WdXOI6vn84u++MKGig
	lm8WLW0snBz21MK7cctMejfJJUJfaeAPSgCWAksAOZbyvVUfsItw3ewQTD+JxjXW1roJuu70Awy+o
	+IQtcadje6Kq55FncqtIJopEbM0YC9p4Az5zZRGs+nUgVMsnmchQ7B1mrvoGg+Xb7NPJEOCGMuFRL
	JygGYEimphSAhnRsc2dxNNQwW13cD3zLv2W3d+L45cq7PzJVWA4Nq3bk7Si7rvNojK4RGmk7gj+xp
	Cpf1agjPMYm+vR0RlyRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA2nb-003mBA-5i; Wed, 19 Jan 2022 04:42:19 +0000
Received: from tkylinode-sdnproxy-1.icoremail.net ([139.162.70.28])
 by bombadil.infradead.org with smtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA2nO-003mA8-Gr; Wed, 19 Jan 2022 04:42:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pku.edu.cn; s=dkim; h=Received:From:To:Cc:Subject:Date:
 Message-Id; bh=y1hemmePM7Xjg0f3s8jaqMRTXVn6dAbm/Z+ayCU8xH0=; b=s
 w2ySzFstYpNHwvMGaWjFJM1T188dfiUkM+wSC92uX51QYp9ZVbxBUb7fhyvsfnqV
 tSxln+EO/vCKqDBgBxQNWzHCOLc7f1JM8pyN2ZAORPQKJX1nS1a4n2ccFI+EhWmb
 ekaugMp/eNX8x0UN33vv6KPguf7xOrruKl0nyGlenQ=
Received: from localhost (unknown [10.129.21.144])
 by front02 (Coremail) with SMTP id 54FpogAXHPSiledhXDl7AA--.29466S2;
 Wed, 19 Jan 2022 12:37:54 +0800 (CST)
From: Yongzhi Liu <lyz_cs@pku.edu.cn>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	airlied@linux.ie,
	daniel@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Yongzhi Liu <lyz_cs@pku.edu.cn>
Subject: [PATCH] drm/rockchip: Fix runtime PM imbalance on error
Date: Tue, 18 Jan 2022 20:37:53 -0800
Message-Id: <1642567073-25784-1-git-send-email-lyz_cs@pku.edu.cn>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: 54FpogAXHPSiledhXDl7AA--.29466S2
X-Coremail-Antispam: 1UD129KBjvdXoWrZrW3Aw4rurW8GF1kAr48tFb_yoWDWFc_Kw
 1jqrnrWr4Sqan8Xa17Cay5uryIvF1q9a1xua10vanxAayxJr1DXrWrZFn5Za15Xa17AFnF
 k3W0vFy5CFs5WjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUb4kFc2x0x2IEx4CE42xK8VAvwI8IcIk0rVWrJVCq3wAFIxvE14AK
 wVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK021l84ACjcxK6xIIjxv20x
 vE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4UJVWxJr1l84ACjcxK6I8E
 87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c
 8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_JrI_
 JrylYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwI
 xGrwACjI8F5VA0II8E6IAqYI8I648v4I1lc2xSY4AK6svPMxAIw28IcxkI7VAKI48JMxAI
 w28IcVCjz48v1sIEY20_Kr1UJr1l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67
 AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIY
 rxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14
 v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWUJVW8
 JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjfUF9a9DU
 UUU
X-CM-SenderInfo: irzqijirqukmo6sn3hxhgxhubq/1tbiAwEKBlPy7uA+KwATsn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_204206_702836_B32F3B0F 
X-CRM114-Status: GOOD (  10.51  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

pm_runtime_get_sync() will increase the rumtime PM counter
even it returns an error. Thus a pairing decrement is needed
to prevent refcount leak. Fix this by replacing this API with
pm_runtime_resume_and_get(), which will not change the runtime
PM counter on error.

Signed-off-by: Yongzhi Liu <lyz_cs@pku.edu.cn>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 4ed7a68..9cf53f0 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -1188,7 +1188,7 @@ static int dw_mipi_dsi_dphy_power_on(struct phy *phy)
 		return i;
 	}
 
-	ret = pm_runtime_get_sync(dsi->dev);
+	ret = pm_runtime_resume_and_get(dsi->dev);
 	if (ret < 0) {
 		DRM_DEV_ERROR(dsi->dev, "failed to enable device: %d\n", ret);
 		return ret;
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
