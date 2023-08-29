Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 881D4C83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LtisKpHlTElIYRT1LNzICMkZpMOh0qzpFb+Arxo8Scs=; b=ztVNMkKwmGt0/H
	C/x/FtaJtud7rLa40oB9pGzqFxSB+/ZRLqd/4NamBslfWFQcdEwUhA78+y2h2zycTEE0J4+/SRqjL
	GMWdCPECLaYrwOpah7bq/Uchpnhe2DJ57LJwkuAmdYHUhiSGTQvqRjC7KNrtaxIaigxg0clYrFyol
	e90BLW1XrghJQpKoTnoxP7Bv3vW4ASbl+u1qqhF+1waCpesP4Gmaa8ysSYjxQfDycdCml2TN01D7i
	TdrJbk3wQGQHOyB5Zo6ukTRlzqd1mO0kdqVGSxIPsX0nYuaJdtRv5HYsQz4QnJK6tbUf27GnU1E/I
	90erS2msGRMhkJVmb6dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Nq-00BxqD-1b;
	Tue, 29 Aug 2023 17:20:06 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Lh-00Bvej-1s;
	Tue, 29 Aug 2023 17:17:55 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2bcb50e194dso71247191fa.3;
        Tue, 29 Aug 2023 10:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329471; x=1693934271;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G4PHXGicMxBk+MJKalmg1iNAvJdEv1pEopykpBO9nUE=;
        b=EShIb7E+Z3Us6tkTRIUmptYNcn1c25vEpCspbQxGLoL+VKjAo/XzXV/t/I+jrto2Lx
         gVt5UeRIM1WKSIll76L1JN3B79kBVT0lfFGsZnECJ+uNIBuxz1f7TJblkBfZMrSiQIGT
         /0z+a+iJBak/4doNX0w1w3AVduVoXz63YzJV0i4k16xgEWkLoxvOSrJX0wFxYJv9WUY1
         Rjb/7WG9lvaXaAj6RvmuX6qBaDS2uP3leouUnNxofbkxuT0zXGRF2JJDC72nriYF029x
         j27ZDobOtTmUm6vnZjKJWnpQrz5BBImekLEhx/6psHKvowGH9bJ2vhLR1YW4bkq4R6lN
         XaHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329471; x=1693934271;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G4PHXGicMxBk+MJKalmg1iNAvJdEv1pEopykpBO9nUE=;
        b=gddD1MKdy7s+2Xldpkg7uj76tzp6w1S32g6/TEBQsyre2xd84hhOaioAkF2OyX5Tn/
         L1awe2BBzAwpxFRxPc+OPn/317xYPxb+3dYLy6kPE95O/yErzz+wRhPL1/vKDI2MbiPU
         M1o1432jD1+CWPs0cMgI93soLFDAFzSl2XVlMqtDf8z9AfFrqLikBteEkqNbMYD9bZ41
         tFJWLIacdDioPOW2YyaY/RoHASSywJin2YX/x7Qdgaa8Eizg4eedTk7vLaNtjw4vXt6/
         ZosiMoW1VDXG8g6WDWv+j+RGhqcm/iWs5Osqf27jrewKbO5XIIDUjVpcGEn7BqyTyxPF
         cbXQ==
X-Gm-Message-State: AOJu0Yzyg6ctEE+v4cHl3uoK0+bq+evWFsmzc7fQpTIuTXBGimscZn6h
	7cSCAAHVxBpWr2Do6YpbPg==
X-Google-Smtp-Source: AGHT+IEQB3R89Y565RxZaGfUe+xAj9rNo4DRqqtlbGvy1GBw6QhT8IIxT0/e3EW2cHJ2YckOECQ8ww==
X-Received: by 2002:a2e:9084:0:b0:2b9:f007:9910 with SMTP id l4-20020a2e9084000000b002b9f0079910mr20989559ljg.53.1693329471278;
        Tue, 29 Aug 2023 10:17:51 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:50 -0700 (PDT)
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
Subject: [PATCH 27/31] ARM: dts: rockchip: Add dwc2 otg fifo siztes for RK312x
Date: Tue, 29 Aug 2023 19:16:43 +0200
Message-ID: <20230829171647.187787-28-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101753_628123_C75CB602 
X-CRM114-Status: GOOD (  11.91  )
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
 arch/arm/boot/dts/rockchip/rk312x.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk312x.dtsi b/arch/arm/boot/dts/rockchip/rk312x.dtsi
index ce3f03c3532e..019aa92c0cfa 100644
--- a/arch/arm/boot/dts/rockchip/rk312x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk312x.dtsi
@@ -280,6 +280,9 @@ usb_otg: usb@10180000 {
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
