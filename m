Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82543CCFA06
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Nov 2025 06:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztMI2WXBMCKO+7V+ZbDL9RC5tdXI1T8OJqrTlW4B1w8=; b=R2bA568bVl7wi2
	1tMPGjSzIf42zQkQrGKKQ8OUn6L+hHBn+7lJhuaZJBN1XbQRDAeR+7o+KHaiusD9G5s4MXwwnuhdd
	BHAcyNhL+lNWZ0f70/RCBcregS32/MQeWhgIt4/7+hFP/ggtZPZAmVr1BVUESjl6IwCFOUir3oG/y
	FCEgdS/6380VBfpIqbwYz2CPsGjcLkqpwtgw0RbJts/wPvNLXIFEz1JVrZOLWP11RC/nRHI5N+B4L
	mFCTIo+voJ5/2PGWm7gYfEURQNa/nsKFvXlIC6ujH9tVtl5h0g07W9RtCOXHwS7KfeO6xCdPqOsSl
	aNivjgE8EqhKNdclBYyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFo28-00000009IKW-0s9V;
	Mon, 03 Nov 2025 06:27:16 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFo25-00000009IIo-0I6Y
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Nov 2025 06:27:14 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-b6ce6d1d3dcso2735925a12.3
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Nov 2025 22:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762151232; x=1762756032; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZGKLj9IuGGzKXJR4eozTFqH7zWJUpUm6z/EiTyDGmsU=;
        b=VYpEaJ8umNr+UZHKmvDrL7uarfAbNJ50jxrwLjizzhwLHKFOvY2j/BMgl3P5AOI5I0
         EDfMZn7OAzRYh7Aw0xFPL8ilO0Ikm95auOAtmxwL7USYLFsUbUSH7kIVQzs24GBZhSwG
         GrllJluVgBqEtnS47q10HeGDyjwV5RwYhLU4LLJCWskfoySsdlLyyIRJefVgbOrlzVmy
         tfQSSXA6Ojom8EG7hQZo069iopjTBhHz4WppcSFfRAikCFLuTged9I9LuHHy0IZ1y3WC
         G1rbJabm1UrtPnOOXjKCs67qXJE8Q8VNoonn2xYWsA3yByZGI4M9IA6FDVv6777hUNXt
         KO3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762151232; x=1762756032;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZGKLj9IuGGzKXJR4eozTFqH7zWJUpUm6z/EiTyDGmsU=;
        b=PR8fjQ96E5vFnu3QyM8wYjnTTBbkg/7kXTlRKCH2rbssqvcOE8dO3q/o19b/X7V92U
         5U6dobVoHZjAo8MPcro9oOkHY9FfsZ80Axxo359RV5MBy6FeLgRIfPNlx/x8zcfZnzQp
         LY/gOUvauiBjmIT1bj3kxnWNKmyUc1u59qdiqyM+4Ybj7ea+dZfz3iJ4Mv4hEMgS0DYG
         ZTecXS+y4fmCj0fW1AjCSQgArZhqie50UTjaKqrY0iX1taolKF143Q65Kc9n0nvHeJei
         b+onyU34Ipq+d9qK1s5Xx0yWozWH+MRvk6GqaG4AgBxvx1Emm1XevehkWGOYaIJdRuJy
         Ny4g==
X-Gm-Message-State: AOJu0YyT8wkJ7o/lmOxVZdPXhxdSt37hfNWiuWn62Cd3oCNL/HHV9Mpk
	dTafpm/9lEegF97W5umAo60QSUT9R+LJk9CXmISyCDzcYzNVYVUxG60dVWNyI8bLmZQ=
X-Gm-Gg: ASbGncsxG0COMOcPJ0YRqG5neF0MCZ7bVAt4Gq5OKll8UD90p6wlrCr3vrFZ99xfO3Z
	oQnurEbae9OfhCe7wVU38EkDyw7AwqWOICGXB7iVgphL02SmG3Oo6REjWYHc0aANsd52f1COpWJ
	1SP0HJR/VIl0T80KOUW/o8CFcD7xu0ZPBImJYjFTpBk5YYvzim0md7NNm9YLATialH9zQmI0lIl
	r001dyeyfWSmI5IImv53nTtsm+qBmJxlNJrD14rOIX3BQWHNnMzrUzAPCxoPeBgcZ0J+LF91FB7
	fDHncl2OGUqC/dmTD/CM/VJys2CWidfU8FpDLO2rDKVjcA+eirhT0ZyyCAN/g9TUKxpPQLRcHV5
	8KnB2LVR/F9fzdI63BnMi3GA212+/RKmM8lGcXpDCkD9UqNxmqilP/cxG2hzjRRb0bLmNQymN3Q
	==
X-Google-Smtp-Source: AGHT+IEEHJ5cKAo4s66Rvzv1t4feR0vnrItpNEwvY8alRc3/7dD6RTg/7i7hmvK6LD5XGWQ6H0YDoA==
X-Received: by 2002:a17:902:ce8c:b0:295:9d7f:9294 with SMTP id d9443c01a7336-2959d7f9455mr43290485ad.21.1762151232219;
        Sun, 02 Nov 2025 22:27:12 -0800 (PST)
Received: from geday ([2804:7f2:800b:fff9::dead:c001])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3407ef4c592sm4512294a91.1.2025.11.02.22.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 22:27:11 -0800 (PST)
Date: Mon, 3 Nov 2025 03:27:05 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>
Subject: [RFC PATCH 1/2] arm64: dts: rockchip: drop PCIe 3v3 always-on/boot-on
Message-ID: <1c1cb7f94cf41142c55561ce8f2a2579021d4818.1762150971.git.geraldogabriel@gmail.com>
References: <cover.1762150971.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1762150971.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251102_222713_108578_70297354 
X-CRM114-Status: GOOD (  10.29  )
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
declarations to make sure quirky devices known to not be working on
RK3399 are able to enumerate on the PCI bus.

One example only, tested on my ROCK PI N10 board, to avoid patch-bomb

Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index aa70776e898a..ad99a8558bf0 100644
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
