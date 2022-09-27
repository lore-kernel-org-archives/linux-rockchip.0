Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A41EFC07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 08:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HaJO1u9/r1st57b9tGH98oTCTuIvxXbuIjOj+61hVm0=; b=CJiPXMTQ8CKFfD
	Z62O4BrpXbxZwIihHgf08Eyt5FXbM5E6FPc87B9UQMQuWFRhdd+WNx2PbKL9lqR0MVyaGFv2R1cjy
	h7gn55Ukgcmm+Yd5EHT9bdJGVKrxTO/an2WNfph028FL1CP/coKlly63oIS9ce65+vJC7Hw/2d1QS
	0fsjqO5WbSBbGQ9ScS4Eul1sUflD3trXITlcBEAd6CKai5V5ccqNGoNv7Q5U0PWTRSYyxu2utzvbK
	/nkQJd89j8t8GB+LLmn7v8ewyI9nZ+4gPXOvqa/jqk8OuL2xfNfQtNH54ARMrVBoFWGaTNmwUrJAg
	fneAhsCBV1jPewvVjW5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5fI-0091v3-FQ; Tue, 27 Sep 2022 08:10:04 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Wj-008xv3-8d
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 08:01:15 +0000
Received: by mail-wr1-x42b.google.com with SMTP id l18so1712911wrw.9
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 01:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=k3Uie5pxkgijukjmsxCrYCPs7jEPbo3aKWq5eUqCVmA=;
        b=atrB2K6hZteWnvzbPkbVoOb6uaiXmiR3AyWDp/KoYcRjXAeCmkNgkEscK/WeMsu4B/
         DbnQLJ7+Atl/C9djjI/Z4TBfY33e67mCqc7PoP65Ry1dATFWrYzhG16let04hYYRE1C4
         552SG6rUw2D9uWXZSWWgkVMWsSciEpfO2yArasPWPYahvhA+IUHG2Ys2Sy2T/MM0VwzJ
         1u8vTYqO56bCWIqp0vZSjtPUGicxle0VpFrkLicOXJKZoPr8j9aQBvkJod6gdLTLJjYB
         Sdf6tyirbY/0u5uAqqPJp9tEY9/GS7ec4NTkyzr2mKUhrnTdMKOrkJIoTpTmsbQ0wfy9
         i2YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=k3Uie5pxkgijukjmsxCrYCPs7jEPbo3aKWq5eUqCVmA=;
        b=H6upKJ8EbAD/OXso5G8JmtJ3HXlVJ3SnSjEdLMNiPf9pIuT/u4X+S/5hZy1BZn4JOg
         YZ+XbHx4FZhoPNywcBYdbweplpk0OLsYelXZwxEDdfc+1dwSxUDTumcloMCZtxYcfccT
         ROAl6ZohzRH66miY1PCumZSV+t3Zz9vYKUwVUWNCoENqV/kHk8+43JSMO5OomXCrGDNG
         QUtG8vWzDX4nkG1N+hGCW4VXAMprZkcz6w5whW+pOzpWLLccvZZ2nniTYrrO2Cg3KYye
         qRZRZ7dNO+6mywHtBEbEocdalfcK55CwGoOYqxZ2UjdJg9DGe0ZHBcex1QXREznFc64z
         4FXA==
X-Gm-Message-State: ACrzQf3ttmhWd1xTmvsTM5MEJrjkHyMYM7mFzxz6oOlhYVX/gPvxxAbX
	7Oi/5WCiiBtcJUBxAdxHeXZtfg==
X-Google-Smtp-Source: AMsMyM7Nsk7GUy0Dn+s5dXjE9WoMQoVO5BreYgsM9yVfqjD93GEr6OzmJ9TbwoNWDiPStSCfSr/OMA==
X-Received: by 2002:a5d:6484:0:b0:226:dd0e:b09c with SMTP id o4-20020a5d6484000000b00226dd0eb09cmr16103248wri.388.1664265671924;
        Tue, 27 Sep 2022 01:01:11 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id p4-20020a1c5444000000b003a5c7a942edsm13357199wmi.28.2022.09.27.01.01.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 01:01:11 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	davem@davemloft.net,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH RFT 5/5] ARM64: dts: rk3568: add crypto node
Date: Tue, 27 Sep 2022 08:00:48 +0000
Message-Id: <20220927080048.3151911-6-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927080048.3151911-1-clabbe@baylibre.com>
References: <20220927080048.3151911-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_010113_451982_FE00840F 
X-CRM114-Status: UNSURE (   9.55  )
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

The rk3568 has a crypto IP handled by the rk3588 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index ba67b58f05b7..62432297f234 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -211,6 +211,20 @@ gmac0_mtl_tx_setup: tx-queues-config {
 		};
 	};
 
+	crypto: crypto@fe380000 {
+		compatible = "rockchip,rk3568-crypto";
+		reg = <0x0 0xfe380000 0x0 0x2000>;
+		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_CRYPTO_NS>, <&cru HCLK_CRYPTO_NS>,
+			 <&cru CLK_CRYPTO_NS_CORE>, <&cru CLK_CRYPTO_NS_PKA>;
+		clock-names = "aclk", "hclk", "sclk", "pka";
+		resets = <&cru SRST_CRYPTO_NS_CORE>, <&cru SRST_A_CRYPTO_NS>,
+			<&cru SRST_H_CRYPTO_NS>, <&cru SRST_CRYPTO_NS_RNG>,
+			<&cru SRST_CRYPTO_NS_PKA>;
+		reset-names = "core", "a", "h", "rng,", "pka";
+		status = "okay";
+	};
+
 	combphy0: phy@fe820000 {
 		compatible = "rockchip,rk3568-naneng-combphy";
 		reg = <0x0 0xfe820000 0x0 0x100>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
