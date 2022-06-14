Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA746C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 06:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZCZMgmZHm4iE6K489ILlRFxrBD1hgx3kzWHybPNNno=; b=V2pzj+lLt9kDWH
	Sa9g46+cUF2H7jJLymtmWxZGVQB0jgARNbpIJ37el9CkSGJ5kTKM/tE2QPHymdLSx10/cIabcAqkO
	Ug5+URPjpY4ZS+GjEClpn7LUTexAeyczWNFv4+7RE8/A5IjkFYjNk6sD72QSFKWew74OGE920enhZ
	qrVhZm2JrHMq1OmRUWr9THuPJLcrDqtkdeudaP1XPP4WCmiY5Wm255d0y7m729eqibDTwg4wE/LxO
	ZhwjoP/DyYQ+6idI4lbI2qEaZSRDPDm0pnbrpf/NhiYuIgUr57aY8zxI7NV6n4aMiAc2+qm/QPocJ
	QrVX3uqnTqOxTLNYjAIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o10Mi-007MZh-VT; Tue, 14 Jun 2022 06:49:28 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o10ML-007MJX-3B; Tue, 14 Jun 2022 06:49:06 +0000
Received: from beast.luon.net (unknown [IPv6:2a10:3781:2531::8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sjoerd)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id ED7E766016A0;
	Tue, 14 Jun 2022 07:49:01 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655189342;
	bh=jkDWtxylBKBy28k5wc72Q/jk9P8La9hOif7PAsiY5Q8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jmfWbWWxi8uugrlBYYsFatlNc3TCiDlhfUZPSWpWur39G6F6CPs+06LMnBeEZ5t5Y
	 boxJusqGuOPI9PPslMWFNPcjOfh1vCFPc76Q94dHrzrLlFNbv3VJotMe6wDGZsCSR9
	 sILIwfzB2lRuvrTjhlCNdvTMzi4YETmvWivZMsGH+mL2EfJRfsXeyZEpYO169TG/jD
	 EN0icKsaH6jXJQ0FrPkaUuVl4bhWU6B5zSGqE8LHHZlvj+EZa+kUXuNKDAuatj8aBu
	 Gev0NHr2EChquJyLkpbC9gzy6HiQqvEn1OHrWGu0CwW0NidRqMFzn7woT9AtT97jey
	 Sa8Hq+B468oWQ==
Received: by beast.luon.net (Postfix, from userid 1000)
	id 0085E4179E42; Tue, 14 Jun 2022 08:48:58 +0200 (CEST)
From: Sjoerd Simons <sjoerd@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com,
	Alex Bee <knaerzche@gmail.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Levin Du <djw@t-chip.com.cn>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Peter Geis <pgwipeout@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3]  dt-bindings: arm: rockchip: Add Radxa ROCK Pi S
Date: Tue, 14 Jun 2022 08:48:55 +0200
Message-Id: <20220614064858.1445817-2-sjoerd@collabora.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220614064858.1445817-1-sjoerd@collabora.com>
References: <20220614064858.1445817-1-sjoerd@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_234905_366703_E65D6F59 
X-CRM114-Status: UNSURE (   9.76  )
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

Add entry for the Radxa ROCK Pi S board

Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index cf9eb1e8326a..7811ba64149c 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -554,6 +554,11 @@ properties:
           - const: vamrs,rk3399pro-vmarc-som
           - const: rockchip,rk3399pro
 
+      - description: Radxa ROCK Pi S
+        items:
+          - const: radxa,rockpis
+          - const: rockchip,rk3308
+
       - description: Radxa Rock2 Square
         items:
           - const: radxa,rock2-square
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
