Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05C33C677C4
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jun 2025 20:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lnUxbXWPzuzkWtEJmpGMaHZ3aImkzGAJz+oViHlYjQs=; b=gLCtziCx9wVaI7
	Jv7KneTIGUrHixyIFlNLaC0vX8pFqgWxX3ZnO905p9U2J0NzHhFZfW0Q7y6nPa7McTP2TEu8ZYcSC
	nSDLMg9kxaM8Q08yxjR9xeruAEsDrDqRNyalfazuBdY1R112KXEeAos9lVFvTBndAvb3NWlDeqav6
	1j3aoZ3bG7S9/VaQ0maqetbMdrI4L0LgPGN/5dZ9L9lI3wmGzlOChMnYQPaDtValUXiHauM5XEvqM
	2jEhHttLWBkbtbMcts/qBSno2cFEtSVO8kPfA5tygtt8Y1NL8VVEH86oVVSYznkLPJGmT1HA5YK69
	uzLGq+rpzjoT0mtJB0Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP5Dc-0000000804e-0MfB;
	Tue, 10 Jun 2025 20:05:12 +0000
Received: from mail-vk1-xa31.google.com ([2607:f8b0:4864:20::a31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP1yi-00000007Uls-171P;
	Tue, 10 Jun 2025 16:37:37 +0000
Received: by mail-vk1-xa31.google.com with SMTP id 71dfb90a1353d-530f9edd032so9103e0c.0;
        Tue, 10 Jun 2025 09:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749573455; x=1750178255; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Jr1AjOf8uNWev/Vso1mJTfg4siB3r6WSL8vizNNJAl0=;
        b=geY9vxqb82wHKXBrXf1FrTNoApZTGtqnSZ3dM/9iQuoDDAOVuUPMXTI7C2O6BKBTGv
         KxRlB9NTNEL0V4KcyW00aDX2r6hSntXxZl53R6UNZRzRoARn6IaaxWVKaWN0+4RYno9C
         n49i1NpxyCqrJel+yzVp4SSv/RMueOJWB7lEo3wjxrrXvIs3TjHvPoraTvbYuWbfoh//
         Ic6rhFi9eDV83QLEIklmn5oAh1eAFUZbIhSxFYiMpeePHXy0HPnjEVZC/dy4ZL1ahFwk
         AR3nwKgKgxnNddWR04zotlzp8lWCxpOFUjGIdqDm4xpRVnBrXJETFbmxbOVamRORHIQD
         KoTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749573455; x=1750178255;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jr1AjOf8uNWev/Vso1mJTfg4siB3r6WSL8vizNNJAl0=;
        b=LGkj7IUbu/mqJFRExMlGwOt7YxdmBcu+oNlIWk6QeS+PJj73XFxzSuMo4r7IC9mkGT
         Yij1FxUV+CcgadmtnYDFHgoow67stJ5kOA6D0ombhTmnOSmvJOGkq4Xf3FmoW84gkcZ8
         MLqlFUfFlSFW+If9VnScNx7UJlUJkJTtHTRb/3OzZJH3dVAcumyGSt2WrcJuIJ8Iw0sG
         Z4nLxsW01BFyKmLlKUTQimBZYOnmcCVNFEkBXlvJeXmvl/+zGjdeh0KZwiwleXe4P44K
         aks2GyAWscYO60wyyKAEJp2NB27nMoFUvBsIvqISHxs5LMdubWik6s8kH/47reFMfcF8
         JY8w==
X-Forwarded-Encrypted: i=1; AJvYcCWVHR+thFFo/3qJwnShCeB8ybtU7IP6UZRDHK74h4sy3RUNltniFqkcZHrKF1QNiUV9EP7MSuguFvrapUZljqNh@lists.infradead.org
X-Gm-Message-State: AOJu0YzT1wjVkSZx4LpDppL8AiSBO/cyJPVj5UIvfmPrjcYCa6HtTxTb
	EmX/opHu+kEhb7FRqc5etfcn2SpkdZs15xqQ+D1S7Uqg1pKVlC5KniyKcRBF4W+u
X-Gm-Gg: ASbGncsOsdhocNYM0WJcZWT7QVloLvj1AVIdGN3dAlertf4cAQznRUibn8mO2jWw5Dr
	6hladFOx58tH/YITzPo35Sh1pbaULpzrPgX7an8Po/l46Oxhzzy+Qj/dxjsrmfHkMq3YdwrgThJ
	QlJ+Cc7q06VE1bhlKZ8tHd15GBZIZf6IyGvH47MPHHplO3FBwfZqpqx3Q7DmE66pvwaRRD2IHOT
	1/jl9Jf5JehTEJ5k/PO6y1Ip51s8zRlTwEDOVSgO9y7QP8CiJZGlJDmAlemtqEA9oRgKwS5AUNd
	V63vYGwtaFHVL2dnrpGP2ipUgCDHHxNHJyIui1USmj7SYSsmtQ==
X-Google-Smtp-Source: AGHT+IE8Big/lftsM2jqr/dJ0fUdU/HQyEnl6k3nT8QeUNCa9mrBUfckol12Cv9K8cvwwPN75N28vA==
X-Received: by 2002:ac5:c5db:0:b0:531:188b:c1a0 with SMTP id 71dfb90a1353d-53121e4f7bbmr94264e0c.4.1749573455100;
        Tue, 10 Jun 2025 09:37:35 -0700 (PDT)
Received: from geday ([2804:7f2:800b:5a56::dead:c001])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-53113c0ee03sm1594059e0c.39.2025.06.10.09.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 09:37:34 -0700 (PDT)
Date: Tue, 10 Jun 2025 13:37:29 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Hugh Cole-Baker <sigmaris@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 2/2] arm64: dts: rockchip: drop PCIe 3v3 always-on and
 boot-on
Message-ID: <28fb85b76b3adba86995b187036f3eff8a68e10e.1749572238.git.geraldogabriel@gmail.com>
References: <cover.1749572238.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1749572238.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_093736_304236_52A9205A 
X-CRM114-Status: GOOD (  11.19  )
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

Example commit of needed dropping of regulator always-on/boot-on
declarations to make sure quirky devices known to not be working
on RK3399 are able to enumerate on second try without
assertion/deassertion of PERST# in-band PCIe reset signal.

One example only, to avoid patch-bomb.

Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index 8ce7cee92af0..d31fd3d34cda 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -25,8 +25,6 @@ vcc3v3_pcie: regulator-vcc-pcie {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie_pwr>;
 		regulator-name = "vcc3v3_pcie";
-		regulator-always-on;
-		regulator-boot-on;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
