Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A03BEC021A0
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Sep 2024 14:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TG1PEVKiLUtIg6xSSjdopbcL1YcAsWqw4gp8Jpiwbts=; b=AlzlACQWptXwCY
	gukVI/mFkDEiinGTBqZ04RaoBDteAXRhpUtDz0M6V5oAP1sTCDxJLkS3ou9XrZ8k8YB5QO0iMzYCZ
	fLjGo6ap2atvQmoXUn6wrorOpw+yexvdSoNzBushcZ6iLcvxrEhClTRIsTff9cG7RDpER29GUKTQh
	g4mNKmmro/xzo4x5/utsvuUQDhWPfjXLNXQm+JXI6BOmmzmcvwYCBSlkTZ/lceMsPKoHu/QvF+8g8
	Csm3H1gHkhGuCB83+33aD2kkAvr3ok15wE8r2J/Ibse3nN32sUex4hwOGdmXQtyQ0o5FrDwRWTLtv
	q+i7nbhPaDxbHzkIYXcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spUEA-00000000po8-3Im8;
	Sat, 14 Sep 2024 14:58:22 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spUC0-00000000pTn-3wjZ;
	Sat, 14 Sep 2024 14:56:10 +0000
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.163.122])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 738CE789DF;
	Sat, 14 Sep 2024 22:56:02 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 738CE789DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1726325763;
	bh=VxKX2yW3hXBVxO4kTWCelxZoamv0eXklRuRpYCKRibQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KQXsACDA7vBzTmv2V5burFQswa5i1VH8DE2YxVVHbCmqu1zWwQD0QaOmOPFEDvdhY
	 zQzsaPyq+RMElCZUAYLvATwlnywq6jHKB6NA5A4dzgnsqjihp0ftPlYDHEUTcwUguF
	 AWUM9RAw0gHa4dt5E4jhc7kf6FwOYqBkQWAznpkU=
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
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add prefix for Ariaboard
Date: Sat, 14 Sep 2024 22:55:47 +0800
Message-ID: <20240914145549.879936-2-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240914145549.879936-1-bigfoot@classfun.cn>
References: <20240914145549.879936-1-bigfoot@classfun.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_075609_314763_6631747E 
X-CRM114-Status: UNSURE (   7.14  )
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
