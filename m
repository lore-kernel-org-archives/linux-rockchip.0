Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9588C4828F
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Feb 2024 10:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nJra4TkKkmdsjYfa/Jq2lDDv7duWJ4pZelslDia9qpM=; b=Axc/lr5Phqyk+s
	Hmd7zd37GF1qtmSux2VbRZMJxvt4fBesgYr+ZTDJuSMHQ+qSfyuUlh+B/uYTp51rmxw3qUDPMuFSd
	oWRpOSj2p91GdiT9cijauK6vlk1nkdvscrNkPB6u75IUvmn2j1LzdjiOSxYAVDuM34tX1bfS9S76A
	Y7Uh+qZMD1SFtm7VW0YMtX9+HHKF1a9tQiTCZJGIPPuz3KHxj9NAWZ4VDrpWrOZrRtEzcBrjMRlk0
	E68WnaLkmXcTjCmCjPItZUYCXIzHTvJBTpF8NByQlM++N+VcL3P/o2gsSETz3nqYRbRjzw4FxBrgz
	C9l5lsj8nt+Ms4ElALIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rY20I-0000000DQiA-0iZX;
	Thu, 08 Feb 2024 10:51:38 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rY20F-0000000DQg4-1vr5
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Feb 2024 10:51:36 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-33b0ecb1965so1073192f8f.1
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Feb 2024 02:51:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707389493; x=1707994293; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QRtcBLpg2UJfwrDcTIbV2QdDaYWh1k1w6J6l7NGdAhQ=;
        b=GLMWY7xH/fgBTiRI0gVjUT6EJJMFLunVnqzJ84sRRDOM+v+hT07JTP2gTpt3SFAG1w
         GJEU1SYo3QYscos6BvULJX1HA7weKA0iIKYJ8/T4iiKnUmdieq6TpRLUbhPeqV91QdFs
         eIAO+YSrVxGkNQ2gpquJ6sTC+9V36/kugU6Oc8smcVTdf0SLOVIVP+YA3HXh6hoDr0Sg
         dV5Nv5A0iOCikYH3roVsYt3zZ9BnNczYY5/sG7GXpMuFb1M5NgZ1YmgsVYPRt10MAJ0x
         tRsCSnMFSTM3vfo9qSsgmXcMAiEVOXe1ZZ3X1cRMaZjMLJAjnWJjq7wST5xkc9l4Trg3
         EhUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707389493; x=1707994293;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QRtcBLpg2UJfwrDcTIbV2QdDaYWh1k1w6J6l7NGdAhQ=;
        b=vaBleOdrVRGh4q08lDAuAul3qVzVT38zIk1ntZCxWXnjrehI9+7Zlujh3sqJpBN/4A
         lmuMZrvhP3+Oij/APRe/YVjuvnRcsJCfiwRAmwjHRflhEZjmzlBd5BMVQZ44Lohwrog2
         Y3t9Q51r4ypDBKz8o5oi/BYeT0SluCc8ZpV0im9+DlyhUh5Oy6FqEKDw7MSoTpYG2QnB
         20tqRHs1fW++6mfQcroJZqXouxAMYug83hrmAbH/RzJqEJtkFlj3Ha1E0qinK7IumIlA
         gfWPe1U3lN/TtuqB0EAjKs2jmvGkSIt2OLJddhyRepjM6YHHih/Ng3iQIGSdSl0BEvLl
         Y74w==
X-Gm-Message-State: AOJu0YydogFsrlnwvo2iyEOj9UFpsx5spQkF52eRiw5icqc62HfrZndn
	8a+NPYDuWh3gQvCjA+z0OVy/bJ9/0R3SLLCZsrSqFEgu5wGluQVr9aUCQ6hTiSg=
X-Google-Smtp-Source: AGHT+IEtk56T9/G7HFmIhKoOQe4FP+rsV9tK+gzIAjo/IBHXLpz2jJSe8DMq+PkYA15lBnbprZ9bDg==
X-Received: by 2002:adf:ce92:0:b0:33b:136b:557a with SMTP id r18-20020adfce92000000b0033b136b557amr5602663wrn.70.1707389493618;
        Thu, 08 Feb 2024 02:51:33 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWBOKH+RkujrQ0JyPkA08iduNE7ajI11rqzMjvPGYZTYJnh6LqlrbAvDIDMtq2qKT5YWuD912t05UCIqoDs2E5U4G1+VHA9kCq1m90hpODt/9T64d3t7W6iWmxCcoK4UwqeWuuFgyDmqxZQ/lmGAbrI7G6sHnToD+woifi3wYSXgpvbirjOzFPB213qWVBifJaOy0XuT8VpZ0B149UpZ98T3Dbdbbk+sHKwR6bCus2sF4VChK4GeOwdT23f99diptXQM6VFpL8YF421xy33OVQzfSUjNhuqBlg=
Received: from krzk-bin.. ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id n10-20020a5d484a000000b0033b43d7394bsm3340824wrs.55.2024.02.08.02.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 02:51:33 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: rk3588: minor whitespace cleanup
Date: Thu,  8 Feb 2024 11:51:29 +0100
Message-Id: <20240208105129.128561-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240208_025135_532740_BBCC5FB9 
X-CRM114-Status: UNSURE (   8.56  )
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

The DTS code coding style expects exactly one space before '{'
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index 3d0ea9e34049..ad8e36a339dc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -212,19 +212,19 @@ &cpu_l3 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
 
-&cpu_b0{
+&cpu_b0 {
 	cpu-supply = <&vdd_cpu_big0_s0>;
 };
 
-&cpu_b1{
+&cpu_b1 {
 	cpu-supply = <&vdd_cpu_big0_s0>;
 };
 
-&cpu_b2{
+&cpu_b2 {
 	cpu-supply = <&vdd_cpu_big1_s0>;
 };
 
-&cpu_b3{
+&cpu_b3 {
 	cpu-supply = <&vdd_cpu_big1_s0>;
 };
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
