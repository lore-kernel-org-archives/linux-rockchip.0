Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29CF7C6FD18
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 12:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13rjVNTralB6cHGMtJjFVI/XHlCmiQ4dYhMZ3jkmOWc=; b=ROoNxdXh5ox6XW
	oGlsjsoRcjBN0ktxoIt7yHQLyqXc5v4ghCcAv2QcdcXksR3tYIxPurLIETxcqaYItZDMJ2UrzuY85
	QwODn7H90udJ0rKhsVv5ppSwe0p6NoqYr+1Cq43aYEP1th8cfeWutFT+gdjxKFOUhIWdvjenZmkL9
	z4q426iSToAXL021laV6UI9CKFvdz5I/m7To/YXpWWqku3wMEhckHT8Jz07VZCq85xQVjmHT7thNj
	JPw4Ha3B5yW3V3Avuaw/1yRXQ4DHpdZNN5Dnpa1oXpKS6w2CEPpeqtSRKAW+bh7b2U3kyNlO8N3+w
	f+gPcuY+kgCyf80M2zsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pok6c-0023QL-0W;
	Tue, 18 Apr 2023 12:06:42 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pok6V-0023NC-2B;
	Tue, 18 Apr 2023 12:06:36 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5E624660323C;
	Tue, 18 Apr 2023 13:06:34 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681819594;
	bh=lLoigGWkJxfCsqJmwio7gez8QFEu8vijF5k4UrUjSpw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AvEeqpus0tcroeu1p8vBBsVDt7A+RRKrD/3inm1Y86xaaeCCPJw1uqx/gbnXG2LrD
	 jD2+6qkSe09ErDCfxbPjrlZ6uwUswO7EXZOQ4QYecpYJV4TrfjKXmKGo1vhhhmSMRF
	 Vf7pKeKzpg7G3hUdW2qHj4bOhB1HkBT/euuYAyWSAD9KT4wFKN/lydQxy7zk3CEJEw
	 ONW2KNAlgVYNH8a7GlIeIqk/QCMm5LvXmkvANBUIkW2o6Sp6FTzYNrlpHi2QFAHneX
	 czxNEzac+UnOhYsY7wu5epEbybhPdKHnt6UFqTxh1AT0v2p1giTP8bGUYTPeGo188w
	 8h477zrxlB4tg==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH v2 2/3] dt-bindings: timer: rockchip: Add rk3588 compatible
Date: Tue, 18 Apr 2023 15:06:23 +0300
Message-Id: <20230418120624.284551-3-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230418120624.284551-1-cristian.ciocaltea@collabora.com>
References: <20230418120624.284551-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_050635_839083_6A19535B 
X-CRM114-Status: UNSURE (   9.45  )
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

Add compatible string for Rockchip RK3588 timer.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
index 2bdb6e6bdb21..19e56b7577a0 100644
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -24,6 +24,7 @@ properties:
               - rockchip,rk3228-timer
               - rockchip,rk3229-timer
               - rockchip,rk3368-timer
+              - rockchip,rk3588-timer
               - rockchip,px30-timer
           - const: rockchip,rk3288-timer
   reg:
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
