Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CB73C0015E
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jul 2023 14:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PhLiyGccoeekdvwv+iQqQFof4fnx0yx/3VKxbvjAh1s=; b=aseAjO5RxG1aZz
	lT9v/J6KpdKGW2jkdRe3GWz9J2F+SAvwErdbfUNI65kbPdZI35QsObmq5nTMglNlov200nGxIhoLo
	ghGEVe6E9ph28oSED3IFJ9NXkkmNjC9jmizwIvNC5iCJLKEPHA0g7g8goUykXNALlllgQteWzbaVn
	GKbUXTDU6s3VDocBkevKatjZkSiGtBnLXJlWLy9kT1wyhXbI08Fv5TpFwWCOH7EmjkJ+BPNsDke3m
	7dfo1JKMGJzHnzeU+RZ/cknYAXt/kev3SmyPDJJergFwVbtH68iELh0rolxv9OPwBN0N2Ksytwh9X
	l1y/iMVmR1KRxG/2wUMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJxU6-003aWW-2f;
	Thu, 13 Jul 2023 14:39:58 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJxU1-003aTA-0J
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jul 2023 14:39:54 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-6687446eaccso816769b3a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jul 2023 07:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689259190; x=1691851190;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=44xntmQVuIocvp9s9TbsDCmRl73TYtCTvSM3VlELycA=;
        b=KT79sBxeert8Qlb1aWZLVC/38nQgjwbe7HVTKUvBPbHE2QfBJBLBoDnDL5+GDId3nJ
         kA/hrbbQidWUtsN6wVyXo/3/3zm0R4UoaRG7dhIQv2PgezUkprnknCMER4hUkkiQhULZ
         iP1YylGitYnwrJoJL1iT2cO4OY8y5h3mO10th+stBAty2CeObFEoxEsNCfq1kEtSCL/W
         iwynbZHYwt/Kq/YFuj0/7KVtBU1lsAJd8+fsyONZ2fr7Vb6uMGrlROvhqpnyhee/5zOJ
         fA4JUyVBTw6tN2kNwG7GpSL+HqNV1g4YZX7/GSXiFgyF3WaBBBeoZiUy3jmfEdyazj1o
         zGLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689259190; x=1691851190;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=44xntmQVuIocvp9s9TbsDCmRl73TYtCTvSM3VlELycA=;
        b=ekuFP6exCy4Z7mRMqfg5cVWXrbqYaWhIM8R9/lQyEr+sPfC2i4YynWYbmPQNZYfr+h
         7Hl3jfiMXNc7RB6ad83ESdVUGUJB/IxLeFsxlq3YXCLCUeE6G75+Gd4/H07BSOo7FftR
         Z1S2qEDL+pvxwslti5B/2U9lRu4JKbudP3RJ4Od3t7aFzFpej4IGjOE4ITXci6BedWsb
         Qd4SrAfIbyb0oVDaxGBdJU+LkJA3EtCmzkn8Vp+zkzVQceCXy+O7uKBWI8g6BJa6FhtD
         Kf30wQ1mxbpv2RINZtRE6lNHy20WW6fXOLM/JCvuUBWF7TX7ivlj/NZyILbJGeYOrxkF
         zR7Q==
X-Gm-Message-State: ABy/qLbrpNsRNsmV5HSi56FpY0BEqXH6VPucYeRliWiNTghDP0Sa4dc0
	zvPc0ePxpH4sq0PdblF0XQNwAA==
X-Google-Smtp-Source: APBJJlHgQi7IAw3UGaYH8fi8qgIWy+V/PE6O0DiYgylzUsU1VOkGEolDAugg26tqgaJfWlTnwUUKng==
X-Received: by 2002:a05:6a00:2e98:b0:662:5146:c761 with SMTP id fd24-20020a056a002e9800b006625146c761mr2330273pfb.17.1689259190279;
        Thu, 13 Jul 2023 07:39:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:4984:5087:308e:21ca])
        by smtp.gmail.com with ESMTPSA id d18-20020aa78692000000b0067a50223e44sm5565764pfo.74.2023.07.13.07.39.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 07:39:50 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 2/8] arm64: dts: rockchip: Add microSD card for edgeble-neu6b
Date: Thu, 13 Jul 2023 20:09:35 +0530
Message-Id: <20230713143941.1756849-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713143941.1756849-1-jagan@edgeble.ai>
References: <20230713143941.1756849-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_073953_135168_6890B5FB 
X-CRM114-Status: GOOD (  10.38  )
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

Add sdmmc support for Edgeble Neu6B NCM IO board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts   | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index e9d5a8bab581..7f9e2c750287 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -21,6 +21,19 @@ chosen {
 	};
 };
 
+&sdmmc {
+	no-sdio;
+	no-mmc;
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3_s3>;
+	vqmmc-supply = <&vccio_sd_s0>;
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
