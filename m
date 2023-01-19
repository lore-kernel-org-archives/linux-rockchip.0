Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46412C00A5A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jan 2023 12:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SSNbXhI5f/XnuMReCTwY5hHmlzSTrPXiT3qA4V5utF4=; b=vgvL0Rkz59hOyz
	8w1v93I93cn9f3bi56EC6xpnl8nUca2QkLk62b9HZlDeU+4o4RBQ0CzFfJ5N12CUlp6+zBg+6pwT1
	Ari2sdeEalbX3Tmw17dkUjZ/vvfduwj8aSQ06x1eJlBmZ9F4dVsownGFRWMskQL2/20rbMoCUh348
	yubpQ43Jvw5LuiRc7oGq2twpY5tX8cVMEhzbzrW2vn6cJKlm376Xn4BGgP7ZQrFV4bHQvyvLrspUp
	aZ8SvLNfg7Uiro9GU4cjEZFo5D2jzKjRaU+5E5aZttW0PFSAcbTuwyO7SQctQ5pGyrw7I86n6EZnS
	u7cQPJiYNMxfxHjyk6TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIUJf-004r9F-5c; Thu, 19 Jan 2023 12:46:51 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIUJU-004r5v-QG
	for linux-rockchip@lists.infradead.org; Thu, 19 Jan 2023 12:46:42 +0000
Received: by mail-wr1-x429.google.com with SMTP id b5so1792893wrn.0
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jan 2023 04:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IOwo8LF5UioxJqhtkgv5uSSQrAdJemw90Lq8Kb8EeFo=;
        b=oY0Lrthxd4+vVcPlkK09ziRrRgl11/+NebLTHAxVLMXBB2ziZ1kB1T8lRnywftRkOs
         /vNsLRvx0MCi99iQx+LmgKuigteuSa9CDLMppHb3lnBry/sif99j/3ChEBLCB8pJG9Pd
         G2M0If6qdLf5lD0YATxj0gNaY7nEgn0/l4Hx9BmUsyz3ClyLpoJb4bDFKRNxfR8ku0dc
         riZbhwIcs98qvkHsUhNYdluMfbwbi6vxa+URMxNv4BS9VHkylx8i4tj9nAyxlgYvBgfx
         ebeQDuCl/NUDz7ns10DwJNgpaogsWpjDhtCYGS8IMy3bJxfhOF5luCO/bOd1HX9PVjwT
         RHFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IOwo8LF5UioxJqhtkgv5uSSQrAdJemw90Lq8Kb8EeFo=;
        b=Wrbp1fM2Qcrpu1msSWAvCZWVdosmJIdumxiEJEjuGKE7kPat9vA6+TbdcpV/wDtOp4
         YlwGodXAjBJpTVNcKw+i+ZuJuH6xV8NXVyo7YP2xN2E3ulzrWXi3g2rEJGtrol4iNWtl
         9MtdEUIV2mFhfEYfuy4gmagB+EFmPvFboRP2BrccAIl9aadcNK9Dzn31KMhm6VAMc7H9
         0B/dSL6VHtvMK3Ya6qklW8CKKVMZOmOmpoLiYu86E2W/xocW4cscZWJi2UJHHE7BsvGq
         QqT7Yf8S8xeddkZhb1A84qU9Dv057eDDyn0sW+EZpi28G/j5pnBC8lxac/0OqMB26E1x
         TyuA==
X-Gm-Message-State: AFqh2kq5oMhtUlOsqtvpxfNg86yqncNxz9lgusDqPDhXhYcwgRvI0uyL
	Y5rTuZt9Yfz8Urxvr/6DN4WBnA==
X-Google-Smtp-Source: AMrXdXs3cahP4mQWRJh7rjtkg/wq952cF8AzYtCROCEUoJTTFAa9fHarynjDeD8CeKnZZ4vaaZM4xQ==
X-Received: by 2002:a05:6000:1708:b0:2bd:daf1:9e4c with SMTP id n8-20020a056000170800b002bddaf19e4cmr10737273wrc.43.1674132394400;
        Thu, 19 Jan 2023 04:46:34 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o15-20020a5d62cf000000b002bbedd60a9asm27918175wrv.77.2023.01.19.04.46.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 04:46:34 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: rockchip: align rk3399 DMC OPP table with bindings
Date: Thu, 19 Jan 2023 13:46:31 +0100
Message-Id: <20230119124631.91080-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_044640_885359_18276303 
X-CRM114-Status: GOOD (  10.29  )
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

Bindings expect certain pattern for OPP table node name and underscores
are not allowed:

  rk3399-rock-pi-4a-plus.dtb: dmc_opp_table: $nodename:0: 'dmc_opp_table' does not match '^opp-table(-[a-z0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
index 6e29e74f6fc6..783120e9cebe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
@@ -111,7 +111,7 @@ opp05 {
 		};
 	};
 
-	dmc_opp_table: dmc_opp_table {
+	dmc_opp_table: opp-table-3 {
 		compatible = "operating-points-v2";
 
 		opp00 {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
