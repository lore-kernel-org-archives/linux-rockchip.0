Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41F27EB64DD
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jul 2023 06:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cBaCqpDhD9UbPn3enPP9oVmLeHk5O2yMEh6ic9uU6Q8=; b=yVMgkR+oM3tkUg
	UDhyjozJSNg8NUgYVJOVdM+PcoH+llKE1uUKRd/iOhE4ZElR/1MQnsR0KswveyXsz1LnaqI8GQywE
	N2QzKRm4mroZSfAF9lEdFrVRXsns3irtfLAqMPw3VL3KfyyblLI27hmxT0pRVmCATvtNsysEx9Bk+
	+NwFxZUaOD8WzY9XSc9tUKa9dJjY3uO+0MhzA85mT8thV+VIldw+rD2FQpeWGsOyywyBGorP9c5Z9
	jUpDn/4zi7VIjqxP6O65jEaN6Bza/kt5rg0jxND/G4/dAGZXK5n2xkPIzORj4rV7NgnNyipv3hAWv
	9A6pwBfO9HD/y6Uc3J3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGwJp-00Ew3Q-2D;
	Wed, 05 Jul 2023 06:48:53 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGwJm-00Ew1G-1j
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jul 2023 06:48:51 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-992e22c09edso432915866b.2
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Jul 2023 23:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688539728; x=1691131728;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4BLpQcyu9Z+TkFkMMBNPXxj0TsUd7XYOG3VtXDiVEos=;
        b=hd2auJm2gJxE4NaPzfdgf5PK1CXoj2u+Yk2TzKUjTKUuiTR57+YdVsmoPUOSVY3uHK
         nZIqRZP+CHOzMM+ajppHFqCX2bLcbnAH7p6kiFs4MN/ffNpLpVGUotjq+IEdg22Y+aFJ
         gZAArYBhp5Y9VrkANFgq0PDYvXjoMqtwHnq9Xt8N+PWQRBOAKXfDP/ls1ItbOKLcLyfR
         FWKgS8WumdEdYJsGaa/MLDzxYJbixjGpIxKA3h2j8Gx0141ogqoRiYBhNs1piK6eNZiK
         +iv4iHQHsfbW+cAaLGb8Ax7bzq27wMHWMlI1I9nfGIsFNAmqV2HX4QwNjg85ETb15k5V
         dOlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688539728; x=1691131728;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4BLpQcyu9Z+TkFkMMBNPXxj0TsUd7XYOG3VtXDiVEos=;
        b=VpOkWriCj050wwRWCsXJXg/n1izhfX6mZ6KCvC9rB3lBFqXz/k+QwfuGDtRt0tK6B9
         h0jmAPuLDcX3D2fDpuTN1W8Z4MvdLHzPuueawWGkp1vUhmCutCvw2iR6ihh7yFNuhpLv
         IFtfE9yelhNzvQAGoJm085ePP++t5Me7FLFIVOcStKMzZBqMpYM7qFWKC2eV4crnFM3a
         fWChBHN54qxnvThyGlmDMsnmb9cDqxA6uZeFo4Eq/hICS9yFsUwluqz0dxXHJhbMbVbo
         A/jBfavSd9VK/DF6fCufY2sYPxfheVxgj/eFncQ7Osm9yaOiq/V4NmbBkv/5DZQ7uBzE
         Qgew==
X-Gm-Message-State: ABy/qLbRUExlLa4IGVvZbTsQHv6Er76MwjdPhLfdM22dFEK8ClnTE/uP
	IjDCUzGKbef71etbIAeDXVMrBA==
X-Google-Smtp-Source: APBJJlFdr/JqlYyk0Iw3f97ZqtublI4upHtqJRPCgBSEDqIv2RXPje/WG4Qau16mX2OZcIDrN04zeQ==
X-Received: by 2002:a17:906:57ca:b0:96f:8666:5fc4 with SMTP id u10-20020a17090657ca00b0096f86665fc4mr11686557ejr.50.1688539728502;
        Tue, 04 Jul 2023 23:48:48 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id lj14-20020a170906f9ce00b00992bea2e9d2sm7504836ejb.62.2023.07.04.23.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jul 2023 23:48:48 -0700 (PDT)
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
Subject: [RFT PATCH 1/3] arm64: dts: rockchip: correct audio-codec interrupt flag in eaidk-610
Date: Wed,  5 Jul 2023 08:48:21 +0200
Message-Id: <20230705064823.9210-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_234850_677226_89D538E2 
X-CRM114-Status: GOOD (  13.35  )
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
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
index d1f343345f67..6464ef4d113d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
@@ -773,7 +773,7 @@ brcmf: wifi@1 {
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
