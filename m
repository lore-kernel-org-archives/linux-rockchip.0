Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F121C001B3
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jul 2023 06:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKxGa6UOnbukBfxjgkGoKbTXYrrfKJ6HuQm4iVuzdPo=; b=3jxXaKgSDO0JHI
	EkEDzVrf5OG58VGYDCwscl3POU3xjmExdEibCZyfxnvHn738xcVV8zEwKLW7Wjq1iiY78A164sbSE
	rSOFLXoZkjm4DwVhUCM0Uc5i1TR8wkzxOUl3jTKQgAcPXpTec2b7skoeCaFemus9aDIrZDnrMPVx7
	I1MLoFw3zmbedkHpreoq+P41jaa5ATsdok3zz8W+mftaCJFwImKYuDkqqrKrI1n60y/uNHA8QGB4U
	LaRvq9JcH/6z48nAy3hTEoPKDgYrCgYlv8muCBqbIDIPvcpgCMVoP7vlW6eKZWm9oozAxm4/ygK8o
	CaUBS1LdhpEZ8GnixdyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGwJs-00Ew40-2C;
	Wed, 05 Jul 2023 06:48:56 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGwJn-00Ew1L-0h
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jul 2023 06:48:53 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-992acf67388so608430466b.1
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Jul 2023 23:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688539729; x=1691131729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u+MkrFMagkeIVy8ddwJ2oj2EHTlEbXRG0oh1YfYd/3Q=;
        b=iiIjNFLGPfjNj1fI30V62Stc1tnzX5ajqXD6ASSEccaJfwC3Z8MJ2KpUhYDD5cH0a7
         onLqb4b4fXe9mNW+xfaqEI4MFTjKn+nuLKx6lpj5To7cIzsG4YDHiwXMTR7n69zXpCJB
         yonJuaE21eWHaezgbQTi2qw/ds0JHwuwXTF6ODm8TfMkrLwJgGHXovis3SfvqDlv25qD
         fmMpPRQxEEfi9CVKpPCkmtxz0dmFVYi7NZq4CY/bB0qcle6THyLWn5H9+U5AfD0toC9S
         anMvmvEaSgM1osViu/yAINGF3cWluHzXriqR79J9LKnm7kGgmq/pMQsrVQnkZMc7gABq
         gcPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688539729; x=1691131729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u+MkrFMagkeIVy8ddwJ2oj2EHTlEbXRG0oh1YfYd/3Q=;
        b=ibFQ/PmDDQzd5YAGeNf6w7MPkpqEbhLV9EcnNzg/NbpxgkB5NrXAyylAkYJPnGtEVX
         oJO644x5dkMkBRiSqunZRChKPR3N0ICiEUu6eRjNhdyw+Ayk2UweoYpetSeZnIhazMNN
         BCTczAhbAuzvAfvLytrIu+PWH+cqMz13em55unFzGLTyiOOnpq8y0n0nmdFJk12fRKBP
         J1MEMF9de5GRc+P9VeqgVOrd3uaDryM/IgMgEEbu332IPbBETnZuN8CJ2lfcfuCMWRI6
         NoY6sfq3gWqsaszBllPOYgwKl85n9L26TS0Xw+O/INOFmCsA6kOioi4wsD40Tnbwr4P0
         ucBw==
X-Gm-Message-State: ABy/qLbtYG4EIlRroTo9klWb8qZiFuYgng+lk8mQeVfqow7nv2Lw6Wpd
	LIN/wDAhSc05/MzenDT58nqxhg==
X-Google-Smtp-Source: APBJJlHZl5PdNH0abYjBIDke2wCYFd5fP0UDSLJrYwlY2J0QoorN8lhH7IR9wBK+aqDps2wJxkgQKQ==
X-Received: by 2002:a17:906:37cc:b0:973:cc48:f19c with SMTP id o12-20020a17090637cc00b00973cc48f19cmr8818117ejc.56.1688539729764;
        Tue, 04 Jul 2023 23:48:49 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id lj14-20020a170906f9ce00b00992bea2e9d2sm7504836ejb.62.2023.07.04.23.48.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jul 2023 23:48:49 -0700 (PDT)
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
Subject: [RFT PATCH 2/3] arm64: dts: rockchip: correct audio-codec interrupt flag in Rock Pi 4B
Date: Wed,  5 Jul 2023 08:48:22 +0200
Message-Id: <20230705064823.9210-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230705064823.9210-1-krzysztof.kozlowski@linaro.org>
References: <20230705064823.9210-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_234851_250248_28B2DFEC 
X-CRM114-Status: GOOD (  13.66  )
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
  ACTIVE_LOW  => IRQ_TYPE_LEVEL_LOW

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
index cec3b7b1b947..8a17c1eaae15 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
@@ -31,7 +31,7 @@ brcmf: wifi@1 {
 		compatible = "brcm,bcm4329-fmac";
 		reg = <1>;
 		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "host-wake";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_host_wake_l>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
