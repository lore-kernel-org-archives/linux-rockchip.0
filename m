Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E592606A334
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 23:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EMZXRNeC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=dTcRlM/r
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ccI/zI9vo50zZgm63SHRn6gssaIVUUJGeOvMyy9kLdw=; b=EMZXRNeCjBk1emVkCZegWkB4g2
	F9w8iNv6owMvUmR4FrytZKdO/Mum/TCqqR1RtWHEpBUAIzs9TIaFPMDpuM3CdkqtE2wo0Q7H+gH1z
	f2f8UnhvF5Z+rSsXhrwl1E45WfhK+J9C4skx10M8wllJpaWigCTDuU267ywGY6/G57OVonXFXTayH
	ZUALPlIGolC0OomLvxdGGGK56NwnRMnBklXiNptY14/sv7Ey+SnUy7IBDBUF1bpja3LlIUGntIdAf
	OjPJxCMIoEutkr01FDow7xgyaFOHsth6kaw9sjPslxGfkIIgmidYyxZ6ERMTpKQCgo0ofz3O39byp
	l9+YxxiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTp6i-0000000AUGK-3fL9;
	Wed, 18 Nov 2026 23:30:28 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTp6Z-0000000AU9c-0WQy
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 23:30:20 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-c445c95d553so228627166b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 15:30:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795044617; x=1795649417; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7C5jMvL4BZCrVCkE7uNmOmEvbc8VSHqIMhSM8aawM+4=;
        b=dTcRlM/rKbNF2ELx2RLOzN397y4TpXqbYxlaKTmwvX8S9tX0f+aZw1y3zzNxTagiQz
         uM2Ec4EK0GJ2PAEIg4WdPneJPtnEjSzs8kOrcTJjlleZYzEuae4FkRXoJ0rXcxvHfqPa
         /vPyw3eVP2+HUt54w+fAE7ypJqW40/XtU8yYL/lauyqYIHUMbgwdBTMpOqDDsXa03k1f
         Bw2XOsWcm2dIlnu/qFjtwiseosEAIMqpbtdVWhj/rOF74OcMS74RSAs72S0j2W0pN7jN
         57mW/aW/7AGi0qqF0z3yYs3brL/24PA5l6c6KM/qFYDtIVDMHFHF1O/esXf9FFAkikZM
         bPUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795044617; x=1795649417;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7C5jMvL4BZCrVCkE7uNmOmEvbc8VSHqIMhSM8aawM+4=;
        b=n/zuCKfxRGun/xxWkrf+V/jwp/BGIyT/dQg6ZsCZ0aHHtRnL7VRy8uVmEpKXJZTZgu
         5X7ObRnGmxBtdbC8kRr73NL87MfVCAO37ChgaEpXxwiUEWOA6+TK1cC96vMG4ZEPEoqz
         OMjL8HJ9fAe26+KOO/4ZK2a1Cr+EA9MKXoQnPg+DBXAuRxHHKB77XQgH8xZfPyvM0Nf6
         f9FBrLIaPd4Qb0MJ8gJg7vDu4zl5309koSON2CqgUaUD6i/ebGbg3jQba1seLSyLNjKR
         iyBjjk+X+fqAjiAcuACcoEZdT6kVpM/vaGj3zIFpQGkRsCsq9EkX1L9enS/UcuepwPNJ
         CkFQ==
X-Forwarded-Encrypted: i=1; AL+hErEIVkARZB2JXxsOiUp9Qeb6qZh0g46DmllP1p9Zqy5wD9GjEJZAA7xFnf11yil8a+DhpgQadidrVkXThT1vHg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/Nv9rtUYsRWHCBd0M9ueoQx7hywMN9jvlK+CumOmGamanlo13Z
	e8k+ZhwW2+S/C0EaOtXUmczEgbkUWNWBr5M2DPRVz2D1hX6mTQPGmhQI
