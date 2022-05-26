Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4141CC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 May 2022 20:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2wdk7aG6ijqTAovX2dRW/8taVhYWXcOBlsdfwCw5I8=; b=w9Jn2JC6tXIxNg
	q+iKE6RLxQZFDQ0NCoRRBENGYYNfrjaOzvHdVSwDex2usDmtbUohxAOtsThYfTrBFem9/ZtPV0JAF
	MKIuqgLBITfDsSHO4y72vmHk+7zp2Rj3VskXc/tvdOoE6v5RvR/s3FfyiysBODc+FWbmgaAhlBkfr
	Y9IF9ul0yJ9/KC+GI82NIh7eSRyk79tlvrS/LXZ1Ilsd8D3K0Rp2jEqJK4oey3S8mEdQkcDJ/eEwR
	17Rf3EbV264dRQ+wdeVj7dh5ZHpZXjaBD7CJvsnXIUUqJM8DL8V55d+aGh0MXYZ1I4AneRvyeV2ag
	WIC03bGtFUGBCp93N+6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nuKPH-00FqlC-8I; Thu, 26 May 2022 20:48:31 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nuKJO-00FoC6-PU
	for linux-rockchip@lists.infradead.org; Thu, 26 May 2022 20:42:29 +0000
Received: by mail-ed1-x529.google.com with SMTP id j28so3137648eda.13
        for <linux-rockchip@lists.infradead.org>; Thu, 26 May 2022 13:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6PoGfKqwaOSA8hY2KbOckVLUzTs3Q4Jc3iaXuQGoRpA=;
        b=s7sEBaSU1vzd54sOOs0rZZNg9jOLdNNbwjwpFo7NPaSSc3/EKIKfGfGqUmjfhdBIZu
         tB3MOE4n0cSRKiu3kMyc9QWQPlCIxLXlFngGQ99MiTppR/kW6DZ2r6vPXjZxisDjDaYy
         k13/DLeamBpnmEzAc+1qsZ1L6InFRZoR/BKSyKI7UfsHpX3PqVH6BgrO/pw4iEh3fnfA
         aDN7/ymbV30iKKJ5/2YpkRPQks9rvdQYpsQEtIyoocUVncRWur4ETpIxqQ7iRrdx9vvs
         r0DbsSw+JAaC5BiER/ilnIVQPfvqwa4W+hnWDhdh1zk68xbe2pzmpU0TmUMNdL8vN6EL
         84Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6PoGfKqwaOSA8hY2KbOckVLUzTs3Q4Jc3iaXuQGoRpA=;
        b=Inbg6dttEp+luzAzhmVA5dR2ZuHKdcuAyhd5gopzmWWtmkR+uXw3neSNddbA47hG+l
         /Pr00EmWAOgsWJ+xvJk8VDc86NnmCUW1UZRx6TJ0fVWLR87QjktFMf/cEv85OZAo1B+5
         eoJKxwOmNHT6rtr5gw+nXmVVEk4TUp1rG8tmNJYtbgA7eo1xZnwp6oaVjaUO5c0sCMiL
         NigOdA58hlfp6ghH4OtC0+IkBVJLSc+gmnnnrF9VjXU2krHRDKRWHM9FoaBDK98VXpTT
         vhEpP7dkxgzh0goYbb4Ki0RvKM65l2Xb/NNmig2inBnS/T4YFzR1j5+xGHoJeM7yGUvX
         a35g==
X-Gm-Message-State: AOAM531vw2W349ys5G0+FXAaMbIy8nMbVkQJmelmB8E6sYX0oXr/TOjY
	iwXQVo5kngjxICmD4QTZx8sscw==
X-Google-Smtp-Source: ABdhPJx7r6j+aBTRisTlPBtzTk+q8WC0quei+dan1fVS+/Wp2DlSJGxhdl7sKtt7zczYJvjIFb1ifA==
X-Received: by 2002:a05:6402:90d:b0:428:c1ad:1e74 with SMTP id g13-20020a056402090d00b00428c1ad1e74mr41662182edz.345.1653597745304;
        Thu, 26 May 2022 13:42:25 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id r17-20020a50d691000000b0042617ba6389sm1239732edi.19.2022.05.26.13.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 13:42:24 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	arm@kernel.org,
	soc@kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/3] ARM: dts: rockchip: adjust whitespace around '='
Date: Thu, 26 May 2022 22:42:17 +0200
Message-Id: <20220526204218.832029-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526204218.832029-1-krzysztof.kozlowski@linaro.org>
References: <20220526204218.832029-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220526_134226_866974_2C3BE95F 
X-CRM114-Status: GOOD (  11.74  )
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

Fix whitespace coding style: use single space instead of tabs or
multiple spaces around '=' sign in property assignment.  No functional
changes (same DTB).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Output compared with dtx_diff and fdtdump.
---
 .../arm/boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi b/arch/arm/boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi
index a10d25ac8f7b..f9dde0eef527 100644
--- a/arch/arm/boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi
@@ -13,10 +13,10 @@ bluetooth {
 			    <&bt_dev_wake>;
 
 		compatible = "brcm,bcm43540-bt";
-		host-wakeup-gpios	= <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
-		shutdown-gpios		= <&gpio4 RK_PD5 GPIO_ACTIVE_HIGH>;
-		device-wakeup-gpios	= <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
-		max-speed		= <3000000>;
-		brcm,bt-pcm-int-params	= [01 02 00 01 01];
+		host-wakeup-gpios = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio4 RK_PD5 GPIO_ACTIVE_HIGH>;
+		device-wakeup-gpios = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
+		max-speed = <3000000>;
+		brcm,bt-pcm-int-params = [01 02 00 01 01];
 	};
 };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
