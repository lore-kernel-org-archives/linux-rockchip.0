Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C16EAC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 21:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LxrOEFQRi1orNp46cD2wJibMNcI4X+R4LnNRRyHJzEk=; b=rqeez+Lp9fKDTV
	SWX2aNBxOsixZp4cq/Na0a9Z/6KpKreh/uyrXKbHAZ4LNNTkxD14qVh+e3eLeyBrElHd12LLfe7Ya
	PCzBDnkXO6ZENapNEsfZMkzQ6of+skPJEqOO9KCVEfNFiMZPr8HFExcpAiOeK9sLxSR1tLg613T3l
	v6N8T9NITexXTrKCmvPAqeirv6pURnCAqtp99/7axutNqcFqpI1ay27DAFWWE8mu/TIYe0+h4PV08
	HOke1wfbJDfqgS4ZEFZdD22jvUIvuFNXLJQk/TDFsPiHywhpMeO8t8OwLylT+YxZa0UDUcJTJulNR
	LnFSiQ3UUWHufdDa0M+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa07v-0000000AAtB-3eZz;
	Fri, 02 Aug 2024 21:47:55 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa05k-0000000A9wG-0fkx;
	Fri, 02 Aug 2024 21:45:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722635139;
	bh=FhIxHawWEwh964/jKmFUWfPuSLrTDhbhoA914QemqOA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fWK2QnqVqKS5xNsBaP5oiffm/+HgvDyOSqB8s9oqlP/jDGa9OeYC3+QXJnckBsm7o
	 31Ct66DjQ5wNt0N2VhL2aTKxQGF3I2AiY1CcngO2AJJUP7fJnr10wBQMAgHrlKFow7
	 fMu1XOdeuB/0VYPTLy6HLP8wsefAlNeFZsQ9lnC4rT2U0D2LSMJ2Bv0jmjq74oLsaG
	 tkzKMwGW0DDgPNvJx7+U3AdxgBAvgXpwos0WarK3oAh2NGxXONEMwLiv3r8axcVGkY
	 Cks89IsQ8bzHTrCITF1I3gDAYy/TwQz2EVQbee5eTuS40BoTKMTmCKVHVYRoPgKUfE
	 tBJZ8OuY/wQag==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 21054378221E;
	Fri,  2 Aug 2024 21:45:34 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Lee Jones <lee@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Ondrej Jirman <megi@xff.cz>,
	Weizhao Ouyang <weizhao.ouyang@arm.com>,
	Alexey Charkov <alchark@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-i2c@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-serial@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 04/10] dt-bindings: iio: adc: Add rockchip,rk3576-saradc string
Date: Fri,  2 Aug 2024 17:45:31 -0400
Message-ID: <20240802214612.434179-5-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240802214612.434179-1-detlev.casanova@collabora.com>
References: <20240802214612.434179-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_144540_355345_121AC3E4 
X-CRM114-Status: GOOD (  10.19  )
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

Add rockchip,rk3576-saradc compatible string.
The saradc on RK3576 is compatible with the one on RK3588, so they are
used together in an arm of the oneOf.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index aa24b841393c0..fd93ed3991e05 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -16,6 +16,9 @@ properties:
       - const: rockchip,rk3066-tsadc
       - const: rockchip,rk3399-saradc
       - const: rockchip,rk3588-saradc
+      - items:
+          - const: rockchip,rk3576-saradc
+          - const: rockchip,rk3588-saradc
       - items:
           - enum:
               - rockchip,px30-saradc
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
