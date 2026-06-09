Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1442CD8CAD
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jun 2026 08:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4NSy/tbARXk5KBg+Eq8wZXQ0ItWG2qPWmKSGJuMt4pI=; b=ahHQpDAwEl0DfX
	vIzuIQ1WmEfasBV5V1jxmC80MpvHQxV990FnKigB94bDEUm3YoI37R7YalOLvGYuXWuQ4j0735e2P
	W3hl09ryWwylx0wj1wtnlHJkBTYUXGXcQ6bEu1QbifmL190sC0L56cT5rtS+Rp9qtcYIVaz6tfdX9
	0IML+GPLsq+rFLomoJ3oVo3+3BUyi51n0WoZn+GxCZNA4aVDQSScQBmFMa+9Jm4glF0GJKD7Ryt97
	ZL2mH3Rjh62gepVz/mKGq0dkbFbDvaBQibb32szAeverate0qKiqbcTeVBp9bUHFzRGftbtRIanEy
	WbSiskLaTTI0PzwtI1SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWrfn-000000052x6-0ZTI;
	Tue, 09 Jun 2026 08:18:59 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWrfk-000000052vU-2YMx
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jun 2026 08:18:57 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-490be29c1c5so66969015e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Jun 2026 01:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780993134; x=1781597934; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kFTsAOv1hKm4xZTbT6xMW++1uFPeFFAKMUDBgYxH4Gw=;
        b=WmaFlIXZokL0r9Ssh+i7mAzourDUvRYtAcuhRVZ17tggN/Z345WK8ywDR4szw2Zo6U
         7tgiZQHq8uvE6ZjcYXwqM2NpqwsjiiZir+9yL1QhGrT/VPdISqEMqqdXukTi3AjL1fqc
         0bgG+OqsvHD06uxpfxYGCXOXHmSixIfKFw001rSCMWnSwkHH5o7LsB8hwsO9HC/vVeV1
         ZVrHcnPd8s8NGlwrNINQYWFJtlOw2NQZlAzYQ3uoe4yoEAbvT5q5v1/hFhoKxo+vPTXx
         365MW0qjUrgawnnWYJll9lkPSNQRLYJZDBTcudrPgHab0kp4dQLEsrrXGWe8/fF+PE/I
         QtUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780993134; x=1781597934;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kFTsAOv1hKm4xZTbT6xMW++1uFPeFFAKMUDBgYxH4Gw=;
        b=kt19e31CnJFVc0/b07wEkfIfL43f1O9q8SB6eGoZBaekWnUYgcAcJzAFSmzG5Jw3Ep
         dpDNqchBjl7vO4g+Vui2Kb2ozeKdbAMOKvbtPXcG3oRtqZ+KWppPJuxur+bgtt1UdTBU
         wkGirzikY4EkPu7iGw2klRp1PlBV7QZCDm2yA9nCsSPjEAuXSxRV2uDXR/LOmPcJFuLG
         3/dcJe48vGj5YwzMFRH6uqHQIpXi68LYOVIGEZhovlRgmq+bTvVe5j7lCbGT4Z4IriMe
         7JdLXNPoFxPolZaOfJ6rm2i3BeeazyfvpL4jAloZkLndfZ98Qpv7OYLCAv5BofwscoGW
         Bfsg==
X-Forwarded-Encrypted: i=1; AFNElJ+3IquVtLpl/0+4LebTFZ/MgKACMnpcdjUhtQuq9POveagrn865MHYgznmT8sIAsIggwo19ojNbkzmeExJZAw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyBbrUakSqPluoHLm7HQHIMvNY9JewCSd59AcLqisKpDJckKDk/
	Asry1WL8mmK6lai5zTTzOGInerGNTe25y2UpVd9ardhasiRGeAe/fBxO
X-Gm-Gg: Acq92OH/zcb7SXBRx8aR3s5WHIGHDw8vzSt+TGbbvT5+KXyX58JnU4nnXF7p/YA2peW
	ewF6ZnlmEoR1dHiPHLgn2UyC/+ncXhDHbJdGtDI+L/4EeO78RAP3VOk6JvY4tpedar1Nr2ybE39
	biJvpyUnR6bg8oTYbXdlRFWzNPasc6dX6nCpsmE16LlckwQn7U3/EXSm0rmis89BYWSWUK9X8Wa
	PZhUHAlqndcLJxgxkit4EHXIV4rGyq2k5sbMEAO/0fjrQayEpCyxRTNDZh7Rd0cbsvBgGhqa4HW
	xxbwlq4lFTLkw1Fjpq/8FPB60HvKo7C+JsUsEd4Nwu6dQHzWJQrFnFCaJYEAp/QMlk7kcPDNXJm
	1LvmEteWAlscNntEVp/GUzcvgCeqsCzjF0mKZGkQ6sRkPS4MvcwXRn73jVJSOO3/kMmH3wXL2Wq
	KuqLCSpCCdqauWtWp8HuuLebF7soXAMiwfWsiBKSIQp8doJxfZfAJIXj6qINUScMpFrlfAS8Z3k
	JmeCXzbXjtV/NL5XOGlUNzUCtPP
X-Received: by 2002:a05:600c:34cb:b0:48e:6db3:ff3a with SMTP id 5b1f17b1804b1-490c25b09a2mr318781815e9.16.1780993134354;
        Tue, 09 Jun 2026 01:18:54 -0700 (PDT)
Received: from thinkpad-l14-ju.lan (ip092042140082.rev.nessus.at. [92.42.140.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490c2d60a7csm43053615e9.2.2026.06.09.01.18.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 01:18:53 -0700 (PDT)
From: Jakob Unterwurzacher <jakobunt@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>,
	Quentin Schulz <quentin.schulz@cherry.de>
Cc: stable@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: fix emmc reset polarity on px30-cobra
Date: Tue,  9 Jun 2026 10:17:25 +0200
Message-ID: <20260609081728.30616-2-jakobunt@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_011856_654989_B5875124 
X-CRM114-Status: GOOD (  11.54  )
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

From: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>

Technically, the reset signal is active low - it's called RST_n after all.

But it is ignored completely unless RST_n_FUNCTION=1 (byte 162 in extcsd)
is set in the emmc. It is 0 per default.

For emmcs that have RST_n_FUNCTION=1 we failed like this:

	[    3.074480] mmc1: Failed to initialize a non-removable card

With this change they work normally.

Cc: stable@vger.kernel.org
Fixes: bb510ddc9d3e ("arm64: dts: rockchip: add px30-cobra base dtsi and board variants")
Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
---
v2: Add correct "From: " line

 arch/arm64/boot/dts/rockchip/px30-cobra.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-cobra.dtsi b/arch/arm64/boot/dts/rockchip/px30-cobra.dtsi
index b7e669d8ba4d..90751b04f95c 100644
--- a/arch/arm64/boot/dts/rockchip/px30-cobra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-cobra.dtsi
@@ -35,7 +35,7 @@ emmc_pwrseq: emmc-pwrseq {
 		compatible = "mmc-pwrseq-emmc";
 		pinctrl-0 = <&emmc_reset>;
 		pinctrl-names = "default";
-		reset-gpios = <&gpio1 RK_PB3 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio1 RK_PB3 GPIO_ACTIVE_LOW>;
 	};
 
 	gpio-leds {
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
