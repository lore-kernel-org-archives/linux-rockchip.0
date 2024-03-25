Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1A97CD11BF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 14:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yq408Cc04sZvmsWQE1+/Cm/Adu9BaVDjgK9BTrwJol0=; b=errH91PydZEUey
	AZoNCBYmBcfXuRFI5QMKQcwyDY+Stb7Dk2Zj61eK5yYWiPjowt0u46wFI20/16MlIrDQtZpYXb14o
	2AKoNryl3N84FKtskB9fyhjSF73dliZTpPOyq1Agr/Ozo+EI4ftPCWYvuKuuFwnwtksPXs/V9gutI
	GM8/YwzkqJTBso5tIPkRYJSyoC3dMvBa6+Xa3Me3ew6tuabMZ1HW8dcOVeR1w1RPYZaTw9AMsn9w+
	EdhNQEZW3xcdvyuv/0WSnW6ZD3hwgypwNb6S5iJHeDurp4mIWcVVPT7jn7D0xjFiCBkJFK9KcxYD/
	Atul2nSncWyOOxILv7Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rolSF-00000000Go4-0zq4;
	Mon, 25 Mar 2024 14:37:39 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rolSA-00000000Gm6-2bgc
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 14:37:35 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-22963f0e12cso1920405fac.1
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Mar 2024 07:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711377453; x=1711982253; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jW/fuOm8kdNuw3NGoECZHkU27Cn95NEg76ds+zxvtyA=;
        b=MefLhwPnby7IpZ3Vo0iXK71+QEC5ePPzptuvgfMlXnECgMgFoxE7pIW7JR4sfWdJ1r
         hFAD3qBl1WgbRem+yAYchBzaiWccesQESCQu2LFB0+JcODPME7uIRHNWAHzZxDy9DIPN
         IPx/oNauFpXBdUK/3IlHsEsH0RSYNEiaqrPAXRRzZ+h8ZCG63I0NP7hdnbB3krHGtakA
         eAmt5Ta+meLPGZEzO7y6nIHQ3/6VD/1dwo04OctZ3mk41oI7s4Pfr9zB+YgQBSzJTLy/
         7dXj1ffX7ABUg4deL6PBhpHnG4w6+XvGqFLOCa4FBVQ8+gRVJuixxtf23H7uwH7bNKfK
         fbbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711377453; x=1711982253;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jW/fuOm8kdNuw3NGoECZHkU27Cn95NEg76ds+zxvtyA=;
        b=hOm25kbYpGad3eqCpzXkPwxROIP13v0MyscHDyqZI5YeFw+MaWmtCpl8DPfVsQAoDr
         dAqU08xUw+HQzLBU7kGjjEiymcRf3oanDs1HJ4HzUirduZlXYXKCYDFCcLNXxc/Pjf1L
         8wjYIPE3gAA5Es9XRyGTzlhuKEeoHzKKZv4cNSTZzgzeUJYC6akMiha//ntfQpLBuHxd
         mMEW+7HId+HSWL4MBV5sR6I3jk9xnJSM1c/jgOSh1DG13sIO4LmBa1T6OXhVtmv240Fr
         x4z9Uq0sEFXFeBzHeEtSSU40E22JyFKgHHSbzeVJAcHTs1tW/eqD7+McGTfZNRvhBKuf
         1uoA==
X-Gm-Message-State: AOJu0YxabEcQBW9Q9RQL2S9eEKO7SSly5HDj7mAKhEINXqaAETKkIE/3
	ARCbTHpBlxQMURSntDHeNuxgv/fDMPPCAsyP7/vY70yldKIorXbWcXASV3fs
X-Google-Smtp-Source: AGHT+IF46VGAe4lT/KeyjDVFgf4uKpf+cVl6AX1v4Lkt3h1opIge5Yqt6wlupJOxiq90fY8R6KTN9w==
X-Received: by 2002:a05:6871:d190:b0:21e:e5db:7964 with SMTP id pj16-20020a056871d19000b0021ee5db7964mr7234666oac.23.1711377453699;
        Mon, 25 Mar 2024 07:37:33 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id xb22-20020a056870cd9600b0022a0ff98f9bsm1417180oab.4.2024.03.25.07.37.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 07:37:33 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/4] arm64: dts: rockchip: rgxx3: Add additional properties for WiFi
Date: Mon, 25 Mar 2024 09:37:26 -0500
Message-Id: <20240325143729.83852-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325143729.83852-1-macroalpha82@gmail.com>
References: <20240325143729.83852-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_073734_715726_253D09B7 
X-CRM114-Status: UNSURE (   9.55  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add additional properties for the SDMMC2 node. Based on user feedback
these help correct some issues with probing the WiFi hardware.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 18b8c2e7befa..c8fdb1b817f5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -623,9 +623,12 @@ &sdmmc2 {
 	cap-sdio-irq;
 	keep-power-in-suspend;
 	mmc-pwrseq = <&sdio_pwrseq>;
+	no-mmc;
+	no-sd;
 	non-removable;
 	pinctrl-0 = <&sdmmc2m0_bus4 &sdmmc2m0_cmd &sdmmc2m0_clk>;
 	pinctrl-names = "default";
+	sd-uhs-sdr50;
 	vmmc-supply = <&vcc_wifi>;
 	vqmmc-supply = <&vcca1v8_pmu>;
 	status = "okay";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
