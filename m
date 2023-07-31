Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C08EC001DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 10:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQpizjphJDmLLIaGcLwz5T5JbaFN1nUtUdpJjvY175E=; b=a674kRhvpWzf/0
	lF1zyBxNQ+WNULqfWz7fBhnweGBxjkkVgTlwojgcui5nCWVWy/+Md6AituzoPtfDH5sMVJ6c0HbYO
	R4/nnG+a7iaHtZPZFHkZk4oLrv4v6Xsw/5krq4vmi4l9kfD59Xz0zxNAyOuxVPvRjUW8LSXYs1O/N
	PD90UVCSp9yxgvW1yve6Z+l5/ucq443OHfuusxPn8jspzb7YqhIbEem3i+YI28ss+T8xPK+YL85uU
	5oL3DSNDKydlWhvfpiSBbda3XJEIzFnwBT7Jj1dHEO+gNCbCBinO/qioiJADNVgXMVEfwp88AwZR1
	JbP9O7Oa4a1HdNbfVgtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQGt-00F7fk-2r;
	Mon, 31 Jul 2023 10:37:03 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQGD-00F725-0p
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 10:36:22 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-686fc0d3c92so2542372b3a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 03:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799781; x=1691404581;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lr/IRa0Gy3cXDJfJQ3C/islU29JYFF9cRXQo0YY1xm8=;
        b=yJ4OAXudxqBZFhr/OyaJCKK4Fpkr1LIhOPnfV6fQsYdVGfxWuqpmW9wYrIJxU9WSv0
         7cbp4xvw/8YMZrBMS9VUZNTL2Zo5AwcIlW3wnS8JVcvkdBISE/GAYfQ1MH3dalhQM2vT
         LWOqCprBIxP64zzmdEBECGxw5J9ZT7az3nIAnbSrA++/tV8BrASy+tO9xuMQt/JA1qY8
         2itpno2Nmn5RS/20BJt1E8YZwlLhz/B1zs92OoA6FJN5466akXrJWO+09UwQprYeaKHe
         3xPHjij63xrtEvBuS/w8enuvScep0c2A4lByrw+n9N9gCl7ccNRCNZfM9IT90n9nQFkR
         PaNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799781; x=1691404581;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lr/IRa0Gy3cXDJfJQ3C/islU29JYFF9cRXQo0YY1xm8=;
        b=X1sZyK9h8MFkOmvDa7kmadCvybwilRPeVVBXXsNOT3Ey5wjFg5FjzA9806Jlje2Bv7
         xoGYKMr45kZU746zxkpBWZoRLTNKTrJ0bv/2efihc8vOyJJC3wwZU77eUGh7kKrX4/in
         wkPNolcvJCorGp8F+4j5b9QOTSJ1qXarA1kRvP8SfKcNRDb+Glt81bYddAQ+49B42syG
         gJDjrl/Fky00Uf8/HDfeyqMtqZcqNPI10TZFu561Uc2YktkWFSSxXEVUtNgOajGFDr7X
         y6G2BTwQ/fd+ZBjW8kdYqgRwQqybtBmcLsXPfZGx/ntTzl+P9w1ZLiqd2imhJRtxn4do
         yH3A==
X-Gm-Message-State: ABy/qLZ5I9l6MVpdrY01TJJv/89vnJLNJWKEePwpDWg2HIl2DjmAZI5o
	OQ+AdAPNEFChGQDHJPTK+CQ9PA==
X-Google-Smtp-Source: APBJJlFRxY1Cy24Y086tRrFk21t6zff+ANEgQENQZLIdnmYNVKsJ+PFWvKSp6WojMQ2IOrtA7Rxe0g==
X-Received: by 2002:a05:6a00:2296:b0:687:1be4:46e7 with SMTP id f22-20020a056a00229600b006871be446e7mr8645601pfe.9.1690799780782;
        Mon, 31 Jul 2023 03:36:20 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:20 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 10/13] ARM: dts: rv1126: Drop EMMC_RSTN for edgeble-neu2
Date: Mon, 31 Jul 2023 16:05:15 +0530
Message-Id: <20230731103518.2906147-11-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_033621_310984_40F19426 
X-CRM114-Status: GOOD (  12.28  )
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

EMMC_RSTN GPIO1_A3 is connected to FSPI_CLK in Edgeble Neu2
board.

So, drop the same GPIO pin from eMMC.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
index cc64ba4be344..e3e5752fd6b7 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
@@ -52,7 +52,7 @@ &emmc {
 	bus-width = <8>;
 	non-removable;
 	pinctrl-names = "default";
-	pinctrl-0 = <&emmc_bus8 &emmc_cmd &emmc_clk &emmc_rstnout>;
+	pinctrl-0 = <&emmc_bus8 &emmc_cmd &emmc_clk>;
 	rockchip,default-sample-phase = <90>;
 	vmmc-supply = <&vcc_3v3>;
 	vqmmc-supply = <&vccio_flash>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
