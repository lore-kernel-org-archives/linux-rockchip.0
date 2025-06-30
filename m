Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 963ACC8302F
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 22:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ms0n5eS8h69aeMxIHNh/wQ1aNiE28HyZe6hOimU4Los=; b=Afa1zCi9laAoCO
	uBUDcXiu5m2XlZ7YNUBEzHAPlGuWck61dIgIM7QPG0pStKMQvOpH4pknCPsqkzU6Yqf9xv/dvPWFr
	gDtatGfhZhbdfUpTmFNdUuiH95V/NGpREod6RiixXvCwfgr9AuWYOmWTmlFTDou4o/8GyiRF+a6ye
	Jdx/v+UzuVFhUI0jYUQxwnFXOmm28qDXfFKkbaz5o3xQfqRcJS5Z2cUg/rK61n45+1VY17qBn2dfw
	3Q1QNL59frql+zMxS11y3ZsXVP5FbbUMbI+2fxLVOSrvM9Gzu3dtJlKPe5YCHt4c9wvHXMT3jcygj
	b+IHNw2N7AbklpM4LsjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWMcv-00000003YcY-2BdF;
	Mon, 30 Jun 2025 22:05:25 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWMTm-00000003XZj-3kwp;
	Mon, 30 Jun 2025 21:56:00 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-7d098f7bd77so561104985a.0;
        Mon, 30 Jun 2025 14:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751320558; x=1751925358; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hXeS77/kGdjI+bypW2RtRvB0CsC580lSSASyDeC37uE=;
        b=kRy2jX0FtOEj82Ppmlf/wuDR04Ms5w45dZVZQBPcnFjtH5kecWObLW/vro5w7b/BwC
         +9MpDJf2XPjMlaUqhl+XzMrbevpvzlkhPlH/ZRWHFVvdvV5J294mQyHzQ2+6Mjbih7QA
         R3CopuxVSi9UfYpCfanTFAlHjLQ3nqLSE1mJ/lbjq/CFNjKHPoZVlIiWdU5Sg8EM/4vp
         fwCNFdF+hHqS7xP6sJfv70nFFzLvdsiX6a6va3bME5wejxNKrcyoZ0wm3C+QIQzusq5p
         KfX1gCbu10uGhH09gB+OPFn/WSYuv3fZ2TbsNufKZthOuHqlb4PoqtMzEbjn0IU3qmKQ
         87lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751320558; x=1751925358;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hXeS77/kGdjI+bypW2RtRvB0CsC580lSSASyDeC37uE=;
        b=NG3JNdUjJBUaX2x5d4q0BEnnvqnRCvzAxCHydO9kmJKQisIT9ixCop4KHUHGrT6/0O
         teAgH8pnQjx3DGpmIY/uXvMxBMwRZ9aMPAfhTuyeudhhUB4E2FSTZoM7fnTlmViILOkG
         G3R9ChiqPmXRsa9m0007ibWPPA+FxkeSJsutA1aiQ9N4X3NItweIBwtjsrhEe3KFKl8F
         5gZ/Kg8AqYhDoiIksvr6PN7K7FuhFFMMtx5tTHTgLf651j6MMffMVZDmIpWj8g8+K8T4
         fwYXwK25M/zPdERwUIla69VJZ8PBsW/ZvP36M7Jg336iMVYi5/axjHGK3Te3Xss2kial
         ShpA==
X-Forwarded-Encrypted: i=1; AJvYcCW4Ljq7eXD9EpdcFUoHk1DbSFKUybq4igItgBh7fb6AyQutzyaT14brjTBAFBi1ZGfeIXAlJZO8wp7C47qdZxlc@lists.infradead.org, AJvYcCXYuSOw8O1q1i945IjVu9t+31svf76Kfc9peHMGrg3W9RHXvQYLUGFqyJUSkNOGwN7f2jNeZ4XoSIV4@lists.infradead.org
X-Gm-Message-State: AOJu0YxIxLdPqaT74aoSEWlGo5XCz0m7AaEETeXd+9zIYNwCSIWcb4mK
	GGK4dPCz4TpsJiW2x+F01QgDCAEN0O5cOPsYwng7HUC9PiT0J+drFMJU8cGmW/em
X-Gm-Gg: ASbGncv6rmKKW7VpWz79SqU/kgpqq0fy3OHxIxPTLzLdaLJtGSijYJ04IC9dyJRh9vU
	RC77imWceMJut50iuMHR43Q4chYeXOn1JIdgCiBoPvcoX/zhkRdi+zzykQd+/BPUzZ7TnjdbRjS
	B4RyUtgrLnm/PWnYBEx7Tg0TJMhA9Bn03lGACRDILfE93lTC7oz1xNsuHoBi/cCdCfZI5/uFgQR
	Zq/6KlyYX/dIRgBQGCfkLkJauTabR/CslcbWRG4difyuuk/Lmap/O86DeqRtCYB6sqGCpMWhnai
	dfTc2jX8bjsGxILIBXQRvv8BJEsqPbE7YbCMGDA=
X-Google-Smtp-Source: AGHT+IGQ/AcloVa3UhaN0HEbry7ak0F/WAQV4L++1fEImPAFM7BWCGo24P62etG1Kv2fRrqUymIgtg==
X-Received: by 2002:a05:620a:4054:b0:7d4:3c38:7da5 with SMTP id af79cd13be357-7d466de06b0mr169684185a.14.1751320557720;
        Mon, 30 Jun 2025 14:55:57 -0700 (PDT)
Received: from geday ([2804:7f2:800b:4851::dead:c001])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fd7730ad9asm74574936d6.107.2025.06.30.14.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 14:55:57 -0700 (PDT)
From: Valmantas Paliksa <geraldogabriel@gmail.com>
X-Google-Original-From: Valmantas Paliksa <walmis@gmail.com>
Date: Mon, 30 Jun 2025 18:55:50 -0300
To: linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rick wertenbroek <rick.wertenbroek@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Valmantas Paliksa <walmis@gmail.com>, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v9 3/4] phy: rockchip-pcie: Enable all four lanes if required
Message-ID: <16b610aab34e069fd31d9f57260c10df2a968f80.1751320056.git.geraldogabriel@gmail.com>
References: <cover.1751320056.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1751320056.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_145558_940668_1E9D0D7F 
X-CRM114-Status: GOOD (  10.61  )
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

Current code enables only Lane 0 because pwr_cnt will be incremented on
first call to the function. Let's reorder the enablement code to enable
all 4 lanes through GRF.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>

Signed-off-by: Valmantas Paliksa <walmis@gmail.com>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-pcie.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index bd44af36c67a..f22ffb41cdc2 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -160,6 +160,12 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 
 	guard(mutex)(&rk_phy->pcie_mutex);
 
+	regmap_write(rk_phy->reg_base,
+		     rk_phy->phy_data->pcie_laneoff,
+		     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
+				   PHY_LANE_IDLE_MASK,
+				   PHY_LANE_IDLE_A_SHIFT + inst->index));
+
 	if (rk_phy->pwr_cnt++) {
 		return 0;
 	}
@@ -176,12 +182,6 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 				   PHY_CFG_ADDR_MASK,
 				   PHY_CFG_ADDR_SHIFT));
 
-	regmap_write(rk_phy->reg_base,
-		     rk_phy->phy_data->pcie_laneoff,
-		     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
-				   PHY_LANE_IDLE_MASK,
-				   PHY_LANE_IDLE_A_SHIFT + inst->index));
-
 	/*
 	 * No documented timeout value for phy operation below,
 	 * so we make it large enough here. And we use loop-break
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
