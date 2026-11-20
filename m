Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C91606A320
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 10:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qEOxfP7x;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=WfQ2ywv6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=U1eSvFBQB0cT3NMP0ghCIJfUfKNMZqRzo+QYBJ5y2L4=; b=qEOxfP7x34BOzUZIzU7tYThdPI
	cS2qGqiN0tBNWdrVrLwu0ADf5g7D31Df9tgF3UlCl37pAu4pmn9M18JioFHZ/U1Nw+0Lqr2CPlaYd
	wB7mQQMp1DHoDIkF2UF4J9l7M3klzVnA0hR/cS5MIhzvKmVwfVMxCZo/RkjuygBFrAefea37tRlGa
	ACR1TURAL5slkaUwXn9LMRlQdRTbcgxqRz9K/9PEfkO/FaUydPfJmGHpQzXirj9sUcj5R7W9Y/BqV
	pvZcb5x8P6M+FGx4V3s1VM4wW/YJP0qqrk4ah5wcs3xCuW4vOsROjFH2Oz8gSQ1r4PS5AOxBF/wez
	Ql1VWNbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMBG-0000000Eetp-1iYO;
	Fri, 20 Nov 2026 10:49:22 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMAN-0000000EeUR-1bpT
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 10:48:33 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4bb68c197c7so8686705e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 02:48:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795171706; x=1795776506; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vHOMPFBnuW28mRa7isHb3MCchoH5mvXwIUScVxLLKUY=;
        b=WfQ2ywv6w24okio4vEvjnbBQ6RstlVT0er/6SVddYkfKouMU3ttEc1RC0z4Q+sF4FN
         rLaUcLN/0cumAcCEL/RiXxLHA00chOald6xJj7OA+oMpVvsPYsqP40nXgRZPnx733XPP
         u3bcssYQBdLHJ5qU63CKxzeDKZDS0Jr/iR1csgmYXGanaWQx6y43vBsv78DeX4V9t1qR
         z5leh6LJsSee/Qck9TNSTTwZ8zpYYzg1jiK+P6iL5nDgC48nXX8zXoLDxLzJqKTYDq+E
         aeVsKl1GVW3eOmRhwuGXchzBrP1fkeK9tZoH643SqBMrbkTRN9CVIKcgbB1VrqagKYRa
         ARlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795171706; x=1795776506;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vHOMPFBnuW28mRa7isHb3MCchoH5mvXwIUScVxLLKUY=;
        b=paDOCgm/v/M2VHypmE4T2stZ/s1RFuTVAeMwbI+gePitiD15Y3wh3+JSKWnOvBn4y3
         zpai2X3A627O1djl0GqUnN1cmFvALk0pgitGhdNqXz1ImhADtMv2zfz5t9Rw+g5ECZC0
         DO/+QhVpRi329Z43Hd60uAY+tCX0xs8PFqUrNi8OCWdbX23sswXTinFcd2OHufu+SCub
         gNQBrrij46Uy7+kLW/mvJB8WjSDp6/nyvcJi9I953GqZo4fx/psRFhy6ycMbAeviwc23
         HK56LehcwCC8GAHKfAsjgGAtk2ksLA0RxA+ikvgktEJfTcI0piB7z5CvYJozsZIACewg
         XlkQ==
X-Forwarded-Encrypted: i=1; AL+hErHW0Qes+NmAsgkfR/CPCX3ds+szu0kJj79j4fkq9LTnjQ90qr46fnMGNX8DSDaNlVSKx7hgMHwz1RvOZ5X9Zw==@lists.infradead.org
X-Gm-Message-State: APuU4Z/64v7/xRyTim2PKt4UsQnVNfUil3Y2WTMFc9MdC6PsbRGwP5Is
	gH6CeSYR44WPlOIM+TqxjVODndb6/mJCh+6qZ6ouAhSERAMJ08uJKlIJEOZAqLnz0cU=
