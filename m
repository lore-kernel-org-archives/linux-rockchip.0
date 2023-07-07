Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A04CC0015E
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jul 2023 06:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJxkG5VWWzI9H2kxE34Bd+2V0+72+3DpZcHpVmEJIN8=; b=jFn+hnsXg/pQLN
	UQGi0Rz9GDATyqQS75ST27ZSyOM2e1IkqfgR0NFAnqkhOiPrskBSPVZuFZ3MoAuJvPIjarmr2gjoh
	GH1XFIYH1ZxO4xUnJkDhzgLBDpXiHzHJwKqoTfjebpvbi5nYB6olOASkdf919r722DfQPwM3DcY+v
	O5VnAG4mbte3PigshppNzKzsZD7ijLP8syHk1Cj9ANVpfo4d8EQM10NgwM39IfEXpsTy3tZRy/dzY
	+lUWT58Dl4GSLTPVqvL6ruWgdTJjXoyRbaMZWa6FpXUZmwPuV1BLLCZtmztJwN34NF5iLGXig0C+e
	bhpyO33tinyr8dwUAEGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHf2K-003lAp-2w;
	Fri, 07 Jul 2023 06:33:48 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHf2G-003l7S-2k
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jul 2023 06:33:47 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-51d89664272so1966261a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Jul 2023 23:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688711621; x=1691303621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2rZJMXQqBbYtG35iaT5k3WfIhsJUmOKUvW8i0uD8NBI=;
        b=R6ZFDYFtiyI8QhUOPF6/ZqW8UzJswYZ0EN+ADhSd2YTyJsje3D0PZj3nDoKg+IU2g6
         oePk+WhsqDnjZIloNBJmSLMHqjTh7jSs/l2GuCbZETzeD4fx6VwJvnlNXfHHZ8GGPRsD
         5ICdV+l8u7Nf6IaA+Rsx6fDrSi/rctd28Y6urlyxFCJiagJlNi87Cr3wP6dis1J8wMc1
         eTAl9POvBZ3rb38PLgSDNFPh8k2X3OUDM+GRlL4FpHdIPiyxXES1wcNDdpM0Btn4wxCt
         QIB9RujK6e936OkZFLvYEedcYoGVRECEYmBhWA9J2y9lkb4N+5Iey2L4FSf/Pl1ycqFq
         inwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688711621; x=1691303621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2rZJMXQqBbYtG35iaT5k3WfIhsJUmOKUvW8i0uD8NBI=;
        b=K0gAlkNH3mYnciYh8MfnSiVhzViBbAYbq2dIt1jOiL3LKhn/AMbnt6j+K3RfwLv+a3
         BNIRLV25tGyw4N1x8YbEQtp3TsXK76PuawJDb2Obab/vkfZ3v1ZnBJYhPCkJ+NCWz4aH
         d9n3zF3sES5O8PTII0S7UMDuPEbFL3OmoW91uZokJliJ5Z6ig4E9ZpoIEg3jWgUerTLL
         JToVAoRRNCfhL0IBjOE5Ok9EU3B++VSRG7lSaQ5gLqAzkZUEQ8GLVX40Bv2AcIaXXzuZ
         aMF133c3NaEU0p0Jg8B1GNtsQaWvAohBG0MLVUMDFWBlF1A4PRhrQQLlwm9AblVN+byM
         odaw==
X-Gm-Message-State: ABy/qLY+EdnrQcUf2kYEHW1xPSUTRRaI0ZltXkzkkTrJBPGTzDFXGP02
	IcBFrbwD+SJcznntyu0fTACvAg==
X-Google-Smtp-Source: APBJJlFbgp3bzMYcY5DMSqClEkgQHsd57Rd5nfrMO9olrSVVPArWA9IWaAqP0FBML7kLKVnjeSzKyg==
X-Received: by 2002:a17:906:d7b1:b0:98e:1b9b:aef7 with SMTP id pk17-20020a170906d7b100b0098e1b9baef7mr2683392ejb.64.1688711621156;
        Thu, 06 Jul 2023 23:33:41 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id s24-20020a170906169800b0096f7500502csm1724803ejd.199.2023.07.06.23.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jul 2023 23:33:40 -0700 (PDT)
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
Subject: [RFT PATCH v2 3/3] arm64: dts: rockchip: correct wifi interrupt flag in Box Demo
Date: Fri,  7 Jul 2023 08:33:35 +0200
Message-Id: <20230707063335.13317-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230707063335.13317-1-krzysztof.kozlowski@linaro.org>
References: <20230707063335.13317-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_233344_887184_6FF70147 
X-CRM114-Status: GOOD (  13.85  )
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

GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
These are simple defines so they could be used in DTS but they will not
have the same meaning: GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE.

Correct the interrupt flags, assuming the author of the code wanted same
logical behavior behind the name "ACTIVE_xxx", this is:
  ACTIVE_HIGH  => IRQ_TYPE_LEVEL_HIGH

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Correct subject and commit msg (active low -> high)
---
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
index 322f3e809f15..0c18406e4c59 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
@@ -416,7 +416,7 @@ brcmf: wifi@1 {
 		compatible = "brcm,bcm4329-fmac";
 		reg = <1>;
 		interrupt-parent = <&gpio2>;
-		interrupts = <RK_PB2 GPIO_ACTIVE_HIGH>;
+		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "host-wake";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_host_wake_h>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
