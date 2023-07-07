Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74F6AEB64D9
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jul 2023 06:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQt4+fbx7o8N8ArDaZMoJeuZEHdfki4Yehv38zjSATM=; b=AFreJ41wnks6U8
	usB5DsPDPXg2c9u0qF8gjPsFs8vld0v2DQRx4+2VjNp5e3rOKPgXtw/e9e7TtTC0kJYxCPNsI4VZc
	63mDO6mN3tqdb0rHJIElfIzsOI/a5b6JI72CirvZYYPvu7ydImjq3EwWL9hJAPwR7qbbsTUfe6/4Z
	e9euPg7Q68OlfEI7j+9zkTDV8ZCmNunrc2CqqgPhTAqrTrOhklFR9yn0z2KWA2RroJSa5MbPUelSD
	LLXCM3mL6HNIsMMWxrQSGaNxVr2+9ihCpre8BoLuoAusckHL2xSr9BokqVEU4wq4Z4ODuUjpgrCeW
	8LxPbKpI4FbSiEYe/RgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHf2M-003lBg-2p;
	Fri, 07 Jul 2023 06:33:50 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHf2H-003l7L-1c
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jul 2023 06:33:47 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9891c73e0fbso282973766b.1
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Jul 2023 23:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688711620; x=1691303620;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2gUQGEXg3NwnR1jgA5o6lKwJkp5ln8c5jv9qArkjhok=;
        b=sk8oCY0kkiy/wQ/T3PrdyQFle55qJrxLJxCZ13gyQrboPMWCk6ag5YJu24CBFoVacr
         E1FkxQTtKjBt5g4vZF9jTM4+MgIVlyTd64hzg21sNVcsIl62YD7WycredOLAT5i7L7If
         JTxIJmky9s2SSiiugSYOZVbgAVp9PlkQ0h6Slm7erVmqSxMTPkNvtCzufmFX+8UCHBkY
         qBG7dEUj9oHyRpcAFm5GbSMB2H673Cjbl6kWvdjfWNHKaXQFVPkK2urVkRfIuOV/ls28
         O034wkpRgYcMfqZ+fbyybp2R2I7/uyaBs2Ug1bVVPBFIFlpuEGAacghxN8nWmEMrhFUU
         NcnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688711620; x=1691303620;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2gUQGEXg3NwnR1jgA5o6lKwJkp5ln8c5jv9qArkjhok=;
        b=Bfx8SR3cdDRAPXDyk1MvPgduBWzFDVDnz2bTP0Sb0LPchPe7JRtEfGtLdJHHy8hoTW
         1H87mNVrfpLL41F+R9hh45JME4MhoSYVe/pL2jcGiM4NFT3z/t6NqODyporm6lKeW/3l
         PONP+aMuAvXkNneXiVZSCJ+Uab5SocdKaZzzIX/xOq8Hx6iJq8pF/hKXeSqyqIWW8nZX
         D6qKR/2fiJAc4I7ExFlUuCMKT07nokOsAAo8dBSCVLqBIUOZaPoXrLLaVlURMAnj4t4a
         KJNCki2EckGebv5bn5XyESaknWyxhNedPzxCZrvlV6PLMyB5YAjzy7kkC3UyDn4EwF8D
         bz+A==
X-Gm-Message-State: ABy/qLaSIZPA8nGNBe0OmljBI2QW1aWBVUlWWZXGtpi88HmTemk/YQGB
	WRvGcyKSm/uKegRV9yT9B4Zxpw==
X-Google-Smtp-Source: APBJJlH96voHWJqw+7toXEhMMh6gynJRIf12CWBLI1qv1yuI+YA1nsA1kJzUNcK9ofFPaNqH2e0hIQ==
X-Received: by 2002:a17:907:d15:b0:992:103c:43fa with SMTP id gn21-20020a1709070d1500b00992103c43famr7378130ejc.30.1688711619777;
        Thu, 06 Jul 2023 23:33:39 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id s24-20020a170906169800b0096f7500502csm1724803ejd.199.2023.07.06.23.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jul 2023 23:33:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v2 2/3] arm64: dts: rockchip: correct wifi interrupt flag in Rock Pi 4B
Date: Fri,  7 Jul 2023 08:33:34 +0200
Message-Id: <20230707063335.13317-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230707063335.13317-1-krzysztof.kozlowski@linaro.org>
References: <20230707063335.13317-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_233345_547283_C20F3803 
X-CRM114-Status: GOOD (  13.52  )
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
Tested-by: Christopher Obbard <chris.obbard@collabora.com>

---

Changes in v2:
1. Correct subject and commit msg (active low -> high)
2. Add Tb tag
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
