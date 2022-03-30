Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D09CC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 12:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1M0BVniOyeHnL/XkW+x1iYuxJAlgl+/hxJ7vkzwet8U=; b=kIPV/H2xsul2Aq
	1oCSc+c+h8u5PryqL/nVZjW/mdZkrm/zlXN6YnK09Jqrewin0x8F1M7UjvaqGt7YxTUmKxtVy8C4v
	OiAQLlyiTyU1HlzMwHf6ZBpP/EK4mFnTum/bbe4ZwmZdToUaBYSbCa7poga4t5ClkH+47pSNf9g4U
	1v5lnele/IX86WK3YYjSa4327vCghyzpMvRqgc9kwO8j80DymupLwnJurWTN+cKyB6tzhIE7DCf1C
	0ZjgPspVCjCppXIx/2dqYpE8nnp+TabMaKQ1iPX/iXrLP2g1eEeK4Cm0FBk7kOb1xSm7L+OQTTVbf
	S+nIt+yh+9hhY6quZlOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZX1X-00FWFj-L8; Wed, 30 Mar 2022 12:02:03 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZWoq-00FPmx-VN; Wed, 30 Mar 2022 11:48:59 +0000
Received: by mail-ej1-x632.google.com with SMTP id r13so40967575ejd.5;
 Wed, 30 Mar 2022 04:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H5VTVLY2z6i13dvk5wtcwbzRR2pZJCvwJwdziJVAOMQ=;
 b=HCuend+++KI5ObYAh+8oGZAuDnrsOdDn31plrdpo+Fo3t+SXVujiaqqqU0MKgsq87H
 pHBc9cLbcal7y/FrS2eKcC3UJcA4YbCxtd1qqWKu/MxLiV09sKnz8GA6wy+zojN9+qdl
 9X7RAOIWpv0KDT28qgzszlANqnPO8kyR1qWdms6+iiLhiP8r/fObG/zj079XptDkTJP6
 uSHc1hiHqfiBWa9ICHDT8AvNYMlY2VeW2NE9M0IMexANL8oveZG0eeVHDK1VEsN2gPSv
 WpSpcvLyl049ozh7gqbu9t5c8WbbAYqB+PnY2dktwzYB7a4/AqFp+dg8jizIbBrmhB+3
 Jagg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H5VTVLY2z6i13dvk5wtcwbzRR2pZJCvwJwdziJVAOMQ=;
 b=2pKc58PsrNNct3Eo3fiC75ydoCeUTOZtYTS7KEUtoCMhbXq9gMICtBkSg9z3gpPolP
 10NL6iZZaoucNBvYBv+PxlRh/SRP5xQuO9MAycJpwwVXMB0Sjxcnv2dZGhsy2fLiUrgA
 qceEhxtd4b4o/iU9FsHXNAEUSDRFAt2pKUEva9CDA1AWDNLSdnjEWswHHoDWqTPcyowK
 beHCXai50AELrTNycmad5k3QivWAz78LhSzoPGRyXj2uK68UsA5MXqh9QLsjE2psRU7n
 8gyjMIs9rD5LqzAM0EZy7hihzxiqgkPP1BWtvvr1v+eqIo8wDuaQPTeu5A2JjJgSuZ6J
 ha3Q==
X-Gm-Message-State: AOAM533UnLPZeSlqKdkmV3faWRcNLcq0XjqOeBo+fjm7I/v+i+/qSg09
 Tl27t6zh1qnyQK21qxfzGEQ=
X-Google-Smtp-Source: ABdhPJw/Xl9g3IPsAOoM+4M6ZWl9RbIh1DIkd9VFUCU3+dZWBzlI38COLdIRHgd0iJ07HnsdsJadeg==
X-Received: by 2002:a17:907:8690:b0:6da:8436:2b94 with SMTP id
 qa16-20020a170907869000b006da84362b94mr39851667ejc.33.1648640934543; 
 Wed, 30 Mar 2022 04:48:54 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 g9-20020aa7c849000000b00412fc6bf26dsm9934442edt.80.2022.03.30.04.48.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Mar 2022 04:48:54 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/3] ARM: dts: rockchip: add clocks property to cru node
 rk3036
Date: Wed, 30 Mar 2022 13:48:46 +0200
Message-Id: <20220330114847.18633-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220330114847.18633-1-jbx6244@gmail.com>
References: <20220330114847.18633-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_044857_092297_6504D3C9 
X-CRM114-Status: GOOD (  10.72  )
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

Add clocks and clock-names to the rk3036 cru node, because
the device has to have at least one input clock.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index ba2b8891b..3894b8d2e 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -330,6 +330,8 @@
 	cru: clock-controller@20000000 {
 		compatible = "rockchip,rk3036-cru";
 		reg = <0x20000000 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
