Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 814CD606A327
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 13:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GnunpXe9;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=163.com header.i=@163.com header.a=rsa-sha256 header.s=s110527 header.b=Up/t/UXz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=yxM5X+MSG2uQBe5HCRDahbHReaefdQKbF7fnRr0d/JE=; b=GnunpXe9UPNhdPMlCDx//kx4Kc
	nLBwp1G+RnWlK7vUNUIgfK+K+icsU3Ktd77ICOfeYKct7AjAkeHl3eK2nuGoN7cWlUiyy8rt0zlPv
	6uJ77aO09T4MFF21DmrodqJUaT7WQliM99bcmc3/BlKAzZoBge6SNDGOWxQzlmdqCy53nD46Of/Q0
	p6UMi9ByXKVoNz/akYiUI71mpSna4GUMBbw10cuLfzrPumznngU6wsumi7mO51je3IJyMNBXQNMAd
	ZmPtRxSTs3ZTHqmY7QuqMPVTegGJuOuTRYSOtc5VzrcyrNdL8UwPZUXLGH1eFrXWIDi3s3us5H5dF
	cveqlGVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOEoK-00000002boL-3RwP;
	Tue, 03 Nov 2026 13:44:24 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOEoE-00000002bjW-0MYf;
	Tue, 03 Nov 2026 13:44:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Date:Subject:MIME-Version:Content-Type:
	Message-Id:To; bh=yGb/61y9dkyB9MrYGCIo/Wr1qP1fqSYSE3vu/mqfWqs=;
	b=Up/t/UXzE1wj8e1N6/ueAZWqz+yt6DUj8m+a2tNNvF/9sVEUrxbc+YvbhPkzsw
	mH8pMDbEMNad/Xo5dHqW71VRY9mmnb3BuMPLeC2WeA9GLPgsXl06ABooFIWBL4yc
	whicKmGM4slLIq2KHdJDMzfxRpuTEBwkadEi6y616cFNw=
Received: from 4F-GAME.localdomain (unknown [])
	by gzga-smtp-mtada-g0-3 (Coremail) with SMTP id _____wBHNzkg5elqJ57LEw--.46800S3;
	Tue, 03 Nov 2026 21:44:03 +0800 (CST)
From: Bob Hui <bg9oxa@163.com>
Date: Tue, 03 Nov 2026 21:43:59 +0800
Subject: [PATCH v13 1/2] dt-bindings: arm: rockchip: Add ALIENTEK
 QuarkPi-CA2
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261103-quarkpi-ca2-v13-1-ad8c30cdb67e@163.com>
References: <20261103-quarkpi-ca2-v13-0-ad8c30cdb67e@163.com>
In-Reply-To: <20261103-quarkpi-ca2-v13-0-ad8c30cdb67e@163.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Andrew Lunn <andrew@lunn.ch>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor.dooley@microchip.com>, Bob Hui <bg9oxa@163.com>
X-Mailer: b4 0.15.2
X-CM-TRANSID: _____wBHNzkg5elqJ57LEw--.46800S3
X-Coremail-Antispam: 1Uf129KBjvdXoW7Xr43WF17Ww13tr1xKFykKrg_yoWDXFgEka
	4xZF15WFWrJFyFgw4rAa1xGFyqqw47Krn7A3WUAF1kA34qkws3ta95t342kFyI9r43urn3
	CFn5JryxXFnxGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sR_pVbDUUUUU==
X-CM-SenderInfo: lejz05rd6rljoofrz/xtbC+gOWBGrp5SNlLwAA3k
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_054418_620157_0766DC80 
X-CRM114-Status: UNSURE (   7.18  )
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
