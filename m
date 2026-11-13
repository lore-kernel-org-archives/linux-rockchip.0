Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D41606A327
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 11:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EuzjV7Yw;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.a=rsa-sha256 header.s=google header.b=je9CBKzV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=a6WYsDhl/0RO81a20tKEOGARWqPdpBbQ12d1+Yl/Afc=; b=EuzjV7YwzNV7r/8ZbxQN8e7Q2u
	oOuSWPoNOyCLUxflyhaDPcg6eLcTGkxcJJbUbJPsjrlFqK+LIHwBRC6qWynyA9mDhrQHbQXE/63DA
	cHCAB5Ls/k49q4PprAn2Wsc+N3f9ZfOSGmK1vfh6+p44G6XJFTvOCWrfhq+SCFLYzYaROVp8tB62z
	nfFBqBLgcmfkXZaxRh0nGZx6VXttrNVMbLUA/DUS0Gl3P2wMNLYc2OVt2IasAfxjDSuqEnZw7XUUH
	4K+yuSelwRGyCwtzPxZtVm1LR+ndR1htMtABlLCPJPr/indOFySYRGMCVNs+ioi0kRmguYfvWBO3V
	7/ZMtTUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRpbt-0000000CYUR-0QNF;
	Fri, 13 Nov 2026 11:38:25 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRpbl-0000000CYQn-3e2Q
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 11:38:23 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-4918c2d727fso369250f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 03:38:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1794569896; x=1795174696; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5fsU8nLmnwYSf7euVQNfNeMa7vCUCe7G54B3850badQ=;
        b=je9CBKzVqFmK8mRuG/JDg6UbifMCm5C2VihFt23bRWTy5bNVHbf6OH44WtW6C/nRTw
         yTCSSI7U0bwoj8WWuXpOIx+R1I6Au7MCe5/7dzNb4JNnjRlf76yQ30o2ehdkgbb4i/IJ
         CqEKopn5pU6sjM1Q0gZ8p1NLF2Ub/TBZBiIto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794569896; x=1795174696;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=5fsU8nLmnwYSf7euVQNfNeMa7vCUCe7G54B3850badQ=;
        b=wRI1+7opfNgCZ6UzTCFM9X44Q3sNwpIa7FLliYY+RKmqCyVLdudOkc2fmQNRkVYeKX
         veecbjKgzVSPMr0OuveoYtstoh+D8zaLNmbHkQSTmjnqp/RCGo58yk9vF2855cLDE/2s
         zKAIeBYkG7YUl8wee1NgOHaaT3N3VULCN7JozObbgbqtWAF8YPVN9yeL/jEmnvHOcOxS
         tRM5U1cXmerCLAtwdBOr69+hYvB6rbET/i7IyCFwYyQ2RKlX/zrpe4EAp6n81zrkSe49
         Egp/ZL8QA05O28HtNJSNKQJ7p7W4rbYwOGmpNeOmPOh05clOkaoZbnsvnJFMvVMCrAMw
         RDyg==
X-Forwarded-Encrypted: i=1; AL+hErHLs7ACYSWa6Jrarm8z0dWjQG0Hty2EXmpCTgQEQc7AGW815JfaMYc4xiYTIHw9skQprUKdH3Lfv8DWuh5T4g==@lists.infradead.org
X-Gm-Message-State: APuU4Z9Tfr8Mjq7t/19rpEfsF8H2t22YJv1GQwX9cEssRcpNRJqwLakw
	gKhg4y6cCLiqgaYxOYbAXpWteDRUW9Qz5awEKdk/VKHPHkFkVc+Eg77VZBdzSuoABQ8=
X-Gm-Gg: AYBFou1yHZ0BFNe+gC1Fn6cpKlIAebeSqWSSWjcUNoSeDHIACjluAr/WL8uIyPBs4AT
	3iv6DvxXLDDHM/BJSKvo0cDEcspyjjPs/WL48juFhL5N1PrfkeI1qppNIhUVniYjK0BDe8dr4r7
	4idWz0MgsXZl3M6aYZAx3wJny3Z38lYBq/YkGv3ey6GYh6TkdA2NQxcyED4bQsUHEIM6LLDUl5M
	QSpl61Kcr/C6l3suqCBWZK+FhSC2UQtOfq+0MF1wISllgKnT3sCBNq2+PPnR02rFys9pDOIlYUc
	7rrpVO7eTvlvwVJT9j3QaL+wWn2x3jL0G7hSXnk4g4VaEnoMNcdvHUURpec5tGV/wrDMv2wzVCu
	U3rCFvfGIfBAUBMx+ceJ5qptcntJVN4zPdNgbddWY8II2FG8SGlq4UjKD1c4TL1goXeI/T7MJcd
	fshvNF6+hT+P2Z8AUNT3fA6z3vit/XZtIywG1jkM/mIEDmfLW/ZvemH9zRkjjLeXsh+umJQ/zM9
	sD7sdkfwXbR+8cvcPTA0cPdLYTmASyIIs0w85AP0CEpylJ/xoJnXC6Al9MvNtIhdONmqdj83Yjy
	f06JYh31qldo7TAePd4NB3gFGJajQyswDPPwBLhIpf2IiQ3MbsrRarxBTyDQ/32QNkC7ot11z/H
	O0Wl6HVWuFYwemWs8Uw0cAA==
X-Received: by 2002:a5d:5f56:0:b0:48d:f36e:fbcb with SMTP id ffacd0b85a97d-49c70ed9069mr5731903f8f.14.1794569895819;
        Fri, 13 Nov 2026 03:38:15 -0800 (PST)
Received: from thinkpat.amarulasolutions.com ([2a07:7e81:b71d:0:3e39:d071:1d81:5914])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c5d03b10fsm5448492f8f.1.2026.11.13.03.38.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 03:38:15 -0800 (PST)
From: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
To: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-amarula@amarulasolutions.com,
	michael@amarulasolutions.com,
	dario.binacchi@amarulasolutions.com,
	Patrick Barsanti <patrick.barsanti@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add Axelera Embedded 111c
Date: Fri, 13 Nov 2026 12:38:07 +0100
Message-ID: <20261113113808.1779860-3-patrick.barsanti@amarulasolutions.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261113113808.1779860-1-patrick.barsanti@amarulasolutions.com>
References: <20261113113808.1779860-1-patrick.barsanti@amarulasolutions.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_033817_922404_A450EE2D 
X-CRM114-Status: UNSURE (   9.41  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Axelera Embedded 111c is an SBC based on the Rockchip RK3588
SoC.

Specification:
- Rockchip RK3588
- 16GB LPDDR4
- Axelera AI Metis AIPU, 4GB/16GB LPDDR4X
- 64GB eMMC
- uSD slot
- 2x SATA ports
- 2x Gigabit LAN
- 1x M.2 E key
- 1x M.2 B key
- 1x HDMI2.0
- 1x USB-C with DP
- 4x USB3.1

Link: https://axelera.ai/axelera-products/embedded/111c
Signed-off-by: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes in v3:
- Add Krzysztof's Acked-by

Changes in v2:
- Rename the board and its compatible following the name change from
  metis-sbc to embedded-111c
- Drop Conor's Acked-by since the compatible has changed

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a24949b163cf..79a45a4bce65 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -120,6 +120,11 @@ properties:
               - asus,rk3566-tinker-board-3s
           - const: rockchip,rk3566
 
+      - description: Axelera Embedded 111c
+        items:
+          - const: axelera,embedded-111c
+          - const: rockchip,rk3588
+
       - description: Beelink A1
         items:
           - const: azw,beelink-a1
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
