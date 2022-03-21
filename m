Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA93AC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 20:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UUVu2Tl8IPLtVhBw/AWIc3oHxRa2yDBEMIkaBBYDS1c=; b=ntU+PIw2UZqPq7
	WvzmrZArGp4Aqf+Zpijna2+Exlhuqkn69kVA43Hqgrn6bgcmhJ1sNlfXzqkjI9a1rxuj8d/yaf816
	PF2Rd4jVOM60crrXNEngIZDEdvJSwatumgg76FxlW+7/7vJPOhTbxmvLuc+NV3bbQq7rn52cHavfs
	2lYJXW6acGnUly4uJspNx6Eoi7LtlqcXBYPLshKe45WjeTc1Nm10gj5pfQbqoGs80lTQa9coFYtEX
	vfsNVRukZAa5waj00aSm7eWeu5wu1sCMRGTAKXE/ha9WJe9GZ+fAlw08TX+ALMwhUu3YbVokl0P2J
	zWO2e8rtDAnCJku9lj0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWOTH-008zFa-FA; Mon, 21 Mar 2022 20:17:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOK4-008te4-9I
 for linux-rockchip@bombadil.infradead.org; Mon, 21 Mar 2022 20:08:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=ALP0rhmdyOFskfZyrCUywCyi9ACOSmK3EYQ8ApiRER4=; b=LEKxtoNMPUoq3ShiWclLaB8zwl
 AXEc3PB9za/lmYpTE3jilNnuPwhTVeRSeQW4foYZSUL2aAhNSa/1oDPYZcF6Keo+YGgX1hSUbK900
 cA/lcwbBYpKhs8PFOXASaO3C1a7TofuBummWFrwq9uus0zhRI/F3/xWXJ2OAVAXoIdh17c6hhl8wo
 DeEPEbXHcUPHN4rv7BKz+BGQQVDQSm4f0kJi1EOx1Qb8S6AOl5yvUbUsxK11iYwqyOvApq7TRSdQa
 CgdmXWG/ufGWMLih3gg4gJNiwEPICwHXvGzG9rzWQ38WuYS0E9hqEs4Na0Ao3kAHNjr0Buf+S6yik
 GDSqGC+g==;
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOJx-003E4C-S2
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 20:08:08 +0000
Received: by mail-wr1-x42c.google.com with SMTP id m30so12382965wrb.1
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Mar 2022 13:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ALP0rhmdyOFskfZyrCUywCyi9ACOSmK3EYQ8ApiRER4=;
 b=PgoKWs6BqTd0YVwXlKBTcyBVNt7mdUfOIGxdK2fjBUMqsY8QYZujGa40w7xZBZA/yp
 esIJw6J9JSeWIhA+U6x2mYwng+KEadRC1WZHfCqjm0WL/XS3cQcbxVphfXFhjW7U03L4
 SNF/O75AKTknPDP2nfoWBmQEH5lTIMm9DWh1VCa4ZX7nP/eynUi5fmB0QP30fkDj7k5Z
 sAtqVOVA9VEEw36jbB62quDplN0EFDiUtJ9Una41golcgA5MfXd7pzSuAvzbkakLaeaf
 SE/tp7FpbXGtBq8Vd2tcXJI8tzVejLR3DGCuOlBj9FPXxChNf47ychi8mDpXDCqNpLEZ
 /Olg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ALP0rhmdyOFskfZyrCUywCyi9ACOSmK3EYQ8ApiRER4=;
 b=7P7J/XRlNxmt7L4qVeP6KeiDNbMla4U6hwwHmnaZXT5euQGM8nt8F5fudjZWDQIBlS
 TH/hEDQwSWkNjZMGf+Lre/0MO+EQmppNYTlFIXLC6YdDRPGwfN5P/40ZRiUklgzpJgm6
 o+1029DcqSpBBEwJnyWBjcaJi7B2KWZUUHDT/GIG0DOapSZxiAMByXhTCYxY525wbtBE
 HN1mFemCD9ep1M+uuaSpbVdBnLj07AgnYdbSPO0ARaymaTFPPChlCNc6L5pkuT0tXmOU
 xxdMM5s98L85fsQ9e2f02qi4MJVTTKDAwhCnttSLTRLYuDWIaetdBGv4apXKhuE5J1XN
 lGXw==
X-Gm-Message-State: AOAM5329jSXW1O54GhIpNBPGUoIoRsLpnoDVMrlYgElN4ckEvFJo3gmq
 Bi6oCflbm/2doF1DyKwAeBUI5w==
X-Google-Smtp-Source: ABdhPJzDjnGj7IJraPSCtEXEfN9Mb8TcdmAUQ8cWd4O9rEnCAZpJ5de3D55tdtOi3oK+SbIlHh7IFg==
X-Received: by 2002:adf:8128:0:b0:203:e32d:4d03 with SMTP id
 37-20020adf8128000000b00203e32d4d03mr19172030wrm.540.1647893284321; 
 Mon, 21 Mar 2022 13:08:04 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.08.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 13:08:04 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 19/26] arm64: dts: rockchip: add rk3328 crypto node
Date: Mon, 21 Mar 2022 20:07:32 +0000
Message-Id: <20220321200739.3572792-20-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_200806_083697_F5A7D560 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

rk3328 has a crypto IP handled by the rk3288 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index b822533dc7f1..e83e0bf7e517 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1007,6 +1007,16 @@ gic: interrupt-controller@ff811000 {
 		      (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 	};
 
+	crypto: crypto@ff060000 {
+		compatible = "rockchip,rk3328-crypto";
+		reg = <0x0 0xff060000 0x0 0x4000>;
+		interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_CRYPTO_MST>, <&cru HCLK_CRYPTO_SLV>,
+			 <&cru SCLK_CRYPTO>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO>;
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3328-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
