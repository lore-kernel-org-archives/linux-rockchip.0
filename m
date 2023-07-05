Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76753EB64DD
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jul 2023 14:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DlX1gRMiv0mW3x6H5bLOoK/lkv+/Lp3cDUWhvtUNgpA=; b=OdXQwZqcZuz85K
	89wUJq50xBXzz/CQ6wpjXu4cFym2IT/tk9zbJ1ZagZ3tBGp2eZFi2HOosJ6YzAJ8FxVIAFxlEl5wO
	6JUrMdsRBox1CNZ4MmhL19T11eJkYL2LuTiXLoXHzFYtUL4xXoVAYI9FPR1Rv3H1VIhjyfb88LoDc
	putdO+a1GTAj/SsszoN4QXWxS+3hCEugTCKNC28aIsUe6NrC3929ZI6b7w8NI0DAPsuMWPSWKAXU/
	fIRuMbciRBYPbey0/3MO/+3Ckj32nNyl7L8CtuC7+4+Mn1dWDm26vGZtkUFxLK50pH8L/OT17EsOF
	Sp5f0q4BxL/mIvYJ9kTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3yI-00GEaA-2h;
	Wed, 05 Jul 2023 14:59:10 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3yG-00GEYX-0w
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jul 2023 14:59:09 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99384a80af7so249612266b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Jul 2023 07:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688569144; x=1691161144;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0VNzB+MriQ9BG4K4qokulMx9kQTLwPATV3LNvBr25cQ=;
        b=hjWKurOtmqtWXbr3mSIf/L9OQms/n9RTowc2zhmz9nsfo+HvrErke4NLYsIZiSgjlp
         o0WsUWqPzdX39GBzx+EemPZvQNYCIoAcMRiqTOv3TV70VX4z9gKe9raszFCXUq47eECZ
         Pt3YsEOOnMA+hq3XhuVVAFTHwLitjjmoUku30lkfFj/JjYrNsTwMV8MFY/Buc4/iIHIM
         37GyfNbLC+3PBUWBn8YCdHMqIAiNoAObOeby6VajYz8RGZE4d+qrnjV9JOlX0FwhMih+
         rwIGB/K+DMOFQKxuj55voB7uq8mzvZIK4LGBCCJ10yYI7wDhZ9AlOazEW1xPH1VMqBM+
         unrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688569144; x=1691161144;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0VNzB+MriQ9BG4K4qokulMx9kQTLwPATV3LNvBr25cQ=;
        b=K1ZrD3q2dA+iwodk/RyIt/6q3y5jwRvew5ijDr0VcdcoEKA2c6Ctu+avvPMueShd/x
         00T+rUMWEeLrMbPRQftZhcKEVkFcq50a74D/G+XpjUa4TZQZQ+dwN0PAzGlGCMdSPROS
         xBGfN11MWmqwK0oED94nAseQuCuknF37XLAJxGPd11UukkIcj9q1nwqMmWPvlm0p6hHd
         jRd4FhMGs5otsK5fdirmlV0325Bf8RkOhrhjIoa2iQBMeLUDGfAdeWZPoKXdvs2ZRUgp
         JtWvELqh6nnmj9Dhl0tlLjvK4qff3Sssr62yv0YskXUJtPBQx5Hb/Zme3KvnX5nrc48o
         Caog==
X-Gm-Message-State: ABy/qLaA/PE/cjyPmhQRZijsf2kheQpFksz0wGRwtJFFszMtYPHVHnwm
	NOqGmZ8Y2LzH10pzQq6NBzFBdw==
X-Google-Smtp-Source: APBJJlF7I2RU8dWT3drf/l5wsrLFM9ZWN+E3OqVP01I0ERAyLy6TxUsBD/Q2Yf1G9XgUJgJ2kGO81g==
X-Received: by 2002:a17:906:4e06:b0:98d:9ded:f87f with SMTP id z6-20020a1709064e0600b0098d9dedf87fmr9221656eju.10.1688569144505;
        Wed, 05 Jul 2023 07:59:04 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id kt19-20020a170906aad300b009894b476310sm14786411ejb.163.2023.07.05.07.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 07:59:04 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: rockchip: add missing space before {
Date: Wed,  5 Jul 2023 16:58:59 +0200
Message-Id: <20230705145859.293260-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_075908_347572_8C3D813D 
X-CRM114-Status: UNSURE (   9.00  )
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

Add missing whitespace between node name/label and opening {.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 4d9ed2a02736..1a60a275ddf9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -125,19 +125,19 @@ &cpu_l3 {
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
