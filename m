Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E77A3C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 04:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qT3kHpzng+mkz8Hp/d7CT6/05oZE9Jj8lQrDaslUb0s=; b=VGHI0JBONXUCJ5
	6/0VygyZXwFv016WW8+Ulzf0KQlKxpOvJq8BXm2FFzwfYtOK7C2J0iWPyCpFIoxUQC3Ip2+OYn88U
	Vzr8OvRfGR+0T3Ms6T3ppYRt/fAM0ZvI3ZU+Wshoqh4gd5AMuyLmim3m36RXouhhoCM+jFWEhUNuB
	eAxSUYIprRPO9ZcOj3NDMqcEDVaVLTjEJ6MVQ1B5429kYQfH7oswSWakD1qVxA9Y2GYucGgTrVGyU
	s339ItIu1zH8RJfqmQWvIK4TrosrgsxfQPS74ITmBm2aLpM/ecjDqjLAQWB1NCL9eFI3NPraTitdB
	xzEzLkjwqTkhzeLs9fvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rELxP-005KfR-2M;
	Sat, 16 Dec 2023 04:07:19 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rELxL-005Kd8-1P;
	Sat, 16 Dec 2023 04:07:17 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-6da45aa5549so982568a34.0;
        Fri, 15 Dec 2023 20:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702699631; x=1703304431; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lh1fPASUA2RVK3PUb6yIztNzpjqxC47uH/J5SJ+A7yY=;
        b=AvivGR3bObgUwt7fgcP9jRy3x2I0BrdlcEduzC4TEmNnYGm1j92vSmyvHvivi8mXt5
         ds3idBvW6/MRsKjY4vtveVNAJ9XBeq4hTUAefEdhd9hI4LMLQNhz3GInUkzgGdz3g6vC
         6fvmR82SwlVmb9zagLser+8W/J5U/UQ4K5Y9A7knhRaQcYVCptaj13LMntoj7lxRpalp
         ESXq4F8wx6TIGXytbNy6dxUKDHZkrtXq8388J1YxibZ/0jrepBUpIK2VtDwOpTwpRF2X
         nC4LhNfuQ40FAH0FFP9EnZtIRb5kzlIGxTzaNcABFK9RAELltddJn/8UDXLKPX6O1vyn
         Gv+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702699631; x=1703304431;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lh1fPASUA2RVK3PUb6yIztNzpjqxC47uH/J5SJ+A7yY=;
        b=s1semY5C1jE11uqIY4jgPd3Mo1A+l8mP7e7veANMM9vTmPTufP1QeyVzKKymWJoIHw
         JlHF9ZAbZLKIGenw5gfXfOblzzM8WO7wfuE77aPklY92ebniw3caoMsXyzrtn4LKNc7g
         mtT4e2j21fS2wZIgfhFlB7fQWeo2hugBgoPyEumaLwa5NoEVc+vroDJvGxuzRAOeNz9f
         BpU899grS+iGAel3fKBoHPpM1kisn9OVoVRNERoy90AQ9c6Bw8H8jiKnq5TJEWHX/3JV
         WPtgFJJxuU2uo/NsIVkLMU9hCK2Ktce5y2msYGhVX10psVbQXFK/ce2063pEsFTCrGPa
         DEOA==
X-Gm-Message-State: AOJu0YxhdBlZfoI66khPjvg3fEW5JkcW0F5nKMosH6cwcdFtwRH+FtaC
	p418G1ioWE+fYQdt+eR5W3k=
X-Google-Smtp-Source: AGHT+IFcAdimm0eRg4pVwTxwgiiokcG0S1CDTXH57Tb0zgAxZ+ctCXVTXDZ7OB/TWvwa9DxP8a2jLQ==
X-Received: by 2002:a9d:6297:0:b0:6d9:cf49:f5e2 with SMTP id x23-20020a9d6297000000b006d9cf49f5e2mr12531859otk.19.1702699630980;
        Fri, 15 Dec 2023 20:07:10 -0800 (PST)
Received: from buildbot-shaka.infra.immortalwrt.org ([38.150.14.243])
        by smtp.gmail.com with ESMTPSA id f26-20020aa79d9a000000b006cb94825843sm14216936pfq.180.2023.12.15.20.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Dec 2023 20:07:10 -0800 (PST)
From: Tianling Shen <cnsztl@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: configure pad driver strength for orangepi r1 plus lts
Date: Sat, 16 Dec 2023 12:07:23 +0800
Message-ID: <20231216040723.17864-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_200715_489181_07037819 
X-CRM114-Status: UNSURE (   9.90  )
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

The default strength is not enough to provide stable connection
under 3.3v LDO voltage.

Fixes: 387b3bbac5ea ("arm64: dts: rockchip: Add Xunlong OrangePi R1 Plus LTS")

Cc: stable@vger.kernel.org # 6.6+
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus-lts.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus-lts.dts b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus-lts.dts
index 5d7d567283e5..4237f2ee8fee 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus-lts.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus-lts.dts
@@ -26,9 +26,11 @@ yt8531c: ethernet-phy@0 {
 			compatible = "ethernet-phy-ieee802.3-c22";
 			reg = <0>;
 
+			motorcomm,auto-sleep-disabled;
 			motorcomm,clk-out-frequency-hz = <125000000>;
 			motorcomm,keep-pll-enabled;
-			motorcomm,auto-sleep-disabled;
+			motorcomm,rx-clk-drv-microamp = <5020>;
+			motorcomm,rx-data-drv-microamp = <5020>;
 
 			pinctrl-0 = <&eth_phy_reset_pin>;
 			pinctrl-names = "default";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
