Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09DA0C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 15:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URsRpKbRgucLRZD7hYjAWAwENwJYqB84rGwWobCSKZ0=; b=0AwSiJMPKdXvS7
	/xOSIgPbUsrsEo5Ax2fO/0cQV4eKqMAx03JT+WTruOv8M6MpkhJ7QAgOmBavDP8bmEzbGgembHEyn
	RR1R8qZa/fl6+rBA47gCy0UeBcdXYvVMc/f+XgklzIuqsJqs2AOxbfkmElFESXk9oGFPemMN2oSoi
	cHej177k1nXigIWgj0oiTIqPmOsxLHF1GjAYgWV0ipvTNG8FVbJl08Beflu8suKdS7q4eVqwcGCuo
	ZKnJJKJWaCA4eZQ8b9STFISSu0WeHQSIbLObbAfkjmcroTfUWwywiwOWlimmsd6F2JAWvzzjmkOaG
	kh7s3Cq539Mpl2UqnoDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nonzJ-007RiO-FC; Wed, 11 May 2022 15:10:53 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nonq9-007NhR-CH; Wed, 11 May 2022 15:01:26 +0000
Received: by mail-qt1-x833.google.com with SMTP id x9so2168083qts.6;
 Wed, 11 May 2022 08:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oIuqiJ1KMfrOcWNf9PXlKzJzt4BdNRB8d9UpwdKjhTg=;
 b=NCzkQwFBqTgjN2haflpZFtU9ln1qti58wlBmjyabCDEnIDABpqWN8KKc7Yk2dl5r9b
 G93UPkCXT+ez1IHFaJc+8wWsjnhKlFLJeHrI95UcMYb1nyYOZiobATYkSSehWO3vCLPM
 WXL3tQA3nAYzkTD5Hb0uJLv6oQYtF0IeAUd7iMX1nKkAzBBCKnogIQR/tPiTbkCprLGD
 bgdHz4IxIx+czXjSNaEoRLcw6b3ZLNrYpLKvzV63rTRA+w4R6NAHqop5JsMq/hIjG3ph
 ViX94MBP4Fc+DPjGDZAZcCS/2eaRDXpfPdn7uYMlraELnbTwnW0pUYN4yxy4tz9MnWCj
 F4aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oIuqiJ1KMfrOcWNf9PXlKzJzt4BdNRB8d9UpwdKjhTg=;
 b=Xb9O+3dOmvS8YbNhHxSEeqEnAvy+UJZQfc9v7/XNcxD8Yepc9KRyLyZs4PYWF/Uul6
 6mHb/rsdFj6zlEQ/QDMTQCPLAk3PuzgWl1xb/SDBQv94NIw+p6c52wBji3krYfGl2CaT
 8iWp7lnf6vwUBszzB3LdNB1SwrTWE1bO2k01yzJma29rSLyWbCGd5lJbNcC4316v67iQ
 CxTJZ+V91HQSHIt+nRHLCgo7oofkn/gUsD+FsL3XjJ06BuIr0KGjaNOG1raWKxoGFJfe
 +tbEEMW3WE++CV/Uhblh49Pd9PdX2r7skzpZNYVHeYCqcNd9at/5TnXpv2u1MFYCVYOG
 ik1g==
X-Gm-Message-State: AOAM531rrf/WhKycEtmuwlvsrzG+yRz8i3aHX8DnrLiQPNLfvh3d9SMG
 9Oq8IfpDAWpTJ4K2fidxsd0=
X-Google-Smtp-Source: ABdhPJyVrJE9bBpSUy3Gw712E094ZqLK5sBcNBbpE1kENODFBSPxCFrfFyw5qfMfgH/qBnxn71/cog==
X-Received: by 2002:a05:622a:4ca:b0:2f1:f386:4377 with SMTP id
 q10-20020a05622a04ca00b002f1f3864377mr24510020qtx.156.1652281281906; 
 Wed, 11 May 2022 08:01:21 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 h1-20020a05620a244100b0069fc6484c06sm1487134qkn.23.2022.05.11.08.01.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 08:01:21 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v1 2/6] arm64: dts: rockchip: add clocks to rk356x cru
Date: Wed, 11 May 2022 11:01:13 -0400
Message-Id: <20220511150117.113070-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220511150117.113070-1-pgwipeout@gmail.com>
References: <20220511150117.113070-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_080125_464670_34EA35B2 
X-CRM114-Status: GOOD (  10.44  )
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

The rk356x cru requires a 24m clock input to function. Add the clocks
properties to the cru to clear some dtbs_check warnings.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 7cdef800cb3c..fd9e8a854328 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -336,6 +336,8 @@ pmucru: clock-controller@fdd00000 {
 	cru: clock-controller@fdd20000 {
 		compatible = "rockchip,rk3568-cru";
 		reg = <0x0 0xfdd20000 0x0 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 		assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
