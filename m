Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94576ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 02:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Om4oVAd7DLTVUomLorvmKn39Xp5Pp2o4pbbhNPdH1ms=; b=ZQvveZXFEUoQy6
	zDe3dplX2rCAgwACnH/HCnYC9kNrjRQZK6/tfd465hbnlwHgpeVJDRBDTSgJ246EPQ37yAeNdH/lU
	JjNBUxwIK9SrfBMh9fuoQ8TZdd9esQtZZYrw2f8+h0r/vpPiDNKI2AkoNqPpUlCZN1wGHipcp4sFj
	WBYmhu0XbERSPpfUpYhnswWrcPolRxG3Wj2KhaRVE+YuRVXKxh5ypNhhZURKlXyIV1bwdc4JQ++TS
	E9Xyb7rn7Z+2s2mKA7eyzAKNG1u9dbSiyLIg/rwsXS6xJncc9olbWeQ0odkX4CL0Be6yVkT4O7i5q
	hg2/o1zSqZZ4kBxtOLuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYeZT-00FZFz-Oc; Thu, 15 Sep 2022 02:25:43 +0000
Received: from mail-il1-x129.google.com ([2607:f8b0:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYeZ9-00FYwY-6O; Thu, 15 Sep 2022 02:25:24 +0000
Received: by mail-il1-x129.google.com with SMTP id a9so9002129ilh.1;
        Wed, 14 Sep 2022 19:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=2NoktbIiSlqGVXDfDsvBOUaqmFnhtIoGi/ubnjmPmw0=;
        b=n9+8j3Z+QrBs2/iOLNGP3f7ckPoQE6B8lPiep7Ltd6EquJAkn3H6+p0+c6TqYHBwRL
         nLTHYLfS/yUxT6MB5hERxmRNUW9cXGEqE1IhBatA6EaavxjGtPWNAvyF51A+hM1Ahrh7
         TNX/xc1qIwNfk4DwZkfnR/8yUpZ4rgpE09UlA5ZSKgQjsAMH76KvIJkfomlt1edO09XG
         Bw24kzlMEiBIuUZVfTEms/+Q0DcogO9u5YcKh9K2joIgTGVgbpkMz2EZqw5B3odnJBpL
         x2dMn9HG2JC50Ym+7vmeP6FnoYqlQYfA83NBAFvPgOfScbwV8XPpZ3pje+lnl1+o3ACs
         2kbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=2NoktbIiSlqGVXDfDsvBOUaqmFnhtIoGi/ubnjmPmw0=;
        b=mLtx3vJtpRUKcv7XY54X05p96flWiQSxtDV/NrIIR20d0+Pe6Pkw5saQYB8QyecpfD
         q+Qhwv9ESI/+RivzVgW+5gJtmrZQ7lykCku+kyg3rIjEAnPeqYzzaQ2v0nPtGOfXIgmN
         DVaBabrEi7Hz+6JeFG5Ko+jnv4Zf0Ra9oWDLSFSSTT0Q02X6xUb9ODNrnpWUt44gTnxx
         qwwnmz/TgcJRjCwtwUwM3dt73mQTunBejvgf+zHv1iH2o6WvG8Sp+mnUJqDqoTIb1yfO
         EZEu8Q/mTVdZaN28N0qzAyH+SFWghOWPlooqk6kroqLOdnoROpp/1BDQEeCXfMADn13N
         D8Ng==
X-Gm-Message-State: ACgBeo1wmSNRCa96XcAB6EZ6nQyhSNXYnSRxYRF3bTw5sUC/+gLTKY7Q
	mWxI/tZvQcfRwBEhQiOyDl1F6a+layQejH7j
X-Google-Smtp-Source: AA6agR4CbqdmJiT/nd3Gj9BxjZIEKPlErkGT+ql9DX2sJXmdOKYe8eBLeM6QlkOFEEHbAEpEdq6dgg==
X-Received: by 2002:a05:6e02:508:b0:2eb:543:bd66 with SMTP id d8-20020a056e02050800b002eb0543bd66mr16094275ils.207.1663208719754;
        Wed, 14 Sep 2022 19:25:19 -0700 (PDT)
Received: from localhost.localdomain (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
        by smtp.googlemail.com with ESMTPSA id g3-20020a056602072300b006a11760aebbsm7238461iox.36.2022.09.14.19.25.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 19:25:19 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3399: Add NanoPi R4S Enterprise Edition
Date: Thu, 15 Sep 2022 10:25:11 +0800
Message-Id: <20220915022511.4267-2-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220915022511.4267-1-cnsztl@gmail.com>
References: <20220911040628.13774-1-cnsztl@gmail.com>
 <20220915022511.4267-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_192523_257498_C21A9B01 
X-CRM114-Status: GOOD (  13.76  )
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

The only diffrence against the standrard edition is that the enterprise
one has a built-in EEPROM chip which stores a globally unique MAC address.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../rockchip/rk3399-nanopi-r4s-enterprise.dts | 29 +++++++++++++++++++
 2 files changed, 30 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s-enterprise.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index ef79a672804a..04562f8b10ac 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -40,6 +40,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-neo4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-r4s.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-r4s-enterprise.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-orangepi.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-pinebook-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s-enterprise.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s-enterprise.dts
new file mode 100644
index 000000000000..a23d11ca0eb6
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s-enterprise.dts
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+#include "rk3399-nanopi-r4s.dts"
+
+/ {
+	model = "FriendlyElec NanoPi R4S Enterprise Edition";
+	compatible = "friendlyarm,nanopi-r4s-enterprise", "rockchip,rk3399";
+};
+
+&gmac {
+	nvmem-cells = <&mac_address>;
+	nvmem-cell-names = "mac-address";
+};
+
+&i2c2 {
+	eeprom@51 {
+		compatible = "microchip,24c02", "atmel,24c02";
+		reg = <0x51>;
+		pagesize = <16>;
+		size = <256>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		mac_address: mac-address@fa {
+			reg = <0xfa 0x06>;
+		};
+	};
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
