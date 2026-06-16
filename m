Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09B0ACD98E1
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jun 2026 15:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqUclLNSa1YBZfniVAtulayVJTBwUp7B+WG11U7q4f0=; b=d/VAt839qkxW92
	zuapUwDGwnvZ2IvxVGOCTAPjMI/Gs9v9ePLb5DylmN7qcg9MVKunqBE6oN8H+X8ThGdWmj7AwmgDc
	BT0OPD8ZF0Eqbjl+IlhLQYlqwIe5gYLXtmbGXg1PBjHLyquBMMPS345xGCj6dkmAKZHmnyN7K4TcI
	+ExoC66TiCS1+9aDbwzv3ZZ0C7iHz5IuqmJRa53XxMNYPiRDbqG+Lwy9ZgL9PYDYy2OvZK+Z6pfEW
	sfCgdIffH5hHlKajyfs56Zdkf9CRhlawVjS94FbC92EVXhwQABCCHjXSTfwj7zZQB6GB+GWDQv4pd
	xJVQ7O9K/5WROZjFLgaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZVgD-0000000G0p0-2wrH;
	Tue, 16 Jun 2026 15:26:21 +0000
Received: from mail-dy1-x1329.google.com ([2607:f8b0:4864:20::1329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZVgB-0000000G0o7-3BYx
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Jun 2026 15:26:21 +0000
Received: by mail-dy1-x1329.google.com with SMTP id 5a478bee46e88-304f590dd91so5378107eec.0
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Jun 2026 08:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781623579; x=1782228379; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=f7vROs9UN075gs/8U/5ZvrOcUcap23dqy0WHrqzNyCg=;
        b=G/FvVFI4FoDB+up8dIg8PkKqoimsQbO2Rhf+5obYgviAZemS8S1FqeYNDuEpicAE2/
         w+YWgGLUxN65N+oS80OZmeOtNV3xyI4ujpOnOTNGqR04puVqCe98XkHZkb0Dr0fRKq9B
         k352ORcH7ppK99Bao8WnZaOr9rLPhGAisXO4m4c7EBw5AjJghcJtVhqY5XaYih2Xcy04
         TVA0DiNEimnzLXdBIY2Wz4BcYK+WHXRoAo/UZgI7gXbJ7HYdMxvCeJKVOL2e/Kc/7qid
         68UQO7Rm7lGFbLbyTMqgYDJ3nUSJQSFz2O8esSz8mUlU9/67KLs1ymQBLmOzeTTT90SZ
         PZng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781623579; x=1782228379;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f7vROs9UN075gs/8U/5ZvrOcUcap23dqy0WHrqzNyCg=;
        b=EKp9ge8gLbIkgzFkfkPWc6RjdSOQb2o04w357hC9ML0PYgcnddrmiTqNgrL4hWsOaJ
         BeSfu9bU8Ctfa2cFHLKopfScrQ5ZVtxF0pgp57S0VwedRW+TNy/3/XhVqt6eNStuNm++
         OY77SPsDuAo6hbTGRsKjc1c+ftQwoedGq6gvIcztrl1/GFA2rQzPQMVCl9Bxb4ahj9wG
         Io07Yt8rsl25HWA2E09Zn9LAHofyq2//z8vrWyP99SjtcEogtGbc+PPvDvEZ/WGLMmni
         xUGir8CXnSn1iRANM4/fTe+pnZ7YG7PSFNsv+9QhEdQSLY9+d+vp/9/blzoobmsFG8a6
         YIqQ==
X-Gm-Message-State: AOJu0Yx09Lg3KRxBybI75KZNGOzwv0MezBXBDnMdehtAIOkdXjm795YZ
	/qenCkTN3BholDcZ+Pci2FXHC86MiVso3Xb39ETaTYlbdvrW4Y4ioebN
X-Gm-Gg: Acq92OHts5FfEEQVzhy8dgcwT/oaEBsF4+pc5bup/SMJ7onu9ZlPE69BQBA/WYSYq+L
	v2yXcMUEzqSVrHi17lpjdshcB3nxyMg3qdzpz4RadKinlo/Lh+Y2xo2w+RzEiW+8wqLCdwkFpS9
	Td8HWA8DqgssnN1Igl8PNxYijSSRG/X+rebvXIxGBLP4VXBIrHWaCU75wWNbArPhYIemLoRv61o
	DwUk0Ox2usTPKMFm3QiWO6YNsQLrHJQ7FCKa8zlRq4Z3+tDXiXHeWjmKRJZ4yQYohKvS8oiHUQ2
	i6iWQMyIqgpe4xaKbBPlcYhXGqpJvMkvOmeiBsXGXNhZ7cCVnPPDaJnIeFh0dgyLfRP5Vgwm1ub
	z4vnSJ3ZrhWc6eMS0V7tnq6LRhGemtUnDDEWlLqNgEXRNVGovOjd0DuVkJUhf46FaryJCgo0QPL
	aSawEc6cgD/qLQMVggWlUbMSPgU4UcWjw=
X-Received: by 2002:a05:7300:7b95:b0:2d9:6373:ad24 with SMTP id 5a478bee46e88-30ba5f7020emr2626182eec.26.1781623576725;
        Tue, 16 Jun 2026 08:26:16 -0700 (PDT)
Received: from geday ([189.115.92.220])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3081e5d0357sm18116553eec.11.2026.06.16.08.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 08:26:16 -0700 (PDT)
Date: Tue, 16 Jun 2026 12:26:10 -0300
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
Subject: [PATCH v7 3/3] PCI: rockchip: drive at 2.5 GT/s, error other speeds
Message-ID: <7421df7a7b7778ee99363cccfdfabbfa8aa6ab5e.1781622998.git.geraldogabriel@gmail.com>
References: <cover.1781622998.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1781622998.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_082619_796923_FA9C1A38 
X-CRM114-Status: GOOD (  14.23  )
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
 drivers/pci/controller/pcie-rockchip.c | 14 ++++++--------
 drivers/pci/controller/pcie-rockchip.h |  3 ---
 2 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 0f88da3788054..456dcfd676ed7 100644
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
@@ -147,12 +149,8 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 		goto err_exit_phy;
 	}
 
-	if (rockchip->link_gen == 2)
-		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_2,
-				    PCIE_CLIENT_CONFIG);
-	else
-		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_1,
-				    PCIE_CLIENT_CONFIG);
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
