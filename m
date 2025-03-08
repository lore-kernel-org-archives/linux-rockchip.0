Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD630C282EC
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Mar 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMsgB6/0zWW6DSJSlpnfWutmDwOwObkzutyj3fv46oY=; b=Tw2QJhTI7L6fJv
	psSmrRLpeZG3O+aMf2aICEzDjrR5MCiaE/MzGCXsL6Lr1wZUdYlyJCQIuVMM1EC5uviKht4L+uBmq
	yTLHRFoPjCRWU2Jigbq8WIEQmnYS3tJ6feD9D+37jxZgfiuPtaRMf1FRyxhZ/FRCahMtkTYjCBHp8
	R1Mhd7I5shC6/Yg2rgUB68puGYIGUwJwWodDmh98wbxvUmjpjDvz9sECO0F3UIj2uz5R1PB+1kt1L
	MES6M+APjjirrCxw7hCQ9yewbIo56Tc97KsgecmwIHih8cQi9+h+xqepZYhoAwbcTLqVwJXjSFc2O
	SBag/NiJPeQn/j8l73Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqvaa-0000000Gl2D-2GbH;
	Sat, 08 Mar 2025 14:55:44 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqvYw-0000000GkvN-3LW0;
	Sat, 08 Mar 2025 14:54:03 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-543d8badc30so3185043e87.0;
        Sat, 08 Mar 2025 06:54:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741445641; x=1742050441; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Keyp5UqooSuCZNdvM6L5386ygoD++VE/io10zX0U4b4=;
        b=TUI7uOiadRYfS2OyIOo1cwx+WKaCJqunqDAsBDNXAouUDd86fEQQGrftMIiuBTnNju
         /WiaSCLYOpZEt5H8h00Cuipu/EJPajVOlQrnkRxdzH/yzC9WOMeXO931IfcshA2fov8Q
         nKhJTbxTlPGbL7VO6uukveVS9kd/ULOmNiZW+cuHxRiDrHs2WmZn9W22nP9BNNkel4RA
         +BwTfZtUbNgfqe6JV4XoMYG+nb6ZuCqGqAv9gC+VW0/8yGVTXHCM86TYmU2z1zSq95Dw
         yZ4DbyLbhOd7qEkDAUsaOm69m9fVujz7meK4tMw0bH85y1fhnNveAYHyOogdl7BGRycT
         nQXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741445641; x=1742050441;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Keyp5UqooSuCZNdvM6L5386ygoD++VE/io10zX0U4b4=;
        b=FAIbnpJkAVjGRdlSd/gUeJvPFhrrYXuoxdUI/s4iqxoJmI8sEoBkNfsPPuDuTYVK15
         9zh0z3RnfY8DzPV5gmRfANq98XMz/HOo4DpYlZEsN53usqz6WBEJUvjccjAG7OScP5bS
         ytRJF4PnKZQixXjamLWJosqVwVw0x0Z902ieRnxt1WUU9pNmYAmVcHRiN+cA0VgE41fT
         EG7TAlXPFzFvH0WpAbHx4NnUdQnEpXVYi1BVwXh1n5X4NJdaWGkpkgrE4ZM9lQdD0Vz/
         z7yRbpQlCO4701GTC17ZHVn9I+/W6srKwTYEczq+rs1RBONh+Qe/MTpz94DDuzVq1iQv
         XcbQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+Nm/Qoer61y3btd+GBvG++yLP0eJdki4CjTlLuE5Ic6Lu9QSculMf8CJSJJ2M3pQxZagyERYOOzy3hCIjuF8=@lists.infradead.org, AJvYcCXrjWveJzLiUXeRyh8WFECJS3/ia7VSKvYH79mbZpvgKDvg8Q7+05KEZ/5Imr8Rx05quEvHiFtDhHAfdiGyFPp1@lists.infradead.org
