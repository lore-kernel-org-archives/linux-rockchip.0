Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97356CD5BB3
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 17:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z9teCkaO3YNQBXuOsY3lbzEYfKRvISmUTQ6LkwCT8ys=; b=TZkISUFyf66BOk
	WxfuvxFGuELVGeYV9Omeu1EEWvdUYNbi5P8XuczEh/F9l28KjnA0B6uzzLBIzosseSazDuMg/FisP
	edhCIZI/fo0xoUa+wArGmOzIsZGlKB/BJqKxRAzz/S+yAN96gH2KzyR+QGWEO9BZqj/5Ju/VpQY/X
	yHK+oEaQ/i91P3oTOZMkL3XZvszHif741/1cwPwYkrRu9ekCVuDMsDB8fH0WLEaK2RJoZCuvLDPVj
	8O91hDF+c7mq1byUKJDRq8Axkjaywweglgpg++dsbUt4Xh9QgdaXBedyy003+pmdWfkxJMVZ20q/O
	mheROWVmO6CwrIakthFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQU03-0000000BbVS-0dbS;
	Fri, 22 May 2026 17:49:31 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQU00-0000000BbUn-2Wvt
	for linux-rockchip@lists.infradead.org;
	Fri, 22 May 2026 17:49:30 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-bcc9fdc959cso1405438266b.2
        for <linux-rockchip@lists.infradead.org>; Fri, 22 May 2026 10:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1779472166; x=1780076966; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bz+7AE59b5o1Q2Ik4hVqizrjn40vGbbteFbT2ZCbAIA=;
        b=hRuhFUK+BIz5iqGhowBlDaY4WRW8ojw6M7AcYC4qaYFHCOz4Tlwkf7ycofnzp3e+nN
         YjH2eSQGxkMKlaZtuBkHO3OOCtOuXjpc7EHZmKFFDgnpBwKJSAi0yFPdh36KM8NM5JL6
         CMT+oeegKhpO9zOpVmExXvkeRxZtz+ZG42nGs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779472166; x=1780076966;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bz+7AE59b5o1Q2Ik4hVqizrjn40vGbbteFbT2ZCbAIA=;
        b=OP+MnzWKgbj4K0uggbqp7POdreczpj3IlMkRBwMjY4GgbZ15ECdPv2epgoHAsZanKO
         IPXbNSvt9pmQj7u0V5NW2mVMRenEuLmrCN2AHmrZCZIdTTb9OEN2uOLP/gqrazIQ4Qbb
         EsUqH2CZXtpTxDYxuy1NGTTq9939ldtFuIjg1JIa9A3AZMxk7NkZIkIpM8CbRdz1cCXv
         JzeZ2gPabpgCNb2mg6um+iGBOxobZ+GF9i2McEoZa9Eodk8chH7QFogqiDZZ40/xz3ZA
         SGxnkJ/kCZZtxPqTKbcfApICgOFeup9qJ+1qx9UrU2IAP+xVLmOfAKOX4A7hv8C0Lj7b
         qyKw==
X-Forwarded-Encrypted: i=1; AFNElJ+O0MNYPXWlPJB7pONH7JI0Vv/+PX2lJC4ty5e/ZLpVG8eH4iTKK7IGxjLE1TmNj7TsOOnoTLNCWfQ4SQCWPw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxYr4tLFBffNdieHj+EFYuPSuvZZzW5aSKUd8Jz4kbxcR1v4p7J
	sDLamnZd4i4ES2c0uUfqFLebqh3sFXtEnf6fE5innKW8GXxTBqXaP5FlC7NXWwpME+M=
X-Gm-Gg: Acq92OHyyCKeXlmpq6oc6gPq5fTkXlKDqvgI0dH6DZO8IwAmnnLnbkeO3BlETtwvTmq
	zBzzGU1RNY6EPmXx8nHFaBzfHH5db2dZAmx0LmzcHgMuMIpzkp/cM0Rn4FAKNu9u/AlNh57O7l4
	71o7U+0oEKMNc/O5oooFS8lZxlPRPsovy6+tY6fR5kpBncOf4d7p4W/yr3ZOMN+O+QoJNNg02HI
	Szc2SS3ux2SzQBnnLeUr0LRrARJ8IjOrJLUFT3IBnOdXz1uDKRYLKAKG1+4Cxz+RaW6iPjOKa5k
	xIwI48wnJDc8YesNTrqN621VRUlJMKDKJZzwc33yXe6BYYbFbEglY1xnaNIDj1EVVtueNcaOF/Z
	KmgTnTVkT08DQ357Bcrmn3gNPyXI7945/K8apHW6xlVd0vuqjGaOBGH8txtchmDQXF5gC0N6Pc4
	PS/tAEErVJf+GCIx96r5r8wJG0rUk1c/lDfm8ll/sywupufIIczEgDGxmBySEHOkP80TRs1w==
X-Received: by 2002:a17:907:fd8a:b0:bd5:18ee:a54a with SMTP id a640c23a62f3a-bdd2293ec75mr322856166b.8.1779472166175;
        Fri, 22 May 2026 10:49:26 -0700 (PDT)
Received: from thinkpat.amarulasolutions.com ([94.162.24.211])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bddc5eca6f9sm74302366b.38.2026.05.22.10.49.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 10:49:25 -0700 (PDT)
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
	Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Subject: [PATCH 0/3] arm64: dts: rockchip: Add support for Axelera Metis SBC
Date: Fri, 22 May 2026 19:49:15 +0200
Message-ID: <20260522174918.61523-1-patrick.barsanti@amarulasolutions.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_104928_648179_C065BAC9 
X-CRM114-Status: UNSURE (   8.28  )
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

The Axelera AI Metis Compute Board is a SBC based on the Rockchip RK3588
SoC. It offers efficient AI compute for multi-stream computer vision and
generative AI applications in a compact design.

Product page [1].

This series was tested against Linux 7.1-rc4
(5200f5f493f79f14bbdc349e402a40dfb32f23c8), and aims to introduce basic
support for the board, which includes the console, the eMMC,
the two Gigabit Ethernet ports, the four USB ports and
the HDMI connector.

[1]: https://axelera.ai/evaluation-systems/metis-compute-board

Patrick Barsanti (3):
  dt-bindings: vendor-prefixes: Add Axelera AI
  dt-bindings: arm: rockchip: Add Axelera AI Metis Compute Board
  arm64: dts: rockchip: Add Axelera AI metis-sbc

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588-metis-sbc.dts    | 840 ++++++++++++++++++
 4 files changed, 848 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-metis-sbc.dts

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
