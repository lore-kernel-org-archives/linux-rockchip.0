Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DEB5CD8C9D
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 20:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sN+kk5Hq3aQHcCte5ZISFWzaFY9Cmp0oJR2pnsbkHJU=; b=Ky05HC4ZoMvEad
	N2QaF5Am51hQJkRnATQCnNEHcD8Ir4T1qF1bSZU8OHamg2QJgJZR5GimHzBJr7P2+hXHlzBTYM3hY
	P36suI2C8e8xcT6vMCwLcxnOhpFbWECsdf7M8BWnYt+7c0bQ8dcmfSSWpULhtD3615tB+5AX08GcR
	2bptIdE7wS7M9LhFThVVd1oBS2TzqjSR3pt6a9lmQ8fxMaHFznLlgtCqZMzl21I7c5BbiQ5maAKAN
	DnJHoC4a2b8cgzaSQmlYPoHAJXS1ZRsQcn/4JYRUWriXq85npGnMwRkiaHXWJ1NfpN3kfAG9+4GuJ
	vNulUErVSIi9/fxyjQ7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXldg-00000009znB-1aYd;
	Thu, 11 Jun 2026 20:04:32 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXlde-00000009zle-1LiT
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 20:04:31 +0000
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-5175b6c4e19so1625741cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Jun 2026 13:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781208269; x=1781813069; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QPHgBrADPApAfZtc/YSxupn+3CjApqMQNAHkj/6KsE0=;
        b=G8Ud0rBmPdef1/2/zeaBUL+3t366ENTNl8z7ogyKuQaAlahYPRhi4a46pIpLRZ/5b0
         M8hNPVn+cEvxWL/kWMd6rflnasvfvNMm2czUTJ5BUbE6AbwcitS3qbLZwbwu8rvBx2j7
         /233heGiM5KzBRxyT73c8lf//bGd8GO74EzJsdSj9ME99Uf6vJpvD1CV2Sr3joWm69Yr
         2E55pM3baMrfFnZM4eNqa096Gm+zXlPFzFeF9tXvtv7OF1IQWWlZnjL+4ucMAR1Ify6v
         4AQ0Tpn1M0KEZ/9nL8jk3HrzTITRvgpQnWda2zp10wmmFlI7IGm+T6OWciyeRFF0Szmy
         isOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781208269; x=1781813069;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QPHgBrADPApAfZtc/YSxupn+3CjApqMQNAHkj/6KsE0=;
        b=Go37I4IFykXaby8OtbXsPnq/60jShN7TtPMon7BPrYr3zUXtxxdU9A02Knvbssnu+4
         zJV1+3OWFehVgt1a8JgORbucEAr/yAIiWcUZ4YAPkOvzzOvEJYAszAqf4InXleWqUoXI
         uChsliqywxGiwZCAVGRqs/GRGEdEljg7fgKsn6rHQN0QnVRAKZG4T2rLbi8mOFnRuZzt
         SaAZOWMXjup0N7kDPgsZbomfug5P36NbinkaEu641RBtABqgwdpfHJLsR4UEIURabXij
         +amYMnLMJtGvy/F3wTDwi6pUn+MOW968TQOtG2q9L4nCAM1bl166qFughhYYgAE56YlE
         shhA==
X-Gm-Message-State: AOJu0Yy9aRHRd/wjCTLNOyY+vyCbvBq7nleJ0e+ESZTjx/mp6wqAtOER
	bsEXDEwtIAwihyDbPukRmeXn8V9d8MF+VqKYQERML441SeecGqlotTHO
X-Gm-Gg: Acq92OEshC8afaxdw2BdZqe6fqo2UolXxV8xz5wpG+EM+VqYR6KcYaHbYwjFSgAbhmI
	wpp1G07lC2Zc++vLfjJNf9QhfAImagfGB8g91hy11KxiZ7odl1cs4DjP7imExeUq76vb/nkha2u
	0I4VJfNwko+6HrApThGz8M+aTI9rdoj5KwpoPzPF1Kwt/NLPZxQNf9umETFjC/oAM4RNAdd7HFn
	W3xXu4oX3U4kLrhgP51PsMrF1KZYwnk1DoBen77369oZ3j98uZUCab33KI+NA9O4tTopwVMM35G
	Xy+rJ1l5TByhgVAntyLExQvGZcceW2mTDsQsRFQ7Fj5mWwHXBnolBFoia8Tdi4qMZaLWQRQ0/Ik
	76vvTqGGqBzB8+hiUjgQQKAX8nS3refuOOwNcq3LU8BXvdW7+v2wLdiypGeGMOLUAAPFBJ34Q5I
	YDQzL36Txr
