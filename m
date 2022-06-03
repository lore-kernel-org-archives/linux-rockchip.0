Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1B36C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jun 2022 14:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EjcK03LEi+wdpbboGB+l5HC+0FoqI9r90NiEgErvIz0=; b=dLWNmK3V2LwLze
	aItjsY1nbU0Lt/Ru6d369lnsj1MnyZ5pDMrNoDoPqo1lVSEQXQ44nOHacj+1hoFpGfgjKBeKs2RAF
	MEIlWFMsSBOSN3OsakA9RabemU//n440K+SUdwof5vHNateYAxC6MkU4gS2yL6SVEQQzVdfwtpWWs
	Cd9ymR9ed9pcbWyasWi0IxEYeUxHo8RIZNuxRlA+ha5FyKFA/AurNBiYM8Ral7vQdGGO+q0owFFIL
	PUC5h2dyXpnTLGkVfET7U1ZV/QGOMD/2J63vDj0ByafFYnGuWNEAiIC8hJNsXxwdiR4yWgfESjzmf
	kDhSQIwyIv5QFykqiNug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx8Zn-007sZB-3t; Fri, 03 Jun 2022 14:46:59 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx8Zb-007sW6-OT; Fri, 03 Jun 2022 14:46:49 +0000
Received: by mail-ej1-x636.google.com with SMTP id me5so15851751ejb.2;
        Fri, 03 Jun 2022 07:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YC2Ee0NCMeJlT8X63fxTRGd38pLFVJ7vG/uklMcOIlI=;
        b=DAB5AcjIBnOjiupP4hH+HStNF4SpkVxPODvVa/NiTvS0oAxIKy2zDSw2eSxFE4DMUn
         SACRISr/C2QkVjCN4BHyV270f/As2rNYKDdazu7lgTfbLhPOIKsLKVTX+xWJfmv/9g/m
         Qs3WDJ/nCF5iy/yKfsiUGGiksML1xaTGbbLmyrASIJpuf2bs0NSfYNGbfjelc/2gzW3h
         /dnyGE4XvUuIXpOmyrsYw9CZryf+DanLuMivUf1FnH8UuLWg/aNYrV6MMtIUVotPyChW
         Qf6G0SMwV4Nh9L2qk01S+lh9wjbqqnrewq3eaUl5Tc9Mmm0ecHf3eqoqYVgbYP8xvvem
         UCyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YC2Ee0NCMeJlT8X63fxTRGd38pLFVJ7vG/uklMcOIlI=;
        b=5IjWn8AwaFqrcoZlWTP0TnG8RGHyL0klmXZslkeQZ8witsUHQ9YgrGBqXbIj7dDuPg
         awlfk4XvAGnG/FK+BlwWSWB9XaOiaWlSZTtDvuqmB2fpjd2kbpEvjz45Q9836C3iH41Y
         /ImL1+22ofJsQS09blFR3sIEleZlpkQdwClrLpXIBECunNpNjTiVoE/gJdcJHwFnZIdF
         rHusOSiuT4VtHKds2zMcjfFaPELhPdsVQqrKqqXtyL4E/0aBkzuOWAi8Q1uUBypIzsOr
         EcWkYQr6gaGZT16mbkMFk8W/1tVu+H+hyWXSX+WpPVkKWs7oZzwJPCCVcVWd4PL22+hH
         tdQw==
X-Gm-Message-State: AOAM532/d0Pt4E5Ily+vdXrgUcwlD326EMB+Y/+8azRKJZtnNHwwxIpw
	189zt9bT2yTZfzLLA430TdU=
X-Google-Smtp-Source: ABdhPJyrEKILSmBN85RnfzhGT5qzWkMJSCH9sMD+nxXy6MWjnCr3KSkruA0fsiJp3z9mm1ULqrAapw==
X-Received: by 2002:a17:907:3e22:b0:6fe:f080:a383 with SMTP id hp34-20020a1709073e2200b006fef080a383mr8793096ejc.709.1654267605061;
        Fri, 03 Jun 2022 07:46:45 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id kx16-20020a170907775000b00706e8ac43b8sm2920151ejc.199.2022.06.03.07.46.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 07:46:44 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] ARM: dts: rockchip: enable nfc node in rk3066a-mk808.dts
Date: Fri,  3 Jun 2022 16:46:27 +0200
Message-Id: <20220603144627.23269-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_074647_864007_E32825BD 
X-CRM114-Status: UNSURE (   9.23  )
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

Enable nfc node in rk3066a-mk808.dts

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a-mk808.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a-mk808.dts b/arch/arm/boot/dts/rk3066a-mk808.dts
index 667d57a4f..cfa318a50 100644
--- a/arch/arm/boot/dts/rk3066a-mk808.dts
+++ b/arch/arm/boot/dts/rk3066a-mk808.dts
@@ -160,6 +160,24 @@
 	status = "okay";
 };
 
+&nfc {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	nand@0 {
+		reg = <0>;
+		label = "rk-nand";
+		nand-bus-width = <8>;
+		nand-ecc-mode = "hw";
+		nand-ecc-step-size = <1024>;
+		nand-ecc-strength = <40>;
+		nand-is-boot-medium;
+		rockchip,boot-blks = <8>;
+		rockchip,boot-ecc-strength = <24>;
+	};
+};
+
 &pinctrl {
 	usb-host {
 		host_drv: host-drv {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
