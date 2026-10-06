Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9248ACA5FED
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2026 17:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtZKbYxvbqNHR/dQ7hB0yV4eU7A2U1/NoVFQCDLKjec=; b=NpuyNBrQV+h0wg
	nME9gygQW+aTOgcIpS97Umdrp8LPgVNnHRNiH5nrOA/UJOexj8A7Nur0xblloWvSxjN4NPEYwVwmH
	G1jSqTRnFqiq/bzQ+5o05i8tldMVqoKPq4Wj3/6KTuftRampwWkaRYrjmlI+7MYo/9kEhM364npAx
	YoEEhPlFC9G+qcQamL/aAEp/BGBVm9oBsbk0bWue3xa+2hiXoSkXckKb7stPP5hg8fiw8kS5hfZrN
	/OqWGj5e2uvlR+oNetvRlbTCDrqjHEneic1V9fV/YcNtgmFlqRgukVcidgRXuozMObqVJWJXljgKj
	l3ceMnwuaXQwkbP6q3DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE8ds-00000001BRw-2DX7;
	Tue, 06 Oct 2026 17:07:52 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE8dq-00000001BQo-05IM;
	Tue, 06 Oct 2026 17:07:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Date:Subject:MIME-Version:Content-Type:
	Message-Id:To; bh=UTt+5FuHrUx1tCjYQAe2xq5MHeqwbx0v5ma8SnHJEo4=;
	b=KDi6f3/Tu6Oz28pOKPSp9Yp2ac9XsjbaoeRD8xG6bildMbQ6gchO4sdG7VWwiw
	zCllaq4jRg+Jq93Cc0wvX51ylR49X0Od+VWmFniNzmxnbgawXOcndBgr03+pezwh
	ViQRLwkyVE+JLZrVQlrBsUWOcMFq6UCIFOG6tl533XHdA=
Received: from 4F-GAME.localdomain (unknown [])
	by gzga-smtp-mtada-g1-2 (Coremail) with SMTP id _____wDnz_fJKsVqPjBSCw--.19378S3;
	Wed, 07 Oct 2026 01:07:24 +0800 (CST)
From: Bob Hui <bg9oxa@163.com>
Date: Wed, 07 Oct 2026 01:06:26 +0800
Subject: [PATCH v7 1/2] dt-bindings: arm: rockchip: Add ALIENTEK
 QuarkPi-CA2
MIME-Version: 1.0
Message-Id: <20261007-quarkpi-ca2-v7-v7-1-a84c6d5d6ef6@163.com>
References: <20261007-quarkpi-ca2-v7-v7-0-a84c6d5d6ef6@163.com>
In-Reply-To: <20261007-quarkpi-ca2-v7-v7-0-a84c6d5d6ef6@163.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>, Andrew Lunn <andrew@lunn.ch>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Bob Hui <bg9oxa@163.com>
X-Mailer: b4 0.15.2
X-CM-TRANSID: _____wDnz_fJKsVqPjBSCw--.19378S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrKrW7Wr18Ar17Jw13WFy3urg_yoWDGrgEka
	4xZF15WFyrJFyFgws8Aa1xGFyjqw47Krs7AF1UAF1UA34qyrs3KFZ5t343Aa4xCr43urn3
	CFn5JryxXFnxGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRiOzV7UUUUU==
X-CM-SenderInfo: lejz05rd6rljoofrz/xtbC+gzJN2rFKswN3AAA3Q
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_100750_484095_9BF9835E 
X-CRM114-Status: UNSURE (   7.46  )
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

Document the ALIENTEK QuarkPi-CA2, an RK3588S based single board
computer.

Assisted-by: Hermes:deepseek-v4-flash
Signed-off-by: Bob Hui <bg9oxa@163.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a799bb843f74..a3191bb909b2 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -182,6 +182,11 @@ properties:
           - const: alientek,clrv1126f
           - const: rockchip,rv1126
 
+      - description: Alientek QuarkPi-CA2 board
+        items:
+          - const: alientek,quarkpi-ca2
+          - const: rockchip,rk3588s
+
       - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
         items:
           - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
