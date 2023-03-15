Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D08FC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 16:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RcorKAII+riFJv/709KKnwtXNq9oLHDzlcNhzIJ4lsg=; b=Szw7EGrsbgsUtK
	pz8ET05py3OmTzUrM272NMZrxFHRY2wUMvKE8yjjKjny++msusyfplV/WlMCXnCOLTZaw0xTyFR9r
	Dif3CahAvvtZ2EmdmkR7RBngBJ1x2rn3VY82DBQDxLIhEHs8Cys12+8M0xb48Q5Tu1ncAiz7bVnro
	N1PTonJx/tnDSA1P1eOVBEJuJ1kuaiQmd2orCFHwohBpeUt+ZpOwI5xm000EgFug/RTrM/KyJnAq+
	+7OFWnbTYGP8gK2luuY8lJ27CmftiXkmRjLM7zh30lMJtk5dQZtshhUt59S0Guo/jxYPJ0sco2F4F
	5QZ3rUlZdyaFiK7pC/Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcTao-00DzMb-2O;
	Wed, 15 Mar 2023 16:03:10 +0000
Received: from mail-il1-x12c.google.com ([2607:f8b0:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcTae-00DzDr-02;
	Wed, 15 Mar 2023 16:03:01 +0000
Received: by mail-il1-x12c.google.com with SMTP id r4so4618921ilt.8;
        Wed, 15 Mar 2023 09:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678896179;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sSxNm+bUgPUb4H+sIffmK7Q4FmvZdx2WQnaN/QkWhH0=;
        b=E6i4Pf9zY6+mScQK49sIfooB8l07lxCfCOl0/67fiQsVPNxIjEUMab2QtP+6nLtgDj
         UrGiuuKHMsApLL2dosmQJ5r0KOM6hkp2T6oiXXh9yfedkiIXePQw2OB0+1Vc1po8G87O
         YP6PO5fvkPObdlxiBcH8nxs+qwqM7JdH65PHllN15+rb4eKj7Q5ZvNfIrN7AV6U3bcs/
         U5FiZTUQdnFoCm7GxtLzsqj8JVvgqKruVFrUl2i9T4L9UbXkkVOAFusz45y5VLdpCULw
         4f2XAbmMUSIvqcNVgeXg088Kj5plrhr/s1FQ4bUewH6bFbT4TbMKhfFBKNzTEZE3Qn99
         pTCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678896179;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sSxNm+bUgPUb4H+sIffmK7Q4FmvZdx2WQnaN/QkWhH0=;
        b=oNy9psqfsJfFOmSlSGgfEuuA9y+k6iwtsw6JELldZfj+wSVPQbdOiobAwO3IQ1YUIo
         WSLlcxj6HSuHS8UCYSLHwfRnvDY/fGr6T1JAb7ESXxCmV0DQqYJ3D6KEq5OyP5yhooA2
         RoUsZmKHM3YTJUE7tdbYT/5SV3fCX8hDr9rZ7oMrPep99DIqtRQ1/wbVmaki7H/2yi6s
         Cq5bvcWzaXcz2D7EH2hVhvMG893tzrZAKP2Y91XNL29s+ZEa92jDgxlHkBd3TfBqcOZk
         JuEgGeghtCDJP4V2L6+Fo3sk0ca+GScEq/PcrdXx2Flnqo8OzxUZgc33+/8CIR3fbhHq
         qNbQ==
X-Gm-Message-State: AO0yUKUZ/XAvCz2Xuu2zx2mSCRO+0EGCBMV1UpYjOkwOHjf7+3yq+ZBs
	w7icMstvx52+kSdulyupjNc=
X-Google-Smtp-Source: AK7set/ewpG/bOS7jQOWCH2zYl+AJIwzSqGX6Wgh1gULbkMUBsOPPOvjhZ/GU5x36rBCCtG+VLF7Lw==
X-Received: by 2002:a05:6e02:13c5:b0:323:e84:138 with SMTP id v5-20020a056e0213c500b003230e840138mr5285958ilj.15.1678896179648;
        Wed, 15 Mar 2023 09:02:59 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id l2-20020a92d942000000b00313fa733bcasm1730725ilq.25.2023.03.15.09.02.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 09:02:59 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Andrew Powers-Holmes <aholmes@omnom.net>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Vasily Khoruzhick <anarsoul@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] arm64: dts: rockchip: enable rk809 audio codec on the NanoPi R5 series
Date: Thu, 16 Mar 2023 00:02:28 +0800
Message-Id: <20230315160228.2362-6-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230315160228.2362-1-cnsztl@gmail.com>
References: <20230315160228.2362-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_090300_053758_86B4F850 
X-CRM114-Status: GOOD (  10.71  )
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

Enable the Rockchip RK809 audio codec on the NanoPi R5 series.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 .../boot/dts/rockchip/rk3568-nanopi-r5s.dtsi      | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
index dd9a7907a1c5..8e1a118ae2e3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
@@ -35,6 +35,21 @@
 		};
 	};
 
+	rk809-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "Analog RK809";
+		simple-audio-card,mclk-fs = <256>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&rk809>;
+		};
+	};
+
 	vdd_usbc: vdd-usbc-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vdd_usbc";
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