X-Received: by 2002:ac8:5e4d:0:b0:516:ddfa:23a4 with SMTP id d75a77b69052e-517ee27dfa4mr66606851cf.41.1781208268618;
        Thu, 11 Jun 2026 13:04:28 -0700 (PDT)
Received: from geday ([2804:7f2:800b:f09::dead:c001])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8d300f6b962sm3322496d6.9.2026.06.11.13.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 13:04:28 -0700 (PDT)
Date: Thu, 11 Jun 2026 17:04:22 -0300
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
Subject: [PATCH v6 3/3] PCI: rockchip: drive at 2.5 GT/s, error other speeds
Message-ID: <4ac5cd7d2271df375ed6307f5c394247721395d9.1781207474.git.geraldogabriel@gmail.com>
References: <cover.1781207474.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1781207474.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_130430_367513_D2B4F1E0 
X-CRM114-Status: GOOD (  13.95  )
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

Configure the core to be driven at 2.5 GT/s Link Speed and ignore
any other speed with a warning. Also drop the 5.0 GT/s Link Speed
defines from Rockchip PCIe header.

The reason is that Shawn Lin from Rockchip has reiterated that there
may be danger of "catastrophic failure" in using their PCIe with
5.0 GT/s speeds.

While Rockchip has done so informally without issuing a proper errata,
and the particulars are thus unknown, this may cause data loss or
worse.

This change is corroborated by RK3399 official datasheet [1], which
states maximum link speed for this platform is 2.5 GT/s.

[1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf

Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Cc: stable@vger.kernel.org
Reported-by: Dragan Simic <dsimic@manjaro.org>
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip.c | 16 +++++++++-------
 drivers/pci/controller/pcie-rockchip.h |  3 ---
 2 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 0f88da3788054..5a2876d7c8547 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -66,8 +66,10 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 	}
 
 	rockchip->link_gen = of_pci_get_max_link_speed(node);
-	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
-		rockchip->link_gen = 2;
+	if (rockchip->link_gen < 0 || rockchip->link_gen >= 2) {
+		rockchip->link_gen = 1;
+		dev_warn(dev, "invalid max-link-speed, limited to 2.5 GT/s\n");
+	}
 
 	for (i = 0; i < ROCKCHIP_NUM_PM_RSTS; i++)
 		rockchip->pm_rsts[i].id = rockchip_pci_pm_rsts[i];
@@ -147,12 +149,12 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 		goto err_exit_phy;
 	}
 
+	/* 5.0 GT/s may cause catastrophic failure for this core */
 	if (rockchip->link_gen == 2)
-		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_2,
-				    PCIE_CLIENT_CONFIG);
-	else
-		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_1,
-				    PCIE_CLIENT_CONFIG);
+		dev_warn(dev, "5.0 GT/s may cause data loss or worse\n");
+
+	rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_1,
+			    PCIE_CLIENT_CONFIG);
 
 	regs = PCIE_CLIENT_ARI_ENABLE |
 	       PCIE_CLIENT_CONF_LANE_NUM(rockchip->lanes);
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 3e82a69b9c006..b5da15601b585 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -42,7 +42,6 @@
 #define   PCIE_CLIENT_MODE_RC			HWORD_SET_BIT(0x0040)
 #define   PCIE_CLIENT_MODE_EP			HWORD_CLR_BIT(0x0040)
 #define   PCIE_CLIENT_GEN_SEL_1			HWORD_CLR_BIT(0x0080)
-#define   PCIE_CLIENT_GEN_SEL_2			HWORD_SET_BIT(0x0080)
 #define PCIE_CLIENT_LEGACY_INT_CTRL	(PCIE_CLIENT_BASE + 0x0c)
 #define   PCIE_CLIENT_INT_IN_ASSERT		HWORD_SET_BIT(0x0002)
 #define   PCIE_CLIENT_INT_IN_DEASSERT		HWORD_CLR_BIT(0x0002)
@@ -197,8 +196,6 @@
 	(((x) & PCIE_CORE_PL_CONF_LS_MASK) == PCIE_CORE_PL_CONF_LS_READY)
 #define PCIE_LINK_UP(x) \
 	(((x) & PCIE_CLIENT_LINK_STATUS_MASK) == PCIE_CLIENT_LINK_STATUS_UP)
-#define PCIE_LINK_IS_GEN2(x) \
-	(((x) & PCIE_CORE_PL_CONF_SPEED_MASK) == PCIE_CORE_PL_CONF_SPEED_5G)
 
 #define RC_REGION_0_ADDR_TRANS_H		0x00000000
 #define RC_REGION_0_ADDR_TRANS_L		0x00000000
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
