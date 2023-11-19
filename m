Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B578C072A2
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Nov 2023 12:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PUKIIKN2BgJBMK40KqmjfDIZHS3bR1c024T12laY8CQ=; b=isS6gNjDp8QLWC
	9yHpoXMUq+NJbKjVvsXex0X6SNIeeqZrywPQMu8+dKv/UXKDTuBLi+E4qmGziODcQZ87bOUjeuxo/
	J5QboGzseZ3XPxO7viK7BEE834HXvSx7JWqrU46MF96w2/pUPhCGsXKfqKpqHyg1ZKj4CFDv3OCAy
	fFgLdRlcwC+pY1g8PjHKScYbsVwgxDBNWiwsQS32d/TeDOJBAHB1y/PV2OWQFMSLXBtMqE4dqpCEv
	OgDrj5w0YIun4IcKFyfFdxx7M9GvKpbYEzkQJ+wGFIbkymu4hN+xMtAGJigHVE5bWOatPvyrTKcnR
	fkKzpVn3Nnpx4zf8BNog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4ggi-00A9JX-1q;
	Sun, 19 Nov 2023 12:14:08 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4ggR-00A97v-0h;
	Sun, 19 Nov 2023 12:13:52 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50aaaf6e58fso597818e87.2;
        Sun, 19 Nov 2023 04:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700396027; x=1701000827; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IRvQu7v2aw6b3c6XSPxt/GFQ2vthRnfEbysoDl+IjOE=;
        b=muQ1boiCbbm2DJQgszfdiI7gJ8yRZPRLCMweKAebvTdz2D+clhXDZ06RyEif83cuLg
         biRj1ixtjqA9neNWFaJ6Z+KWRinS+O7mUVOMa8Dhbb5hLIetA8WRcG3e/cnd7PjwQT83
         8nAeiKj2gXe+JffjXBhFUBiLacVZKlVouCn0dNdh3OGgQwLWFZYFtOcLbtQ/oFvjUI0C
         Lqp7EJBtcaHuP/61ncPivi14CA4OkxhU4Py055hy73LxVUYoxRKL+4zYgKXxb5zG7O6Q
         WxrTC9m7bby79TNind/yNvoqgpK/gY4XsfkM+CyT7qNZGf1V38RGhAgHVosRckmmxBVA
         PsLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700396027; x=1701000827;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IRvQu7v2aw6b3c6XSPxt/GFQ2vthRnfEbysoDl+IjOE=;
        b=bF5xkqpX+Ptgk4jzRPfHIxtf9dNbyWtvGE5NtDDZ8M1jYWFQyV3fo7YxyhDXjhT3dz
         Fhxj6JDQ4zqaONfxG/kK848S3sPvXM4GM9uzywTyam0YbE7+lZkDwU6TMjmGhZBOUr1u
         NTjFBAOPt6uX1hSRh22ypf3EDuPdjtOqJrnzbXvR3RTCuSCr5cceLdeC8xECVksQgSLj
         qCZG/uJ2QaswH4LNZhTTYKCJsJloOEmxiNdn7ntMiivA7mcLzIL2hIBxvuNrxP/7QxDB
         iCJFoDDniGBMp5ONX9GZWKa8LR1o7CqMuJlE/2EmRZr2PwFW7loTkd3q3mf3/U3YIXOH
         vv1A==
X-Gm-Message-State: AOJu0YwA8ap1UAw0ENq2zFmGlqBlOyE2Fqpj028dY3u/PJ2GWuH+KID4
	UspbvHP65sdnMGMGcZP+H+n2/Us/aA==
X-Google-Smtp-Source: AGHT+IFclIkGd4gUltycd20mO39V01aWQkCtlOGJQGc8SY39GQWh+136ifIDd6KIpOUu229lqj1sxw==
X-Received: by 2002:a05:6512:485b:b0:4fe:1681:9377 with SMTP id ep27-20020a056512485b00b004fe16819377mr3313345lfb.44.1700396026949;
        Sun, 19 Nov 2023 04:13:46 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7017:f42c:e243:8c57])
        by smtp.gmail.com with ESMTPSA id r5-20020a056402018500b0053dec545c8fsm2523634edv.3.2023.11.19.04.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 04:13:46 -0800 (PST)
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
Subject: [PATCH v3 5/5] ARM: dts: rockchip: Make usbphy the parent of SCLK_USB480M for RK3128
Date: Sun, 19 Nov 2023 13:13:40 +0100
Message-ID: <20231119121340.109025-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231119121340.109025-1-knaerzche@gmail.com>
References: <20231119121340.109025-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_041351_305954_4C64C67B 
X-CRM114-Status: GOOD (  12.27  )
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

Without setting the parent for SCLK_USB480M the clock will use xin24m as
it's default parent.
While this is generally not an issue for the usb blocks to work, it becomes
an issue for RK3128 since SCLK_USB480M can be a parent for other HW blocks
(GPU, VPU, VIO), but they will never chose it, since it is currently always
running at OSC frequency which is to slow for their needs.

This sets the usb2 phy's output as SCLK_USB480M's parent and it's users
can chose it if desired.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
Changes in v3:
 - moved parent assignment to the phy node

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index c8844e0024dc..61b292c7c4c3 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -266,6 +266,8 @@ usb2phy: usb2phy@17c {
 			clocks = <&cru SCLK_OTGPHY0>;
 			clock-names = "phyclk";
 			clock-output-names = "usb480m_phy";
+			assigned-clocks = <&cru SCLK_USB480M>;
+			assigned-clock-parents = <&usb2phy>;
 			#clock-cells = <0>;
 			status = "disabled";
 
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
