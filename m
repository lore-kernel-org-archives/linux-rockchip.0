Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12DDCC2BB85
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 06:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJf7E87DOqTf+8ZJ3EPZNKR8NjDEgdtlXnzuiekE/+8=; b=jlgGyh+zFLOEFr
	Lw/p5EeCQF/CF+4p/1AxwDjEW2SvZoQZDpVX/4jbcZ04GJ8wOfnpkJmnI4Li36P43+9LlanexxMkM
	dPsDcYkj8NOXfs3YojlOOUijAbcJOOBn4gF2lsXRIIlKY+IUPQWPE8MLkUxWlzEh61p6LnrYabkZg
	0qztsSz9ncQMZZJ5ywAt7w7vYONJBmjaylHql71yoBXgwBqn6Fdlowyz74wNfy0RZmhFK1IIoAwoN
	qafPnRSOP0kvAdxCe3RvfG/EO2UkeG66Gn1uBSsFw+Np5rwFwjGemXioD4uo80iboLtHp+i228swE
	npcqXrwe7p3XAcR2l2Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKu5t-0000000BW47-1MvQ;
	Sat, 22 Jun 2024 06:19:25 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKu5l-0000000BVyi-1T8u;
	Sat, 22 Jun 2024 06:19:19 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2c7b3c513f9so2242680a91.3;
        Fri, 21 Jun 2024 23:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719037156; x=1719641956; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ntwi3HL2K5aymeEm1Qz35sLbHMAl5G1vzWWeac6e7E0=;
        b=E2B0AFhhamdHGD1AWtwS/TqN13DixnQi5A1kdsKHGfoXF+eeAscBfb4I2V2+9ngvT4
         yxMa51p6zfCLI5uuYL4EZ5T29HxtSPTpj6xABkSoN792HIPj+bX3pzFXNNQUXj08aqbd
         AvvWJ12OZSDl6AI+gTa6fTNm4+lQ8MbFh3Ek3n36upWux/fmapQn8KdQwRaAoBzbpeoj
         ZLfGdnuNnMOfZv5LzCjHdQpsoDFQK/MGUuA83eWWF9462ZcikS4AkpDh7oETBQNArFRd
         o5wlZXXVn8BX/TesMzZG/ObQe37LmPoxfqLtK4qcoWjEM61dBipKYRIfstFfhyOHGE6H
         cxNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719037156; x=1719641956;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ntwi3HL2K5aymeEm1Qz35sLbHMAl5G1vzWWeac6e7E0=;
        b=AIU3lgaFZDGqsPj1LNJiVQXKwOd3hihSlGnhr/u75dcl8VW5BixrCNtgH81xQtsA71
         DZkJ87LrcB6hLFxzyxTt+wFTmk1A+q7KSqzvUhLwsTU1jL6FRJuVodFb7OJrCbUMbPJn
         ykRgfvXXTHcNLbK5FXYgCuf9en1JrbZc0Vk86JEpWBCIlt80HEl9O6mNTmlyp1cX2mTv
         IW1DNePI753SLhc3JRi+sTI/4NjMBeKlXOE6ffJ7o5fynTlsgJzvPP2pRGDBrdQb2eba
         Y5jSm1NS5Ns3NxwZst5GI0e7LH6H/sia1liIQmS5wAfDfSZW81ckI3Qs30mhA+KVPjX1
         gcig==
X-Forwarded-Encrypted: i=1; AJvYcCWQKfrsd54IneDSsRWyyHaY5+tsAJrL5ggaClg8R68Cr31H2mI6C574dIBOXbRANXUc7CeOTPhlGSn0P6gUFnmsjpviXr02Y7eSABpf9RgGidT3t2dFBnWKVLsHeMAsYKcB9D/dya3TnoyAEF3pWqyeFOBlRxRrJYo=
X-Gm-Message-State: AOJu0YzD4X8WX/xUEr7pWGPsaFOETFA22ArPRqIJ0UXsfWcknP6lG0JE
	tIzGBPk3U3mHM258hhElPZITDzYp2I2YOPZfSG5m3A6bV8nbmW4t
X-Google-Smtp-Source: AGHT+IE078jZ03UdYebN/k5h4osUfnzBl8WDffYTEdCg2kBOJHT73FdNJJuuUWpAkRO1OggjBayIKQ==
X-Received: by 2002:a17:90a:a017:b0:2c6:edb4:1c96 with SMTP id 98e67ed59e1d1-2c8505195f8mr161149a91.23.1719037156523;
        Fri, 21 Jun 2024 23:19:16 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c7e53e7bf0sm4692240a91.19.2024.06.21.23.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 23:19:16 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/3] PCI: rockchip: Refactor rockchip_pcie_disable_clocks function signature
Date: Sat, 22 Jun 2024 11:48:40 +0530
Message-ID: <20240622061845.3678-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240622061845.3678-1-linux.amoon@gmail.com>
References: <20240622061845.3678-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_231917_502446_1A96E120 
X-CRM114-Status: GOOD (  12.04  )
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

Updated rockchip_pcie_disable_clocks function to accept
a struct rockchip pointer instead of a void pointer.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v3: None
v2: None
---
 drivers/pci/controller/pcie-rockchip.c | 4 +---
 drivers/pci/controller/pcie-rockchip.h | 2 +-
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index f79e2b0a965b..da210cd96d98 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -284,10 +284,8 @@ int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip)
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_enable_clocks);
 
-void rockchip_pcie_disable_clocks(void *data)
+void rockchip_pcie_disable_clocks(struct rockchip_pcie *rockchip)
 {
-	struct rockchip_pcie *rockchip = data;
-
 	clk_bulk_disable_unprepare(ROCKCHIP_NUM_CLKS, rockchip->clks);
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_disable_clocks);
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 27e951b41b80..3330b1e55dcd 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -354,7 +354,7 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip);
 int rockchip_pcie_get_phys(struct rockchip_pcie *rockchip);
 void rockchip_pcie_deinit_phys(struct rockchip_pcie *rockchip);
 int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip);
-void rockchip_pcie_disable_clocks(void *data);
+void rockchip_pcie_disable_clocks(struct rockchip_pcie *rockchip);
 void rockchip_pcie_cfg_configuration_accesses(
 		struct rockchip_pcie *rockchip, u32 type);
 
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
