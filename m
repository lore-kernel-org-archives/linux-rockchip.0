Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA3BFFD9E3C
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 05:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lw9GvMrdnALEiKsj6dl0A4ZQoASdZthshkWhMD7bSs=; b=Lnh21F7Jh4PKN6
	TdI/1z1TzwAYJbEqJwOIcd8N10JOfOWqa3jgzIH+qk+2jhT+FM32wFGu0V83uIBOiAYy/XuROJvhJ
	e449eysADHSwYenQ3Csc4e1dy0GwLn10uJBCPWguRWWkA6QRovPsbF0X5VOjPNFj+oStXA5TZ3imx
	Cw6wDwVJIzgdPVEl5Kv4DkRfLlmIP3OCkoSOJC5JiIqmYEaR2KnDDrgYa6U+FoDrV87yxGpImeBcP
	rY1UnVD9mMeHFWHWazc1473vsc9Xu2lh6jvIYftDxcfhqDnLcUUry9x/tooT4/CPb0ZjeKeiTdyaj
	YS6zU0ute0aP37B324bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvqWm-00000007jIt-2fzW;
	Fri, 27 Feb 2026 05:36:40 +0000
Received: from mail-vk1-xa30.google.com ([2607:f8b0:4864:20::a30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvqWj-00000007jGf-0fIH
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Feb 2026 05:36:39 +0000
Received: by mail-vk1-xa30.google.com with SMTP id 71dfb90a1353d-56a86f0a23bso1475900e0c.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Feb 2026 21:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772170596; x=1772775396; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7ahdwK5YE/BVFVzjUz+/VzjFDN6Ot/+6hz0uB3cz4GE=;
        b=LVerPPn40RHgj3WALcpLfqDSEvslz5M+3HZf2uk0+w2Qe62wWnsCT8eLpOuH8Oyhoa
         R0Hj95rJ2RN7laA1RlbJ8LMO/DCB//E8/UW+P5yGyt/OaAxLVcV5AME0gRU1mVXzZaD3
         IMvA9B1IOkl/yjf41Hm3XEsq/0ovUdlvRM+lc/K3hDj496x40JfbhvLeG2vQohYtP2/i
         iciSqjPfGz6yZ6jc5uYPs4sgoRDJv7v8rfIA4dkDY+tFREBclW9XJqWAhE4VwxFoWoSJ
         popReuR8IpOj8xjHR/yxUwBZEhJwTKy4+YFLgb9ic7rTOclGPkaKeUjM2DY7cWz2Allc
         5mmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772170596; x=1772775396;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7ahdwK5YE/BVFVzjUz+/VzjFDN6Ot/+6hz0uB3cz4GE=;
        b=mz7g5fJHr9GbZ5UEH1Ea7I1GHnMhyu8L3tEuiiqhIxoXzi4201Enn9uUGPICY5a8Kl
         FlxZNVR+7GMGOJzFzq26PdajmdzZ7OFGl99d5OjuWDtsXeS2BQWe80AtvdnzeRYImJDQ
         KgQBffAJdz4XzD0WeEkP1uq6xvLY3yw01LqmdmWSJeCbc2SNCvoJpNPRikXss9K/7+R2
         JiZml2SjBn21OxCPbZFgEIZOTktY30AbjKU+sz+nWJMS610lmriRXEztX91yYfmTu2hp
         8KEqsi1m4f7ZSaJ/71UH6S7t8pEv0JvwwlpZEjw2jFkpjsHtqTHfXoCkEMblwns+/3UH
         DT/w==
X-Gm-Message-State: AOJu0Yxva4Pg/RCoibinx4qrIxvE823/ahyiOeqjXsjw29lrzQ08XqX6
	h92+fAWtHrL6AmJCQedn74dpjpezqeNgxoYVI/cryhV1bmf3n8ztoTr9
X-Gm-Gg: ATEYQzzInUaTzHUFCe6PEpVZa6WveiNazT4PRCSpVCRfVMB3RuvJWmimgtMCrLH4ANs
	hWnH+bCt0rhaqaOVQ6WPlWX3pD3nxybl2P80wGzRb3JRcezJ1qU2D8X+CuOjSmc2KmWl1N9ls6q
	AH+IhmdJsIUFjVgqfjlzxmUp0lXYJSf/KsHDLIvKdy97zCIAHHK/xeT5rR3TtS3Ey4laRm2EgQ4
	qJCsY9gJ+ehBwOWZwhlvScEASiIRMsB4WV5djUTHLwbEyKSCB5S9RYJpbZqRdWA2DLJNWrevQ/Q
	ZMENM64o6YsIXnB7SkUUnJqMD7NlqDv+46kWbTb+alJdm70SffuZSdWApo3U+w0Y/B2LtbdQLYY
	8qVvOvs17RT7PJDRQLurGmAGWbQDF4mvuHEzZdmv3KeT8JpNpumUdvObYoLmYo5jxUsDIrtrHIi
	VZQbP1WGUI/Q==
X-Received: by 2002:a05:6102:a4c:b0:5f7:2430:5340 with SMTP id ada2fe7eead31-5ff324986b1mr1096585137.21.1772170595887;
        Thu, 26 Feb 2026 21:36:35 -0800 (PST)
Received: from geday ([2804:7f2:800b:feb1::dead:c001])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1e8240d2sm4431027137.6.2026.02.26.21.36.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 21:36:34 -0800 (PST)
Date: Fri, 27 Feb 2026 02:36:27 -0300
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
Subject: [PATCH v4 3/4] PCI: rockchip-host: do not attempt 5.0 GT/s retraining
Message-ID: <92662fce5ebb28d21d0c68631a23ab8afb815a90.1772169998.git.geraldogabriel@gmail.com>
References: <cover.1772169998.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1772169998.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_213637_204484_3FCBCCFF 
X-CRM114-Status: GOOD (  11.88  )
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
5.0 GT/s speeds.

While Rockchip has done so informally without issuing a proper
errata, and the particulars are thus unknown, this may cause data
loss or worse.

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
index ee1822ca01db..1374a2c92b56 100644
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
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
