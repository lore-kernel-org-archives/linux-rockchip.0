Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9B59C64ED8
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Feb 2023 23:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+IKuq8Bw0Y/7oStvIwkHPUlWcmZLzn15wmJnJFCMO4=; b=v3u7xFrQDroGlb
	HjjoWdT/L3GY+3dzeK66pUGheL08eCdjtiwpsU4joKStYQY/IKxgNgbULcOKsIcautSa6c7IVKVhk
	N3ljLy5isxQipEIm++WBYUDw3x+EyFBAIuJ4dBJSlFTyR4y34QMlIMh3/J3notYXwV2DOeisKg6Fa
	i2kjZCh346SMCLGEmtMz1qQ4ZMXkc4rvaH5LT2aH5YILvXFhyZWn7t7ZcvLjmtyyVHTsOlR2FcbVZ
	wAdiLkqYsBEdTNCo2CcwdOGJIbOUmNN1EhDPCR3wY/ODrPsVuuvgBQ5I+9D2zXMwYzjeHD0TEuHLN
	siPXJGqLnGO40+8vvt+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVhPu-004HcB-VV; Fri, 24 Feb 2023 23:23:54 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVhPp-004Haf-2T
	for linux-rockchip@lists.infradead.org; Fri, 24 Feb 2023 23:23:50 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-17213c961dfso1372053fac.0
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Feb 2023 15:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2f/vVHxyRFoilKJr+B3hBhPHEkdjVLFye93UcIisf+c=;
        b=WqcUrpJHyMd+DOpqLUAY26fI/ntqOLcXGXmVAEQ1CtlMgxgMxuBXEgLob50LuZSO5j
         t0ScwxeHCX+fLeR49iM27ekm8HCiNs7h81oah4QyAk1IMXj6TFMQswKGzasnBwZekOH3
         FVAhWr4Tc0SEGzmnzpW9v7cYGtNu+i4RlAEHUxcCrs3m+O35foj9pefCGZnOzOXScUE2
         IUFZRoylJ+KLKBIgVrZeJmKmlFJ0sMVF5aJ7sRIxP0RqclypWRjsB3KW/RtrDeufZZvK
         JuAvvjnQBuN19iOon7+BRGVjVOYq/IrmAGsXvGxmkrpznce8jc3FKdaorllUl0x1B4jo
         tzZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2f/vVHxyRFoilKJr+B3hBhPHEkdjVLFye93UcIisf+c=;
        b=H53lIpRsKsbUtkHP+Jjnt8PEiyuagPRDnL15hoRTVLFfiOyBQ1sB9bCMnwAhVnktmF
         h2TBriZBZWpgORGgZWH85M1daBc+Gso/uufCiHYD7nTsZYgJf20M2792AnsOVo1pO71n
         CBMAAESVaFRx1y/K+MTzqeaFee3ewdRH0d9r8jWTzWdH7MD9sB3FsyM7hlGi4J094UG3
         vgLpa6BxYYrFJppIzV8d9vrU4/1mXlFxO/RkTpFgVi4vjhfgbzkBxQQwVZhfd6xOlllK
         N6BqvsSb1hs7CYrxDyfS90Bab2Qgjp9g/GDMeEhnw6C9Qx8yCJh08uvDUXo4BlF+eUMK
         t+Nw==
X-Gm-Message-State: AO0yUKUgpjzXTENjj0UaUNsz3W6M+0Ot714HF2f73uqhwPv/T1bpV9Kb
	/SRzEZDBdX/AJ5ruTxxboOk=
X-Google-Smtp-Source: AK7set8C1egSTfnJAP1SL8dAmi9WqnexME0wh4BKjbOYt1RbkKQwYW5BEpVydoralYI7E1k4RlKwEQ==
X-Received: by 2002:a05:6870:e9a1:b0:16a:b45a:e2d9 with SMTP id r33-20020a056870e9a100b0016ab45ae2d9mr12176536oao.7.1677281027757;
        Fri, 24 Feb 2023 15:23:47 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id k22-20020a056870d39600b0016b0369f08fsm119706oag.15.2023.02.24.15.23.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 15:23:47 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-bluetooth@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	alistair@alistair23.me,
	anarsoul@gmail.com,
	luiz.dentz@gmail.com,
	johan.hedberg@gmail.com,
	marcel@holtmann.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/3 V2] arm64: dts: rockchip: Update compatible for bluetooth
Date: Fri, 24 Feb 2023 17:23:39 -0600
Message-Id: <20230224232339.124969-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230224232339.124969-1-macroalpha82@gmail.com>
References: <20230224232339.124969-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_152349_150931_3AF3D876 
X-CRM114-Status: GOOD (  10.01  )
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

Update the compatible for the Realtek RTL8821CS bluetooth node.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 41262a69d33e..8fadd8afb190 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -716,7 +716,7 @@ &uart1 {
 	status = "okay";
 
 	bluetooth {
-		compatible = "realtek,rtl8821cs-bt";
+		compatible = "realtek,rtl8821cs-bt", "realtek,rtl8822cs-bt";
 		device-wake-gpios = <&gpio4 4 GPIO_ACTIVE_HIGH>;
 		enable-gpios = <&gpio4 3 GPIO_ACTIVE_HIGH>;
 		host-wake-gpios = <&gpio4 5 GPIO_ACTIVE_HIGH>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
