Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A13AC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7uhtMuphMh1NcLiHo1TBVoBBWhwxitlRlvVkomIJdIQ=; b=e211It0KluoPUG
	OEAOusM08mUEe8FVRslx95N6JNvAfohSeYPhuAPoDqlQh+X4NM7EgxAczkaBoWRYvAScQSrLK+YRL
	WTRUorPEoPWvX2joBRWJxVLUoLMQn5Av2tAkTht2nB0j7W6I4jUzFddJjIaeytuFrPhiFy86dTXA2
	kp/e8oSE9eSProuRJTNXaMHeX/5/tReEf2nlyooFrlqfcRC+Gx3uCA+eaQz6mrb4kHMBO9rZsj6qL
	AG40YA7RC+L3US/idX4cQ2vfPF0zNlTXpaQavcqeNEhopZpA/x+n81lvOvgQ60xIduumVenoEZIRl
	WnWCSxojTqzUpoiSQP8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNzG-007DOC-17; Fri, 01 Apr 2022 20:35:14 +0000
Received: from mail-wm1-f53.google.com ([209.85.128.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNjA-0075AZ-Q0
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:39 +0000
Received: by mail-wm1-f53.google.com with SMTP id p189so2424005wmp.3
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Te9hYO9YZcBZwbAvVyltxpv/8oWnq+ebPbFSU+ms3XE=;
 b=kYaQkzXlrUl/GeXdh2ja+IJnTXgTt9vr39v0ACWppltl2of4ARaWH5Sdc7lA6+G8It
 +1l+tqqE4lLFy52g4PSpAXb21P3P+gSKKhXzOKvU0v3PRLXcp+ICJ41tFTtSWrE4HfWJ
 P0hD5tgea7xJKJvZvAga4d01UQsjKxFQjeki4LGXOIQiq/F31eeUXBuiC2yMUiSkYf6Y
 g6SqEzI1Ara4MAPQZjfeU5HsuC0mhRc8gsr87BQ3a7FD1PEi3PWL8olqr+0Xoq6Gc+sm
 /7CbRNuW+5FojFEHQ7UVF/XjR5eLgd0mSmIw/qq6RAs0zfESJMC9N4k5awwaj3GznQ6M
 heGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Te9hYO9YZcBZwbAvVyltxpv/8oWnq+ebPbFSU+ms3XE=;
 b=OF0RsK+SlM6DiZBDgWVRMAamBsbAKp8xu2eBD9/Gs7UDdJA7DR17ivqAcWjV+xjFPE
 Ebs2BT3H6igfNYnVnw68h2ipcOY/ii3o21+exDWn8JYTt1oYNHz1xJT/7/MDu4ZTOXgu
 edv+A7mZigW6Y9r2+aN7RwvIRBs0mFtJkF5Izr3LLwm415nRRVghBDozc1R//FA0fNN+
 Grj8dvmf3ON1VUq6raaSokW1V21XIdVpUh0RljOz/KokhrK2m3rw307bjPssbMKR3eXG
 7nyv4nWD/4Z5bXKo7AamX/I/Ft9rHUTSZArZA9eQEda9Fmyv600+y2zuTFeXy3i7/gBJ
 UOpw==
X-Gm-Message-State: AOAM533ObjSamZZqMx4G7rDERoRt6C0GhVuu27BULatD4MbTEYCZg7jz
 Eui6HURnl+QbyKOUiz/IvCBncg==
X-Google-Smtp-Source: ABdhPJxdHOjOzDXGrlocz4uXluHwgPsZ16qcP0nDaXk1Xo6D0gpcFlPR+Qz9YjXxabmjgLAGrxk/Fg==
X-Received: by 2002:a05:600c:510e:b0:38e:346f:8a46 with SMTP id
 o14-20020a05600c510e00b0038e346f8a46mr9870650wms.153.1648844313554; 
 Fri, 01 Apr 2022 13:18:33 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:33 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 31/33] arm64: dts: rockchip: add rk3328 crypto node
Date: Fri,  1 Apr 2022 20:18:02 +0000
Message-Id: <20220401201804.2867154-32-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131836_924962_9F24CC7D 
X-CRM114-Status: GOOD (  10.01  )
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
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
