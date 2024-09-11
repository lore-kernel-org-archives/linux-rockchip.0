Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 586B3EE499D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 12:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TG1PEVKiLUtIg6xSSjdopbcL1YcAsWqw4gp8Jpiwbts=; b=VYifiO0fMW7ed7
	iFlprJ16BJh0cLcUR34qIEJqW/N2UakW56XmCfL6s7yHBCalN0ZipLb6XQsbQc4wuIVKwkGgFHlIy
	Br6yuLXbBRxjcr4ZiY7hCDu15YWI1hNPi788fk5KQD+UVkHftYx89HYv7vCe8RYm9lBHr8hpIzFQP
	7I3VObMQq5AKWt/YfxIcjXvLFihbm1nL93i6tozSASQ7/6zK6qcO5oTqhEL7BhAtyDk/jDB9ACYOH
	ZemJLqhC1ih7R3RmDQQGvaAK5Ujaha10rWD3+6R5LnFjhw0E8Xes6krkajP7w0h1oih0M8OBs6VNB
	WKPQhXb1j1U6PdTzW9Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soMVz-00000009UkR-3AtD;
	Wed, 11 Sep 2024 12:32:07 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soMSn-00000009ThM-1mG1;
	Wed, 11 Sep 2024 12:28:53 +0000
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.163.173])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 96EE17890E;
	Wed, 11 Sep 2024 20:28:42 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 96EE17890E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1726057728;
	bh=VxKX2yW3hXBVxO4kTWCelxZoamv0eXklRuRpYCKRibQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=awEZ074GQjMLA+t/NHdxpVjOqaFkANSYjuad8p2VvslTenoKIckLXegm79uYDeC45
	 v/XiehzvYZSc4nJNKQho88xVcj4Gc2RoTdcosmiGePM5x0iYuii1b4+kmdGJGPYszv
	 rrPRNn7UwxO9llPN4su+ZBQ9qA/rj9jjvcI+9u7o=
From: Junhao Xie <bigfoot@classfun.cn>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Junhao Xie <bigfoot@classfun.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add prefix for Ariaboard
Date: Wed, 11 Sep 2024 20:28:08 +0800
Message-ID: <20240911122809.1789778-3-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240911122809.1789778-2-bigfoot@classfun.cn>
References: <20240911122809.1789778-2-bigfoot@classfun.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_052849_639668_47B71A56 
X-CRM114-Status: UNSURE (   7.99  )
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

Add an entry for Ariaboard from Shanghai Novotech

Ariaboard represents a product line from Shanghai Novotech Co., Ltd.

Link: https://shanghainovotech.com/
Link: https://ariaboard.com/

Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index a70ce43b3dc0..849b7b0f9097 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -145,6 +145,8 @@ patternProperties:
     description: Arctic Sand
   "^arcx,.*":
     description: arcx Inc. / Archronix Inc.
+  "^ariaboard,.*":
+    description: Shanghai Novotech Co., Ltd. (Ariaboard)
   "^aries,.*":
     description: Aries Embedded GmbH
   "^arm,.*":
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
