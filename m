Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F407C35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 07:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2UoZn8FKfXNtosKrxi6zXviz/2MO/WrEDAb01hLmYw=; b=Y5c7yQOZwd0vK1
	mMJfHK6SCgiU0eJCS/sKFB99xh1SHCxuprMuPpSTMp1N1z7jML0STB3b16ZwPfK/0M82NyBs6+bPS
	4c4p2iICLB8wnL+HY5Sbijc6VCKv4dR3Y6vuCu9AQWFExYeIuPSZZ4825pzzINp/ALr5259ZkPWiD
	Cf8mh8P/DXSX9Wz2JuNCIWYKPVqUpUZd/MvKpvQL/I6l+aeVLwFbInnNGkEk7lw8w7hc94TE4Z8zk
	eOO8EOq1PUuEP6qzfsC/LIns5S4OFS9UswzzekeJ/8tEF3t2DK3rvD2RFmDQ/mKeExyOneRB3OHXa
	PdK7Vidrg/PYVDV+u7VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rF8Sc-009PUM-29;
	Mon, 18 Dec 2023 07:54:46 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rF8SS-009PP6-07;
	Mon, 18 Dec 2023 07:54:38 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9FE2B15B5;
	Mon, 18 Dec 2023 08:53:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1702886022;
	bh=zKagm460JpwxYXaiONH9XZnoH9bqVXdR1WvL7VlcgPg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=UZ0HkyAXp0K6m61+0qI4QyfcUIVUvcqLclmfDU67REsE8ZfqfcLgZ8gaVBBlg5M4e
	 RAHZwBKl7WoShNtHrcPaGP3Kaf+q1lLe2m3MEyJFlqKsUySXb4zDSugt44hAeiT7CN
	 h6oK/GfCuD7ajijxHZkrzIBzuQaCQ0XVq63a1A+g=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Mon, 18 Dec 2023 09:54:00 +0200
Subject: [PATCH 1/2] Revert "media: rkisp1: Drop IRQF_SHARED"
MIME-Version: 1.0
Message-Id: <20231218-rkisp-shirq-fix-v1-1-173007628248@ideasonboard.com>
References: <20231218-rkisp-shirq-fix-v1-0-173007628248@ideasonboard.com>
In-Reply-To: <20231218-rkisp-shirq-fix-v1-0-173007628248@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Mikhail Rudenko <mike.rudenko@gmail.com>
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1189;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=zKagm460JpwxYXaiONH9XZnoH9bqVXdR1WvL7VlcgPg=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlf/q0m1ZIhyfN/VQk1p4R2SkQxrKhz3E9a2wPW
 6hvqYULuVaJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZX/6tAAKCRD6PaqMvJYe
 9bLNEACOty+4zxtY9WKiAGyTNrH8gGUraTQv7Lo+htgeNcqEo95ymQx18BlRQMdP1TtPRnentdv
 mzFgEFveizwSX3bnVOY5lcNQtxyKkW1B1p3np9srUTq6yiFZ97KMqBQbiieN230zTLZUB4dwM3o
 wl/QoUKqXtCG4ocCoNzeF+gN9TmY+qLZ+phCq+L4ARxS/60hDUAqGBC8d+cA2bPIqWHORLuc0qP
 v/QQvjd0ymziGbtraMevbf9EqR8PEi6silm42AorU4zKruoOsFdtxkmbmfFYV3bAAhlNc//J51T
 K2P6WhPAIfrI8sMa0Zg8zRYjuD1meRXk4P8BRFbDH48rCFvqXm0eTMorOdxeaSiY9A3z6graMtF
 GFX+baqtbsipwjCMRJcckdj02U7CQHBraMY221RcC0eFcQ/a6JrX+fNubr5LdcfIZTP5gO+B2Ry
 c2+xSKnYhJ+VGaap4sDz7gD3+N7d5+uH1oTVaNGwsfo1iH2LPs6lU7EusuQhD0bnBXgl27IsJCr
 /gymAeYlkfRAGFdBuv7WIrjTdvktUZvFOeCTPp55FoN9a1ZjF3GD5ABmspPd+7MlNfjb5MgnnfY
 9LNN3uspWtvTF8swjdCfgRJfPCAGP8piVIxyKd4jENI0abQiC7qJnrDeihBfSJAnrmcPIXKPxs9
 Ne7T6oN1g+q8z3Q==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231217_235436_298124_CA906E2B 
X-CRM114-Status: GOOD (  11.34  )
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

This reverts commit 85d2a31fe4d9be1555f621ead7a520d8791e0f74.

The rkisp1 does share interrupt lines on some platforms, after all. Thus
we need to revert this, and implement a fix for the rkisp1 shared irq
handling in a follow-up patch.

Reported-by: Mikhail Rudenko <mike.rudenko@gmail.com>
Closes: https://lore.kernel.org/all/87o7eo8vym.fsf@gmail.com/
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index f96f821a7b50..acc559652d6e 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -559,7 +559,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 				rkisp1->irqs[il] = irq;
 		}
 
-		ret = devm_request_irq(dev, irq, info->isrs[i].isr, 0,
+		ret = devm_request_irq(dev, irq, info->isrs[i].isr, IRQF_SHARED,
 				       dev_driver_string(dev), dev);
 		if (ret) {
 			dev_err(dev, "request irq failed: %d\n", ret);

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
