Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42EF2C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Nov 2022 14:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RAXlUFRY+qvFs2jTUrp+04lhuYCXjCiFHB9PoK83Ihc=; b=rKRN6OSkiIn5Ea
	FqS2GZJDYmaI9q8IW2vn+6t49H/V4stYaX2TG+vyCXfLBwMLtfncws5kRm4zCS973FYqrg0BaO6xA
	w/5ujAuyugZSr4gS3fp9k17O2+ub4Ifgz7PwoXFMCmrqfzLyZ2194r1w7DO1vzk3NpVn1FcUhhD5U
	bDPFAaIH355+bzV2Yy0vwQNggFjeMLdGNgd1UWjL0MJ5sV0vV9fYyNEuNsG/FHI0gZAJL9Xyyqzyb
	IELg57ulBjrzeXQVww9Hn1zxWMkDAMwRDTA89KG7cwr4eDviFYVWFYQ1q38o32lkn9+8Ov1tZ5VT+
	1ejh2Jn+5NePmOHfcc6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqEnf-00BWSR-T1; Wed, 02 Nov 2022 14:33:03 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqEnS-00BWOH-RX; Wed, 02 Nov 2022 14:32:54 +0000
Received: by mail-wr1-x431.google.com with SMTP id a14so24839323wru.5;
        Wed, 02 Nov 2022 07:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WUlhqgAYjzaM6f3uoqSLbbe1TgInZODBBMy9AJJoL5E=;
        b=htFCsPEbDIt3Th8WglgkYEex84wwRPyeeZ9qDbhYjbkQuoZNeEECSnY6FhR2s1DduW
         f/ing3PSCXoZZqEZDFkDbfU+2py9HQFXuaAa8Y20U6GYVp9RMlxNexVa+ryYBkUNjKF1
         gyrgNTLef9wbabZXEVS4om5abV43IMhcJD+TTzYKNbsBmmav5ZBUU/t0expkiNYTUHPx
         YD5oQXnCk+BXJWyyaX3az4qetNdLqgDH5ClVs22jsd+6Z1ml6F++YHbeYyDOH0PntveR
         wcSFWrDDDZ/IRO8rtMWDYLneQxj7VWlIxObEetyd3nP9tI/tW9XZgvlZVTlCQkK3htxp
         17pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WUlhqgAYjzaM6f3uoqSLbbe1TgInZODBBMy9AJJoL5E=;
        b=XjKPQVRCxhx3rfgPpmg29arzYNgkLGHvDInxvZHCtZXV8xyKMKHdrpD/bb4i+q7oHi
         HFEeDHEx/BToHFqKidato/JtGislZVNOkENiQ7Q7W/p51ocN8QItFV/iroZE3fnb/7Ip
         A8HB49tNd6Q4VxcxURvuR0SXsVVckoEsfmdMPzaY9UJbxfQwymOrPRMlQAm2mcc7yTGq
         G2hiILupLmW3vQwTGwWGEbBiA+3qdPDXaIJlXgwtj1O8exMCQJRVFUSDqn3Y+LNqbgFm
         WL6lgodlcaK3nCC5fEY8DUnOyJSBusU1U2pwsRrN+8o/9YCOzjBxo+HwWeNw61F5HGj5
         CMGg==
X-Gm-Message-State: ACrzQf2BGrAY0ZeoUOVXZkSRKQapNAkGqZPU3Xgy1tenzaz5/soDLiY8
	K4ocSWNbMgJJFYfg/hGHXS8=
X-Google-Smtp-Source: AMsMyM5PL7mLoh+f4ZVCXJWZLKDG7eGZDivbv7AGJAmU67yEuletpmgQ9pMI7B7ur91RBnrtyWgZjw==
X-Received: by 2002:a5d:6485:0:b0:236:4ed2:409c with SMTP id o5-20020a5d6485000000b002364ed2409cmr15292014wri.110.1667399565545;
        Wed, 02 Nov 2022 07:32:45 -0700 (PDT)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id t12-20020adff60c000000b002366ded5864sm12858909wrp.116.2022.11.02.07.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 07:32:45 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add HDMI supplies on Rock960
Date: Wed,  2 Nov 2022 14:32:42 +0000
Message-Id: <20221102143242.1126229-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_073250_907426_DE623E07 
X-CRM114-Status: GOOD (  11.29  )
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

Add the avdd-0v9-supply and avdd-1v8-supply regulators to
hdmi node for Rock960 to silence the following dmesg warning.

[    6.582782] dwhdmi-rockchip ff940000.hdmi: supply avdd-0v9 not found, using dummy regulator
[    6.583094] dwhdmi-rockchip ff940000.hdmi: supply avdd-1v8 not found, using dummy regulator

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
index 94e39ed63397..c920ddf44baf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
@@ -128,6 +128,8 @@ &gpu {
 };
 
 &hdmi {
+	avdd-0v9-supply = <&vcca0v9_hdmi>;
+	avdd-1v8-supply = <&vcca1v8_hdmi>;
 	ddc-i2c-bus = <&i2c3>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&hdmi_cec>;
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
