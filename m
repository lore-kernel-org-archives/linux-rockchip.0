Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C992EB64DA
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 11:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSkAg5p4AVOAOs+S3nRQUicTEjLTlrtFJjmpqweV3a8=; b=ZQAavjj3Y8PvLt
	O0P4hJHho2g6vfa/vO2cZOlhHInAugOAdHKLnXgM2/iWOirQWcy1SpChINx77WblLE1w8MwS/Krmo
	ESpnxjhS/xaEhxGhyCXq8QNp1GR/Zb4G6JT+Lvwffan7VDL9RvRstSkriupDRnNgpzQA9OIumPxK1
	n0HLl8TFZakLPvNamQ/hu01x7XCRw7weqPm6szr3QTaj52kAmM+8GisipEsH5Tv1bdVVWtn0o/aP2
	o7eryRFRAY6DjqqU0GtcjSuJZm2KaYCt/gsIvcAARa8CVPeEqhf2m7OJjr2ButoQaXlh+bvwGhEw1
	KkhmKlN4yC/bB/ICRZng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIpPb-00BW0C-1P;
	Mon, 10 Jul 2023 11:50:39 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIpPX-00BVxJ-24;
	Mon, 10 Jul 2023 11:50:36 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c8:b70a:ae01:f690:3e44:90e:2421])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E57E86606FFE;
	Mon, 10 Jul 2023 12:50:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1688989831;
	bh=ifOxrGBK7ddwkyXRFgw7UF9/qlU9v4GUC2LJybbz/sQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MBY+WuRYWvyJPl3kHn4Fy0JR9ig/PwI2viU3kK8QAaNj1b/y+qZc9UkRusT1fpntL
	 j7zrRAfgnBqdnypR/RWupRbLSPHQBB8m4QZ5ACxuWd8N8OhLa0chSFuqUJfpkgeIBi
	 qB/2yxPuZBJOqw6O6udsEVQrys+JgOS6ysay03z+gTGRXl5IsEFPxJRg8A1tLrqqpu
	 lx4cVhFydUe3q8xEoo/3PZ1xYethhe1XLqcZDmU6S0gHOd308NE+SkemG6+9i1aoTT
	 KkBJo++xk3If3WRQ/VJ1vTW6eMAu8cCYK6C1HyzNZPVngLpQsottvr2lgZdM+Ev6/J
	 tRoI4Er9smN4A==
From: Christopher Obbard <chris.obbard@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com,
	Christopher Obbard <chris.obbard@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Andy Yan <andyshrk@163.com>,
	Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Tianling Shen <cnsztl@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add Radxa ROCK 4SE
Date: Mon, 10 Jul 2023 12:50:24 +0100
Message-Id: <20230710115025.507439-3-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230710115025.507439-1-chris.obbard@collabora.com>
References: <20230710115025.507439-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_045035_826740_C936DD05 
X-CRM114-Status: UNSURE (   9.57  )
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

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---

Changes in v2:
- Add Krzysztof Kozlowski's Acked-by tag.

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
