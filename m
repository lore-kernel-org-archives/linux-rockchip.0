Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421AD6072C67
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 15:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ec72x3Cw;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=163.com header.i=@163.com header.a=rsa-sha256 header.s=s110527 header.b=U6mNLpTS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ful/X6MUr2iZszQuGqASoYg8HFyFnqmpWSi4tazowDU=; b=ec72x3CwD4tlR8JQQqo+Sz1n+F
	WJIxqwBlNAHz2z4OOU5KnNK35yPtPVe4OLlnoUgCvFSxwdORSb4upzJzFTsO0eIvPPM2Q9S41FTNU
	2LKfPq1Uzrd1snagX+STZwxfui+O4aTWnVbf1mOUdDOakR9+vuCe+LXe+A6NL/cF4RVkEhsAjBoci
	mu3PIdVwUtScKBGzCMmFnj5/EEB2P02wS2enGVaibq6Oy7oL4SzyxxiDXhekSybAJSDcXoogV5x9j
	kFWkoQcOEOODe+f65R5IwYg7dyqyl+rkySidH4cde+KyuuKQlcdhJI/UY+H3hU8Bj4kCGueW9DovB
	/WlUFHiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNu9V-0000000HBCv-2qHT;
	Mon, 02 Nov 2026 15:40:53 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNu9S-0000000HBAa-2KqN;
	Mon, 02 Nov 2026 15:40:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Date:Subject:MIME-Version:Content-Type:
	Message-Id:To; bh=7RB0aQ170QWbQt1olwfSEj/M8xmgDSopHSlP7JzynLU=;
	b=U6mNLpTS1KsSzZXH6WEp5pLq0NE7zqRcz+3QpM6i5mUpEnkGfIqWySwSZIvGqI
	P2W37B0T8bTd7N3G64R2Cnzzq/sxqnOonAIJ1oRtkZKJNkBFd6k/1oy8vSitUAX3
	geAy6nqh6RFuoFqo5Kv1HrNOHwVc69syVUuDnSaIvMV3o=
Received: from 4F-GAME.localdomain (unknown [])
	by gzsmtp1 (Coremail) with SMTP id PCgvCgCn74XvruhqEea+DA--.56588S3;
	Mon, 02 Nov 2026 23:40:33 +0800 (CST)
From: Bob Hui <bg9oxa@163.com>
Date: Mon, 02 Nov 2026 23:40:13 +0800
Subject: [PATCH v12 1/2] dt-bindings: arm: rockchip: Add ALIENTEK
 QuarkPi-CA2
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261102-quarkpi-ca2-v12-1-d749d9bb2bf9@163.com>
References: <20261102-quarkpi-ca2-v12-0-d749d9bb2bf9@163.com>
In-Reply-To: <20261102-quarkpi-ca2-v12-0-d749d9bb2bf9@163.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Andrew Lunn <andrew@lunn.ch>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, 
 Bob Hui <bg9oxa@163.com>
X-Mailer: b4 0.15.2
X-CM-TRANSID: PCgvCgCn74XvruhqEea+DA--.56588S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrtr4UAF45Ar47WrWrZFWDJwb_yoWDZrgEka
	4xZF15WFWrJFyFgw45Aa1xGFyqqw42kFs7AF1DAF1kA34qkws3Ka95t343Ca4Ikr43urn3
	CFn5JryxWFnxGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sR_pVbDUUUUU==
X-CM-SenderInfo: lejz05rd6rljoofrz/xtbC+RG8KmrorvF-gAAA3c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_074050_966199_8345ED87 
X-CRM114-Status: UNSURE (   7.46  )
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
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Bob Hui <bg9oxa@163.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a799bb843f74f..a3191bb909b28 100644
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
