Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F4141048925
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Feb 2026 00:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNS3cpBesI9iIV/Fmjd0zCh8HgOy5enRaiL6BfPstIo=; b=rQmRDQeVtG/10j
	nwlCy5hJcyt6nSwpb//ahxpcS+JO8zzK0KqXr8v7amQESi/ZgwpP0XElCjj1KEgZsLsTO54hFqEwh
	SA16Q/E1jmOfmdzccIwjQPk/+tZL0bXGbcjZ+y2zLbQNayUtf8h7tsKeFkRSAy9muLeQHYcLLSoG1
	xxUFsw2AMwn7BcPVU4c5n+e9PBEd8SEpsPBpCCdhk22/xcN5rkEdze6vIZcdLxaTfG3BVGgss/1C/
	4Y5a7djHQlQq5uldf8nYGZdbcvnvPVNgckOwT9Bdx8l+PMzAquMkqgGaGM+zrWqo1JtLVe8/dB4KK
	MvVmuYuVSvIvuFLbfpwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw8cD-00000009LpD-1yiU;
	Sat, 28 Feb 2026 00:55:29 +0000
Received: from mail-ua1-x92d.google.com ([2607:f8b0:4864:20::92d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw8cA-00000009Lmz-3Plr
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Feb 2026 00:55:28 +0000
Received: by mail-ua1-x92d.google.com with SMTP id a1e0cc1a2514c-94dd05a4b44so1534228241.1
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Feb 2026 16:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772240125; x=1772844925; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3by8dItpKgMsvPGS2Pus1C94W5lhtexananCbnyqhcM=;
        b=SIwTgYm1SYlRA/1P0VhzYtySV1znIeRoBthhWlKr8NKDfzBCp8djX87bLpWZ/yKFHE
         NCXCUPDB8cdnZszXN5mCo2/ardKqmHD8vRA/NuGIPaNPMu96ZLtou+vKSqgyoftR4kMT
         mXHjMGSt5DcJ9fXh9p6GYEuh5q71GQ/f0p0ZGht1Req4AX0qw+SPYn/wLqqJNukpo5hl
         pDhL1bFs12YSzl8OoVR370Y0TACR0Hv6/PSzmBGQt4XjeS2cb+qb8M4okQwRNi06hik0
         i3FhJXqEke6UB0sFKWk5MTdbikJBVtWSTYXIWei/9fqWv80eKl3MlOiBeUwzgs2DunAL
         MbkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772240125; x=1772844925;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3by8dItpKgMsvPGS2Pus1C94W5lhtexananCbnyqhcM=;
        b=FGabZVFwXaTcG/vy5HBGsmxZA+/ScWh2Iu6R2drZo9LtopQOw47sG8arLYZ6I0e3wS
         piGusy9VFdgnetjmGTgvowYeCN02on1XSkEo4qKUJji7XOBRF7x69us1N6AAKxsHcHsL
         7d5omcDdpSsGntIr4bvOkcLmbby0n88QQvc19fdZ8eXB44ojzBgmCKD53j7BDiz1V2jk
         5vWrEFY45uQM2+3VjK7rHpwd5pIhSNkXY+FUFvLkFOloOHCdVUsZeGBn9gG8lPiseWwG
         Fq1REopG1WHCL/yOuCsOiktBunbSfrdCqwBSS3bfLSWwpSjJ3m+ODOQY982yDO9a3adj
         gajg==
X-Gm-Message-State: AOJu0Yy5XS45c2ewUeFZkS0/MnCxoMoOiUR3aAKw9K6zbg+kve5eQQpD
	L+/pEj5qmWdT9pE/mEKe99ryRuktB3P7TsuFys6TcMYOOeDwAt5WH+6h
X-Gm-Gg: ATEYQzxsBaJ9Cd9kpZr6Y4DTbdOE8LS7AwzO3KDLUlFIJYz060R3UfJ/geGMm8LNwfn
	a0uafBITfR3tXC/xAR5jFZ6crpn+/wS1jYWh09TPcefaR1cQlpSqoQ25yoORjCMrqyiK1dhOY3o
	NNGAYx25jsdAjY1OgRaeu8o09gPMpR8itYL/oreBrbprw1BYHhyQWfH5acq7NfxC1Ro7QqY94r9
	+13hONcS/QAzZBmoekFul0OXHQWpAaHAAx4fUj96A9E3OiMJipHALxox86Uj5nHPDZyDhQUVay3
	TcHYiZ8nq+Dll4rmbXWyU1wGWODzXvXRt1peBjSBXrODCHIOjYwYlO/0BORhD/KKlWxt80v3g4h
	Kkbcy0On6mG8MPtvMYBXTz+8rxgfKN2p8A7jwJYmfmIQWIDptNrLlnva4fZhEqfB9iXujw2qPFu
	0FhodG6fXoLQ==
X-Received: by 2002:a05:6102:3047:b0:5fe:f592:1626 with SMTP id ada2fe7eead31-5ff1cda9994mr5177242137.3.1772240125413;
        Fri, 27 Feb 2026 16:55:25 -0800 (PST)
Received: from geday ([2804:7f2:800b:feb1::dead:c001])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94df63d6695sm6182090241.1.2026.02.27.16.55.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 16:55:25 -0800 (PST)
Date: Fri, 27 Feb 2026 21:55:19 -0300
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
Subject: [PATCH v5 2/4] PCI: rockchip-host: do not attempt 5.0 GT/s retraining
Message-ID: <4fa2c439482725bb191a225a3966300cea253db1.1772239598.git.geraldogabriel@gmail.com>
References: <cover.1772239598.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1772239598.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_165526_861720_61AA25A4 
X-CRM114-Status: GOOD (  11.73  )
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
