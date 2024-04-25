Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B055C10F15
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Apr 2024 22:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wxe8KufLLw/bwisw7pflSB9ORtV6hg8rdCXd8joHUFw=; b=PnhpfhDr80op13
	4XNEhweXnhpao1m4HMBwj6cB0zsClLiFtvm41JB4zio6cXdYbOz0Yr3JeI9c1KqUoyJF5tdHuS9NJ
	8eEZ6A46k1QPeHVJzjhVS16/wco71WfEuuBbltnJNb5hFlIqAjwL+tYjaLPCO9MGIRBAtENNu5/lt
	hkVmGcn/8EUgrpumrlF+SCmza2n2Mnqu/aY41tb4zCHccGYsbNFHXdrfsmG1CYeFOLEsaP+tiW+Fk
	Shg7Ylhk2D+oBNAdi6G6Zx1p5WST/H+sIxBaxIiYeWcgRUGx2wIeScYdTFF78uTdb/6BOE2UtX2j7
	hKYQu9v0dBl8cr9wePWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s07b1-0000000ATmi-3q3W;
	Thu, 25 Apr 2024 22:29:39 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s07ax-0000000ATk1-2xLe;
	Thu, 25 Apr 2024 22:29:36 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6eb658ca1ceso1086364a34.2;
        Thu, 25 Apr 2024 15:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714084169; x=1714688969; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YA2LZuxaqIjsjkP3hUOUgX2AvaX3cEWhfgMbj7SzR2A=;
        b=jp7fi/Hi9ZQr3oSj5OaXoue5zWjNLsZQoFJuJ1qCUGmLqgB7hPPxpysRYU1prZBqle
         2/43GRv6JkoACFNlkBgDC/+inqnyOgwzOM+dHTofZf2FTtb+rqVxffhZ0Z09wsqJRUIR
         N7/kvsgXrrOprARWW/LlDrUVG7hjruhXr9GpkE6HkCgGkwRzH5BJG3q/MMZTXLLjWNrJ
         12qYWdz+iRW51reVzn58cQS6ZztwWmuTSx7A2l0s4vRLJEcyZx5t9X6M40Y99z8cokij
         f13mxhAnGxd3GUHNffyvfqAhI02BI2UgW6ckAE/dq9lCMBMi8kh6heGC6/YDLeBQitF+
         puFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714084169; x=1714688969;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YA2LZuxaqIjsjkP3hUOUgX2AvaX3cEWhfgMbj7SzR2A=;
        b=eNyV99qUxoq9hjh85Y/Oi8mGDQYiZVMY3nnSGhhS0XIvHtXNWq98hLVQtvytYvQeWX
         OwOyHSMHQQsHgRVUmZt9/tCVn87yBFmUFQ0ExgUO3D8hphBhKTgv8lud3g6KiE6Nmm7c
         ssq+mhxHWabWhnRcDOmK/ViXTSiLYZ8WCAYT3gC80A+D3Kc2QMyNYPPMPJwlujxNfuJe
         T3O5sXPVoD7gU1PAwxgbI0hWIDQyACpIGcGnYt+Ng52o3MTe+0GTN440vXaS0HEF+50S
         bgpGT7KeAcafrYdtTROkkj6dXttWwbpKY6xKI6vQrJAE9EfeUAsLreI/359nysx3fiAy
         j7hQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7WZoHRMR7VoJhF998qZpdSICkZgfRei9OKsMmg6fKPbJCeiv1xuA1mvzWda5/0XnhRPjJPiElAAdjdDnZyON2TjNngTOg9h51OyXQ7xt9O1Mg
X-Gm-Message-State: AOJu0YwTfJefuiNsMnJaQxOPXNw2JYyJr+jArbXGP8jINdvlAC7sSVS4
	mlfKfefC60APESoQtghy4pKYQFMxzs+u6TklUAUJSxSoyWefHCcmoQ3FgyJD
X-Google-Smtp-Source: AGHT+IGP30rdYs+/T031qOV7dzRlL25v99t6t7iBmxi+sbcr6X6zz2UZ9BMJQpgemPloxbTlDnBB/Q==
X-Received: by 2002:a05:6871:5889:b0:23b:4854:8204 with SMTP id ok9-20020a056871588900b0023b48548204mr779285oac.45.1714084169168;
        Thu, 25 Apr 2024 15:29:29 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:da43:aeff:fe57:b03a])
        by smtp.gmail.com with ESMTPSA id di20-20020a0568303a1400b006edbba9a66dsm174939otb.35.2024.04.25.15.29.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Apr 2024 15:29:28 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Enable GPU on Orange Pi 5
Date: Thu, 25 Apr 2024 17:29:13 -0500
Message-ID: <20240425222913.1760-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_152935_792390_CCD9EFC1 
X-CRM114-Status: UNSURE (   9.16  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Enable the Mali GPU in the Orange Pi 5

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index c61898355f3e..3f059fb33fda 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -147,6 +147,11 @@ &gmac1_rgmii_clk
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
