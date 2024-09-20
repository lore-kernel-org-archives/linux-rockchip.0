Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1C50CF58E9
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Sep 2024 08:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVbymdS+ZyxCEX9vyD8eAOO4rklm9pM4PgjO+rsLnLM=; b=GTnZi9wO4uNyCp
	AQaJpl01ASg4JGyfLMlqjfwE4Xs5MMpgPdGg8qa4dbrJ3A9UnJZQPqejbxj1nF98s4upwqJVt3Ub4
	PcyTOhl36jZNxZbZhlNwdNtJLJyeVQ10s8AivkWWXvTfxx/Chn878hl+o1eCaRBaQlRlQs35FEogW
	ww6APdIwi4H1U93R+B5ZYO5Hvw6lB/Q/qB1S0zuv3pKEPTOgRgSdz0c0gp+wVA19TOn+GR0GpiHtt
	81CMvSFWCJ1Gb25WS5KfqUWSQmzg2nnzxLFOCtdsBDiHmxDPDiGthZv18kf1B5Gwm8hRwTJlvw3mT
	WBKh1vnD7gyU9FX1geNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srZ2u-0000000BmNj-26fp;
	Fri, 20 Sep 2024 08:31:20 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srYsq-0000000Bjby-2dUk;
	Fri, 20 Sep 2024 08:20:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=GBq4X
	3SvjcKdAw76+LCZ96Aeae4FkXSnYqiBRPXZuM4=; b=Ms/OpU2xi0lF+5s6ABh2o
	yW/zFVMA64LbYDTSwaf8EpKAuzQzwpnTPAZF2sZv/aDKCbf4B0mbFz80m0BJLE0a
	Pd6MftUJWeiep/YPfLfiEDyVnfBX6AX6tdjSa4ZXqTm5D6znQLto6ceTurcepa0T
	iARi+8b9tBdYiKKv6gjbx0=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g3-0 (Coremail) with SMTP id _____wCnL3ZVMO1mBh1QBg--.6466S2;
	Fri, 20 Sep 2024 16:20:40 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	s.hauer@pengutronix.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	minhuadotchen@gmail.com,
	detlev.casanova@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 02/15] drm/rockchip: Set dma mask to 64 bit
Date: Fri, 20 Sep 2024 16:20:23 +0800
Message-ID: <20240920082036.6623-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240920081626.6433-1-andyshrk@163.com>
References: <20240920081626.6433-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wCnL3ZVMO1mBh1QBg--.6466S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7CF1xur1rJr1fWF13GFWUtwb_yoW8WFWfp3
	s0kFZrKrW8GayDXFWjkFsxAF45Kw1vya17G343JwnxJw17Krn8A3ZI9FyDt3y3Jr1xC3Wa
	yrsxKrWI9Fs2vr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jFT5dUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0h5gXmWX0hsr2QAAs7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240920_012057_061044_B470354F 
X-CRM114-Status: GOOD (  12.21  )
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

From: Andy Yan <andy.yan@rock-chips.com>

The vop mmu support translate physical address upper 4 GB to iova
below 4 GB. So set dma mask to 64 bit to indicate we support address
> 4GB.

This can avoid warnging message like this on some boards with DDR
> 4 GB:

rockchip-drm display-subsystem: swiotlb buffer is full (sz: 266240 bytes), total 32768 (slots), used 130 (slots)
rockchip-drm display-subsystem: swiotlb buffer is full (sz: 266240 bytes), total 32768 (slots), used 0 (slots)
rockchip-drm display-subsystem: swiotlb buffer is full (sz: 266240 bytes), total 32768 (slots), used 130 (slots)
rockchip-drm display-subsystem: swiotlb buffer is full (sz: 266240 bytes), total 32768 (slots), used 130 (slots)
rockchip-drm display-subsystem: swiotlb buffer is full (sz: 266240 bytes), total 32768 (slots), used 0 (slots)

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Tested-by: Derek Foreman <derek.foreman@collabora.com>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 04ef7a2c3833..8bc2ff3b04bb 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -445,7 +445,9 @@ static int rockchip_drm_platform_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	return 0;
+	ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(64));
+
+	return ret;
 }
 
 static void rockchip_drm_platform_remove(struct platform_device *pdev)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