X-Gm-Gg: AYBFou0reHBEoHvuCLz08tSow4fmp9w6y0ixk1F9jCaUyzi1+Z7Phyvn4lDIm/WaCGP
	1+EquEcDkzZW8jI5N/ZmibOlJBrcyyC6WI23weglWekSjdqxHx59tpoL46qGzPCsGMfISx8FEOd
	wlkOWDsIA8GbuY6u+TImQ6UffdJ5gh9OEczkzbxMkc4IHksLT+flvvlrRq2y1C/r+LQLsht9FeA
	6dXCoPjFaCvctwrhzCK8BhXCb3FApqJTdvK1+7Y31cOa8nxrkgpYi3lboJBNFVBLXt6SwUUisV2
	OAUmFkjhUgTJ8cWdJ1WO9iWxiLMQu/pdTTHgE778PyZ3+RqdvmSG+cqKmC/eO1LpIDi6opP59iW
	nQHTFSHiD3yJefn9/ydhCWPOU5HYCS1Se/8MuIsaKoevxlMvdFeKmRD+uk5rOMNZitHZ2QN/8is
	xJiErisBotdnNGTEANX6JlE9BR5YMZR3E5HIxQlq3/JsEBT6taeJDzn31JCy7ObQCuqQ7G5HKs0
	uyu2TX3AyS58LVmnsab7zYV7g6aCK4cT/A6NIXnCe9hzfrn26tx+wZC+NyUrU0ZnF8iRMxXSRmt
	kYDDVFvyYaCwoRGXwC5C8picwFvg6GyPeiBkAC9pcXZL7OReGmwRebgd4+agHK7Jo229yMjlvYp
	mquEepAFl
X-Received: by 2002:a05:600c:310f:b0:4b5:d95c:2378 with SMTP id 5b1f17b1804b1-4bb8881f9b7mr60419825e9.34.1795171705813;
        Fri, 20 Nov 2026 02:48:25 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb88f14f1esm38161425e9.2.2026.11.20.02.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 02:48:25 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 20 Nov 2026 14:48:12 +0400
Subject: [PATCH 4/7] arm64: dts: rockchip: Enable ALDPS on NanoPi M5
 Ethernet PHYs
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261120-rk3576-phys-v1-4-6382cd14e3dc@flipper.net>
References: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net>
In-Reply-To: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>, 
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1114; i=alchark@flipper.net;
 h=from:subject:message-id; bh=mpSxx4bNJlZdRiHhmqkwGoKjmGi2UpOvN6mAhYr+h88=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQzqOZ22986VC2TrsfYesTwddY5Pl2m7E/WRlMcz3/8L
 Hon/5Jmx0QWBjEuBksxRZa535bYTjXim7XLw+MrzBxWJpAh0iINDEDAwsCXm5hXaqRjpGeqbahn
 aKRjrGPEwMUpAFMtW8jwv+D+z+mvzY4/XMlj+qo5foPYLQafoGdKslYrpx6bE5s9ZQojw6oj8hO
 ibt/mfDRDkWHXpCk/AsrXzJrwWoUjMahO8NbfUywA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_024827_582590_51646B8C 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Let the RTL8211F PHYs power down while no link partner is present
(Advanced Link Down Power Saving), which a PHY leaves disabled after
reset. Both PHYs are also strapped to stop their PLL in that state
(PLLOFF), so an unplugged port draws close to nothing.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index 778cb8181639..638e00b6e165 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -812,6 +812,7 @@ rgmii_phy0: ethernet-phy@1 {
 		reset-assert-us = <20000>;
 		reset-deassert-us = <100000>;
 		reset-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
+		realtek,aldps-enable;
 	};
 };
 
@@ -826,6 +827,7 @@ rgmii_phy1: ethernet-phy@1 {
 		reset-assert-us = <20000>;
 		reset-deassert-us = <100000>;
 		reset-gpios = <&gpio3 RK_PA3 GPIO_ACTIVE_LOW>;
+		realtek,aldps-enable;
 	};
 };
 

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