X-Gm-Message-State: AOJu0YyP8xzQ+FqY9p6kaiX16lWdcnNMoXX9VzFp6YFtv9Gymz06PHh7
	mZ9HJ4lWgpCKOX+PeHX0D/X2CA/KuDrVKjJNGXU2E7Tm6drGXb+i
X-Gm-Gg: ASbGncsCpl3YFQOiiaWdCeyg/Pmz8bFuT1pHZTiksJmgHx3m1R3h3KOjxA0CRh1zM2S
	tI3+u4aM2/ZJW4khjIoj6i+4GyUccWhEmNENFloTQUvYpFiZUdLd3X5dSn4uIWzoiNTnAMZ+0rK
	sETDFhGpE2Tfxvi4lC3KtErjbWVJ58csEkgLrPw4POFERcpZcHAJAh+YlJ/n36movmQCdJeuJHy
	rkEwgmjTMe1lrr2b6lJhQIhIZtjdCJLqvlHgs9PBFM0jcUQ7ap9KXP8gXMRuWP5u0/U9mylb/ac
	ToyBYoEJDaByvDeuLwHFGD0/bvInK0cQwpJWpwf+6cCED2ECCjQunnXv8Ive8hYAgQ3xmw==
X-Google-Smtp-Source: AGHT+IFdMQ6igpHYoU+OFcqiUCRXxji/FOXpGlAvF0Doh5wY4O8NygnwUp3CThZfRGttQjNw6hi+jQ==
X-Received: by 2002:a05:6512:3d27:b0:549:8fc0:bc30 with SMTP id 2adb3069b0e04-54990e2bbcdmr2520218e87.2.1741445640251;
        Sat, 08 Mar 2025 06:54:00 -0800 (PST)
Received: from [192.168.3.116] ([78.56.129.233])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498b0bd128sm831788e87.152.2025.03.08.06.53.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 06:53:59 -0800 (PST)
Message-ID: <d1c600f1-a874-4bb8-8b9f-22a3414edfcc@gmail.com>
Date: Sat, 8 Mar 2025 16:53:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Xunlong Orange Pi 3B
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240626230319.1425316-1-jonas@kwiboo.se>
 <20240626230319.1425316-3-jonas@kwiboo.se>
Content-Language: en-US
From: Arturas Moskvinas <arturas.moskvinas@gmail.com>
In-Reply-To: <20240626230319.1425316-3-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250308_065402_841896_5DDCB0B6 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 6/27/24 2:03 AM, Jonas Karlman wrote:

> The Xunlong Orange Pi 3B is a single-board computer based on the
> Rockchip RK3566 SoC.
...> +
> +&gmac1 {
> +	phy-handle = <&rgmii_phy1>;
> +	status = "okay";
> +};
> +
> +&mdio1 {
> +	rgmii_phy1: ethernet-phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <1>;

Jonas, were you able to test V1.1 board's Ethernet?

Whenever I start the board - Ethernet initialization fails with:
```
[   21.140055] rk_gmac-dwmac fe010000.ethernet eth0: __stmmac_open: 
Cannot attach to PHY (error: -19)
```

But if reset is performed inside gmac - initialization succeeds.

Eg. patch:
```
--- 
linux-6.12.17.orig/arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b-v1.1.dts
+++ linux-6.12.17/arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b-v1.1.dts
@@ -16,14 +16,14 @@
  &gmac1 {
  	phy-handle = <&rgmii_phy1>;
  	status = "okay";
+	snps,reset-gpio = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 50000 200000>;
  };

  &mdio1 {
  	rgmii_phy1: ethernet-phy@1 {
  		compatible = "ethernet-phy-ieee802.3-c22";
  		reg = <1>;
-		reset-assert-us = <20000>;
-		reset-deassert-us = <50000>;
-		reset-gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
  	};
  };
```
> +		reset-assert-us = <20000>;
> +		reset-deassert-us = <50000>;
> +		reset-gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
> +	};
> +};


Arturas Moskvinas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
