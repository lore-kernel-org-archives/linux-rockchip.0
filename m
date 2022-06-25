Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BA22C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jun 2022 21:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nTawxjCptMJkgLrT/F+z75ca52FhQzunsZEb6LQ+WDE=; b=TrBfHzXS/ulzrh
	bIvnNTjLykprY7V6tTPAu+hEZugU6ayIux7IX60HLSiWNtPqxMXp7kAl6T8YsCFgffVAaWEReEPc0
	L27NVwkbrx+KvtLR0CWzkfPYovQNCrg/c5HXpqPMRorL+JLaFFrzeanEjJCPzY+juMZszR3GFh5e1
	HNYuJ6uylLG3IgrsiNcs3jDuaIKQerTLKNf496Cp6ddt0Te8SFJJtd3+rPYnnaBFvdOW3KxIbLuls
	Um6tPe1rLE5hr9n16g7AxF8fni2FXUs2VVq76hKdel7LfJrN8myvkplUqF9u01SEJyTR+FaXSzbqA
	b9WrDZc2tRfKUrIvntZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5DJO-007wZU-Vg; Sat, 25 Jun 2022 21:27:27 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5DJE-007wV5-Dd; Sat, 25 Jun 2022 21:27:17 +0000
Received: by mail-qk1-x72b.google.com with SMTP id k20so4553525qkj.1;
        Sat, 25 Jun 2022 14:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=S8QPR7010o3+lSeTdoHVBPsXg7K50OfJRqwfALm+B8Y=;
        b=EuwnwbchhSMoZBWIKc/x9m5O2fkTFhYTIHK0kIussP9tG64+1y9Y0/2Dppi5Fo9EdV
         dmmp153kQiz+ZpNvC/LBYNdTA66I7BF5QTtRS2mI/pqKblP9W4DAgJPEMezWTJYOARSa
         7XeABi9J7KgqlehGMrX6LFZsEn0uPJNx8iXoum5k0FB95lUqdNbs1TgSeKAb9G52NUSP
         bEXy48i+uA1zupC2PHhnha1Z/dVjNJ9wUhuEaq2PWhpD8cDwc5kgK9e4fO8SLctnh+yN
         U7xR70Xp/FlOtslyLMFNTvUNILDZw7+kbs+YYAdPeBH5Hr9tuiwtrYO0nLJ6ri/rhIMo
         A5ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=S8QPR7010o3+lSeTdoHVBPsXg7K50OfJRqwfALm+B8Y=;
        b=uxx4zJWkuaReuuZbrfjYOF/2I2fOmnx3RF2jawkjp5JDII7F6CRXxYBL5A5cp6V0gD
         iFNCY75bhqNXMdiGLwZwpQa9c5FjyhkCEnCdIHvzarjVxZRJAARCgjzeSABuqUjB9gwr
         gPTo1B+54s5g4mz/WgNGTCij9yYj7ASPj8TzkgaRj7EZy208MCfNQ3hFNzdtasjg/Km6
         OIuFtkzZfK5210Q6L6OwIt1CwK+vsq7aw6+jSGyiBvv09wXxxAey35mPtc2zuv46LMss
         5QCRtmwgnqHvJPL/NUAyNxba91muE8MSWPNLZ6yD76vQhDc5nBh2YwGzY2c+K9gzA91C
         If+g==
X-Gm-Message-State: AJIora8Cl6yPpKYitdh6m+0P+5gxP9gk4LfY4IpCAa5/BlpyGSw9bfMO
	bWVlFg6YiziV61WhO3GIYrA=
X-Google-Smtp-Source: AGRyM1s4h1N3WWL57e5l+pcg+OjgEgNSB9UE+Z/gTHHHREPG/QUu8JCNL/rEMqQrEbQf4v2vzU9l4g==
X-Received: by 2002:a05:620a:24c7:b0:6a7:2d03:2de3 with SMTP id m7-20020a05620a24c700b006a72d032de3mr3996238qkn.134.1656192434519;
        Sat, 25 Jun 2022 14:27:14 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
        by smtp.gmail.com with ESMTPSA id m22-20020a05620a291600b006aef641865esm4834601qkp.128.2022.06.25.14.27.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jun 2022 14:27:14 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Peter Geis <pgwipeout@gmail.com>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] phy: rockchip-inno-usb2: Prevent incorrect error on probe
Date: Sat, 25 Jun 2022 17:27:11 -0400
Message-Id: <20220625212711.558495-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220625_142716_519733_FCCCAF41 
X-CRM114-Status: GOOD (  11.98  )
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

If a phy supply is designated but isn't available at probe time, an
EPROBE_DEFER is returned. Use dev_err_probe to prevent this from
incorrectly printing during boot.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 6e44069617df..706a2263b0b2 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1289,7 +1289,7 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 
 		phy = devm_phy_create(dev, child_np, &rockchip_usb2phy_ops);
 		if (IS_ERR(phy)) {
-			dev_err(dev, "failed to create phy\n");
+			dev_err_probe(dev, PTR_ERR(phy), "failed to create phy\n");
 			ret = PTR_ERR(phy);
 			goto put_child;
 		}
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
