Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95F27C53200
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 13:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MeINKn7bv5D/qB7o8mZkC3F/qTIpB0pUxjUDpB9MRqo=; b=2ljMGFcWjTipZz
	e5xgKMlPFTEVuOwg+NUoHkTgvgIQ48waR8BXVojkVBMIDCT77Yk14+zE93nCv9fuxzaV6/HVsJ0Dg
	N9veFzVHut9wKlzhrmb//8VQbnyBl7Ttfvi7nq72Q9G6Zxq1D77oTYImP9zPDZqNAetGL5Ux6iv1W
	7u44C1X8qUnSBz5P/C//7b94N0YNVuKS+kSyokvPR9tq2hpDhT68rAXVf9ABecToaQpyHpStn44H/
	nC9eXBsSThJU6SCvhHpTavulv+ZqMq122J6z8gCaObI/FtdetRhNyjbI8EXFPDQurg/t2u6dHYdiO
	864075SIvY1vHAoL7xKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4Sn-0000000880o-1DpG;
	Wed, 29 Jul 2026 13:36:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4Sc-000000087rh-3RlS
	for linux-rockchip@bombadil.infradead.org;
	Wed, 29 Jul 2026 13:36:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ESgTvyFk5x4edZWjL4sPAzl2lLq+eyEVMxFH0mwAGdQ=; b=o05uSGGtE3doRYiJOPyI/SOX5Y
	kDsqft84d0RC2ExfVOxRpjtf8oKU/l0iYhJo7HZnkU9gfQ67E2TGRUuwH3KJEd65IJ/WqpgmeT5jC
	1EwkYqgUP3/626vYI7rPfFR5U6OAsFk46ESgtw3FWaAcsNIep/0BP+P4vdWYPjOH9mjOanFcyCkW6
	fuQPSHm26MWd7Ygmsw9rVFT7tnUdckdrH4PRdPew/OPRWGBrCj24/VAQ8/w9VO3xpJOoAL51jk+E5
	kc7HH1ynY/oLtBVBaje9pnT2I5VnSb/2LJs2mArBMLMTrTKxznCaHRyHBwIakWj3eH3aVYBSDbkzn
	pBtGALVw==;
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wp4SZ-00000005r8K-3hly
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 13:36:37 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-6a198cdc4e4so462768eaf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 06:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1785332194; x=1785936994; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ESgTvyFk5x4edZWjL4sPAzl2lLq+eyEVMxFH0mwAGdQ=;
        b=DQtQMjLos6UM8LUqYgh//vurlgjG+8QdnZf3s0gMtsfOnO2EmGYq1LlLBvbU591ZYm
         hQuakOI42uIOYUeepJeO4ITsq5/BWmsW0InFl5vnr956w0qOEoR3JVuH8QagIErVFgwN
         iN7myUh8z3Vvp4DH8X+vk3j54eALDpK3U4mt8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785332194; x=1785936994;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ESgTvyFk5x4edZWjL4sPAzl2lLq+eyEVMxFH0mwAGdQ=;
        b=O789HPAbQ9n/ZzbD+8peSU8eUp+PaXKFWdh5cb6RayLrqe+5gRvjiKdMXjW/KhFQVZ
         pRZDmQppZap42pRfoiyocoNrJkrP2kS/L1+Hxczf556edFvTKouzM5S9AntYsefSgEOA
         Oj8iTqLjvTPeTB7LYKr6ouqjWaHQQXECgtDSgaG1vp6VmrP065QzZ6VL5GHY5I1SoiJH
         /q4DFPAuAplBno2EpSDfRDiH0tSbv90uMZQFrsS9+WKEOj6z6Jru+pA8FjLUKycXkxbk
         y7RdgebVKgPCfl5LxUK22NCK49QdaFw/4g8daBlsM7olR4p4QczlvQ/X5P7OfsXj7IUT
         P9lw==
X-Forwarded-Encrypted: i=1; AHgh+RqJEEPKKGeow75tjGKI4sLbj6Pjs9UdRr/diGUWlOIpg0V2q22DAq5LWAL2kGEXnu1SfDpKcFEOMnrMUUr4+Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YywIfM8aod9s8mndgjIfEz1aPoIZuiTvVpq3MufodyXH2ZRlCOa
	cUY/mhmAuon0J9PvZ1g4nXWlABzB73qzE0SY7U666BfHjJqUjolIibpkyG2+ofWogg==
X-Gm-Gg: AR+sD10u0NqgZBG/jm4xCVX0tNE6TsGEDltLqYGwydCjiCyc07AbYOUqgttew2J55vP
	K65p22Wjj3p1WmjIY7z8LcWu0sKH7/NP+TAZCbpQrY7oJYX0pwYyNlHWJqMM8J6n5fQHqY0lhYU
	UhnTy32G8ZV1UarOpS1hCsd326oqqQAjfByk2yk6m6mnFe3pnexyREme6QwG9WpOnNYC1+WvXai
	cl65XaWkbZkZXLjIgYrivI3i/4lQYw6aAeY0ELz9VW5AF3bPeriy/gH3M80KYjEUjat2fQrHHZK
	VitpVB6Y9Uc1fEZtiwQua8albiUCeom2hevMPpbP2ye6/g/KE+hXfS9oLnPqK8I60lCef7kjdNs
	LT8L7cIf5+S66mgbnqliDO0VTIlWCQM5BK1j4VBFY83+4KgqtTRVuqoNZI5v//LSj0enFEuw7gS
	CY6xuqGwTud3OmuSR3jMnqSvsP9V/32Btj7CFouo8l7XavFlqgO33iN4U=
X-Received: by 2002:a05:6820:4c89:b0:6ab:5b3:2fb0 with SMTP id 006d021491bc7-6ac96bdd68emr3516421eaf.42.1785332193876;
        Wed, 29 Jul 2026 06:36:33 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6aca527fe83sm1956196eaf.6.2026.07.29.06.36.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 06:36:33 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Fabio Estevam <festevam@nabladev.com>,
	linux-rockchip@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Simon Glass <sjg@chromium.org>,
	Albert Aribaud <albert.u.boot@aribaud.net>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Rob Herring <robh@kernel.org>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 5/6] dt-bindings: arm: rockchip: Add Luckfox Pico Mini B
Date: Wed, 29 Jul 2026 07:35:52 -0600
Message-ID: <20260729133609.3465563-6-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260729133609.3465563-1-sjg@chromium.org>
References: <20260729133609.3465563-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_143636_206653_77A8C100 
X-CRM114-Status: UNSURE (   9.84  )
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

Add the compatible for the Luckfox Pico Mini B, a small board using
the Rockchip RV1103 with 64MB of in-package DDR2 and a 128MB SPI NAND.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v3:
- Place the entry with the other Luckfox boards, in alphabetical order

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..ddce8d1b5a3c 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -791,6 +791,11 @@ properties:
           - const: luckfox,core3576
           - const: rockchip,rk3576
 
+      - description: Luckfox Pico Mini B
+        items:
+          - const: luckfox,pico-mini-b
+          - const: rockchip,rv1103
+
       - description: Lunzn FastRhino R66S / R68S
         items:
           - enum:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
