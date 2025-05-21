Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3567C54F2E
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 May 2025 13:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gEFH1J8P49tQevlfWdurO25hxc2tDC3+KncjYV0Wk0=; b=Yf07WuQUhRxFZd
	assfqykHPjTCnCTtrWEcv5d6gyYrNuGyBGMVDHwFFAn8FE7h+Vo7xTN03ReJrDX1SQYHwcQz2gsyE
	CvocZBQq3CF5QUqLgj9WWUWBOG/1puSzNQrINMmTWScd+ie4DZGSYYhCcHLcjP3ej0mYjKsmfX1QY
	TKbtu72GTyBdjJggkyPsKQdYeA04Bzpas/hSHyLFCtMxoEgIvMGmGN4WiXOatRCiOmI6oL/NuO+5V
	mVLkuOXG2a/int9Kq5qOwUwOvntV520e9KqDwEPLj1+FQbFVsk+yir49m9Dw4A7JvQzbiCZmSUhcJ
	LnMN9iOHF60nXfPq9sKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjmy-0000000FzHn-2WvV;
	Wed, 21 May 2025 13:47:20 +0000
Received: from smtpbg151.qq.com ([18.169.211.239])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjES-0000000FtMA-1jvR
	for linux-rockchip@lists.infradead.org;
	Wed, 21 May 2025 13:11:43 +0000
X-QQ-mid: esmtpgz16t1747833079t1c7928dc
X-QQ-Originating-IP: gG6HJvN2fXEpEODmJrjE4nv+Yyd6CjGdnbmLoMkfNyw=
Received: from chainsx-ubuntu-server.lan ( [116.249.112.84])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 21 May 2025 21:11:17 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14355936894611199779
EX-QQ-RecipientCnt: 17
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH v4 2/3] dt-bindings: arm: rockchip: Add Sakura Pi RK3308B
Date: Wed, 21 May 2025 21:11:07 +0800
Message-Id: <20250521131108.5710-3-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250521131108.5710-1-i@chainsx.cn>
References: <20250521131108.5710-1-i@chainsx.cn>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: OZsapEVPoiO6pOxc+d1hsRvTEZycjdnMbUMdAxht8nuPD/WMn1ou3LkK
	l1POvN+hze/a0YMxJvhF5Q1BgtIcofDAn88g7EEiftTdQz6R2wRz1N6JIXGhGBG7Ki/oErm
	NFpuz7por0eksPZXuY8YAMzW4D4A5ea+RuQD9jxPjQHk6rAgB+aGjvHRVUdkFNrXj4Yx3H9
	FsKHVeke+rbfUdeOprQCyMNzIgRphGOtXwJKcvXADO4+9WG2MJYoCGlTsKVbwlGPOBn0Kh8
	u/N/tomGZwu1IALmt2YkKJIZMjDj4s1Gx+aAi4l/lZ6zwP0ouJa5K6rSoiwuW0y2tutqrR1
	PR5kzrtEpggOXPt1oJhTgY1ZpmPTF7MvGK+yIhZQu/l+sWitgQ7QTIOt+gJqAkQqBSD74K7
	C2sEbRgEc8PWqXJG+4KCxz4Heri4hiAz7LUTsenYofiVcNGoOGvs7aGXrF8+wfRtRdl+0iB
	i//Yemn2X+MhK+Co84y1gBUR/uGxzKZ8IySrSYrltrMPA7w6p5SBDtbJ/QUcbggMcPcL4AI
	ZESEHbmybIFG0yRIcihqGTX0EvSnYq6nfNWxfc4ZtMBQeYqIRsB0numyOF0/69Hvg4E/HjF
	sC/h3dL1D50PlhQG7XJhOYadEfYodyG/c2+rdrzComrsA7w936nML5mg0yW3KiZOicRNXwR
	netkytewxmxOtlmJYNF1HcF8SGRtbhHw5wCD7FsWbxqQ4QgQoxO+nUnh5amjEwb+4qpdZyl
	FtR5AJtXQUBU6DpwbxUZun58YJpfsctnqjH5pNYCDZSEdq4SQTyq0xbhZQQLZKeXm9cRHdO
	hPksbuQ+iA1O+FOiXtrZ7B2H2DZz4de6OvDB38Scl+jAlSDfTKAtwlzxDLOYYooskwjmMLc
	Fxssj1pM8WclKUUr8TeZ9iHYQwcXUjKqzGdBaWeSZhFc/XnKRh2VKBfCd9CsO8/JC9recyG
	jRYpQdU/ex1ZZ4P+CMt+4EcsqqidBgNlf3rpl9lNPFePTfiwMkiK3+cFFNLKDV0JGDU0J2o
	yFr0uVzCZ80POD4+HyvjjIOjif+lg=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_061140_968611_949A73BF 
X-CRM114-Status: UNSURE (   7.05  )
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
Cc: andrew@lunn.ch, Conor Dooley <conor.dooley@microchip.com>, inindev@gmail.com, heiko@sntech.de, jonas@kwiboo.se, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org, i@chainsx.cn, sfr@canb.auug.org.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch adds device tree binding support for
Sakura Pi RK3308B, with compatibility for the
Rockchip RK3308 SoC.

Link: https://docs.sakurapi.org/article/sakurapi-rk3308b/introduce

Signed-off-by: Hsun Lai <i@chainsx.cn>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 115c3ca43..c64adc0d0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1109,6 +1109,11 @@ properties:
           - const: rockchip,rk3588-toybrick-x0
           - const: rockchip,rk3588
 
+      - description: Sakura Pi RK3308B
+        items:
+          - const: sakurapi,rk3308-sakurapi-rk3308b
+          - const: rockchip,rk3308
+
       - description: Sinovoip RK3308 Banana Pi P2 Pro
         items:
           - const: sinovoip,rk3308-bpi-p2pro
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
