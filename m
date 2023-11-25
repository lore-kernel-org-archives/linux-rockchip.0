Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29225C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 19:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M76tmNGAO5X5D/WqJJMEqDxKMe2DIpCfL/dBbWAeC+M=; b=l593p6jplhECDc
	oS6FVkK0ZcxQCOjQNdstDHF3nGEtNF7HVrprRifRj/K/ZtsWSi6xnwRBy1nAx3Fi7aEIne4R8RNmX
	fPfHkkkHnMdbyCRqW8LNpy1rr1Y1GSzKzRmuqURCpUBhMDxmhIlc99TCzM6Li6QectxVKomqwEeLj
	LNk9umj6O1xyBWbuiFz1HgpHXhL+vJYLKOcpCHjsAnGYD8rELFamj+i8C+oiXMtPLCju3JrT1z9Zb
	imZD71mb2ijRt3JJarDjIzJWUQDQPuk7UzwiXf/OZHNT+mjUFEPWbV0kCMvReB4Gc7oDEn6fjzomp
	iJdFV2QXit5ZCF+gi2UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xyD-009fSb-3A;
	Sat, 25 Nov 2023 19:05:37 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xyA-009fPr-2g
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 19:05:36 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-6cbe68095a3so2146874b3a.3
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 11:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939133; x=1701543933; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d1c5i+MUOB0own5Rsi1Xes6tV5UH+0xxUJRHAiYBM88=;
        b=fIL8+KOLWolelNUEC2lNnLqEtJ9t3uUm7niLrsHMcjmuNb+yWhRY2507/bjep3RvLn
         DSddrt8eMK8iCYN+SJD/D6Y5LQV32q9k+yHB1Q9NVbaSWI/cz4KinNLiaoOCZuvcGmeT
         UbPX3VNCXs9Ti1xnBmcL6zSKDeT0uZdHS1IWzFKKD4hNRkc6flWyU8bXF7RA7cf0MnDI
         fUPOCFa7ym9qFJW7eHUU0ZuerxRyf5USSAV+E77hH5ljCDmgzFQpUMghbhUR1ILXRhqu
         B53v24DoBMogRxdDBczY/C6Y3bdmEN+jyWtpvT5v640drhzGiLNvT5Cbn+TzwgB96FEy
         uy7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939133; x=1701543933;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d1c5i+MUOB0own5Rsi1Xes6tV5UH+0xxUJRHAiYBM88=;
        b=Oc/MaIGY9Vb8aiwdVok3mLOSHM1mWvwQJz0CM7NPc6GGHqkg+Ldwi+ntY9npd+GKyQ
         YItDiySr2RxvtZRIrYj1i9TWHkcIOcZvsNAiKQvAkONV8e9L/2ojmn2mfFRf5f2jJ737
         lauheT4DdGEsVBKj1UbZFIR0WS0aBmetFo8wdHA+C0fD4oAYJ51XMCBJEG26Tvjji8Jo
         /aWPTd5mI796YQ4vklLzcA5GiaFG4nXq7R3i31Yb6eaDWzCaH24NfE8jh6UGaJPTipYW
         lFCdElQm26nzG9F42n0YTbqMTDTpmB7nlWI/LqLMjHTT3Fc1OOG/p1awudNXXin7Q4GM
         1TKQ==
X-Gm-Message-State: AOJu0YxCZmFF9a9noLhFPRHiKYudlUd8OBbRPmP2T1wH6XxF224aNtd3
	R6v0drNmCG55rKJ/aIbKZ44c4g==
X-Google-Smtp-Source: AGHT+IH7F6vMU6hiyCaaneaRq1BN6lED+LPtLiArBxdHxvHBJUDQogPB783Wed7MRnLVxp+mAf/47g==
X-Received: by 2002:a05:6a20:431e:b0:189:2e8f:d34d with SMTP id h30-20020a056a20431e00b001892e8fd34dmr8437357pzk.42.1700939132763;
        Sat, 25 Nov 2023 11:05:32 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:32 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 01/10] arm64: dts: rockchip: Drop edgeble-neu6b dcdc-reg4 regulator-init-microvolt
Date: Sun, 26 Nov 2023 00:35:13 +0530
Message-Id: <20231125190522.87607-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_110534_870633_A6E028B8 
X-CRM114-Status: GOOD (  10.54  )
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

The 'regulator-init-microvolt' property is not currently supported by
any driver, it was simply carried on from downstream kernels.

rk3588-edgeble-neu6b-io.dtb: pmic@0: regulators:dcdc-reg4: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)

Remove the invalid property.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
index 017559bba37f..4797260a8a78 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
@@ -165,7 +165,6 @@ vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
-				regulator-init-microvolt = <750000>;
 				regulator-ramp-delay = <12500>;
 
 				regulator-state-mem {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
