Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1415C47258
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 20:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PtfeiLs+xmh8L300RloI5YiYDxSLC19xew2lguHWKug=; b=XDf9/g1EQWyJGL
	rqFA92jew5HVIZ5cb+VSr5yzPOnx7h4sLvgtJqlk0HTNJ3LumBOfazpbn0XQk0avcJasgsTVprrLF
	lG5C3/GMBmLRD0GuZWEhyzpLyGk/FObDUBx3kGOki7WZ84fmx0ZYatnu2WBqLtEweipKr3BPdqyY/
	E50eC2q7xRP633fxwAu1HsEA4hpFSvCXXZcGMR/mQEM4/EPbvYApO60YcqP2lF4fMZx7N7SE0rl9t
	IGyR5D4FVDXJ7PAJxKILlJpQgeArDP1ZIrP2NGA9Dwh3m5y4RdvxToz8RVzVfK05IZYKatC+Xut3j
	2WBUa24hKc+z+USOvyqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPqFW-00DUPg-0o;
	Tue, 16 Jan 2024 20:41:30 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPqFR-00DUNF-1u;
	Tue, 16 Jan 2024 20:41:27 +0000
Received: by mail-qt1-x829.google.com with SMTP id d75a77b69052e-429bec01aa9so45599681cf.1;
        Tue, 16 Jan 2024 12:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705437680; x=1706042480; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xKvjgEuWJbSxEFFzQ1IdsdgMBmwT8jOSBvK770lzRTk=;
        b=kllzCMb3FmXdlevd1LjOAqMuChW1CjaAJXlkBCyi/jwDjeIiUPXIYWEfxTSFHCszBX
         oOF1Tq39uwtsd5guxZEeBU+gSo6EaczM29X6tNppTyeo3Px+oSruHqQKpi1NrpuW853v
         epLKgsYmnj0Sww7yxsLeazexybF6f1QkjVmGgtAqY9Dj7CUfNOLRB0U8oq0kksv12Rrw
         v8o16WsOvds9vAzWfYexKYI38etZaNG0xuR8ivWZ5VSB1wbtYWte/v79mT8wQxm8xbMG
         /EA47/gugN8/1s/eI3qoX9w7CFkPgM8ypw95wXZeSsA45vL2JYwBp6SwvlwNM6ngCUpY
         ptkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705437680; x=1706042480;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xKvjgEuWJbSxEFFzQ1IdsdgMBmwT8jOSBvK770lzRTk=;
        b=eoAsXO2KDlw914hVaaKt5LWCwz7Xb6Xc0eXNKqVdKsRp1bIFNE42UUY7thvPfe6/I9
         Nqop5wO/FOnJa19XlqJBYNxmoN4qiR4g2ng9FfiPADVy79e6D67Rf5wWhAA0cFOTkffn
         QxF9CRKtYcXczw4WbLHlUv1OC4Jzr+reeIFu59m9a3BSMp6qD8wEfAe5bXyy6/fvziwy
         a4dqvhc1xjd072U6HCd9yif3vBs39F7OUtMkK5RpxvG6rxRbTl306Ul8b9Qs9ZizXwX+
         QPBErbNuSAOdZfQ2R9I6nBJPySGZKvsHy3MTdQJNbvCqXWcnQKBhI+YyPGVv+K+/qQfB
         nLQw==
X-Gm-Message-State: AOJu0YzW7oNPMfySpnWn3FBEnG0sRScIuwTFVQScm+1FiJKkNTmzM3uw
	obE4mGDLB/Bbcpt0CNw9EKQ=
X-Google-Smtp-Source: AGHT+IGKcQ/SAihBdD6ihNwYRSNgO2+0Zfozh06Nmkz6o8mmNBZYDS1QuN1HRT5DTCFw6RwZ6BJ8AQ==
X-Received: by 2002:ad4:5bc3:0:b0:681:78b8:1058 with SMTP id t3-20020ad45bc3000000b0068178b81058mr844835qvt.49.1705437679920;
        Tue, 16 Jan 2024 12:41:19 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id d10-20020a0cfe8a000000b0067f454b5307sm4419061qvs.108.2024.01.16.12.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 12:41:19 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 1/2] arm64: dts: rockchip: rock-pi-e: adjust phy-handle name
Date: Tue, 16 Jan 2024 15:41:01 -0500
Message-ID: <20240116204103.29318-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_124125_626972_D9FB95FD 
X-CRM114-Status: GOOD (  11.57  )
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

The rock-pi-e currently comes in 4 board spins, the latest one (v1.21)
swaps out the Realtek 8211e PHY for an 8211f PHY. Therefore modify the
phy-handle name to be more generic.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index 018a3a5075c7..096cfa19036e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -146,7 +146,7 @@ &gmac2io {
 	assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
 	assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
 	clock_in_out = "input";
-	phy-handle = <&rtl8211e>;
+	phy-handle = <&rtl8211>;
 	phy-mode = "rgmii";
 	phy-supply = <&vcc_io>;
 	pinctrl-names = "default";
@@ -163,7 +163,7 @@ mdio {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		rtl8211e: ethernet-phy@1 {
+		rtl8211: ethernet-phy@1 {
 			reg = <1>;
 			pinctrl-0 = <&eth_phy_int_pin>, <&eth_phy_reset_pin>;
 			pinctrl-names = "default";
-- 
2.43.0.76.g1a87c842ece3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
