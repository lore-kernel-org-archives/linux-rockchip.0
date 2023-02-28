Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3563DC64EC7
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Feb 2023 15:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+IKuq8Bw0Y/7oStvIwkHPUlWcmZLzn15wmJnJFCMO4=; b=E+CbBMoyLLbNmK
	zCArHeUV08kXG38tPX7K/gmTxtizZEotS5lx25Z13CzC7vgArjgAeWRvZ6YXvbLpr/eo6Q/ka2x7U
	dnZFbNl4zbuvFaPGl5I93lhyeIXQTkJU9Rfiedt9+6GfWE1H4rtopR2hrL6SKvyRT2PLvumsRL8f8
	FMbsve7thPx9D/yQwRY0tC+1DBnJbpW95f/H6ozY5rYFAWaDUQ31RF9L0oL7yboZwEEBvS0Xw8ReS
	TwqeCSXWZrEUMngb8wYt/iskwqutpCra5euqgGKSpP3t5Qjopa4wIrnRlOixbu4E+yVZr0CWKyVgk
	AYPN1QQUtGnl4pf16IJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX1o9-00DdQ7-Fk; Tue, 28 Feb 2023 15:22:25 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX1o6-00DdN6-II
	for linux-rockchip@lists.infradead.org; Tue, 28 Feb 2023 15:22:23 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-17235c8dab9so11222763fac.7
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Feb 2023 07:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2f/vVHxyRFoilKJr+B3hBhPHEkdjVLFye93UcIisf+c=;
        b=S6cPNFB5zYJW4TTwflJkilbf7vs6laanJ9Lcs7sV3ZfQ/Ho8yCEo7EESQb4JYfuPhO
         APqELxQqSo2x7yxpSZ6+RmQE3LHlAqjXBB2bxfgXIpNAejje4ObQ/8FxfK0khYO1q+64
         FZzRMaen+CTH5e+6ZMWSOTRvRDXQjplaxUNe+H4ox3RcJePwVN3p5HvuzuOCr/LGfJKG
         FobaqXL2CpT0AzXiyPpvtdbPO9iM9Wp5Pcv11dWBLLRXnn3qanZsxhHyBvz/O/xp5pWG
         1Lr2AZvE+gnb4ykxxERXfJq72jAYUHtLv8mK8z5Z7PfGWb75d8iFSrzOtObqmcXfJmtv
         qGKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2f/vVHxyRFoilKJr+B3hBhPHEkdjVLFye93UcIisf+c=;
        b=ZbS8n8tP/m3rNgRUGmNL9mpSHvNfSK6fPDKPqV8Mu7BHarn+SXKGbkgb73ngMl30dG
         ta2BFJ0YtjS4VnySb8P0BVM2vDMPE+6ESUODJ848LDAmZG/tv1L/LwThMCGpEj5s2URl
         IFbrRD9b35x77ZM78BYFPxmf3R1yYcx95voFCGNa3GAmm84Fi2E2MKXJMso2jtut86sn
         QeiYOxVmqtCgken5REKnesV35iKc0tQUt+W6TnNBhWXpXjejcpXfN1uDPBSso1cK9dbE
         w2zQ2mczlKE/vP25ieAisKPTPWznvOUxb+5EpLU0Qh1SA8aWqg1hbaJk0svVndd0kNsy
         7dEA==
X-Gm-Message-State: AO0yUKWIALsFVS2WuPVCsajiUGPZ4WaQw0h+LrZOe+YP5PtbAS87Li9Z
	+lpybkP5ibHCj3uXwNHgKno=
X-Google-Smtp-Source: AK7set+Bs6M0s35NU/ug9ooCav68C1qAncO8z5TCo9kcefJhAI97/M1BsGJ6XHjEPDCTLsf1Rn+nLQ==
X-Received: by 2002:a05:6870:3486:b0:172:4278:13c9 with SMTP id n6-20020a056870348600b00172427813c9mr1627973oah.10.1677597732618;
        Tue, 28 Feb 2023 07:22:12 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id yy23-20020a056871259700b0017264f96879sm3318321oab.17.2023.02.28.07.22.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 07:22:12 -0800 (PST)
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
Subject: [PATCH 3/3 V4] arm64: dts: rockchip: Update compatible for bluetooth
Date: Tue, 28 Feb 2023 09:22:05 -0600
Message-Id: <20230228152205.133582-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230228152205.133582-1-macroalpha82@gmail.com>
References: <20230228152205.133582-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_072222_643210_6029F06D 
X-CRM114-Status: GOOD (  10.62  )
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
