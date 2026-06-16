Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE69CCD98E1
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jun 2026 15:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/9dVo/PcM26BlaY9xZxiNs7h87sUDirYhYgfKmqP3E=; b=hSVLqYWlTyVqXy
	9ej/EEGFIksDqk+vZRkVfyxegSW6wEY3ilxXNkb48MAb0cIG1wkl1aWDYqiS1ds1M1PD83xAKTNxw
	3Gwjoib1mvVofNTR9XajXKIa1UjOrizs4pdh9JtPUGIh+7Y1PKIqsaOANkq7s11FBWB0blbAlXv8n
	iYbChC2yYabZ9dfZvI9x7BI9CsPQTz+GXYjMX+ZKLWDvKAXzAhVOqG2y1HMOkR+4CgceMl8IHOHD5
	iYIHDrjNRPYKaG7dO8Tm9MiyGLRogdPNfNzrYA2bYIZ2CGTBO42GFM5skKQhmf6Rlqn7h7qDQkpjg
	ts09JjgTNBxhFZcaWOFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZVfn-0000000G0fp-17vT;
	Tue, 16 Jun 2026 15:25:55 +0000
Received: from mail-dy1-x132a.google.com ([2607:f8b0:4864:20::132a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZVfk-0000000G0e1-1Vdi
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Jun 2026 15:25:53 +0000
Received: by mail-dy1-x132a.google.com with SMTP id 5a478bee46e88-30bc871ecdfso3567eec.1
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Jun 2026 08:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781623552; x=1782228352; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2OIfDLIkJhbaUkdh0HltZEozEAObCZ7mgl0RsbHOTNY=;
        b=shvXAFIFGzNp1bFOHqb2odGhEJs0Dv8nTnkmu5e8K/mn9YR8TYaHIEvGhAA9i2CU3Y
         khTohXG913yZNrkW4vxVBpMf7yQ6NOUjEp+1EskzLlU1SCSjy7JVt3T4LRtj718UBVwx
         HFbEkdMMg5zEz2xZG/r6lvOUoXsXMRLT3S4KHAgzBjt8nX6sBo/Wh6rZm9spevOdJ5Yc
         OSWhwfPDBFvYotVqrDXSEFRyCqCz2tYNvdDJwKhFkR+iNEWSaiRogjcYY1eHiYbE2yZ5
         feg6pApcNKOiUOL24Qkd08pymWyQsKcbEZIni28T93+Uu3fWglaLqbVZzSv2cuoEtnHV
         7C6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781623552; x=1782228352;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2OIfDLIkJhbaUkdh0HltZEozEAObCZ7mgl0RsbHOTNY=;
        b=ar79L+X3oWAhtoE8tsoMYOknG2Ep8x52bZAWS0kFKbtsc1ICyLMRQ7+ulcmGPeYru8
         x2rHsPHrwV2rFIEjGtSzHdshY+v7E32V7mV+7gLfw+hb8ROZyXyg1oYR9QH9cZ8xFE++
         Ut1sv4nNL4PM/+RkYBPHd/Pr8WgRf7pLM8C2fP9PM6I4lToXnRZDyM3V/hD4WQsZey3N
         MZypmVop/lUxEq0DeefTpmtiJFcP8RhgQqefW5ZBGHkaZQ3L/TKLMpGeSxvdONf8ihVF
         9IEWCugyRGFSHdCaStpPJyWtx4Jt75kzkBlC19nrOVbwKbsnwDB+eFXFueZSEnJgW3lr
         VWwQ==
X-Gm-Message-State: AOJu0Yx/S/zgzaMDYty9Uz0jgZwJ1GJinlSGxZyG5jqaZWVquYFKq2Df
	jYAQsh2gxQBHIXeV4QFOk5dggJ4LzSxI4wknAvKWk8v/Gcpgxm8PqhK5
X-Gm-Gg: Acq92OEpsZKix5s4XKS8LIJNl5onmzCz6E56EkODn8yzyacAYI0Gnox6ztoQLMWlaFi
	LzGLjGZsuLa1mN8UObIUz8BTY0RSwN8xsbYvZZ8mbU173Hm6IIdCzsuDQpp3jgAPv3h6sUXhMR8
	6GIdUqMyDU8rWNhjtwN+SQEYp4nV0HmV36QkwSeAWU+0keTWuy7ss+UyeghFQVJbvTs/BREXwOT
	xij/LS0RkfNA0eOyHnstLx6d3OMcSrbubE23BK2bdKpR08s/n/K/HhymFOYVHqLxVwZU0bDDQbr
	PhzWts1jTbSTKk37y40AMobAtr+iWLST5yrJOcLliqDn1QN7NMFvTEHCRk0nkEddvLci/YS8RUr
	1HwNQfvdZP4mjVWpAtIseaw/m2pV5zFYiIlJbg3/ZJfc2/hrPf34EsAuo+JxzyIrHodVItmN/bQ
	WUeeBKslFPIH1Mnl/fuL1L
X-Received: by 2002:a05:7300:6c15:b0:2ed:e14:e954 with SMTP id 5a478bee46e88-30ba5fcc635mr2325529eec.30.1781623551532;
        Tue, 16 Jun 2026 08:25:51 -0700 (PDT)
Received: from geday ([189.115.92.220])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30bbbd636fasm1525643eec.22.2026.06.16.08.25.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 08:25:51 -0700 (PDT)
Date: Tue, 16 Jun 2026 12:25:45 -0300
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
Subject: [PATCH v7 2/3] PCI: rockchip-host: do not attempt 5.0 GT/s retraining
Message-ID: <68f6353e3a2ea4914de36c42b6906e41282adad3.1781622998.git.geraldogabriel@gmail.com>
References: <cover.1781622998.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1781622998.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_082552_425207_786FE24F 
X-CRM114-Status: GOOD (  11.41  )
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
