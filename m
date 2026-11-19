Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6152B606A33C
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 15:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=G1eV/nTi;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=0wlPkc71
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=knXO+QyvuGimv/QV6P3P2ZzqhYBvz3TxQXgZcEefhKs=; b=G1eV/nTiymaQ1PNO8om0QkPhqk
	uQmJgs1tjlHyJL0yRjPBRbAyaOVPrKWKWtOec/IuxLcJSigF6CedyST2DgJmm1xfYNdiA64KJhwVt
	Gp+AE3glrB0ccKGEea4Kuvw2IUoQeQa1M9Id5jR1xOY8iQmxeT0D8gfZkGAPzv56FLGbm+GtnGZOA
	zAPL/vsBOUEq447dp9qkhTbxAyfQvtjEoHn4RoQEYN+vYsnO8FmPGLTEGOQGPNkHQOUxmFudnSuzu
	Kc/WXbJYMi9T+CO4vbTW8MHVZLq43qUGpc4wZ6ySWFnFSwXaxWkOODqUpJ4I4uxdKogfM81DDXvhV
	bI+GOtyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU44L-0000000CS9v-3l5j;
	Thu, 19 Nov 2026 15:29:01 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU44E-0000000CS7t-1nvH
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Nov 2026 15:29:00 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-847ac7ccd85so1587166a34.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Nov 2026 07:28:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795102133; x=1795706933; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=pxt1sopQlSkfKoFQzdpWbaKq45H8uP8fsn00DXSyY+E=;
        b=0wlPkc71P2JyJqMKMhVcB+JIAswT6c5qVwpkAvlti9DXVby9kK3ILPKM0OtjBqh13H
         eDcyUcBFZ2tso6W47yj2jTnuhZNo46Wn5jIp/k2IgzF1sP+3DwpCetllAApfqzlttNan
         w0/cTfqShd5L4pA2kTcFi6zy98TBeZY966OPl6RxuPSwJ6PfRd2cKNA6fIiBGj+y4wH1
         F663EK6lFy0Dz5yeNnVGwuhy0gG+VatMPOZUeWC+/5t6rwiE2repYNU5Z5e4DiO6q+4/
         89xqpWTseK9y7rLppzq806rOEWM0HnLgaB4819uOi+4ypW9NWHPOFIH326ydh9Dz00W/
         Ma4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795102133; x=1795706933;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pxt1sopQlSkfKoFQzdpWbaKq45H8uP8fsn00DXSyY+E=;
        b=XfbhHuKXDJ49PgR4qktKMx0305rzID/Nh2jJuvHpPf43l6FDc4HTxAAQdfv/Infg2R
         JQ5VGgTl/FXCspJDM7gRqVl9JetkxFEkCYsNTw9ZnT+mQsO1lJ6iXylyseFOmY+7miaU
         bJff1U9HqdWIPoodNhpVJeh7iSIrlCf6JWUWaIP396E2mbD+YAcLkT4rPqR3m8qTsZ8b
         vbKtq0xqU9HqN0j6/xWCGmSiBx3ptgpB9TcmoKfwWS6l+b3znjnR+Ddx70MQL0SXn7gP
         mhaD5Tirnq//kNAnDyLi4BKw6eMMmkYoy7i523VKR6UCV7jzINwWp95t2xyFKxv2t5c4
         0K0A==
X-Gm-Message-State: APuU4Z9R/2HPlC+hWLJT4He44tsOXVOSPZsihbW+0O+HbZURY37+2YWv
	U9NyIH97wDW7DNwVIQ99mL37sXfM8KdFGRnwiteQ+xXMcAcGJeQ9rwh3qGkApMWq
X-Gm-Gg: AYBFou2l4ikexw60IeZBZ2f9GUFBBxwYbiDIuKTB3UYB+akbRVyuLhNf/etMhY+d/Ec
	jWTnq+mJNq4g5/ZDyUboEUxADrmGqc3HQOMRulUNzF4gxW8HjUJLuK53YvLMffbJ5c6XzpjkW27
	9mD5DN/3azZZ9MErofA+R0g1f1+n2CsIcWbwcBTDcCaj387iJ56z+eUDCfkGkVjmRFFNtryOwfs
	XhoLpV7B1+cfucnxGBRHrx+sbqnZaBGDnMAQLTtgGaM94T8w7bNvIIt/ImJr65LwF2X3jc9X+Us
	h1KFLxT7AtefmX9cNMuZGCuNl5yOvb3VTcjRCXzxdjLCZHky5NXnLSsaKGCeRGTVgs8K27MZL91
	0YVLgqzMkPDOjMRVbScsq0rjBNQEIOxlQUUK976ixNp+r4IZVzy29W960snztsU8PTOTQqytzPU
	Dz8OmzaWd4gztYdQmrdAXdYyeGgO6YnvcElsj6TGTOZ44Gj21qrgnSNfDzHvhsw8aUAcRz2540F
	njL8ZR8lLcCDJX0Z1c43UtqDpYN2I9S4daAQhROLKF0do0lnVOwO0cQ68EHCWVT/akC8u63w2OZ
	ueoQ46U572byoOTUirhOE1a7lG3vcQ==
X-Received: by 2002:a05:6830:3495:b0:862:b9dc:183b with SMTP id 46e09a7af769-86315a31dd6mr230760a34.27.1795102133180;
        Thu, 19 Nov 2026 07:28:53 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-862f01381f5sm4560975a34.3.2026.11.19.07.28.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2026 07:28:52 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: describe PCIe RTL8111 ethernet on Indiedroid Nova
Date: Thu, 19 Nov 2026 09:28:47 -0600
Message-ID: <20261119152847.312239-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_072854_475280_B5EBA4DE 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, heiko@sntech.de, robh@kernel.org, shawn.lin@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>, krzk+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

The Indiedroid Nova carries an on-board Realtek RTL8111 NIC behind the
pcie2x1l2 port.

Describe the PCI function nodes and attach ethernet0 aliases, so that
U-Boot's fdt_fixup_ethernet() can fill in the MAC address from its
ethaddr/eth1addr environment.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index db6adeeb408e..d6254abe53c4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -43,6 +43,7 @@ button-recovery {
 	};
 
 	aliases {
+		ethernet0 = &rtl_eth0;
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 		mmc2 = &sdio;
@@ -493,6 +494,20 @@ &pcie2x1l2 {
 	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc_3v3_s3>;
 	status = "okay";
+
+	pcie@0,0 {
+		reg = <0x400000 0 0 0 0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges;
+		device_type = "pci";
+		bus-range = <0x41 0x4f>;
+
+		rtl_eth0: ethernet@0,0 {
+			compatible = "pci10ec,8168";
+			reg = <0x410000 0 0 0 0>;
+		};
+	};
 };
 
 &pd_gpu {
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
