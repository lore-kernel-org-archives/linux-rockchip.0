Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 979F6CD98C7
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 20:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/9dVo/PcM26BlaY9xZxiNs7h87sUDirYhYgfKmqP3E=; b=zweMx0HsnwHa8M
	Tyz9XXFGrNe9nvNlPCDKxHnYZbqyoJCjK6ypl0zw3+aQuoFKRN1KBNCH8QWRfKRk44mc2Bs70U+/H
	wtlFVWhKGd8WENyeXIBQjynEPdO6ixmfARkONi4iPx5L1+xqDUKbJR1XG0uLcnbM6gx8KY9aDknEi
	DtfECAW9c8qHkwBPBoNN2Rs3yx0Zz1BzYN25d2QdJtoGL6eKsn+yNkeuiJ7YEHixbOZ1j/l24MjJe
	sxJNWIL30qhaA+Xjn0N19f4YUZQQo3FLfvElA6/3ZzsLvRJdLltX4uzD/r16vaeuQGr1E0TyKz/Fv
	A0dkrlIgUELBuklWgIEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXld6-00000009zYf-3fjI;
	Thu, 11 Jun 2026 20:03:56 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXld4-00000009zXZ-1Ljo
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 20:03:55 +0000
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-9155183b42cso39525585a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Jun 2026 13:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781208233; x=1781813033; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2OIfDLIkJhbaUkdh0HltZEozEAObCZ7mgl0RsbHOTNY=;
        b=lhtjE0wc9AhWOYk9zXUrKhb9Q/B0QOViR0NtsyHwT5cRxzk62OrODmZvAarWwNt9RA
         SnfPXDQMghLp2dGOusnSrXFihkyeim0Lw6Z4gtjFF04ta9WlJ9fULzamcUUPRP9hS3xl
         6a9WNDhHwlOELj17BRkdULubLcI2pMs7plEdgjaQrwtUxGL/cOoONR363iMYuoGExBos
         rmmNcQtJ4Bm+bx3owr2Yqh4DCSp4gPCS7lJIWCq8nKJi50JUbkIlMrnHTAifjpFuKGvT
         ez38b8g/eLHUHhpEJZlEjYe2qUfNa34HHJHLMQBOe8E3ptIFMSFknjuZAFpStLausVLu
         E2HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781208233; x=1781813033;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2OIfDLIkJhbaUkdh0HltZEozEAObCZ7mgl0RsbHOTNY=;
        b=LSi6Nb3TbALXELCrn+MEW79w936WGq9P+MUi0lCUumncO0R6rzA2px0P24yblQNJSV
         eJ6LzGtGUgJqSkUD9xyW2E8hMXxzhxAoqEIRtRBh2EJwP8PP3LNqaCyhq6OCWQihp9t2
         +saDmChC5UkipXLK5HEYsqYzlKoRkreHJTUFvzVCs3pox5YxAKdDbQhHkYy4WbRbPmGK
         +2Z8n5a/Ep3lULD0vK0Ss1b/ZcFkIoeTC5aYzF7PckHbo3RqHzUgcZVkzCkJpu7bn52J
         R+92pPr/QJDFofQ6+ixYvpm3lzvdwq7wssrQ2ckCBxIRVFjdc1dkI16FXEDvPPHbPLB7
         Fwjg==
X-Gm-Message-State: AOJu0Yw0nAiVgTXpdpcoMCmpkL/Zy6WSewYuPYEOPLpjbjgxHoVo47mr
	trxlM89qAWE1vjkixvhxJvmCPCqyib7/gZvTISsIIzQg0hMwEvV8yVSI
X-Gm-Gg: Acq92OEBrfKow6gO/kAre3QoULNnYFHmG9WUc9hGtNwj7v50kVZ34lGBlMWKKLlmU0L
	PDPxwEdz7f6Qao6Vp2XdNl8/WyKmlFyYblKkGg3bPjrBoMgwdExaE3XdB+hT+iBtzY3/8XSBuMw
	zlEsoM3c6b2/jScOtCx5XNp+udX4WxNLY5eGXGG/A1eGqwP93HRyown+c3fRiUJwjlA1TScprKq
	1jcHThc6UikIfEZFxMgzfO4Otq1/UWMIotuhzGN5Mut38p65mj1ZKlKK+k6VB5qX11ncbKcNbNP
	JAC2lSP99tNPPmtjdzX9ewgWY04why1cnuq677p5O+hj8R0pKD99aNq9UjMmT7SQlv+dNoX9qND
	BxyvIYh7jwqO9sNOHygstIHv0nmWzMVaxEE7T+mqFm8Y5NooR6gxnrIanmW8phZP9vdM39rv2CE
	jJhMR/I2Qx
X-Received: by 2002:a05:620a:288d:b0:916:5f5:de22 with SMTP id af79cd13be357-91619dfb646mr39598985a.12.1781208232857;
        Thu, 11 Jun 2026 13:03:52 -0700 (PDT)
Received: from geday ([2804:7f2:800b:f09::dead:c001])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-91619ed7215sm11571185a.7.2026.06.11.13.03.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 13:03:52 -0700 (PDT)
Date: Thu, 11 Jun 2026 17:03:46 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geraldo Nascimento <geraldogabriel@gmail.com>
Subject: [PATCH v6 2/3] PCI: rockchip-host: do not attempt 5.0 GT/s retraining
Message-ID: <fa9ed4fc6d4531a9216473151ddaebdb70398c20.1781207474.git.geraldogabriel@gmail.com>
References: <cover.1781207474.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1781207474.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_130354_368201_42B683C9 
X-CRM114-Status: GOOD (  10.73  )
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

Drop the 5.0 GT/s Link Speed retraining from Rockchip PCIe Root
Complex Mode Operation, so called host driver.

The reason is that Shawn Lin from Rockchip has reiterated that there
may be danger of "catastrophic failure" in using their PCIe with
5.0GT/s speeds.

While Rockchip has done so informally without issuing a proper errata,
and the particulars are thus unknown, this may cause data loss or
worse.

This change is corroborated by RK3399 official datasheet [1], which
states maximum link speed for this platform is 2.5 GT/s.

[1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf

Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Cc: stable@vger.kernel.org
Reported-by: Dragan Simic <dsimic@manjaro.org>
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index ee1822ca01db3..1374a2c92b563 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -328,26 +328,6 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 		goto err_power_off_phy;
 	}
 
-	if (rockchip->link_gen == 2) {
-		/*
-		 * Enable retrain for gen2. This should be configured only after
-		 * gen1 finished.
-		 */
-		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
-		status &= ~PCI_EXP_LNKCTL2_TLS;
-		status |= PCI_EXP_LNKCTL2_TLS_5_0GT;
-		rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
-		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
-		status |= PCI_EXP_LNKCTL_RL;
-		rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
-
-		err = readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
-					 status, PCIE_LINK_IS_GEN2(status), 20,
-					 500 * USEC_PER_MSEC);
-		if (err)
-			dev_dbg(dev, "PCIe link training gen2 timeout, fall back to gen1!\n");
-	}
-
 	/* Check the final link width from negotiated lane counter from MGMT */
 	status = rockchip_pcie_read(rockchip, PCIE_CORE_CTRL);
 	status = 0x1 << ((status & PCIE_CORE_PL_CONF_LANE_MASK) >>
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
