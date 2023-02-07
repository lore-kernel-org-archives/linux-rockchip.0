Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BD5BC636CD
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Feb 2023 23:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qX/8qhBjwSf53O85Kvoodc8lg6XDNHchwU4HA2aqDQ8=; b=uFkpHZXAsNakvD
	1ypMEwl5oT1BwxuaJpKVJkTjZwavhrtFet09u4gq+30hBeSSo9Kv9XtkUd6fHMlyJ8mQSsJzo3mvy
	DSfxbQ4sK8b6wDZiCfsORoT8flOTTIiGUTW4a322BNz7Ps3R8ym/LJ/C3z8faGMR6q0Isb800CkpL
	iOHNaDfw8q0PLHqJRnQylbGCl/3i4CNOYVt8ZKfZbTM/rDYjjibR3iY4Gu5/E4mz3QXUKd2Fl6Z16
	Dk0il6sY8Ogi416r0InzKd1LbGLM22PapM0YSxurCIpPddoFs2EmRHX087KXknKhqJtOVtEB2toDo
	NNPtorJnAC/vEV9gn4lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPXh0-00Dg60-R4; Tue, 07 Feb 2023 23:48:06 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPXgr-00Dg3U-8m; Tue, 07 Feb 2023 23:47:58 +0000
Received: by mail-oi1-f175.google.com with SMTP id s66so14106498oib.7;
        Tue, 07 Feb 2023 15:47:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RL2rT8laHFrNHHzc0odSdyPcsgeRUMEPIV17VsWonL8=;
        b=3uvgUfyyfIS9rx2tKnDBiVxzHe/Ew7Nrx6LGPS+jQUofQ2Hge0NnCGKAZWlomUtKx5
         f1MQLLxNOA1HuInjx2SPV6byXYmlPd2kmOP/hr9ddBlycgc/nC6A/spJQqZJadNGPiCG
         acAGbZRASS63qzo22Nb/UYCDaNbTEMgUuxcXFih/fscc7V7YY9/9Uv5oTyrwyryA7/nM
         6ksIfLFvotsgJXVShWhSrSPzv4ovohoWBsuoBmOKpnF/a3arsHZoTkl+O5mV3wMD5mz+
         DHLUCMgrbZENjhxmrbK7wXbLs9QqPOtbYaXUu0FlmZxLcSEkHh2PdDHPhuWUcD+hGSG4
         knNQ==
X-Gm-Message-State: AO0yUKXtskxUl4mP3+MSwqoX7CliE+t44zBwM4kCmnSO80U+GBQiIWm3
	7yywCMZKwV2Bm7eaiyj+sYSE39TPLw==
X-Google-Smtp-Source: AK7set9mEgjabLC+0YQc+pN4njFP8njRI1lxOsmHIovGnu2s7Rd5IBpIQyY9cx/D1mgwiIugZh4B3A==
X-Received: by 2002:a05:6808:408c:b0:364:c9b7:bc with SMTP id db12-20020a056808408c00b00364c9b700bcmr2077193oib.56.1675813674986;
        Tue, 07 Feb 2023 15:47:54 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id v4-20020a056830140400b0068bcadcad5bsm7199442otp.57.2023.02.07.15.47.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 15:47:54 -0800 (PST)
Received: (nullmailer pid 202269 invoked by uid 1000);
	Tue, 07 Feb 2023 23:47:54 -0000
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk3399: Fix GICv3 ITS node name
Date: Tue,  7 Feb 2023 17:47:49 -0600
Message-Id: <20230207234750.202154-1-robh@kernel.org>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_154757_324827_32AC0AFD 
X-CRM114-Status: GOOD (  11.15  )
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

The GICv3 ITS is an MSI controller, therefore its node name should be
'msi-controller'.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 4391aea25984..588e1509e423 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -552,7 +552,7 @@ gic: interrupt-controller@fee00000 {
 		      <0x0 0xfff10000 0 0x10000>, /* GICH */
 		      <0x0 0xfff20000 0 0x10000>; /* GICV */
 		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH 0>;
-		its: interrupt-controller@fee20000 {
+		its: msi-controller@fee20000 {
 			compatible = "arm,gic-v3-its";
 			msi-controller;
 			#msi-cells = <1>;
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
