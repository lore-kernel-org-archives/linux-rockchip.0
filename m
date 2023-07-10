Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0239CC001B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tYVPyXim2Rs7vNABE2KuC1u3PNjZg5MmOyluGwgD0p0=; b=nHOmbA56kxi1xx
	3wQhvWvxEW2e0MyvdNOTiHWny0OyoDtOCdQ/PcZ9IxI9BUAZfpk5jOUc0NO/5EcK+4nNk2bDakHAg
	dykivUxuThCotfVAxUVNSVSwyYZCWdwgm2T9wVtf8HoEZ3DKm0slL5UEtHJkCxeNS47yPAwmuEC6t
	wZO8B+ZX21ADaj0i+72Q+QIgoZkXQ4IvyVNUFbEqkvurIWWfQLUORZoQo5I8PRoCkaZEnGJ48r6P/
	3sR2P1ELZz4uYf6VAQya7MhJGLJZT4SkDjh2x6m6tXyuUT/C548LnhKoW+9z4gWND6tAW+IEAO9Ji
	1txAY4HsYs7MdbydUFIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu7w-00CEvo-18;
	Mon, 10 Jul 2023 16:52:44 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu7o-00CElu-0u;
	Mon, 10 Jul 2023 16:52:38 +0000
Received: from jupiter.universe (dyndsl-091-248-189-246.ewe-ip-backbone.de [91.248.189.246])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1DCF86607004;
	Mon, 10 Jul 2023 17:52:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689007950;
	bh=70i+OsHCHw8ZA82Dnx5g055yqqG/MNhkLk11vHnkswU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZEcxa9PhS5m6HuCyfKMEB4sMrP0OFfZLNcG+CaFwXdTZS7E2o5crW93HRBD+2Sv1N
	 5KzYKKRtlT/I6mNL8NowEyfm1iehyT9b3MV4EkwujjR1gFu4HdQ07KVV7OeNgtrhcE
	 cSWp7Rkxk3YCAQYDopJbnrENJZ/LQ88fhXKoV8lLxqV8sueJhE54g55H+pzJqxGW5O
	 wSXW1bJMDa9AzmfXPqWaAXer6DPV2IyGZRsoE/4Zy7kg5wRoCdSqlZ+6JhT6hSwJda
	 6qDrcJ9uMM1uuHBp0rNrXp6YwhdwA/ybjKct6zZuWpRQ7intkIiT700Qbw7LnrAToS
	 JzlkxjxU+fyEw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1BECC480598; Mon, 10 Jul 2023 18:52:28 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 02/13] dt-bindings: at24: add Belling BL24C16A
Date: Mon, 10 Jul 2023 18:52:17 +0200
Message-Id: <20230710165228.105983-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230710165228.105983-1-sebastian.reichel@collabora.com>
References: <20230710165228.105983-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_095236_448167_011C9880 
X-CRM114-Status: UNSURE (   9.86  )
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

Add binding for Belling BL24C16A, which is compatible with Atmel 24C16.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/eeprom/at24.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documentation/devicetree/bindings/eeprom/at24.yaml
index 84af0d5f52aa..2ec37c11286c 100644
--- a/Documentation/devicetree/bindings/eeprom/at24.yaml
+++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
@@ -101,6 +101,9 @@ properties:
                   pattern: spd$
       # These are special cases that don't conform to the above pattern.
       # Each requires a standard at24 model as fallback.
+      - items:
+          - const: belling,bl24c16a
+          - const: atmel,24c16
       - items:
           - enum:
               - rohm,br24g01
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
