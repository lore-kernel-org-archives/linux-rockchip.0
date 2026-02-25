Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCD86FD45F1
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Feb 2026 22:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrMQ85Mod7p4zPpp0cBRak8XNcah97ylx3eint9erAA=; b=vKkp3OpzoMKb+7
	jcUcE/x04k4VYkkRyBs+aH1GZPRgiR9kUL5HDs59yfCoZ9Ex7TLV3spaOAjZpumYpl/KQcHr+XYM2
	Sr6KSiZQPJYKJD/Z1OMO55bZUq/72lRNe2LRY8n5AJV4MWXZEvMtiCBro/IBAEnN2mRU8H8Hbydkn
	g3/P3hy8++U4C3B0eu/ios7cHJhGfjzpXq0vmnZIizXNHTFWYX8tv+smHTCom6oOxPebDdMxHnqy6
	picB3qQezhSod8POQk8iO3iuqo04ttWzqrvqXtOX4FyCLnbUaS2lbm//GJi/w/kXN8eFyDHNkOyUD
	FnS1MvRkFOmfiWSnfHRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvNLr-0000000509T-0Pni;
	Wed, 25 Feb 2026 22:27:27 +0000
Received: from mail-vs1-xe29.google.com ([2607:f8b0:4864:20::e29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvNLn-0000000507v-0xgf
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Feb 2026 22:27:25 +0000
Received: by mail-vs1-xe29.google.com with SMTP id ada2fe7eead31-5ff196450feso160483137.1
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Feb 2026 14:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772058442; x=1772663242; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uboqhfp40Aonx6VAcop9KiDSGvsRTqn5HTahIQ0GvEU=;
        b=apwG6/souPRhSsyyhT2f517i9D7ZtpbxpacjpnB03LAFrR9RuRyZbOj+Ley+8C05Rb
         5IMxYK8A7Z7lJVkRGcpdMP+cAnvEJUQ8jK9VW74qcBZRjzw2ojwsc8rJVE8uXh6eAsgy
         IJrffeqFWts+h3Vil1xgsmadQwukYZpPk03B2HBJriXdWd3xETPafGZux0Kd4sTlDi2x
         FS47qstYGfPu/UMSr3wqEUcO2iSEfsMlm43spAPDQMRwiURrqHZyQ9OZisc1kUTQ8/UT
         r0hZja5DrgXF/CYD6+gGFhHZ9qZyDkRnbpKgHpUkShQRtNPhq+8uWIGzVkMOEjLg7dO7
         P/NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772058442; x=1772663242;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uboqhfp40Aonx6VAcop9KiDSGvsRTqn5HTahIQ0GvEU=;
        b=eKOaxhc9QKI4sfRQARnC0Pruubwi63bAbFANjDeEU6hTAhLC0H/LRV5r8l8dQo/+xx
         AbzDO6oMe/0Qf7H+lsp7TNruZzjayIpxHaHVpPgP4UsuBYxa6Uu2w6aWSJkE0s98Yi8V
         8FHRLdq4Z2ZaUks8ZVH4t0596A1SSYxvXiv2SdIE3vDgLrpbt1V6WN9iAZmQvxdiEWyY
         ofWbpyG/9P4doUeVTTfCUbpc/ep89szbTq0hxDcbd9spjFyK078/FMaLU6QvlwqOWCkT
         nH0HWXMixWVT+ws/mXB8xCR7r2DmaMptEPSX3WMeSjZnr7yZYDvAziA/6ZAOwM+VqS3m
         NO2Q==
X-Gm-Message-State: AOJu0Yx5Ef+oaWy0/Eh6fj9779TVmSIjkGAS7JO0aAitDqfwbRGJwErE
	8bzhz2ZOqnskT42V+wl4UvEXo0jFG5mJ52FIxhbDETvZrZZJh0phP1xU
X-Gm-Gg: ATEYQzyknaosFWRtxoGVfoR/bgp4XDsaiz4ug45KRTJEZ60J2m9u1XaPHzZajChDdzR
	dK/S1lL/8oCe9Xa0H2nG7r1aEqSwhx4LVxhOrfQrMRkyxYIfvJPUJ2lvAMtnd9N5+vGuqe1cSwM
	Rs5mvRMyX1Vxl+MqVtFtcZRUHAUJOUSsvlDP/hUG5jnb6Tqxmj/qgofxKcF41m/CqiOXFVwTxiv
	iyHlbR8HD9IXFknQDy71G/xVCyb09qm7sjStOfR8uwsxBTTm3UPDknMn7sJb2xDPBr2pV3k1uYf
	u+ZeLxYLz+9/SKBnu4LOa7KJWXY88bNxUz6ymDyMkrj2K8SHlu6QIMITRWNX69fE2PkyF+7nuy7
	FydiTPIvDk4fi7dG33omuFIG+1CeNQ8iTzhyoOxxtgo7tygNve5skX+C8Xo9o4R1V+fJVk2oPr/
	tq5zY95+BH6A==
X-Received: by 2002:a05:6102:c49:b0:5ef:a1ea:bd33 with SMTP id ada2fe7eead31-5ff1ce3253dmr369646137.9.1772058441734;
        Wed, 25 Feb 2026 14:27:21 -0800 (PST)
Received: from geday ([2804:7f2:800b:f14d::dead:c001])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91659421sm593526e0c.0.2026.02.25.14.27.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 14:27:21 -0800 (PST)
Date: Wed, 25 Feb 2026 19:27:14 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] PCI: rockchip: limit RK3399 to 2.5 GT/s to avoid data
 loss
Message-ID: <6238f93890ede7726c342e81f2726c909dabbad7.1772057799.git.geraldogabriel@gmail.com>
References: <cover.1772057799.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1772057799.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_142723_273147_AAA27437 
X-CRM114-Status: GOOD (  15.15  )
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

Shawn Lin from Rockchip has reiterated that there may be danger of
"catastrophic failure" in using their PCIe with 5.0 GT/s speeds.

This may cause data loss or worse. Warn the user if they make a DT
change from the default and drive at 2.5 GT/s only, even if the DT
max-link-speed property is invalid or inexistent.

This change is corroborated by RK3399 official datasheet [1], which
states maximum link speed for this platform is 2.5 GT/s.

[1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf

Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Cc: stable@vger.kernel.org
Reported-by: Dragan Simic <dsimic@manjaro.org>
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 0f88da378805..25a6f67af839 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -66,8 +66,14 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 	}
 
 	rockchip->link_gen = of_pci_get_max_link_speed(node);
-	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
-		rockchip->link_gen = 2;
+	if (rockchip->link_gen < 0 || rockchip->link_gen > 2) {
+		rockchip->link_gen = 1;
+		dev_warn(dev, "invalid max-link-speed, set to 2.5 GT/s\n");
+	}
+	else if (rockchip->link_gen == 2) {
+		rockchip->link_gen = 1;
+		dev_warn(dev, "5.0 GT/s may cause data loss, force 2.5 GT/s\n");
+	}
 
 	for (i = 0; i < ROCKCHIP_NUM_PM_RSTS; i++)
 		rockchip->pm_rsts[i].id = rockchip_pci_pm_rsts[i];
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
