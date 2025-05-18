Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 059B3C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 May 2025 22:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qZ6tzI53+lz2OYo30YTfcDXnwUMOvp7eMaXpQwOZ9Q=; b=dljp3/ePXDRTML
	WK1FT5czDKewne+2U8rXwE08AXTspMKdSw5idjX4f0nA3UVuotXWp9UyqPt/GyQxbscfGOfn4Qtdb
	jw2SmniyIqMVBpuTO1Ext18qenET24pG+B+RC97Cv0Jd1DUtfA6CsKsqyaad540cElVxDRrJgrJMg
	nB3wM4V8fUaswoa0qaIrXbPgGyLWr1GrPEXCWL0BsD2IkxRgPRD8S5k6g9BbnS60G0PO5Ylh9QAIv
	tXNYLxN0IhIqPZ8eMW2LsWIwjBkhVTj2YUbPaU5JRmj5WeUbZmNUmQplqCcfMBynfE6oUXsCwfvNs
	tsjOqZqY4YFsf6ZMcDCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmdg-00000007de2-3vmf;
	Sun, 18 May 2025 22:37:48 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmAj-00000007anF-0S93
	for linux-rockchip@lists.infradead.org;
	Sun, 18 May 2025 22:07:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1747606072; bh=EMpzWrkVyV6vMCT5CK0scK0XhgFMcmSqXuqMq+/6SaA=;
 b=jIMBeUyL9pyW1DHv1jK6/9Z5/YRsPWURTlwcSNdr92PP61Q6Jo/HxctL2T1dRX3YZr50ezeMy
 c43H99c5Ii+LJQQUMruele3DyZBL88wr/OYkldxHbuCS/7FlBgALdposUCKDkdkF5gaDzFrekIS
 4J4rf84uUsh/Cs1MLJNxh8XJZ+/i0xQqM3m8r0BKFnDdigOhd+ncs1hoFfPohj2zcrMNbVT0qgK
 WdNfzO2LmNKktlsWl5h/3hOJTRIiP4jDwv1nz1bov72oJElBjyox3iS/0hQLbMFzJ6IHK5TtZ1L
 PbVxnWLOlVQbw2s51o5DcuraukmJnB9A2KDEiW976XqQ==
X-Forward-Email-ID: 682a5a3378cae75fbd8d4719
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.0.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 8/9] dt-bindings: iio: adc: rockchip-saradc: Allow use of a power-domain
Date: Sun, 18 May 2025 22:06:55 +0000
Message-ID: <20250518220707.669515-9-jonas@kwiboo.se>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250518220707.669515-1-jonas@kwiboo.se>
References: <20250518220707.669515-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_150753_179454_E86D570A 
X-CRM114-Status: UNSURE (   7.81  )
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

The SARADC controller in most Rockchip SoCs are part or power domains
that are always powered on, i.e. PD_BUS or PD_PERI.

On RK3528 the SARADC controller is part of the PD_VPU power domain.

Add support to describe power-domains for the SARADC controllers.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index 41e0c56ef8e3..f776041fd08f 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -47,6 +47,9 @@ properties:
       - const: saradc
       - const: apb_pclk
 
+  power-domains:
+    maxItems: 1
+
   resets:
     maxItems: 1
 
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
