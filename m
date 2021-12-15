Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6952DC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 21:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1q9nzZoPsZ935Tj81jyzUoF8RxmUOP7E1NYr4WEU3wA=; b=SK1kf87sjXdWSQ
	+33V+l4YT6Y6tiTuywXkA7ZniUMx2qLCiE/1HN60hSbNNbLh4hRIRRF/NlbYV2HpGR31cJP/feYY7
	jCrbgqs57UNPOW2QYWgEtMKXLFaQtmS8ORl2Wc5rEiUbNNry4IB9Bv0n8WALJLFUiUZfgQHdI8CG0
	az+VpvzrfxffJ1VfB1H0m8istnQSHfqcFgT50rGo3jsPULHdFCdolPy5CP1oY4JiMHHFqbzAOHA7M
	STCH3bAH14l+oWNSlkuELxIVl2U+TLTy9gRa5DkvyBA2AYHi/q8+NInbjXgYM/+weU6XSD6c1nIyC
	l8pmDDC5/NHD3cozVtlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxbRg-002j4t-KU; Wed, 15 Dec 2021 21:04:16 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxbQW-002iXr-Cu; Wed, 15 Dec 2021 21:03:05 +0000
Received: by mail-qk1-x734.google.com with SMTP id l25so12082766qkl.5;
 Wed, 15 Dec 2021 13:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dxn6GGaZuVidLca/WMl3sqT9jVHJLPvQP6VZiUsVJrY=;
 b=XaWurc0R+0NGNOVmgUDJyVMha1V09ZYhzefIqaFhfkj0OWCWJ2k2r296h/SAHvtQ4+
 NuTgnojrPxsYbSqfv296jcpMCB1OJbHpbWwEhzXk0OSplmoiAQy4DA652/H53A8EZhka
 4LCfn7mdyifEhwEIJ4AoE7nuPfAIwjCZONbsY2DCmQmIuF/bsjQOTfdpJA33ffWfHyZL
 M1imDOgnAb9viTpFk3htBEeCa9uJCBbenjA4+TGWsmYROojLlM2IaSDMd3Ag8c1Xam9d
 VocniaETqsUqF5oqKT6P+KHxsB85eVTfaGDDq4jCStFPQcetcGG3eSmzcS4UvAJRwO3G
 vWhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dxn6GGaZuVidLca/WMl3sqT9jVHJLPvQP6VZiUsVJrY=;
 b=zJufZig5LaO1yq/2P+0tW8W9vkA47n+wHJHedu/gv7WA+HmiG2J7+m2r8dR46Fsa+B
 gMlT/+04gxB3/9f6RJbi9wLtDfR2Qmce/FuWNhIOgo2mNirJJgM6sX0qQOnRnAiW91ev
 /XxQgGwR2uwExTOjlC/parjygfcH736Sm91XREsAiNstgPLB2bEWjL0mxItoWYNwSqbK
 AJCj1msVTUGlZcD5RtujeyoA+KHMOw/keIu8mMqxTkH6tOj6QJ0TfxxVB4mRaWzaKXqm
 QtJOEvHjKeUE1pYTJ2vwKsNfxxcnrXRdtNq1bFvdCPsDKf5B2dZCzxwoflxggIGm/Hj1
 JHiA==
X-Gm-Message-State: AOAM530N5l4EJtVoOMc4ubVpKbY+MSizTTDdcrj5VSLwrWuMV19ozAjE
 oi/zVU8AEBDAOvY2aKlsWm4=
X-Google-Smtp-Source: ABdhPJwz8LraXYh5bgWPQ24gKaH1IILFk+lRM2zMLltMoydsz/oJ62aRgdKdO2xo/lVSfOzWaIbFzg==
X-Received: by 2002:a37:3d6:: with SMTP id 205mr10120606qkd.250.1639602182773; 
 Wed, 15 Dec 2021 13:03:02 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.md.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id a20sm1644356qkh.63.2021.12.15.13.03.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 13:03:02 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/8] phy: phy-rockchip-inno-usb2: support standalone phy
 nodes
Date: Wed, 15 Dec 2021 16:02:48 -0500
Message-Id: <20211215210252.120923-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211215210252.120923-1-pgwipeout@gmail.com>
References: <20211215210252.120923-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_130304_483750_5752726E 
X-CRM114-Status: GOOD (  11.81  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

New Rockchip devices have the usb2 phy devices as standalone nodes
instead of children of the grf node.
Allow the driver to find the grf node from a phandle.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Tested-by: Michael Riesch <michael.riesch@wolfvision.net>

---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 5cfa7169d879..29e3a0da8c26 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1074,12 +1074,19 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	if (!dev->parent || !dev->parent->of_node)
-		return -EINVAL;
+	if (!dev->parent || !dev->parent->of_node) {
+		rphy->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
+		if (IS_ERR(rphy->grf)) {
+			dev_err(dev, "failed to locate usbgrf\n");
+			return PTR_ERR(rphy->grf);
+		}
+	}
 
-	rphy->grf = syscon_node_to_regmap(dev->parent->of_node);
-	if (IS_ERR(rphy->grf))
-		return PTR_ERR(rphy->grf);
+	else {
+		rphy->grf = syscon_node_to_regmap(dev->parent->of_node);
+			if (IS_ERR(rphy->grf))
+				return PTR_ERR(rphy->grf);
+	}
 
 	if (of_device_is_compatible(np, "rockchip,rv1108-usb2phy")) {
 		rphy->usbgrf =
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
