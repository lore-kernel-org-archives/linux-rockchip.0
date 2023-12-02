Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 371DBC46CA0
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 12:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlN2n3UtDmw+y33WNZ3RSq1Tp3WKBcVKRNF4GLSTtkE=; b=0bBvoaW1wx67CN
	yCBcaK5Icye9vQ/Swopu4DDIlL2dGYxnlzVW1xDs+etiHZWwCdYOz8FB7qv3Yk3Jp9mDg/ix5SSuc
	pzDoP+HPAuN6bkd0mPM5mhuNzeNvNMwOT80qYt15urZLgGqIi70TPZvbP6F4YjGvrpnLuPciXFoLd
	oBbWlFOhcyVM5yNemjrOuqtQ0JgJpOadik6slC/wDMro/yh0jH+KSTaAXPdQ/iEtAeAIwtreT2ji/
	UyUy3ibyntx9lk37ZzHa5KDNGPdASUvUjUceJVibqYKogDL8+9kdVBxbQ4v0hpDMenqhxI1e+nHsx
	jTmAsFfrXV4OoO9mcv4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PTh-00Fi1C-1M;
	Sat, 02 Dec 2023 12:52:13 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PTc-00FhuY-0N;
	Sat, 02 Dec 2023 12:52:09 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a00f67f120aso426880266b.2;
        Sat, 02 Dec 2023 04:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701521524; x=1702126324; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uvqh3YsIrEQFTmWeg+MPEc2rGBC/JrpRd/TYuGzYb50=;
        b=QQqaf83V6EAhQAd9zncsJrmJsl5HCeEIqxaMQONn4pxUEOzDYyxG6BaTExj7K/4u/G
         i1kCQ9Allx1M3cJvrCbJCrJIlWd5ebdJUnLyEqsQjqE4dPuKXE2ZBO8hNSG1PBUl7ubO
         v3i4PFqJzijtfxWujxSj60yUq9G680pFD85898TrqMjd9oIoE5mXOYTfuENWi0TjyMdX
         9khF+F95B83JdgMTJaCuAt/pJ7KtXduHes9L4hnvM/suUahadapSd4wX9TRflbky4TeS
         EnqwbMQI7RZ3yAwjt1wByoK5O0dywoyo6j9qG/+wvrVoAI5FEBSxz0Qz4FR4Is/dqfOF
         5XWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701521524; x=1702126324;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uvqh3YsIrEQFTmWeg+MPEc2rGBC/JrpRd/TYuGzYb50=;
        b=a3tuBMoUV6EQhVcVeeL7+IlwaXRqETQUj3acTWnV5wOf1pyfiO40g6ztUQEV57Vmar
         uDGFRdiDfVC4Nmi8cTSQPi1pGTLW0GNvFRbgrO1EfCki/R2gStrRrMC+v7l/EH+l5Bv+
         WxOXj7uMvopYH0yyjiWDzSOSq8kbNa9HDhfqJ/0xSJhnb+qY0BwbFl/FA62XC83ivrmj
         p4kOO72a4HTFDJotxgP9J0LTS7WSjPdksm1agZ/SsO1jvzbMfqx+/ABsMuEMAnWB0Wty
         vFwztzpqD7ugxtUAEVVUN0ylt5YOALQeleUxfBQMNnxgpA7q0j3UYbwxyrBSVULplgm1
         wKDg==
X-Gm-Message-State: AOJu0YxTTXOfOEMUkaUJUB9+l47XRU61p9sZzFBBVwzUgXoyNHpG6mhp
	VgM8WAq9eeIUZmebN2knPg==
X-Google-Smtp-Source: AGHT+IFQ04hd02/k8ts4CI8E4zUUh78rM2JYghUB6DkvNvfM35AgawiZ8im+gUYqpmxxzX2y97BApA==
X-Received: by 2002:a17:907:bb86:b0:a18:f82c:65d2 with SMTP id xo6-20020a170907bb8600b00a18f82c65d2mr1932769ejc.34.1701521524226;
        Sat, 02 Dec 2023 04:52:04 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:908e:b829:354b:f8ee])
        by smtp.gmail.com with ESMTPSA id g5-20020a170906198500b009c5c5c2c5a4sm3018161ejd.219.2023.12.02.04.52.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Dec 2023 04:52:03 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 5/5] ARM: dts: rockchip: Enable GPU for XPI-3128
Date: Sat,  2 Dec 2023 13:51:44 +0100
Message-ID: <20231202125144.66052-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231202125144.66052-1-knaerzche@gmail.com>
References: <20231202125144.66052-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_045208_157298_DCE6A46C 
X-CRM114-Status: GOOD (  10.40  )
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

Add the supply and enable gpu node for XPI-3128 board.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
index 61b9f069c8a2..0a8ead0bfe09 100644
--- a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
+++ b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
@@ -315,6 +315,11 @@ &gpio3 {
 			  "", "", "", "";
 };
 
+&gpu {
+	mali-supply = <&vdd_log>;
+	status = "okay";
+};
+
 &pinctrl {
 	dp83848c {
 		dp83848c_rst: dp83848c-rst {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
