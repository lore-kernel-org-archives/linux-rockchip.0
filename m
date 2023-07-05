Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E5E2EB64DD
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jul 2023 14:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qb1V+OvV16Ceh5VSNpd5sOnGWVZlf1fxrP9iRv5ZzJA=; b=pLuAeBQrID4lIU
	98AMUhRzYNSgOm7BzNVFKzgy7SZdbp4Tjuhd2jdQaFGwwOKZu3+3wk/0Csod9tBARrNmFoRNxiaYQ
	LTtULuBGXHUtdqFXVXluWWSRSEJroTKX8RmLmbjnsguoOtN4z5u+H9ee/+W4bCQ69tbEPXhtZv6Oh
	AG6vrUcxrIFeJkpU0Xr7DL7bizg1DU+14croIPiHSWZKn9bJ4g8b1eGwhLZ1r7BVlwtHCxjuJM2PL
	R3IlEjSem6P1n3ts+vd+8usxBC2vz8rt2I8+fTo7EGf1m2YQTLeEvdK63rZfkjaBXP6vfwadbKek0
	3TxCi5pnGf5ygoWGyxPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3DJ-00G53F-2A;
	Wed, 05 Jul 2023 14:10:37 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3DD-00G4zr-0J;
	Wed, 05 Jul 2023 14:10:32 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c8:b70a:ae01:7599:ed26:1798:f430])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B1F6A6606FB9;
	Wed,  5 Jul 2023 15:10:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1688566229;
	bh=Bl78q3Ch1sDVxiVmKqz7qSjFhBF46KI5+lf0oBzlvdo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NAeFBMiKfyHbcFlsLGh09vplmumo/4HICCaTIaF5U6rNnDDZjfTtW2HxbCct4B6pD
	 tdizNyJinHLTpTeq773JCG8EBtnrU88H8IfhM3h1gewH6zfzjVP/QRqdX5rfhzlQMx
	 oYv8ns3b/ilTDy7yHm1LB9mFpr00zTY1aF/1fEPZCLJz4Wlp5rSK5i1l+IRVFA5/+F
	 FtiDuhw7TK8CEyiyqTS+Tq69We721cVM3XvMrN0434WSD2AtewBU2DOlpFh1PWnkcL
	 1AVKzXnbvNe67h3RFLTb54mIShASYfGH8SHZ6xVnB+gScT/ltS3CrV480lGxZeZagk
	 pFddr6hYCGh+w==
From: Christopher Obbard <chris.obbard@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com,
	Christopher Obbard <chris.obbard@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Andy Yan <andyshrk@163.com>,
	Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Tianling Shen <cnsztl@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/3] dt-bindings: arm: rockchip: Add Radxa ROCK 4SE
Date: Wed,  5 Jul 2023 15:10:10 +0100
Message-Id: <20230705141011.111568-3-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230705141011.111568-1-chris.obbard@collabora.com>
References: <20230705141011.111568-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_071031_263930_1CBE3B7D 
X-CRM114-Status: UNSURE (   9.30  )
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

Add devicetree binding entry for the Radxa ROCK 4SE.

Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ecdb72a519cb..3b7bf86cec02 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -694,6 +694,11 @@ properties:
           - const: radxa,rock-4c-plus
           - const: rockchip,rk3399
 
+      - description: Radxa ROCK 4SE
+        items:
+          - const: radxa,rock-4se
+          - const: rockchip,rk3399
+
       - description: Radxa ROCK Pi E
         items:
           - const: radxa,rockpi-e
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
