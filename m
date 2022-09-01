Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3B56C54EE9
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 13:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1BlqizxwG22VMLb8BXRDGZnVUkaK3foJH4NgpAi8Jk=; b=kNBMEDMSOk1ZPk
	sEI3r/QhOEwuu/iKBVrv8gdQ3bb7A4HyZGFSSxqnXkeCWkNIxjeu01cCaQ4BAEbqdDPhD38WyjIlH
	IsNykIiuch4ibhHMWmSARL2ONdt60sId+/q2ORreRINCaDxRUtc+U3iy8PrYbSpH/7syDzuVFj4fG
	zK+QeZAvDHE7bAQpb5/1CDrlENCw+d6ZXjZUUbtqUreF8Y2HSdKT4lzgUs2WhOqveYB5jlUBhVi6k
	UiMdSrfxeqORPBKKcAkezyPtZknHtxYUIC5yD3hRKs97SAgpTJwxwW4o1156lLMPnDNvwJbmkUb+6
	QnViXSE86pDtvj9yy+sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkGE-00C3ID-Ln; Thu, 01 Sep 2022 13:29:34 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTk7K-00By8c-Ai
	for linux-rockchip@bombadil.infradead.org; Thu, 01 Sep 2022 13:20:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=QXNec13rQxx7mczo0Bb45Dl1W4/rRz+jQsRU4AeJnZM=; b=i0i0bDisM3Cr+nJR18Mec7/ok4
	BZnKGJVDMG9TvP465IxJjWWw7HIHctiwb00MoXS3eGZqKGviVnWm+O1dKmSva7KW9O+CLm9PZlLkm
	reowLBPD0E7ExYjUC8LwlEI6SuROHDVaiCxKm3meaWFOnEux6MDBixvcEL1lT+8YxaBhs41MOKhvP
	C9269nVDoygdI3gfVYfVDTUdVfXC5UdZPM3REiK17Oj5tgMwMXSx9BaZ96OSyrrew9K8H1syqPJS1
	VONX9YqJ8PYQG6KczEzihz0+F6oGmdZFH8t94MGnab5NedO/lJKhtkcCUMLbTpcHq0oYn7qYKfjgB
	hu3HKzrA==;
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlT-0062cp-I0
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:49 +0000
Received: by mail-wm1-x335.google.com with SMTP id ay39-20020a05600c1e2700b003a5503a80cfso1399223wmb.2
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=QXNec13rQxx7mczo0Bb45Dl1W4/rRz+jQsRU4AeJnZM=;
        b=stFp2ZLkJAsW6hGzxfz+PRuE4PLjXsmpU2vPFtfvFB4D4UY7QRGYTcmrZDewn8b8Ai
         s3KNutoE3J5bhfFRhTK0Uzt5uo9TUlMly5jaflRtPoh2XyUwX5hk/W4yGlb57OT53GcY
         a5QztEb4kIG7jRm8WUgf/+eeUX/8qICHMBJxuL4cfoRw90Izq2TPrlnE7qyp3fkwUvBb
         cdgmHqzVPLDdtLVDMLG/0GirMrCRHYDk2kjjzGnopMKhGabvPyaH52uaJp/ihYkD/83h
         AfLwURWnLcWt7gqHDDqHx+H9Nj6B/lWBDl1hDRDJM4wwF9AulrGJJici9hKemQ98OhwO
         m6Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=QXNec13rQxx7mczo0Bb45Dl1W4/rRz+jQsRU4AeJnZM=;
        b=F1wo+VAcgWNy0fruHrUBy8qtUY5Q2SWptTSn3XgaUqo5Dwi8/461NsH6xuVKr/VfnD
         S9EthOrbwjLZOkOKmoKQiq7sBU8h8iBOYj+rgAi7bpqZw9V36XlnMyeZ+jopcjP0uRDh
         /u4gXMeBlIiXDaObjLxNdyrpaMl3hanuEo7rIjy1yXv+M3If+dwndjJAVku9vYjyc6s2
         9qICNeSsYwyV8Xeimd8z2zl6pcF9VxJXFS1BmPlHbrfFhKibigJWZ07+c0HPTVPJDnjk
         IWKXRSkEnxtZ3xnPnVubqQbEM4eFH9tPSqDzm3ik9TtCRebyJDZ7HA7MnRnCDINifoYY
         TUsQ==
X-Gm-Message-State: ACgBeo2fYclZ4GIoQxQ6BBOAF5wcx7Xx40rfialVsWGBozm3zM/yMZXU
	2pXjUdAppWII6LXAqoDPztTDVQ==
X-Google-Smtp-Source: AA6agR6kskfAoZag4yYUzmRw/gm3W6IjBrrVyQaAOK+QT10cru5zUronjFtmjvUBalKY+JyRRJLqPQ==
X-Received: by 2002:a1c:4b01:0:b0:3a5:94e8:948e with SMTP id y1-20020a1c4b01000000b003a594e8948emr5115728wma.197.1662037064747;
        Thu, 01 Sep 2022 05:57:44 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:44 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	ardb@kernel.org,
	davem@davemloft.net,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v9 27/33] arm64: dts: rockchip: add rk3328 crypto node
Date: Thu,  1 Sep 2022 12:57:04 +0000
Message-Id: <20220901125710.3733083-28-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_135747_620313_430625C5 
X-CRM114-Status: UNSURE (   9.01  )
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

rk3328 has a crypto IP handled by the rk3288 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 49ae15708a0b..96a7a777bae8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1025,6 +1025,17 @@ gic: interrupt-controller@ff811000 {
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
+		reset-names = "crypto-rst";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3328-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
