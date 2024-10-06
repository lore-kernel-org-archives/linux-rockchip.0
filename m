Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17E63CFB424
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Oct 2024 18:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ary7eHPz9n4mPdxgbrAA7k+uVyqZPVsy+QliznMRGwY=; b=HDSvOTRo+yxvee
	3IbRH4eZPkXUXk2x4krRT+B/8r6oKql0E8KqMCSyRfR6meHLNxnvthuR0Wq2SDYM78GHeDKc0EqH7
	Rsl6J/X83bPWKPVth1y67b0ypUGNVlIhhsOpR266dWAKG6FvM+XDlwRdT/9T8/VLjX8WU4Cbu8dKa
	tov849jJsHtetjjUJEoS/MskZOTjGhFzxHuxIBTy4Oxq8z5wc34n7xWxo9adHofQGvcnYyptCaOyL
	jLQ+C1PN9YGkCQArdHqB4p3PwPKp8lRft4lCL2w88ZwxVALj4roPthje5rCaAy/SjEpP5lm5StU09
	ROK0ncrTWbPnyYRtz7nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxW13-00000000QPz-3hmx;
	Sun, 06 Oct 2024 18:30:01 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxVwW-00000000PuC-3BQP;
	Sun, 06 Oct 2024 18:25:22 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-2e199b1d157so2691528a91.2;
        Sun, 06 Oct 2024 11:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728239120; x=1728843920; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0r5PI5Fsr/AroJKeUAO8bkOP6c9YME9rlzxUNbudK/0=;
        b=SQY3udGcG3imh1TlNrI3R4yz/C0lGHbv1ISpThmL7yBMWOOq1QPa1kgkTH2E/PhgU3
         TV26tn/YTtCrB5YY53rosJGfRLI4HD7yIAVmh1m+gEq1oGJ0BbJveERAxvkOP7KCUU5w
         2aBKYagAlFXVHm5TnDW3wmlmnf0NpFQsExT+fZzflycS8oIpoRRATF70cIs5HoXS8Pnl
         SqnZF0DKQV73A0lkBre4PsSYO//6sJL3koBN5i4Dp8mQl/swEt/KyG4SGL6yURqoxLVS
         8XF4oL466mSxk3IWMqbRlEUreq5l3715fISAVHrOKORJn5fCxka0AmD2oUWaRSkxLApp
         Bgdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728239120; x=1728843920;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0r5PI5Fsr/AroJKeUAO8bkOP6c9YME9rlzxUNbudK/0=;
        b=CSdO9No+bHBjo77KEnqbJGKlRKFBHDGgYXtZLmF5ind0CZ3i/XzVIrHybIGMwJyA2r
         t9M+N0dCFqR4lq+U+9g9RJLqQ+bGVMQOPzrzCBHs8X+lxWZTbzZusrrK4y/k2+S/InsF
         BwWPL3agCIXATOeRijkQda+O8cGKXjDVkGCtPu9foQU5fF83Tlfi97nPBCYGeSXvjRxs
         pItmGz7wUIjeZEBEO/21RBfsAstxSmQEH8IYyGdxZrMPdG4YM2A223QS3/67b+Qyine/
         pgNuofH7Z9k5LsQt1lB5ByTmVc7ujFktNAptoKw4yb/HsVOPW7+xzIMaxPZvc8vW4viC
         6Iug==
X-Forwarded-Encrypted: i=1; AJvYcCW9TqPG3LShRaNU2oLaGnJRd71twZH8zPBWtyBrA1yxuV9BjNorIMvUO7QvVuPaL+Rid4W0QXKYfb00fDHRJqM=@lists.infradead.org, AJvYcCXmOdcpzM/wFeyxFliUNW/sFWV5wZo4cW2qj3JrjGtxJrH0DPk2PQMt10L0tlQRZMiQpH2AtmJ+A/ikK2UtQr/K@lists.infradead.org
X-Gm-Message-State: AOJu0YxuraOxGZC2JiHssUAMwNVYsKt/2Tnhcs8k+dmmmMBNSsh//Fxw
	1piLFFrgDzy932dQEb07hy310HnaS12j8gyg0yvVXJMsH7CJ/qfF
X-Google-Smtp-Source: AGHT+IFtOoTTIfseZL/AtxCGULgp8rsMErzM23/LafWsSPdU3aoQM3dDxgKn7TbBiyBWhpWUoSB38Q==
X-Received: by 2002:a17:90b:4ac7:b0:2e1:cda1:12c6 with SMTP id 98e67ed59e1d1-2e1e63c58c8mr9370758a91.40.1728239119736;
        Sun, 06 Oct 2024 11:25:19 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e1e85c905esm5458471a91.17.2024.10.06.11.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 11:25:19 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-pci@vger.kernel.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-rockchip@lists.infradead.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v6 RESET 3/3] PCI: rockchip: Refactor rockchip_pcie_disable_clocks() function signature
Date: Sun,  6 Oct 2024 23:54:38 +0530
Message-ID: <20241006182445.3713-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241006182445.3713-1-linux.amoon@gmail.com>
References: <20241006182445.3713-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_112520_819027_8FF36EE4 
X-CRM114-Status: GOOD (  14.12  )
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

Refactor the rockchip_pcie_disable_clocks function to accept a
struct rockchip_pcie pointer instead of a void pointer. This change
improves type safety and code readability by explicitly specifying
the expected data type.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v6: Fix the subject, add the missing () in the function name.
v5: Fix the commit message and add r-b Manivannan.
v4: None
v3: None
v2: None
---
 drivers/pci/controller/pcie-rockchip.c | 3 +--
 drivers/pci/controller/pcie-rockchip.h | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 87daa3288a01..b528d561b2de 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -269,9 +269,8 @@ int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip)
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_enable_clocks);
 
-void rockchip_pcie_disable_clocks(void *data)
+void rockchip_pcie_disable_clocks(struct rockchip_pcie *rockchip)
 {
-	struct rockchip_pcie *rockchip = data;
 
 	clk_bulk_disable_unprepare(rockchip->num_clks, rockchip->clks);
 }
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 2761699f670b..7f0f938e9195 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -347,7 +347,7 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip);
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
