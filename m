Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1DBAC3DA6D
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 May 2025 22:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SPAK7i8B96XnLdqU8qmGDlpD+sZpusMZQ2YdP11Z3B4=; b=d+tApDo9fsVYAE
	LWCiQJ3U1reS817tC1LETHxZA1ZqLWc9aRl7Y5M9deYl3ZhYpaMo6laR8vLK9FHMRW1v0d/0ijO8L
	XKZ4PhQ1xlt+blG0GrJoNGZqCoCBnXvOToYFiUQvoP0wS1jQzkRk1rDWdMXjA3o6/IppPRtIG1CFG
	iiyNklRwq2q64oJfpMIB2yQbileIDTD/P05lO7xCTKdp2GOmR3XMhjKdvIKFQsK9sgFV6QSvVc1/X
	hHv0c72AWdnPRBM747UPfCYmWmI33Ts7CS7ucI3N2UcAGsipKDdYQ/2C9u6u+Md/3c5zGAlpTYCso
	GphLI87RG1dqAktpb/Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmZk-00000007dNb-3mIj;
	Sun, 18 May 2025 22:33:44 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmAc-00000007aki-419u
	for linux-rockchip@lists.infradead.org;
	Sun, 18 May 2025 22:07:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1747606066; bh=ngOKSl6OG/tW+9Rxzp2cYqj7UrWaCYxSd5FvuPjMg/M=;
 b=NnTaThW4Av3EshAZj2UK8A4Hwj1qUa6qSN61Bylz09iD6IYsUQzP58uaafrxXd1T/UYzb9meg
 6C8p/6G2gulh2jJN3K6CT7uwXNe8GwjwQQgBW1cy9XZ8/hEYpdhKHoC+vskOHGdwTLVGYdoqN0j
 Kor7jfRv/Pl5r4ftiJX1UgJfaHtix+0socJ80HFMP/Il5U5WHB/BrhrbcPj2d2SXMhEF5ZGcEE9
 Tq0u8dD5Q8NnPfIiIy1DxiEE1h/pw4/hdXxt8dtM9EVApfuFlgKU6Hx3z16YmytANqyXvCcqLFU
 NANx6RNiNA/dHco7eUG5X92SVMZg0IgTF0Nb8meNhWZg==
X-Forward-Email-ID: 682a5a2e78cae75fbd8d4704
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
	Andi Shyti <andi.shyti@kernel.org>,
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
	linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 7/9] dt-bindings: i2c: i2c-rk3x: Allow use of a power-domain
Date: Sun, 18 May 2025 22:06:54 +0000
Message-ID: <20250518220707.669515-8-jonas@kwiboo.se>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250518220707.669515-1-jonas@kwiboo.se>
References: <20250518220707.669515-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_150747_036536_BEFB9484 
X-CRM114-Status: UNSURE (   7.54  )
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

The I2C controllers in most Rockchip SoCs are part or power domains that
are always powered on, i.e. PD_BUS or PD_PMU.

On RK3528 the I2C controllers are spread out among the PD_RKVENC, PD_VO
and PD_VPU power domains.

Add support to describe power-domains for the I2C controllers.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
index 2f1e97969c3f..4ac5a40a3886 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
@@ -105,6 +105,9 @@ properties:
       (t(f) in the I2C specification). If not specified we will use the SCL
       value since they are the same in nearly all cases.
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
