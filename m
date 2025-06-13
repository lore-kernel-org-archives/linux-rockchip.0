Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D4EAC71136
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 16:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L055zEsAL916MEE1zqCFZn5+FQwsvFEWiskBMDtXKnw=; b=AxUiLshNKH8JPD
	RgpDh+N/Qj3gzKfNuLZXGWN/mJjK44gvKb+HHAIVFfcA2EoCtd+TCB3ruvibN26U0iyzRChYjmFF8
	pTNto1qiN+nreg/5e+gn+5SiLntiYUvxvxKXrVzF6XZ/RlxCKqDyuarGXQXaJg4bv3p2WtpPf+e8P
	L4bp4adpz1O6buktzQ8m5t4P+NAT87UJY4IN42FdqpfPGwb0yuSn9WUE2ptA4RpqzOL8rWntvV1E4
	ZN5U7DsxuVEuzGDqli/b8ngTtr0Aaqo7ZrOe/tG/tZ+EiuWJ+GhHnItITo8t+/iNIoUWx5m1aXGSq
	YHgFlyoYSM/IMkf9Ucmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ6yj-0000000H0pb-3ESt;
	Fri, 13 Jun 2025 16:10:05 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ5lG-0000000Gm5i-2DMH;
	Fri, 13 Jun 2025 14:52:07 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-234bfe37cccso29593525ad.0;
        Fri, 13 Jun 2025 07:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749826326; x=1750431126; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tcgFdGvrxzEgL0jd0jS7Kyu6UO50T4AXfHFozAP4vvw=;
        b=BsLu96tZbnSLhvNUQqEaTVfsiBG8cBGRYA2G4X0Jg8RYHgPosa6VxzNmBeDtlJjwPi
         r70wBt3wMyyz8J0t9jzuwLEHBvGp4LPicSellwTOo+2IxVeem1jC0e5UJ8PLagvQerQs
         C9D1NhElEIAAy/9Y3Gsxu+REr6dHlrepGzOws1KFi8p2vLdcyRpP8zubFbH+Wek5B2pe
         EDiVVSrxaVD68oOFdP47vDUJcWSh+zI/bdHV+xt37ex1tC2XebDSoxeR1jEM2yFDGhf5
         nErBAkBSB0Wtj2OFKmT7wgk7PLG52eMWM6FEMMiNfuwDM547z7P4rmZ6LuQYWPMQ2Bj9
         TM1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749826326; x=1750431126;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tcgFdGvrxzEgL0jd0jS7Kyu6UO50T4AXfHFozAP4vvw=;
        b=Drv5KyWSnnsU4jyfvGGKnHdbmyzLctAzdADmylb94dkyiEtgrRS3GsWcng4lByGkk8
         NtUDon8rNmAFMTgv42BPDBjomZFR/W0g2Rp2nivjF2vKJ7Hj9+nU0DnCqXZ0Hqlv9VpB
         Du39GblQmW83ORTSMyQgFdKR0OxxnIumAtcTTxA7bvkHJIBodT0BfGrvIHyEzZwLLtCX
         PIyyjmkKnvz67TKWCzHvjLpgTKqnN0bxND92pdZWIc0xUgwz0XHU6lHPoai/X/cEr8JE
         +xYkih6vGHNGc6akbsEtI9KYmbX5nE1cqVwn9aUpYQIvRdgm1FlRTKV1/XHogAzoFfqA
         Otww==
X-Forwarded-Encrypted: i=1; AJvYcCVAcWgu8tNeh5vQ/+BSUVZCE2lUvN701HzliQdif9ENuLfC9YodjFA+TeRqcd3+zo3WFk2EdCStNI0aoC2P1cXw@lists.infradead.org, AJvYcCVIxj1PjrOZL10hQECowmlv+pQ75YE3/2n8raxopLKLoZeaaObNKgkcZ6fUQQEDuaYaxD5pnTI9c5wr@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2bM0WHJeKG7tMHKab6yzebXFQ6hS2NFWc2G/9V8CW3shN0HeK
	8/ma8uqXDS9lryDTnkPPpz7VOyPaceo26LZquC90OALzFC/VKAUQahbwNw17PS5c
X-Gm-Gg: ASbGnctdP3QGZk0j1NXlEYh6lTKehz+25MPRFrOq/wEblHEnPtSnGGYTxI5bSzuIAFF
	IP7TCrEwCaaw04oMLwS2V+10Q969Glg6QF66bxIorzsXC0pX94SaoiZzw1XLxhFPDPRPwmgSLVp
	aE+GzqunBXTQjLvJdg6Xmdynkj2jz7uxb+p7QFT3pHYFGcM21Zc+dsqnmF8O2zc+W/xMvFami5o
	gDNLfF6fBY7+M1ijH5/wHY0lWIT04FD6wUQSD48IQJrz1nGaSpeAsadZrZJs536hdRKfQSThbQn
	i1BaAtEizNk6J9sry0GBFKZ4LZKiPYeOFqhAa7NbsvBzAVfyPg==
X-Google-Smtp-Source: AGHT+IH7fy+LrWUfYtwwK54dBPztMC4iel6TPI8DKfwXPH+wMki9Lp+koipKaCXmkiQ0YY3ZvpTDQg==
X-Received: by 2002:a17:903:2305:b0:235:e1d6:4e45 with SMTP id d9443c01a7336-2365da06422mr50885305ad.25.1749826325896;
        Fri, 13 Jun 2025 07:52:05 -0700 (PDT)
Received: from geday ([2804:7f2:800b:838f::dead:c001])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365deb8a73sm15173415ad.185.2025.06.13.07.52.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 07:52:05 -0700 (PDT)
Date: Fri, 13 Jun 2025 11:51:59 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH v4 4/5] phy: rockchip-pcie: Enable all four lanes
Message-ID: <389fc093572f3124244c5f3e87dd084b89be88ba.1749826250.git.geraldogabriel@gmail.com>
References: <cover.1749826250.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1749826250.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_075206_559143_8219E455 
X-CRM114-Status: GOOD (  11.23  )
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

Current code enables only Lane 0 because pwr_cnt will be incremented
on first call to the function. Use for-loop to enable all 4 lanes
through GRF.

Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-pcie.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index bd44af36c67a..48bcc7d2b33b 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -176,11 +176,13 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 				   PHY_CFG_ADDR_MASK,
 				   PHY_CFG_ADDR_SHIFT));
 
-	regmap_write(rk_phy->reg_base,
-		     rk_phy->phy_data->pcie_laneoff,
-		     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
-				   PHY_LANE_IDLE_MASK,
-				   PHY_LANE_IDLE_A_SHIFT + inst->index));
+	for (int i=0; i < PHY_MAX_LANE_NUM; i++) {
+		regmap_write(rk_phy->reg_base,
+			     rk_phy->phy_data->pcie_laneoff,
+			     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
+					   PHY_LANE_IDLE_MASK,
+					   PHY_LANE_IDLE_A_SHIFT + i));
+	}
 
 	/*
 	 * No documented timeout value for phy operation below,
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
