Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F40ABC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 12:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WrBeO0KXKRx11lpLPyzuw3E06VZrjiN9d9yFly4xHQ=; b=EzMr20yLASJnnw
	nxEW17vRASMcbSgcE8hJUemUMlh0f86uXieOyuTsGnzcUVRKkP6YAKCtkIxlUQQEqNNp2vAkQgC8j
	pWoJpZhIGY0mu1/AtH8B15z+zB/aE4jsmPTxWbOi44tdgkJaglqOQ9xKZygXxZ6zcvw5LZ5fQp8n2
	Q8cMeGzOw5EtiHpAi5IcWNk9shPK69WVEvhRBoORxPb27kKh2i+HSRQx1DnNu82LAl0JQnNy9Xp7U
	rcJqsUouo3kdviO0B6sv3FS291G/d24bADykt8XEOvhGKrPGwX8IsmmZktZ6XU6/LtBMFF1KfjUPM
	uutnGc/D0FEWevfAVV8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD27P-00BiWN-0P;
	Tue, 12 Dec 2023 12:44:11 +0000
Received: from m12.mail.163.com ([220.181.12.216])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD27L-00BiV2-2u;
	Tue, 12 Dec 2023 12:44:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=c1jqV
	PLM6Hp2ZovLPNW1VW+yR3M5Lime7QQ21U6cQSo=; b=I0AtgMBODqXxF1Y9C9Gys
	hIHE7ZfhD7+qucm7+kovD+rrLBI0N3EWBKC7aZ+s5FlVsMYbHh5O0sSqk8U59wBz
	5mwACiZqvXvPSN9htftcNw6d46ifEWje9dF8/rVhPp6BUv5Cz/V+ncBMA4Oux5NO
	JXPMnTwU2rALnsweh40GK4=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-2 (Coremail) with SMTP id _____wD3_2Z_VXhl6RA1AA--.13259S2;
	Tue, 12 Dec 2023 20:43:46 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	sre@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 4/5] dt-bindings: arm: rockchip: Add Cool Pi CM5
Date: Tue, 12 Dec 2023 20:43:40 +0800
Message-Id: <20231212124340.1897502-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231212124202.1897238-1-andyshrk@163.com>
References: <20231212124202.1897238-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3_2Z_VXhl6RA1AA--.13259S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKFW3try5AryxJF4DCF1fXrb_yoWkJFbEka
	yxZ348CF1FqF9093WDAan7GFy3Jw17Krn7AF4FqF1DCwn8twsIy395t342yFyruF43urn3
	Cr4rWryDCFsxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRAGYLUUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEBZEXmVOA6aFHQABsL
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_044408_303240_7CB4C1DE 
X-CRM114-Status: UNSURE (   8.29  )
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

Add Cool Pi CM5, a board powered by RK3588

CM5 EVB works with a mother board connect with
CM5

Signed-off-by: Andy Yan <andyshrk@163.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v4:
- Add compatible "coolpi,pi-cm5" for CM5

Changes in v2:
- change board compatible from "CoolPi CM5 EVB" to "coolpi,pi-cm5-evb"

 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 11d03035f3db..7a81543132a5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -95,6 +95,13 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Cool Pi Compute Module 5(CM5) EVB
+        items:
+          - enum:
+              - coolpi,pi-cm5-evb
+          - const: coolpi,pi-cm5
+          - const: rockchip,rk3588
+
       - description: Cool Pi 4 Model B
         items:
           - const: coolpi,pi-4b
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
