Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 964CE606A323
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 14:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xB9rkA40;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=163.com header.i=@163.com header.a=rsa-sha256 header.s=s110527 header.b=K8jwJSG0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtZKbYxvbqNHR/dQ7hB0yV4eU7A2U1/NoVFQCDLKjec=; b=xB9rkA40jYRstw
	ZR4FhEJlY57ql326tVs/Eo8ED6BXj8eYCYEo+tBi45bW3Xiax1zLqyiTdmyZDhcVYCfniSBp5OyOV
	uMSkOuo7LKZn4yDftqAVNT7ExyWlPcbhSuRWVGyBRsSWV/BgoXpewo1pMrFVVIJX1tsRhcX9+kjim
	QxgTgbjM2xXSS2I3hjgawaGPlo/TbUulAocM2JoxONb6MXCxMFTJPihKZFgcPbhdZaI6JbgOggKEx
	WBkT/nSGZLidjtYvJDYONwCHmuNY27hR8+I4qrOqAWp5RFm2vQ/do4OtsUmTRt7EF7xx6stmgSvXR
	zlmVep1Gc6cNjfXAQPQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJWx3-0000000C2oH-3m1L;
	Wed, 21 Oct 2026 14:05:57 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJWwz-0000000C2lr-26ar;
	Wed, 21 Oct 2026 14:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Date:Subject:MIME-Version:Content-Type:
	Message-Id:To; bh=UTt+5FuHrUx1tCjYQAe2xq5MHeqwbx0v5ma8SnHJEo4=;
	b=K8jwJSG0UuH0ErGa/Otekj2N5olAKTa0KMBJj+Pv3m9rBC6ED4uedBoFr9mH7u
	66EOkAJj3B0I2b12mXeILZ3KTFFWVmA3O48Cj27uawu/GATG56+vm0QfrzbM2MLo
	eyBdRElCmFp4m69IE0YmYwQeaTaz3rMp7eLjZWMZsZt+w=
Received: from 4F-GAME.localdomain (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wDnD6anxthqXSXxBg--.24760S3;
	Wed, 21 Oct 2026 22:05:31 +0800 (CST)
From: Bob Hui <bg9oxa@163.com>
Date: Wed, 21 Oct 2026 22:05:21 +0800
Subject: [PATCH v9 1/2] dt-bindings: arm: rockchip: Add ALIENTEK
 QuarkPi-CA2
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261021-quarkpi-ca2-v9-1-b75006b22bc5@163.com>
References: <20261021-quarkpi-ca2-v9-0-b75006b22bc5@163.com>
In-Reply-To: <20261021-quarkpi-ca2-v9-0-b75006b22bc5@163.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Andrew Lunn <andrew@lunn.ch>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Bob Hui <bg9oxa@163.com>
X-Mailer: b4 0.15.2
X-CM-TRANSID: _____wDnD6anxthqXSXxBg--.24760S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrKrW7Wr18Ar17Jw13WFy3urg_yoWDGrgEka
	4xZF15WFyrJFyFgws8Aa1xGFyjqw47Krs7AF1UAF1UA34qyrs3KFZ5t343Aa4xCr43urn3
	CFn5JryxXFnxGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sR_rb1UUUUUU==
X-CM-SenderInfo: lejz05rd6rljoofrz/xtbC+QytG2rYxqxboAAA3g
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_070553_976828_3065261B 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

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
