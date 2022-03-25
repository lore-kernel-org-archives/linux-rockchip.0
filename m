Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B722FC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Mar 2022 15:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhmLAK7KlmkgL4rMxCRGjJpsQInS82eSuaLm6ZKCMRI=; b=E5MhGbhdO1UIiE
	O+qnBrjp0Xar5hzsehLKy1XUexbnl1EA7Aes3tw+qXCFmhyoCSvJXzs4kM0XWAxU4wvaAPV26wObK
	zn0kgvPyPyZBSRJnf5PHMxrCHuXNSfROejCyos7kyS+mpzWm6/EgHRdxgmQIbnj6ABvteZqicI2D7
	uoMlH4jxdpPb/y7dL7N3zckni5+XAFOthds5W03CML0oj+/OQKGzxbGGG62oci1ON4PKXswFtwK/A
	i/coTcir/pzcy1+ODM7QSJNmpUOe2Buicokq0YRquSw77jLVaqdyWVvEM6Myz7e+d2mlhqOhUvhi+
	AJdE9crnTn9+bw4aWp0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXlSH-002NZn-Tl; Fri, 25 Mar 2022 15:02:21 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXlRu-002NSU-Fc; Fri, 25 Mar 2022 15:02:00 +0000
Received: by mail-ej1-x630.google.com with SMTP id lr4so7497068ejb.11;
 Fri, 25 Mar 2022 08:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9VcDy2eNu6zj3ojAJOI8YY4Y8u6xcG4aGKHl4udgapM=;
 b=g6i7bgOZsjWuNr4hEdvMpSFsyEgpVdKX352ZfiMam0a60mQ6mTwBUao8hi+iT7eTDH
 HPhYBzpSMAAMp3XDwqHvLGxbRQK8meGGVGMbmfaOb/3gC0zbeOTZFUKQa1mbYbEtMvoC
 DhADMEhBMzfZ2cvViMoKmZMmeZgrvo4SsLYcPE1uUQ/AlW4HmGMkjbc+TUVAuxN6LTZg
 ommHf300SnoLf3tT3Rnj9v2qtr5Tq07D/xWPYnR4R2L7DsQjAb98GQH+XxmcpA54RPjx
 6tkCcsW8Gz/6tvs6FqerfEI8vOkN7lkHOFg/jMJewvQo6B7cbAhoF/EolmUOwtwjcXDj
 vXdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9VcDy2eNu6zj3ojAJOI8YY4Y8u6xcG4aGKHl4udgapM=;
 b=tFELuaQj0z6zfO5aY8b3AcDUTDYmtWcuYlqerAG/Aq0XMpGUDnsefb0CCi+4Osyo4w
 Mk0EzBm5lGPCxOe2Q+yk47Jh7DE0UbZgZ5IizQwneqwp49z/coJApZnwUcYdk3++AzUL
 X3TTJ51BRBqi7R28FwBQrMHcm9ypxkgskKsl39+sjJSJ0ib5PV+6TpH+gNYX2miYjatB
 DzBAO3BdNL98KpkrBfLjPHIItjiS20yeQ4u8YSPlGrcA8X94VhjKFhLCWiw9JnB9t0Bg
 +fcd7UVAVuGuninD9UtRYsnBcpxH3akOjHNKPduPQGRwYSI/tHqV6mLlXj2zuEDWwHwY
 mCRg==
X-Gm-Message-State: AOAM533yfIWwGY2TfjqSRuC9WhqqFgRs3rpL3tCAMQmjh5Y1WTwRuVp+
 lDQytoTC1ys0IAyMEXcvYQY=
X-Google-Smtp-Source: ABdhPJzsVdo9AHcpYNGJZibiNrkNLA6X3+BJ9fjqdBvI4f/NNLrt06Uv679Ra/o4jQoqWJt+wtgDPA==
X-Received: by 2002:a17:906:53c3:b0:6cf:742d:84de with SMTP id
 p3-20020a17090653c300b006cf742d84demr11800827ejo.576.1648220513889; 
 Fri, 25 Mar 2022 08:01:53 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 w14-20020a170906d20e00b006cee22553f7sm2455714ejz.213.2022.03.25.08.01.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 08:01:53 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] ARM: dts: rockchip: add clocks property to cru node
 rk3066a/rk3188
Date: Fri, 25 Mar 2022 16:01:46 +0100
Message-Id: <20220325150146.18638-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220325150146.18638-1-jbx6244@gmail.com>
References: <20220325150146.18638-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_080158_541726_93EFD34A 
X-CRM114-Status: GOOD (  11.02  )
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

Add clocks property to rk3066a/rk3188 cru node to fix warnings like:
'clocks' is a dependency of 'assigned-clocks'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 3 ++-
 arch/arm/boot/dts/rk3188.dtsi  | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index c25b9695d..de9915d94 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -202,8 +202,9 @@
 	cru: clock-controller@20000000 {
 		compatible = "rockchip,rk3066a-cru";
 		reg = <0x20000000 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
-
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 		assigned-clocks = <&cru PLL_CPLL>, <&cru PLL_GPLL>,
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index a94321e90..cdd4a0bd5 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -195,8 +195,9 @@
 	cru: clock-controller@20000000 {
 		compatible = "rockchip,rk3188-cru";
 		reg = <0x20000000 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
-
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 	};
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
