Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C126CA0FED
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 21:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7M813GW8Nq6UY8rngRalwlr2nEXv7Gq399Jp2QMtz5w=; b=TdHfyMMNtbOoC8
	NVilH0BhN3G/k/uDd2A9vYd0hKcN+JX8aLBbmg2k3ZeLzPp+12Yt1t9xmewh228pvdwdG0RwUMP8S
	v0kXZgJvPrFyxkPzX0AdEABnvX95bwGHp761MQ5KxU9gEsGGO37H0rBD7EQz8Db3X2l75awCLnS1a
	Q3QvM2vp6HIQkrLxz4l4GbbJF9GfsBFq6ZGpUmJhE9yqlC6AWjE9y5ymgGP3MefR8gYV2dB2TMaXi
	gHbZQWi8nlominizyj6vQzguOjJ+KHxfiTrJM7KWzfM9geABoKGRIx5kTILGv3JAJPkqw5vmGSf2l
	1pxiYwXYA03dzEnpSICg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwSmZ-0000000GxzW-3iwK;
	Wed, 10 Sep 2025 21:55:15 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwSmW-0000000Gxww-2jgs
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Sep 2025 21:55:13 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-61d3d622a2bso1788778a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 14:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757541310; x=1758146110; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7pBAEwJj+DpLpbemTcs9qxvMeoQLeFh3NYR7WbNCM2c=;
        b=H0VdIgCziUXq9BMB7PYHVV7EowVRuYkm2o1XBKf5Q/t55LGAD9EEV7HvWPgMXfZEQ0
         A49ro8Z7GSCbCn6kL0DyHoqtmqi8acEXtnoiBGJEN4eu1YvMXFpSgVLbH3+sXvyscA4P
         FS831DUryn5gVNW7ZlkdIr1MoMcOKXc8tjuUlXXhdKA7pVR0sJ06IC4NQJ7R3Jm0S+sF
         lDKw2s4MMdAkH4Lk+9jr3b1eDPOWCLKs7tTje4ETJp2BDCsyBgmBiRGX6FXBWzgqNM4p
         JCv6RCMkwdPSuhJUARoK9agoT6K/LfqFM0/AB/RtsD/PmYNzWvVTEIeOxVjNcGaVEZKg
         wPNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757541310; x=1758146110;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7pBAEwJj+DpLpbemTcs9qxvMeoQLeFh3NYR7WbNCM2c=;
        b=TsM5xBpsFAK23Tx0F/t9E5utHEDHqc7houKxLpc80BLsBmsBdNr7Waq+qqpBA61nCb
         6w6dp3zJgiL1EzR3CFcl4n+lJKqfNt03MSVBeQ8/JtsytR/snkbqyc8POpueFDPVHT1U
         VcnUv0YOcYps112ulPjupoKytgbmava+dvjTRAQ1gwZ7wfyEh+8EkP5NqAibzw2ays5I
         sLDwC0py+5lyUb8mRD8aL8gN+uP2DUUQqdz6m/5ygDxR+IREoABa/E7F/1MEk4B07fT7
         Aca9ke3Frw0kRjHkrnWULvUChkWIJ2qBN8HrgU/gtd4w6GNDpqVQzNxSuCs+UcTu8qvp
         apvw==
X-Gm-Message-State: AOJu0Yy87sk7T4qp4jeNkzKWnSZqB0fht6KTFzfCEyXc+h2CkTDKSXRJ
	LTPOvgQhc70xTW+LDNo+q7Fm/8GVhzo9DwJFCA5jNT/ziKGHPfgE1Tafoy1jOAcn
X-Gm-Gg: ASbGnct++8Syb+GTBEFcI3pIOJfwe3GkP+c87/GZsZGsfLC6+BwvbfbaBJRFn59b2EP
	vnoIONc/gHxM3HM1ncsTDwGG9lryrC17C+0SgxdwwRVUI7nHGjbrSqmlmBWCfwNTDGQWXFXSMeh
	tOS6ThqjJqql0uYuvsF7402ri1LdXQRixqxXPxC/rtNYRIvJYpC12+pa34R4+X5HyQ4GbeWd1NK
	BsLBjdIPyoKB7WXbE4oH3G+sAmTQOr6bdjrYXkEGF66ziqi1fAlSolw4ACgQKuQEvsZL8v+248W
	FGDhSCvOSPYk4NOZmc2O4r3ljfTF8YR2UTnHymlOVeA5MgBXFVJUuUSI6tKfoTVeIr12T58w1uD
	zs4FcOUZCQwgFAO5Wa5KRaVkktVTl86RT4J+jtiDUCV8X9GQ=
X-Google-Smtp-Source: AGHT+IFysDrIX2RrSGr/i46cO+FbvoFmSK2GNX5lt7PeW8POGqrdVt9A3iS2gZCY0vhLpNFBaZJRPQ==
X-Received: by 2002:a17:907:3da0:b0:b04:46df:5cb6 with SMTP id a640c23a62f3a-b07a62910c5mr130006566b.1.1757541310435;
        Wed, 10 Sep 2025 14:55:10 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07830ac2b6sm240517166b.27.2025.09.10.14.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 14:55:09 -0700 (PDT)
From: Andrey Leonchikov <andreil499@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Andrey Leonchikov <andreil499@gmail.com>
Subject: [v2,PATCH 1/5] RK3566 BTT Pi2 DTS fixes.
Date: Wed, 10 Sep 2025 23:54:43 +0200
Message-ID: <20250910215451.2244192-2-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250910215451.2244192-1-andreil499@gmail.com>
References: <20250910215451.2244192-1-andreil499@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_145512_695163_BF628779 
X-CRM114-Status: UNSURE (   5.97  )
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

Original DTS is invalid and can't use a PCIe. With fixed GPIO bank number all fine.
And a valid value for this pin - into "pcie_drv" definition:
	pcie_drv: pcie-drv {
	    rockchip,pins = <4 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
	};
Signed-off-by: Andrey Leonchikov <andreil499@gmail.com>

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
index e7ba477e75f9..fdf7d00edf4d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -120,7 +120,7 @@ vcc3v3_pcie: regulator-vcc3v3-pcie {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_pcie";
 		enable-active-high;
-		gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie_drv>;
 		regulator-always-on;
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
