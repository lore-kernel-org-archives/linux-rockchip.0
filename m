Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 568A0C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 16:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fk6WxTXnvE4zkj7GghC2GBdWtyaFsierF3OPvi+I8dk=; b=4CkEbC6JR8ff6n
	Tm49F5mLTdbxu5x3+a/iekIts+d/jgR/HaFPkyOZMZoyoUTNLEV5lH58/2qWmh/iUbkFA6sOWcWWY
	JXl9RxmCksEK5nX9AMJgE8eSXsCFAfaJpv8VZdpHIutOBA8E3n+E+3X3k0sxmaBJmwzWw1cR+8PxI
	SdgLWEYcqZydOyOLQ40gIKgQULgWUE9x8z3sQ+5vkhs96hW9vl4nuvzvo/RtdxCpktm6QXR0h5X8k
	GokrKV5DomdlB+LeU9OrtIDgExGSavbfS6RQx8B95Jn86973j4ryAxwrYgkNznN9iM0jY9BarVABv
	W0m5qLfBzubSGOw9MhxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otszt-006csQ-J8; Sat, 12 Nov 2022 16:04:45 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otsze-006cjt-K4; Sat, 12 Nov 2022 16:04:31 +0000
Received: by mail-wm1-x331.google.com with SMTP id o30so4588782wms.2;
        Sat, 12 Nov 2022 08:04:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6vGKGpKWDMzYcbAUuUDkHFy/CbDqDYWCKkXDWqHYnr4=;
        b=IYzQLachq1UeQWjOp9MP41sPq/3P3dn1wJO8S2uJtaVvKsv+P2kyhjojqOJFWDXvgV
         BtcfWQHgRiEWQqayeE55fqM5mnUqNHMrUr+CRVvyWDJPK3maDec7v6B8At7M/7/Mx395
         giiE9mU2YfW1ZRCVpnpM8qyxTWzQucIluHA1L6UuLy8vxda1s3BSCYCcwD3yQPgiyYaQ
         E7s0he/Uoxs8RRQylD/qEVbKqXW5DnzxTN8cjLNWoTtP5QnwQpaUI5lsgI12vN+Bev08
         y8+pvPVRH2xOLTMJZ6ErHdQSW+SBYNhoN8gf8Gas+3JtCdBnvuuH10ky7wza2iZjsAfP
         KhHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6vGKGpKWDMzYcbAUuUDkHFy/CbDqDYWCKkXDWqHYnr4=;
        b=kDYFGud72F2FRpSkT06JhQSvLWhpT5L+HEiXIMHUPOg0X1UsREplbW1KzsO2gBolUl
         To9WQYEbyKj+TfMT7MxC2dan09I1oXEvjrstMcTj7utSnKPTdgvSmrpjtWZVXAHL9vwo
         Ldzl1FyP0IwWVFQ97BO4/wtUu33Hrbd8mcbiWj/GrC2GEKJh/o2GawbiLS7jMmLSsEDC
         XVdpTQmEpwwSXRwxxXrPInKI/EZ02hcOd621+QpBDyDYjAxKqaS0RSj4AZCBNeZ7pROr
         78g1ILiSJVdFVaGPOBxysaT9rYbO6+kc5qhV3T6OifbMZqB4GBuqkDG3neL6w1aFT2gt
         hE2A==
X-Gm-Message-State: ANoB5plxoyqXGVvX7wDQXVcK4pHy7qLR4mEc5RLEiykCiEM9NhMBNdLn
	Waiaxlz8/8mg8ubGPQzGdLg=
X-Google-Smtp-Source: AA0mqf7jKhJFAniMUxTPxswRa0WCU2lg7yLrMCY5yBd8xY2Xj5I1NFyoKqV/c20KSClTFveEa7svBQ==
X-Received: by 2002:a7b:c003:0:b0:3b4:abda:8b54 with SMTP id c3-20020a7bc003000000b003b4abda8b54mr4290977wmb.82.1668269067876;
        Sat, 12 Nov 2022 08:04:27 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id iv16-20020a05600c549000b003cf87623c16sm14605752wmb.4.2022.11.12.08.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 08:04:26 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/6] arm64: dts: rockchip: Enable GPU on SOQuartz CM4
Date: Sat, 12 Nov 2022 17:03:58 +0100
Message-Id: <20221112160404.70868-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221112160404.70868-1-frattaroli.nicolas@gmail.com>
References: <20221112160404.70868-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_080430_680523_AEEED71A 
X-CRM114-Status: UNSURE (   9.93  )
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

This enables the Mali-G52 GPU on the SOQuartz CM4 module.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index 5bcd4be32964..6e99f049501c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -143,6 +143,11 @@ &gmac1m0_clkinout
 	status = "disabled";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
