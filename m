Return-Path: <SRS0=3pYS=JO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02A0FC433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:31:01 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7E3F5610A6
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:31:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7E3F5610A6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pS7QjZpedK0KzTtSxIZi9mBUJXeIdORdvWK/fapxp4M=; b=be9I/0diugTjW6ZIL2Wt/3/6zc
	5J3jIml7Cxou247nVgjojA/gjfRMwp4jY/Is+1y2u0adyjWybIag+tBPHVYAeq1mo9yJV4yfgQcK8
	nVTEnJ8nA45g6Jqo3zsFxNVH6VOES03cHqbRKo+um6oF+kVvBOA7iOi+t0Ghe7kRdDZBj09LuLVLt
	O0OL/xzUkZ2/s+zRW0ExDIX8u3xmOHSwUsaQpWK5ef8K2Sj9yF37FFnYKGmbsrnb79a22ygm5EKuG
	sirIZOGLefr4iA2r1ONBZSnR3XVXHI13Mj+8UYsN1NFoRHnACo42OPP7O2cb0a2shQUKONMRxiyQx
	7I6GX2wg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXjA5-0058XE-8r; Sat, 17 Apr 2021 11:30:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9M-0058Mc-1v; Sat, 17 Apr 2021 11:30:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=0+GJVl5A79GqQ5LebjTNhcSfSUHslIcyCgOWie7UI0c=; b=lDn7hq4iIvipPimUd1drXvEslc
 qSk6jDuCae3xdmXYnpRI5ZhiAHKp17bPgkjP8fbECD0CehiaHgF+Jz/WmD6zYSRVq3t3expBXHCKz
 /lrtPqeKwbMJUZwjTACCyvCA1hpqkb5GlpzOcdCB/8PUrcJM+zfgI342glPE8zZyxdY3/z9A6udf9
 1UNUBPxzd19/BhpvBHxbWazmeBIhaZN6Wrd98vXF1/8C3rqfBbm8igXcPrY67v1pP8OdazXjEp7B9
 tDqxRVifDZvraxQTOcRV26aoXh/JtdqHhugwA1HX6kpu8Wyr7EN32OLcytHavguANOb9vXJlIla1s
 7hu17Tmw==;
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9H-00A0Au-Dv; Sat, 17 Apr 2021 11:30:06 +0000
Received: by mail-ej1-x62b.google.com with SMTP id e14so45809009ejz.11;
 Sat, 17 Apr 2021 04:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0+GJVl5A79GqQ5LebjTNhcSfSUHslIcyCgOWie7UI0c=;
 b=mI7B55bRImlRSl0jtkGMQ6TQ3X4RL5Xpb6VEyC7uOX+zN9Lo+LSmoA5FRgURwlog8K
 WDEwpUSxGODYTC32RxOouVkLnR+XQRj0kiTO07X0FkwWpNy0yphAoK2EtNTRdn07I1I2
 ZXSi1yn/yKtZYSUD+Lsx7BzsOuwPvysnkickKN6UxK0wdcVSiDQkY1uT4hpj6EPjYdLI
 Ufw8dMAfi+nR3dV6fuYkA/sWRsFh6diFSwcj43Ss7O8B0OSWD2tMbmVnbGXPHJFVWXw+
 XM8mxAhHye9xfkM4kfU+Z40xnpEirr5Fu+vMVxhWWGYRvbM5nx7Ub3M1zR6l+zn+q2fo
 bLYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0+GJVl5A79GqQ5LebjTNhcSfSUHslIcyCgOWie7UI0c=;
 b=T+q5k1CWOgamD+ctx33UiHbU+ADA5NljUcI+z7xJU7BNVbSRyM+sAOpA9CZKP3D7qo
 /FizlHH1f9VbsTZ5iGW7in3yczfAXTSllVFIokGQQzgAG8vLJl6eCuLJa4xgtxNpTrDo
 JyxqKH7XqUs/019uUNIOQG/r9pmnOD5NXvV5N99yQqU3wdXZqNQUB9DL+6PUPtJBRK9f
 LpMChIc5jNua6x/bR04ee0uLCISZGu0MFx8mWlvbTU8dsq6pyLNoQAVRejrDDhNZomYg
 voJdXZFJ1cXdo734N6pjheyspYOMwbIcOCSGnJWJUH81ipbnYqrH+G43N2Mmkq4iMVdx
 Ucgg==
X-Gm-Message-State: AOAM531dCThQCWSoNdch/YcQ3AjIUZ/0olDI1ozA9eKGps93XZ2VQBDH
 UwsYfGjNMwY2h/k+/Rs0ZWY=
X-Google-Smtp-Source: ABdhPJzDVAR8+Jst5e5xqhLNCiSCa45CaZa5X5szmQKZlsZM5q4BY0pACUM+IOZ+YE7e2/e2q0Rwqw==
X-Received: by 2002:a17:906:95cb:: with SMTP id
 n11mr13042389ejy.251.1618659001651; 
 Sat, 17 Apr 2021 04:30:01 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f20sm3022875ejw.36.2021.04.17.04.30.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Apr 2021 04:30:01 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 01/15] ARM: dts: rockchip: Fix power-controller node names
 for rk3066a
Date: Sat, 17 Apr 2021 13:29:38 +0200
Message-Id: <20210417112952.8516-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210417112952.8516-1-jbx6244@gmail.com>
References: <20210417112952.8516-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_043003_489051_7F8FCC9B 
X-CRM114-Status: GOOD (  12.22  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Elaine Zhang <zhangqing@rock-chips.com>

Use more generic names (as recommended in the device tree specification
or the binding documentation)

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changed
---
 arch/arm/boot/dts/rk3066a.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 252750c97..bbc3bff50 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -755,7 +755,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		pd_vio@RK3066_PD_VIO {
+		power-domain@RK3066_PD_VIO {
 			reg = <RK3066_PD_VIO>;
 			clocks = <&cru ACLK_LCDC0>,
 				 <&cru ACLK_LCDC1>,
@@ -782,7 +782,7 @@
 				 <&qos_rga>;
 		};
 
-		pd_video@RK3066_PD_VIDEO {
+		power-domain@RK3066_PD_VIDEO {
 			reg = <RK3066_PD_VIDEO>;
 			clocks = <&cru ACLK_VDPU>,
 				 <&cru ACLK_VEPU>,
@@ -791,7 +791,7 @@
 			pm_qos = <&qos_vpu>;
 		};
 
-		pd_gpu@RK3066_PD_GPU {
+		power-domain@RK3066_PD_GPU {
 			reg = <RK3066_PD_GPU>;
 			clocks = <&cru ACLK_GPU>;
 			pm_qos = <&qos_gpu>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
