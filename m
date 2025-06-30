Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A057C8302F
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 22:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74aC+gfnkMS5TrBTC4zh95zaLv5kIPw/IHXz+fmgKns=; b=lTzqi52UCyTmny
	irEhKvlN6VyYxUnwLLav98/hPky3bVWVm4sw9b4jRHT7HOa0kN6GoIYJ7T/aVw3+VI14QEaNK6fT7
	+XLWWkA8fNHHfeQynyl0TeisfkKmP+H0Kp/OcOP4xnacdLRp95YrnvXLoArKimc1i3HvVgdTBmzzQ
	Y/9EXI2OahcROfYFVUwIDRQMW5ATeXZSVsOdwBT7ineSqK9QvvuADzsw4Q5fQEojl2gXF382A/u8c
	+NGolN30ihR4QOK3CQY0rTIgYFBJKtz94KMU90X2tkNU13ngmNxCwAu2Dfl91544YjAGF3ihiTRG+
	gsJ+HQQPNc1lUy1AK1pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWNM8-00000003eHX-1vWn;
	Mon, 30 Jun 2025 22:52:08 +0000
Received: from mail-il1-x12c.google.com ([2607:f8b0:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWN1b-00000003bqi-2gpU;
	Mon, 30 Jun 2025 22:30:56 +0000
Received: by mail-il1-x12c.google.com with SMTP id e9e14a558f8ab-3de18fdeab0so44242715ab.3;
        Mon, 30 Jun 2025 15:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751322655; x=1751927455; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BB+BO3+Ju9SCf7b/TLt6zXjibbwRGCyTQVjEHxQIl60=;
        b=YJKuBmytGfV7/94RXxorpoO3IH3Y2dOVTjC8QJRI0QzH9F5kjDvWqnFWptFQEi7rly
         Z+FsjTnBiC6feNEvcejPFtWULV9v6796x/oJgZBoGezwpdsQnIeOdczYiGApAmXKVpoE
         I/0cA4DtoLvMZnfjACH29vBTWpk2QZEzvtBexe6r2SI3B9jV7fJdK2CiphKJm5nUxXjq
         lTCVATrL26GIXkPGIGHp+6SbnMbON9FQhVlJwqXsmSgQyRKhhTR9w+rPUvdhAau1oPLm
         mMNm30yOcpQNJbqHrL1N9N58SPMTqZ91gWh2mg8nMbW25QQhtacu4+VElJ5yq2fUoZnK
         oaZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751322655; x=1751927455;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BB+BO3+Ju9SCf7b/TLt6zXjibbwRGCyTQVjEHxQIl60=;
        b=KZmNQN+33SZoIm+bazTR9Lxsp1GF0sZ+CHSOuJIczZDtLrQaVIOcxm5riu0KB/2fbo
         jjpGtus+ZHhqoi6vMCdlVexLIHv9UgDY0FLbpUtJCt4Gsao7ZdxQpMQ/lnYR1ene9Fif
         3+KrxKsnzKeXkFKXnDhnGulf+0sotTKDlHiHRgJfbUNDT9FwmKrvvHKojYG/RXTjcIJ4
         eIHGshDdBNNI+MwPFvLrAJRWcEXNsi8GGhGathwPGZ8a+XfCLH9VoBmqSisBjTS16wdW
         OwHvObMSsjoxHVhZtqQYsICLnBFulqLe5LiihnxyPIwSpbAik33GqEKILF7X2ZLZp13H
         /9IQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7MHrrt3v/Z2NMgcwEMT12ZnEE3Y6BMrNJ4/YkxfQUtrjzOaZFpWy3lu8tLITq9iwDTq6sXoixx2J6mG+l63I6@lists.infradead.org, AJvYcCXXdl/QmPRyFn0SKwRET8EQueZrhG/NRKmb9mjmpIWtWRLttLXfGntkpAeeNTZwQquwNVRuW0k/gjis@lists.infradead.org
X-Gm-Message-State: AOJu0Yye4zI8hVbGewdK9epo7+P+g+s5nEfIjhZKI8VYPX6+jXtJ4Tmr
	x/HVC83Y2xCBahn0KFkYUM4oLNet4iLKPGX3Fb+xr/z5XkD/JI/mQjB0g/v3u129
X-Gm-Gg: ASbGnctDF2eOMHWiAmOHaLMr+dSiG7TXOilTPeLiCsJwQhsRttfJotcl5NcveyxmsaW
	TLRfF/fv9OI09G2H18gEBXzHtG9nBVtkPaZ773Rlmaj9a8Jv4suVXOidxvi57Khcq8t5QhMXowP
	hjQwEfsMUxtWdnzCZzeSADDMDJbJvHFH4S47EUuRDmC8jz0NQqdXGNokS1s+YaJ96dLpOpUHWBh
	bXzZ+WoxiZ5V8AvNJp58jyIebfHtrRJ/tRm9LWdSPuD25cfwdJQWk0e8jXFnUdsaLhKRgOHO42Y
	ETGy3cqQod9ICO5ObxCUviEIdqeuTRdu0/pYe5we+vM2jRCkww==
X-Google-Smtp-Source: AGHT+IFTRrEGCx789ysocz2vuPu09+VjUsb7fSHj7n8oVet+ThKIVJeolTpBlxxkV1sBDbYfdguHzQ==
X-Received: by 2002:a05:620a:27c6:b0:7c5:3c0a:ab7e with SMTP id af79cd13be357-7d443909f4amr2207841185a.5.1751322320919;
        Mon, 30 Jun 2025 15:25:20 -0700 (PDT)
Received: from geday ([2804:7f2:800b:4851::dead:c001])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d44323bba2sm672602885a.109.2025.06.30.15.25.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 15:25:20 -0700 (PDT)
Date: Mon, 30 Jun 2025 19:25:14 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
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
Subject: [RESEND PATCH v9 3/4] phy: rockchip-pcie: Enable all four lanes if
 required
Message-ID: <16b610aab34e069fd31d9f57260c10df2a968f80.1751322015.git.geraldogabriel@gmail.com>
References: <cover.1751322015.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1751322015.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_153055_675977_C305580E 
X-CRM114-Status: GOOD (  10.86  )
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

From: Valmantas Paliksa <walmis@gmail.com>

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
