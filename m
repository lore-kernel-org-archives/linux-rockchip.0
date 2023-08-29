Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49257C83F1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cyaWw2gk0iCaSYijBv+66eZSiFxQ0S0QULB1BSovizI=; b=uYhtdvk+jPe0FC
	ZJAZde8/mHnTcqKEl26lBYfZ2QWboRW5r2LDwJlfoAC/qEgk7a6fwKrP7NICnbP+uiXMeHmpbRb1T
	OVetBYQa8H8USIzQViaIcq8DYsMvAXb7zPpC7osNr3vZPRcnNuIb1t0izGahJDMiRHd/uheSPle11
	dE3mvvnop5dbN32/oasElWdApBxRuZN8PMXTenUNiBqOLjMwRdjGwlU+f1uhMN/dhvx53JcyLTJd4
	neLINbA1XKj5+GcLMT+4amYiBH0gtwCMNJhfDpiXYEWVKzzmgzGH7Gn93Ait1NeRGN7E5jBnlwl22
	hMXMrecHqbTbACn9jHqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Nv-00Bxty-09;
	Tue, 29 Aug 2023 17:20:11 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Lk-00Bvid-2U;
	Tue, 29 Aug 2023 17:17:58 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-99bcc0adab4so614147566b.2;
        Tue, 29 Aug 2023 10:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329474; x=1693934274;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FWLxgtqau2yJo36SsneTQsDsVw22iqHp96edYBnf0k4=;
        b=DYqQwQyTYCKikxyb60b1L/cidyYBoJlyYx7DxCxp/DB+czy+oU22765aVqWMq9gChN
         hzGEHV6Ukz3+gA74rYbufEwC2om/X8PtXxXA3N4xznw7V3cK6OUceS64tiUtUh4lQPuZ
         qvxPqnf3hK4BA3whTsYfsEi6LxYF3o5Zmt46/Dv4v/PQEoWAF/mUpr/tVxZ7VVCfDarZ
         mLrYEkTYyOAS4e9Z4fXdLaY72iT9bCF1mJiIdDpUW5Iw6c1lmIe3+MiIWrm9ATp5bMj7
         ZuPqabLS7qMEYqkgArtWxlTFln3aqUH+fMUcDuldrO9akccaSGMeHmH6Nx3uouf7wLBI
         xCWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329474; x=1693934274;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FWLxgtqau2yJo36SsneTQsDsVw22iqHp96edYBnf0k4=;
        b=XY9dEF/QvOYos1jmJdUdwu8UZ/j3illg0K3lLZqLyJpRCYKfdZaGG1MPiXIez85ZZ/
         CFxeZzg02nalJMUItVHemo3CEBryqwd8ZHUYKlqrfEO18fXyU7atYO0iMo6nY7D62f4n
         gfAi5H41pCR0kl1bFG3SdhPT1w1WfwchHJ0ZTICOemRk4kexONVa0dgy5PP86v6ELoGu
         3JHpMVs8rxF6hi+NbXPplhdjQFmKZ9/kpomBtfNO36X1/DEww+JVycxfRoqN0xzRF3Nf
         cWpnraR9QkGFZS2sP++/hrRf7kai1m/+AusXJ4rS6pTlI64Fwv7EDtowlVT+5DJ8s4Ul
         NhZw==
X-Gm-Message-State: AOJu0YzEMCEYb3f65t9ng6dK22w36s4MezoIjjfmogxAq06ehOj9lP/H
	X7lS5mIxDzdc7bgM83eT/Q==
X-Google-Smtp-Source: AGHT+IHXNp8WBS05GZKX2uNVCiNbXcRpufiupVelX14WxEIUnMHV/eQymrQIzu4L1T4F5np5oSoR4g==
X-Received: by 2002:a17:906:13:b0:9a2:19ea:88fc with SMTP id 19-20020a170906001300b009a219ea88fcmr13209839eja.71.1693329474462;
        Tue, 29 Aug 2023 10:17:54 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:53 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 30/31] ARM: dts: rockchip: Add sdmmc_det pinctrl for RK312x
Date: Tue, 29 Aug 2023 19:16:46 +0200
Message-ID: <20230829171647.187787-31-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101756_835582_C298136D 
X-CRM114-Status: GOOD (  11.27  )
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

The pincontrol for sd card detection is currently missing.
Add it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk312x.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk312x.dtsi b/arch/arm/boot/dts/rockchip/rk312x.dtsi
index 19bd6448d122..5388264b54f6 100644
--- a/arch/arm/boot/dts/rockchip/rk312x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk312x.dtsi
@@ -969,6 +969,10 @@ sdmmc_cmd: sdmmc-cmd {
 				rockchip,pins = <1 RK_PB7 1 &pcfg_pull_default>;
 			};
 
+			sdmmc_det: sdmmc-det {
+				rockchip,pins = <1 RK_PC1 1 &pcfg_pull_default>;
+			};
+
 			sdmmc_wp: sdmmc-wp {
 				rockchip,pins = <1 RK_PA7 1 &pcfg_pull_default>;
 			};
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
