Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE003C5AE5B
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Nov 2023 12:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qnxoQwcqUGCoQ+T2IWdvaMNV2hMRUn7K5lkEjWs8vXE=; b=WB0XBIwUlNWbJA
	hTLsiXVRr7gYt+Dw5+AvZpBM/Hl3pS791jUGlg/V8J06Tu8/jeaY7IzftbElCnzew3NapgYvkgdoJ
	bTDlx+MBmJPPO5OfzMsk78XZcpJqZYUmAZ2Aet82Fg1n5KBY/63KqKeG94PHCrzx9qnIQaItTdO2B
	L4lXW3EC6gA+XjT/r+pVl1185X3LJoyDXeMCoF6lzvd8kFLZkV999Eo+c81OdSih6kJ81NkRGW4KU
	6m8znAkBX9jNuznAQYdhy5xWt98K1NtJ0+N3M31NB1utYegLzcvTdLF8fjGFMOeKBF1GE3d1OX28J
	6l6MbS9ish1XbbL6OEbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4ggb-00A9Fv-0R;
	Sun, 19 Nov 2023 12:14:01 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4ggN-00A97k-2C;
	Sun, 19 Nov 2023 12:13:51 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-5437d60fb7aso5072522a12.3;
        Sun, 19 Nov 2023 04:13:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700396026; x=1701000826; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wFwnZSi+N4JIV79XXnkhp+/hoZIyLal8XhxbYAVRQ04=;
        b=d7KZxIOuGhotrrE4PkT63cof5I9Wxf5DuL6vUCTK4HAB7aDnxQEPkVe+ShS/MNIvbe
         YT+L3b9G97Unxu15c2z9YWPQlLstzG0YqfKSdLJLQB7TjUlDHD0oY0taJpTSknobU01a
         zqQxnab9VEcDuVI5sXliFNXX4H25c1XH/pEp7v15Bw61ho8+k/BJKFYeE5AehIMXEHfK
         5XQZWqKqej/hYMq0f7F7VDnkcSJCHv60TUFgcMDrORL8qXYKMIGrL6mazfe/824LTN4Q
         phSjqbiJA8HkaXCiFLCpikPJM4OxCgckVHILE+FqjBs7R1S12fkQ7cq886I7A5GlPR7B
         Z1Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700396026; x=1701000826;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wFwnZSi+N4JIV79XXnkhp+/hoZIyLal8XhxbYAVRQ04=;
        b=WT43HXMD7OnM0AygN5hAbKZatD/qYF46HVDeq12beQBopVimM4yh536hVEEjmYD1Ot
         +IjPg5yEWXY2Dg2Z9+AdhtOnwWOaVTGvoKN9AFIlI6Gw1TYmOjx3QjSTbbFVhwysj8L9
         5Bn9IXwVaiErbvXv/fkvEBSXJ7Avs57PaFJwOpvYEzeQ/ws213ZuLrzuU+dheuplagMB
         3Qiut4+6Hzve4JDuMl0kVnF/PbF76HhjsQm75mbMpmzMkJPyZeKGlB8CTXqojZB347/d
         bsNnfwkJt1YDu7153r3EIAO0CmAwV/Cb08vzrgP+56CnqR3X+Whis/KhgczADtyWTLTm
         dmZw==
X-Gm-Message-State: AOJu0Yzu//WHTGrc6GuhBgfSYZaS4vIp//qja/bAGbjOjNcpMXcu6zJe
	cQtmbZCzzrvzKngyF8SIzA==
X-Google-Smtp-Source: AGHT+IFa1MdSQwDpFizg9mjE0jro6ti3S0NsdG4dJFDLIacwN3M11znKrlgdju1QRwUDDleLY9D5uA==
X-Received: by 2002:aa7:c0cd:0:b0:53d:f072:7b0a with SMTP id j13-20020aa7c0cd000000b0053df0727b0amr3531026edp.39.1700396026174;
        Sun, 19 Nov 2023 04:13:46 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7017:f42c:e243:8c57])
        by smtp.gmail.com with ESMTPSA id r5-20020a056402018500b0053dec545c8fsm2523634edv.3.2023.11.19.04.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 04:13:45 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 4/5] ARM: dts: rockchip: Add dwc2 otg fifo siztes for RK3128
Date: Sun, 19 Nov 2023 13:13:39 +0100
Message-ID: <20231119121340.109025-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231119121340.109025-1-knaerzche@gmail.com>
References: <20231119121340.109025-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_041347_722349_0BB8A6B9 
X-CRM114-Status: GOOD (  10.75  )
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

The driver currently won't probe correctly if those values are missing.
They have been taken from dowstream kernel and match those of other
Rockchip SoCs.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 074dffa377cc..c8844e0024dc 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -154,6 +154,9 @@ usb_otg: usb@10180000 {
 		clocks = <&cru HCLK_OTG>;
 		clock-names = "otg";
 		dr_mode = "otg";
+		g-np-tx-fifo-size = <16>;
+		g-rx-fifo-size = <280>;
+		g-tx-fifo-size = <256 128 128 64 32 16>;
 		phys = <&usb2phy_otg>;
 		phy-names = "usb2-phy";
 		status = "disabled";
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
