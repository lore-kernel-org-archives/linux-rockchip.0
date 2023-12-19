Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3F4EC41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rUcPBeFq2zN5q/nfGxe0OU0It+msfrcuUX025ItSUtw=; b=3Uw32vdVGCo9fz
	FIu/R+KrnCGc2NuAFCC9HHvEK8hmaK6z+UruijRds+5mrma3hVqATXF9fUyxmVdO8QhUY0dWPAseB
	73XJST9Mloer/TyDJpwun6CVI0MmitUJ7yrLBOVUKYXLwHCGfbUjwsno2dLn6CFknOi6ord7Vyz3X
	NFTqtJ8akIuPfOeMCpSMWux0hktpyjIClaTNBjYWV7co8P/C0JnMTNpDHCufq2mwLpSbLAjlVaokU
	xa37gd/0hfM/16HXojbM9nwCxT/OqrhZpI+clcWpNeSkRnyd4rPeYtNl6go5kGz2RtwfS0p8qZrwu
	+EN2+p4EZOmelZBmAhrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdVT-00EqXk-35;
	Tue, 19 Dec 2023 17:03:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTP-00EoQq-1I;
	Tue, 19 Dec 2023 17:01:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Fkhg2+aCs7jdMgzfxvYxQH9D4wpiG0MxQ7esIiT4Fss=; b=ImEEOrQbBs7hoSPkuWWSg9QKTv
	VPSBCUSH9t1KKB33v95B9ihV3Pgf+t9mETIxjgPLP8yQIcDTHR+C+Kh6hZMst4YsiZDE8q3wUQfg2
	uoo/a56x7WwgcER7Q/+2NoYVVdt/PZA9jSKC6LQzAUmeghP6FdYjZR1eBkn3AmC1heFSxCP1FWB2k
	uO3LPPk5QZoeUrbB/e+lxhO1kfHyS8PfudDczEHOsDZGdifT1i4DHWYpxalQBTPTgwPp4Bjk1nWpo
	84Htyyhgdavme742aFvxTz2yh50f7a8XgeR4TiR8i60kXl9S7Cg82Z84M7q/1SJh0fDmBjyQfdnOh
	nUfUTukQ==;
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTM-00DXOH-0F;
	Tue, 19 Dec 2023 17:01:38 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40c3fe6c1b5so52527285e9.2;
        Tue, 19 Dec 2023 09:01:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005292; x=1703610092; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fkhg2+aCs7jdMgzfxvYxQH9D4wpiG0MxQ7esIiT4Fss=;
        b=NQS5CarGwvemLOkuRDB2VoTEacHZp153HZlk+Rquf5ndDn7LTKUs//Mj/KtQCnsqBf
         9wPQxQ4K/eKdcSUZZfT/5qdO9m4kKPHYdhAcvUkU+dnQDrVn+NVdrScxMbb0gEeQQ1wp
         DGB14EsyGwYc+e+vKLo9K7BSOHlY900zjWPEh6tvpMpWjeL4F9LcJwjiVbzZRWXEvz/r
         PM2m5NoqpvR18Tuk3vcmXdAq7cD+e55d4mPg/3F34nZNXjzBoSxu7mFdTeH+aW8CIHAG
         t6oFWJAe3KzeGkMo1+fhRv7GiAwcsy+LUms21p2uK4ownAXeiv0rf3ARpTLIqYEKTtNw
         MHtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005292; x=1703610092;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fkhg2+aCs7jdMgzfxvYxQH9D4wpiG0MxQ7esIiT4Fss=;
        b=UmNyunUQCgNnt7n8fsuG6a2fGm8NXoGvI+4gBEKOXeNV2IDI2Paa4rO5wWPlbp79Co
         RFbfVJMmyAc9wmgfzJLYUAO+LQt74eJHpS1bY50TZ0+5wHW4H2DnD2YQ1c2khydSaxKW
         wOEd/uMuMmQ5EjvzjHRTmldIRgsriOiXpXIdxkpe0f69tsX19Xv7dkZAsogtIFoIxzxs
         +R+rin3lxS0e1XgoCxUt0jSw0dLu8PA/NHblHJXsmvWXKeyoF+c7UyYczofeRp/pBn8N
         w0U76vyfMG4LyzjSLEM3WeUHZG3usFNByEMZAADN7oHJzpfLY4XG305yxP6ppp6gHrDF
         GkCg==
X-Gm-Message-State: AOJu0Yy+1cIpHIQQxwojfOhH4+4Z7walHuFzQ+c+sBVC+OPRo3Xo+s6A
	S6fjH3S6ADojXSbNsoZ6Rg==
X-Google-Smtp-Source: AGHT+IGcO6yQrlw/IQJbarilDOyEAsYRP2fJCi+GiVdt/rewnkpVpso4E0zT/HF1QyL68nY60lqA1A==
X-Received: by 2002:a05:600c:4710:b0:40c:6b6c:6867 with SMTP id v16-20020a05600c471000b0040c6b6c6867mr3950390wmo.178.1703005292435;
        Tue, 19 Dec 2023 09:01:32 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:32 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 27/29] ARM: dts: rockchip: Add display subsystem for RK3128
Date: Tue, 19 Dec 2023 18:00:57 +0100
Message-ID: <20231219170100.188800-28-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_170136_212656_B85F69B3 
X-CRM114-Status: GOOD (  11.65  )
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

Add vop and display-subsystem nodes to RK3128's device tree.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - no changes

changes in v3:
 - no changes

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 27 ++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index e2264c40b924..1a3bc8b2bc6e 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -115,6 +115,12 @@ opp-1200000000 {
 		};
 	};
 
+	display_subsystem: display-subsystem {
+		compatible = "rockchip,display-subsystem";
+		ports = <&vop_out>;
+		status = "disabled";
+	};
+
 	gpu_opp_table: opp-table-1 {
 		compatible = "operating-points-v2";
 
@@ -246,6 +252,27 @@ power-domain@RK3128_PD_GPU {
 		};
 	};
 
+	vop: vop@1010e000 {
+		compatible = "rockchip,rk3126-vop";
+		reg = <0x1010e000 0x300>;
+		interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_LCDC0>, <&cru DCLK_VOP>,
+			 <&cru HCLK_LCDC0>;
+		clock-names = "aclk_vop", "dclk_vop",
+			      "hclk_vop";
+		resets = <&cru SRST_VOP_A>, <&cru SRST_VOP_H>,
+			 <&cru SRST_VOP_D>;
+		reset-names = "axi", "ahb",
+			      "dclk";
+		power-domains = <&power RK3128_PD_VIO>;
+		status = "disabled";
+
+		vop_out: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+
 	qos_gpu: qos@1012d000 {
 		compatible = "rockchip,rk3128-qos", "syscon";
 		reg = <0x1012d000 0x20>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