X-Gm-Gg: AYBFou2kZY85XnypNTwJF3p6OtYgGzqvxdAdfA8xB4UbmjklT5/1YhGvHDRxbB9g+o1
	XFedtxu8NQKeclHVimHxryNuZQL9aTU0SK3SxC/LeUrxxI9rUgY2ct77i2RcNLlY12F1SsEjaS0
	fDvNKOSr+DKpP3kLZqg2wM/4rEI+O9AbiLHx4p7eUaZXwQGjPY7W2GD4R0vb/V9RXlIz41CgMK+
	80PCsxmttms9bG7eR3Y03anX50wu1bl1NxZ/5SS/vYvb3KL73SzkLm/lddvArf3HI4IibAZgczP
	UA6mNdMJyBedeoSX12YIA5ywa3cGEahlRzfBs/PqPjJk9lM8sjWJxS/VWxvvCfx9QBseft1pHRK
	38fWU/p6H0xrw1pBOI+vJ45V6CL09SdHNMeT8m1nNijhA6GFXykPag6EEzbxagW5cIvWQmnxQnc
	zgM2aSMH+89W7baPTq5j2J9Ww9Ph8ybkuzjG/oEJq48AvOFja13zzgBylLM8gfwiAaQKU3/lu1J
	xpjcDriA9Lf7bwlUJkf/2aL2Q/b2Sd7fk/7qlEA+k7ozGeqrY3snHTiQY/Kn2+EInUrDRwWyVne
	2SOsyVrucrTAqRw7JaoNAE9yH1CquivXgT9WQbkRj1k=
X-Received: by 2002:a17:907:1611:b0:c41:266:68a7 with SMTP id a640c23a62f3a-c510e22ac27mr381182866b.10.1795044617416;
        Wed, 18 Nov 2026 15:30:17 -0800 (PST)
Received: from localhost.localdomain ([193.107.16.241])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c51234d2159sm47809166b.78.2026.11.18.15.30.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 15:30:17 -0800 (PST)
From: Dmitry Yashin <dmt.yashin@gmail.com>
Date: Thu, 19 Nov 2026 04:29:39 +0500
Subject: [PATCH v3 1/4] dt-bindings: arm: rockchip: add Forlinx FET3568-C
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261119-ok3568-c-v3-1-071840643591@gmail.com>
References: <20261119-ok3568-c-v3-0-071840643591@gmail.com>
In-Reply-To: <20261119-ok3568-c-v3-0-071840643591@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Dmitry Yashin <dmt.yashin@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795044612; l=1181;
 i=dmt.yashin@gmail.com; s=20260930; h=from:subject:message-id;
 bh=pPsEz//R/5mbHWtInqzwe95ndZ3s89rfdZjnVNEV7dE=;
 b=JqRsW3Up71ea4lmgiyptHVdI9zefUyJcZhSPDaVQD9V3n0RhfBpSIm3puK58UPdbQDyE6fu+c
 KGx8zjYmXDWCBUePjda/4weNDbAB1rAwqMACrAI4TImu77tHti9PyKo
X-Developer-Key: i=dmt.yashin@gmail.com; a=ed25519;
 pk=vBe9jaaOEH5bQEvfzb1tWOlz3AMIcXCu/GL/CdlwJco=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_153019_177903_309BE5AF 
X-CRM114-Status: UNSURE (   8.10  )
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

FET3568-C is an System on Module made by Forlinx based on Rockchip RK3568.
This SoM used by OK3568-C Board.

FET3568-C features:
- Rockchip RK3568
- DDR4 1/2/4/8 GB
- eMMC 8/16/32/64 GB
- RK809 PMIC

Add devicetree binding for Forlinx FET3568-C SoM.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a799bb843f74..30a6794861cc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -324,6 +324,13 @@ properties:
           - const: firefly,rk3568-roc-pc
           - const: rockchip,rk3568
 
+      - description: Forlinx FET3568-C SoM
+        items:
+          - enum:
+              - forlinx,ok3568-c
+          - const: forlinx,fet3568-c
+          - const: rockchip,rk3568
+
       - description: Forlinx FET3588-C SoM
         items:
           - enum:

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
