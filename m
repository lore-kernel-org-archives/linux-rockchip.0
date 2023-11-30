Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A47B4C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 03:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EkLavLshIJ0qFDHftheliTxM2H31lhJQXQy+ru5Szx4=; b=4W7oxfw2Q9jItF
	r+Q6EPCaiW7Jod3zw51qla7kcgC/bMxyHYbd1mZYQbRJvsyG2idlhP+FutdMUCiQ94FMtWqaKBKNy
	Xz7tv1RoF2IvXKKmoQvYRMfKmKGpNPQ8yovJk8ygZu/AWLqtFi5JcaibrkIKgO8T6hTn2i/lGWJYC
	mZ6zXjEWAbCotNAaVWzhlxeBbLiaUjRQ99WMq8cmipkxmLplP69rm8Pp6o0BJ9QqRET9riL/aNAyi
	M4nqUYtGYPLAIkXK/+joH9QbAz+KhFy8QC1pH5r+JnOrbxjcXJaQAbYIonoypqi9ktEg/m8ITWHRk
	LqNWV8Zpk4KwiDLduVXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8XWd-009pDC-3A;
	Thu, 30 Nov 2023 03:15:39 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8XWa-009pCh-11;
	Thu, 30 Nov 2023 03:15:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id; bh=UfjhIxyGPgUBRRrgHE
	ZRqAC26KRpErr7rMhG9xIdpcU=; b=ZFFG9NCDo5w5m5kc8Nih7jn82lb8VyQ7c1
	/b8/AW+icz0K+aVbmvLFOU0UzoFafKs3cQwOuHJRuSowCYMRSPDtE0cQ4d3AhaDd
	3FOE+UTr31EiBB10Hnmd3BGECauHcIxz4V1tsVWTapYwatC7zpn4CQtOFATqOsJ7
	tTjhORLiI=
Received: from localhost.localdomain (unknown [39.144.190.126])
	by zwqz-smtp-mta-g1-2 (Coremail) with SMTP id _____wDH13_P_WdlBXH7AQ--.52667S2;
	Thu, 30 Nov 2023 11:13:21 +0800 (CST)
From: Haoran Liu <liuhaoran14@163.com>
To: davem@davemloft.net
Cc: edumazet@google.com,
	pabeni@redhat.com,
	heiko@sntech.de,
	netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Haoran Liu <liuhaoran14@163.com>
Subject: [PATCH] [net/ethernet] arc_emac: Add error handling in emac_rockchip_probe
Date: Wed, 29 Nov 2023 19:13:18 -0800
Message-Id: <20231130031318.35850-1-liuhaoran14@163.com>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: _____wDH13_P_WdlBXH7AQ--.52667S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7WFWfKw13KF1fuw1UKryUWrg_yoW8Gw43pw
	4DCr9xCw1kWw17Za97GayrAF4Yq3W5KFWjgF9rGa1fua45AFyUXry0qa45ur1UJr42kFya
	kr4UA34fZan8X37anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zieOJ7UUUUU=
X-Originating-IP: [39.144.190.126]
X-CM-SenderInfo: xolxxtxrud0iqu6rljoofrz/xtbBcgU4gletj6IPXAAAsJ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_191536_784314_124B935D 
X-CRM114-Status: GOOD (  14.21  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch introduces error handling for the of_match_node call within
the emac_rockchip_probe. Previously, there was no check for the return
value of of_match_node, which could result in improper behavior if the
device tree match was unsuccessful.

Although the error addressed by this patch may not occur in the current
environment, I still suggest implementing these error handling routines
if the function is not highly time-sensitive. As the environment evolves
or the code gets reused in different contexts, there's a possibility that
these errors might occur. Addressing them now can prevent potential
debugging efforts in the future, which could be quite resource-intensive.

Signed-off-by: Haoran Liu <liuhaoran14@163.com>
---
 drivers/net/ethernet/arc/emac_rockchip.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/arc/emac_rockchip.c b/drivers/net/ethernet/arc/emac_rockchip.c
index 493d6356c8ca..f6f1390b77f6 100644
--- a/drivers/net/ethernet/arc/emac_rockchip.c
+++ b/drivers/net/ethernet/arc/emac_rockchip.c
@@ -134,6 +134,11 @@ static int emac_rockchip_probe(struct platform_device *pdev)
 	}
 
 	match = of_match_node(emac_rockchip_dt_ids, dev->of_node);
+	if (!match) {
+		dev_err(dev, "No matching device found\n");
+		return -ENODEV;
+	}
+
 	priv->soc_data = match->data;
 
 	priv->emac.clk = devm_clk_get(dev, "hclk");
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
