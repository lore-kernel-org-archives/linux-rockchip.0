Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8CA2C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 20:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOcm4sSvoH3zitpdOA8dwL8LdZzD1Mk//WU4TbXs5KA=; b=n2Ymt/kS3Xku2J
	WCXp8N4b7LunkEvVCv2+FE3tRy8OwXmQ5pjth633MA4/VW14ZLvn4MRzHRynwTsCkaL51xUFMe41V
	mfv9JBeHxL9QE+qv9B8hUOrlmXLfP9O+n/YOclfzWa1NgYs8a+tnTsf8C0Z+lzy+GB9QnOSRGSg5c
	xs9IQSBGRR4zSshE12+MNy92zSbFx7lBkPU28FbsQo/RTf6pMuuXaWVHgAMswIc1f37pjzh5yMGCR
	08doC4dl3SPYi4j2np9pqKXMTEB4mTejQsHyYXBy1yUcdeOjc4TAo9y3t4+fOcXoPkhRSM3Q3Imtr
	MKOHhyw2nBgKYGxXx/MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWORh-008yH2-Sw; Mon, 21 Mar 2022 20:16:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOK3-008te4-0Z
 for linux-rockchip@bombadil.infradead.org; Mon, 21 Mar 2022 20:08:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Bc8iW2Y0p9EgNyzaPB9ofcw8MbDcjRfG8JdfcAHFb9c=; b=dQqLlEI+DS4wDsLtFL3MfjCYk7
 Xds07+886UCuf2N4/teSK9Mt/SZRGGxvygKxQ06GjaQEHDOeRyoReQTawFONU0e2InubSqmDYOcMU
 KPVP39TouTEY1z+a1j8jF62WyzA0YmQR4hbCHibY0hQFSCB+oO2YqazuK7uo5xAQ2dpikYaU/vUcm
 c+qCQ2D1gC2EViqKk0T/wMdLIkVVlMQ/CZIbMdlx5dAHZEbC2IAKXehAnGJP9tV8mVDk9H/KhU6j6
 WJpbGNi1DJqi+3lvoH9KOt8V/Hhpup/ua4kg3M31+3T0DRCrilEmSNUJb7sPUOpY5aD/iudKl0W6A
 VIjf/tXA==;
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOJx-003E4A-KB
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 20:08:09 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 bi13-20020a05600c3d8d00b0038c2c33d8f3so218343wmb.4
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Mar 2022 13:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Bc8iW2Y0p9EgNyzaPB9ofcw8MbDcjRfG8JdfcAHFb9c=;
 b=vPZ/T6QEQRI5o5bMpxza/WJQImKeu2kaxYIN8+9IjmsqwJLvIW9K+APd3EqKjRyzIJ
 DcbKbvtRdMho6bSss1EIZHOZjvyzb5TbVl2tCRBYuFOyiCyzUjeXdKU52DXmJR9biEOM
 i1t5XgGdmtBAIjZVbWf5ZvXwZ1e3CktFylVHsnV/ub6JFIsKvYNSZbSJIWUrNC6JGFNt
 9e12+Mwv2ZpheIHi5kYdGDVWhpwcaCOEYEdL3S75wmRVPe0NYmBS0Z/4lNRmNrSJIbUv
 tLCm4v4HISJv2KcvORMQeEMi1/hqjnqeA8963xbvMmmyyQIhQHslfOHFgo8t1o54ecUd
 7x6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bc8iW2Y0p9EgNyzaPB9ofcw8MbDcjRfG8JdfcAHFb9c=;
 b=OluaLNUu7+QC6bNlEHcGSA8tDsATIbZsw30nIjDHaMv9glsftvL11qPNTri0aj0+XO
 mkICoEFlTo6EYnrjwR6RbFVIsh8VEhPNMHlrsyygzTTFJrZeXtIGwttak3QkFe8cWtMI
 FqGvVAKe+9BDLthM8+mPTz4Ta6XRS2a6UFmJj8nmvDmAHk5Z3eiKmzPaAJ3FXqrZDSg2
 vYMhmfW/cVSwmqMc5mxm0Bp6MKu56Y1uFJ6w4JtP7y0z0o1YrSrzg3/6hCE72KVlI6Y/
 I5YrZHkRKCfYPC/5TE4rqbJs7awsxRUJ6ZhAO1yfIaDdXHnI3W/mZID7uPPb96vJvebL
 Ke2Q==
X-Gm-Message-State: AOAM530ypRA5EuYKxSvXDc1g/m+WoCNI9ItIkZ6rfqcbeqJZDgyqqz5e
 n6aKKjsgLsg5D+P7ZWncvTtQG/opMUDlTA==
X-Google-Smtp-Source: ABdhPJy3YhrNZyJegsZ4K1MpM/YfOrXBlYIaHDQMjBJoBFW5PFV/x3FE3e88dikg4ydj/4FOrTqSUA==
X-Received: by 2002:a05:600c:19cd:b0:38c:b84f:41fb with SMTP id
 u13-20020a05600c19cd00b0038cb84f41fbmr27683wmq.137.1647893283516; 
 Mon, 21 Mar 2022 13:08:03 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.08.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 13:08:03 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 18/26] arm64: dts: rockchip: rk3399: add crypto node
Date: Mon, 21 Mar 2022 20:07:31 +0000
Message-Id: <20220321200739.3572792-19-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_200806_215358_FD4A4CDA 
X-CRM114-Status: UNSURE (   9.05  )
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

The rk3399 has a crypto IP handled by the rk3288 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 88f26d89eea1..ca2c658371a5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -573,6 +573,18 @@ saradc: saradc@ff100000 {
 		status = "disabled";
 	};
 
+	crypto0: crypto@ff8b0000 {
+		compatible = "rockchip,rk3399-crypto";
+		reg = <0x0 0xff8b0000 0x0 0x4000>,
+		      <0x0 0xff8b8000 0x0 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru SCLK_CRYPTO0>, <&cru HCLK_M_CRYPTO0>, <&cru HCLK_S_CRYPTO0>,
+			 <&cru SCLK_CRYPTO1>, <&cru HCLK_M_CRYPTO1>, <&cru HCLK_S_CRYPTO1>;
+		resets = <&cru SRST_CRYPTO0>, <&cru SRST_CRYPTO0_S>, <&cru SRST_CRYPTO0_M>,
+			 <&cru SRST_CRYPTO1>, <&cru SRST_CRYPTO1_S>, <&cru SRST_CRYPTO1_M>;
+	};
+
 	i2c1: i2c@ff110000 {
 		compatible = "rockchip,rk3399-i2c";
 		reg = <0x0 0xff110000 0x0 0x1000>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
