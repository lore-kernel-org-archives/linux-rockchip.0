Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EF28FD9E3C
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 05:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3eysTRDJvfbBz2OQnLKBFx7A138I3h3XVn6JWFyHJVo=; b=BdVYe8k693SSXG
	Ah5lU1/iAed/3XjDh8JnjwAgiCN8pnRuHQLel39MzgejwYi50ZqcLze65mn9UhMMP91u9Tj/5A/BX
	UZxwl18y4+j6lmTyHraNXyLCTX4WUr4eBLGJRv+aYfLS9f6gMgTg5iTFYTgZcC2NOF3g0epNxRUUm
	BfmH0+fj1ni6skIg1gjsqVQzLmn9GEwsEekQ5clSDP+4xkLzvYEUvVbIxYXpJW7l6IhbKF8Ger27i
	+eVOiEvbnpYfhv7DPJxuvic+X3n7cAhpA9xE6R3O4Hxd7sFssXgK70bSlYMtMB4HcNIq+qTy2QWdl
	5Kiu53wtbyQBwDhhiA7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvqX1-00000007jQA-1l6r;
	Fri, 27 Feb 2026 05:36:55 +0000
Received: from mail-vk1-xa34.google.com ([2607:f8b0:4864:20::a34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvqWy-00000007jNr-3U0e
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Feb 2026 05:36:54 +0000
Received: by mail-vk1-xa34.google.com with SMTP id 71dfb90a1353d-56a86f0a23bso1476002e0c.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Feb 2026 21:36:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772170611; x=1772775411; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TmPKR2Yyu/CowlCAVgHjCUwCb1vpQWAYSrI2qG/n3xg=;
        b=SufqiQniOnBMdLVMSGaWjsPGEW9StLfiyEaf0GpP5Pp2/bSE3Y/NxGlLkL/ErGwAT3
         E3DHGR4AIMxXANtSxbxqg3sIMmX4ZDB0eyjfCocCnzTQqs1LmZqlwVAA6InovpWLL7Ze
         mzaurMIeiKhqQ7Zhocjxf5LdWibh4JIBAinsAsf1iBPLlj79KDVn7Oi6uHgSDggOAnIz
         1Nw2vzwyo6BMjthWr+I/9lG+rWjZxuiTkr2ZTKFa4RQESBgJprI18678VCHFGaH6+kGi
         WOzSIwusYHEtLcJrAoi11ScV38y5urqRY9S7afTDh4RWLiqbqGgHBT7GweSVq+zdFoY/
         u8fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772170611; x=1772775411;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TmPKR2Yyu/CowlCAVgHjCUwCb1vpQWAYSrI2qG/n3xg=;
        b=nNFplvfF5ozQg1bP6MXfXx4gPPwF5FG2wsGIoEfXY24Uj1zZJJ3O0YjTOMrwPdnP09
         VH5+Glg/e6r+2hbvSzFeDDwcBu3PPRoDzbJFiKfcyuqxhnPov8y4nm0tv2J45YNo6Z2A
         wGH1Ww20rcYNWQ6gThhUh4JbSyii+6MFaxXNMsohY31RFCg9X6ZBKYRgRbUqlH02Sod9
         bPZRyEVol6UWzul+dBex0Mjzrpmw8cQTarMdnzsTxdt4VbbkHKILuLeFR4iyvBbsZEu4
         cqGo53eQLkcRRAopuNcLhRw6itU/2Muqg4/+qHqniYHZDo9CSg+tAwxNG4AkStAP7pdm
         AKMw==
X-Gm-Message-State: AOJu0YzsmAizH6jBfZoKuEzFkmMapfT4WRlVEvTnJ4Z4DXfXmuBjBqYv
	/nASl2cZDGdUfVibMj1sycYnSvYJzwd9UYZPKrZWaL1/l8IG//ILKBmF
X-Gm-Gg: ATEYQzxx/mg32bdxDcyV+VNmoymD4GtOo+e2liutls1+xzEIIt+K8BRoDsAW74pzZjK
	RWENgsDhZwFjQ30s+hpMUs4R7kS5n/dR6jh7e9MyKiqOzP5hftfVUwnjufvWSPPlulDgWkJ42L2
	P4mk+236tlzEsuAJI4HzqI3AsTvwYkymlPlqLSAsRPumRys+LRmTe+jFEkmfc97N+XW3uRMyQU1
	hLz3xH3LzZY3EpvyeKh9BKNn3TrRNzKoupKwZCIwQGVtI3tzpktmMpqZsPEBreFrm/CIcZ3Cnfp
	3fk1UrIQghPKimsU5HKGjbt4c0zxMgsdIfZ3/ypYUfUwGz57gdEw4wN6qzJCjKzmP2mIbZUZezS
	yIYmWV33SI9xRgcLutEwjJhxRtWq1mV6vXjy4nG8YjFysT3wq+q3XjwmRtTreGask6UzDF6JOIj
	4gVQ0BnFNkcmhQxzChstQc
X-Received: by 2002:a05:6102:32d1:b0:5ff:a1e:ee66 with SMTP id ada2fe7eead31-5ff32271334mr1111779137.2.1772170611497;
        Thu, 26 Feb 2026 21:36:51 -0800 (PST)
Received: from geday ([2804:7f2:800b:feb1::dead:c001])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1e3e6013sm4496101137.0.2026.02.26.21.36.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 21:36:51 -0800 (PST)
Date: Fri, 27 Feb 2026 02:36:44 -0300
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
Subject: [PATCH v4 4/4] PCI: rockchip-ep: do not attempt 5.0 GT/s retraining
Message-ID: <c51c804bea56d772a59fd29fcb080541b7a367d2.1772169998.git.geraldogabriel@gmail.com>
References: <cover.1772169998.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1772169998.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_213652_877265_912860ED 
X-CRM114-Status: GOOD (  14.19  )
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

Drop the 5.0 GT/s Link Speed retraining code block from Rockchip PCIe
header definitions. The reason is that Shawn Lin from Rockchip has
reiterated that there may be danger of "catastrophic failure" in
using their PCIe with 5.0 GT/s speeds.

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
 drivers/pci/controller/pcie-rockchip-ep.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 799461335762..9ebc227a1ef8 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -553,19 +553,6 @@ static void rockchip_pcie_ep_link_training(struct work_struct *work)
 	if (ret)
 		goto again;
 
-	/*
-	 * Check the current speed: if gen2 speed was requested and we are not
-	 * at gen2 speed yet, retrain again for gen2.
-	 */
-	val = rockchip_pcie_read(rockchip, PCIE_CORE_CTRL);
-	if (!PCIE_LINK_IS_GEN2(val) && rockchip->link_gen == 2) {
-		/* Enable retrain for gen2 */
-		rockchip_pcie_ep_retrain_link(rockchip);
-		readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
-				   val, PCIE_LINK_IS_GEN2(val), 50,
-				   LINK_TRAIN_TIMEOUT);
-	}
-
 	/* Check again that the link is up */
 	if (!rockchip_pcie_ep_link_up(rockchip))
 		goto again;
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
