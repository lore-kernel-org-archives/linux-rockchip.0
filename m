Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB57EC4706F
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jan 2024 02:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FHh73iqVgL2u0SakOhJVC0xCamtpUXV637M2bN/0yZo=; b=PXM1Z4Z4wclcaQ
	ER6c6fG+NwCkw0af4fkFRjSYeYJOyYaTlgSrJ4a+lZpsN/eDPlK4fi1Fa7VBkgqvHWr0LYX19JyUg
	6l2Jdit84qyV/9Vg7aE5cyxcPCrDdpRlPk8PVI3Bdvw0UFcp4sFn6HHI039eWYUJVno4LPPa2934p
	U4cMpcxwVAv8YkU5k7Oe9Z+8cf6wgcvSeXTsel2lbfcD+ilNj5bDH6ePHLgLj5oZPpv4ttMA4QG4a
	9t26XN+cKhOH84M7+hIZJpJe0UMvUSiqwvQ/U1y0OKVjHhWAQcjuMCkzz8VvL1/7P3FVna99xhtSw
	KIEM9AzP1opor2jhLtvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKUip-006zFF-2U;
	Tue, 02 Jan 2024 02:41:39 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKUin-006zEG-15;
	Tue, 02 Jan 2024 02:41:38 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-78101108e3fso744676585a.1;
        Mon, 01 Jan 2024 18:41:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704163295; x=1704768095; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eRVOpblwQ3hnrC1ABa9hLFHr9iquzQYphLKUbyNwreY=;
        b=iHP6SO48hyTY6Lqi558MQEi7/4rzDSlgcP/KbBho5vtk04QMXQmMjuRj85FDzdsjN4
         vjVEp6q9FKVItgGr/+YJI2wXVaIn0YvzEdQiTADw4MdQTJhlWmYpTktMLikBntBV20Ic
         O06ZS+EBFSFLFvr94TjmTCWQB8he7qfrm5hrXoSu1j0FpMPB/H9B/iYuCrfFt4toQxmv
         N6xWIciFtQn8WVH0QjbCP8SycJsa91Hd+bYrkQ0FXJODCGavwkF5c2fc51NfyAF5eV9B
         t19hkE5y6rm0zvcxRfd/6Xw/4i1ISgSVbAlBwzbZOnhSSjU03LQMAJFcIossb3ES7/sw
         Sv/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704163295; x=1704768095;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eRVOpblwQ3hnrC1ABa9hLFHr9iquzQYphLKUbyNwreY=;
        b=GVumsK1/6Uid76rlmMq1L54fjJNOHlyKB/0aXaPP0R8MBMq7Gab0pu0HsTFqnCSobA
         GuCLJb4WV5j6x7xDLDicktNSacgq/19FxyaOTE581eWoXHwfdzEjRQ+ZjP0iU3EgqwG2
         F5ujMqsHxU3oSInj3SORmefJ+aOFf5QkrLCDdKbNw2T/g7cOzN4Ydy8sijYQoPaCSIwz
         hKIamtXAMGPBPr0lkQxeOR0qk+23TZGDr4FfE5Jg2bWG/TpiornVtZDrIPMstm9osmUM
         23kpY/NCu6ucqJZFKnF9tzmoiTv2kWYWA5AZISkQCzZ+UQe3GM4+SPUMbyals+ecoTTw
         NOWg==
X-Gm-Message-State: AOJu0Yw2njPQsHA53WgJmAM88pKOJk3j2qOWzqTjJpLv/H0SVxNMgwrN
	hS6dQ13Ev8GfNAEFg3KK8HE=
X-Google-Smtp-Source: AGHT+IEl3+Pk1MOkQjs46lysrTP/eWZLzFXJpHaRZUn8ihW9X0n1DRVLcHdsPtYNlhrgHw7yuwO0Mg==
X-Received: by 2002:ae9:e416:0:b0:781:415c:273e with SMTP id q22-20020ae9e416000000b00781415c273emr17154242qkc.99.1704163295025;
        Mon, 01 Jan 2024 18:41:35 -0800 (PST)
Received: from localhost.localdomain (107-015-241-140.res.spectrum.com. [107.15.241.140])
        by smtp.gmail.com with ESMTPSA id bk7-20020a05620a1a0700b0077d7326c60csm9161896qkb.38.2024.01.01.18.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jan 2024 18:41:34 -0800 (PST)
From: John Clark <inindev@gmail.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: "Thomas McKahan" <tmckahan@singleboardsolutions.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	John Clark <inindev@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: nanopc-t6 sdmmc regulator
Date: Tue,  2 Jan 2024 02:40:53 +0000
Message-ID: <20240102024054.1030313-1-inindev@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240101_184137_372269_D11DC023 
X-CRM114-Status: GOOD (  11.34  )
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

sdmmc on the nanopc-t6 is powered by vcc3v3_sd_s0, not vcc_3v3_s3
add the vcc3v3_sd_s0 regulator, and control it with gpio4_a5

Signed-off-by: John Clark <inindev@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index 54445f929a37..fc8add8df3db 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -159,6 +159,17 @@ vcc3v3_pcie30: vcc3v3-pcie30-regulator {
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vcc3v3_sd_s0: vcc3v3-sd-s0-regulator {
+		compatible = "regulator-fixed";
+		enable-active-low;
+		gpio = <&gpio4 RK_PA5 GPIO_ACTIVE_LOW>;
+		regulator-boot-on;
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "vcc3v3_sd_s0";
+		vin-supply = <&vcc_3v3_s3>;
+	};
 };
 
 &combphy0_ps {
@@ -544,7 +555,7 @@ &sdmmc {
 	no-mmc;
 	no-sdio;
 	sd-uhs-sdr104;
-	vmmc-supply = <&vcc_3v3_s3>;
+	vmmc-supply = <&vcc3v3_sd_s0>;
 	vqmmc-supply = <&vccio_sd_s0>;
 	status = "okay";
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
