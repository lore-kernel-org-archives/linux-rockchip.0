Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA28DC43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jul 2026 17:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bDgljJM6gt9cRrGAJ1ILkOUnBwnZ2YfCBIMXFlugqFI=; b=Ir9auBkMEbSr80
	1BDtM/i1e2wOhdwX7Fp+44x08Gzp1jsllN78jeq0NndZ+2XuzMShbZwrvXMRVhmjf4B7Gs4mdR3nb
	0+vR5rfb27BH4Z7y4dWopQebw/ZC0UPqvZPhToXYh22Tnv5/k9v0+kh55Y5gdZzuyRvKKMJRfD+Id
	EedB7jG7ikdRq+RmUaTO6N07ah/KSZIP6VS4QN/mzV8mI+Ck6ykrqisxZkOuNv7IHVdC6OKX5BitQ
	V3eqz0oZo8zUOK/vYzJQp6oLyYpRsxn3X0LG63eTfhAEMHidLPQzkNC/F9g3c+CaZWPb7BlQ8o41F
	CzL/6ayKf7YEkcgFv2mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whWY1-000000008fX-2VdV;
	Wed, 08 Jul 2026 17:59:01 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whWXy-000000008ef-2JCm
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Jul 2026 17:59:00 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-6986578d8c0so51198a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Jul 2026 10:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783533536; x=1784138336; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=mQO7OwEt2ayLBwYgGRVhBYGfbjzxMLDxfhpK0SkwD/o=;
        b=hJr2SRc9NXYHURux4FYF9sJyFQ/a43AQouNbQ2HUnYIFuW4x77tLJ3EB6pD96stADM
         jFMIr33DwV+4Isd+hs6OM4Uku9VUX57aYnMOW/F1txyh9EmG3ZqLvwMXWExr61as3EEz
         DJGF5DIwRnGVkhQXy3UkB1FuE1fIGLm0dZgX5Wl2+ej8LMLTu2Q54tiYhxjw8WPaEcmz
         joOwIl/g3YwZn4Js2zBRUJ0DDhIBfEwpGkucvyp3kH12gSA76EXVNyAsDPSFG5rbqsvD
         G0RI5SVF15IgEpRxf92U8vHdppMqOYkG3YWpF9JjZBraYx5M+x/NyfzbnjO0EgrwuKne
         aIUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783533536; x=1784138336;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mQO7OwEt2ayLBwYgGRVhBYGfbjzxMLDxfhpK0SkwD/o=;
        b=Q/WBfbCN3yEV5azIlU3AwlGjpZ4B2Al/jY6EjFAFHeQzlfJXMZYPzEdYFfr4Bgonlu
         TZis7qmZyZTFQWTVyE+oGGP1nIBGz9x87XbbAYywGZ5Abzed3pwAX6K8MWTr7tTyDM4i
         w4qAADAfYVg76DQey8Tiy2vSalj35wN7Ce376O71/oCUHFKS/MnkbJylHBtqZ/l8/DL7
         5iQK8nUzFGZNpyKf7Ft9bKceWDvUp031T0Z/wfrHC8v5bXdBVN6Oy6oq+BoRtflIb7WX
         ntxcPSm1QnmeKfUBVby2T2G7IfumnEwdySOA1FuOLH09aj9LGzfJaw7B2m2d8cMhRcKu
         Ceeg==
X-Forwarded-Encrypted: i=1; AHgh+RpvTi74bIEMa28TcfWsgA225M0f5UIXJ87AZnKlXVZ6DMjzhz6nPt2UkKgwmkrmBg9iH1s4HkrZZdSC71FsZA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5Exwx3AXKZUUCJU/qwpqDMgsh9+8ptBo4LkcfvvMtC9Knvx1T
	ZGLmeXyagdP5EkYbfK70XNSOtSpqOykskmTDSuS1akWO1btcZs81+tLP
X-Gm-Gg: AfdE7cmsLhm3/AZ6nIPbDS19g7AreQV7+c57K3IDdDrz/BzJ3LYJa8q1mYQmypH5GWw
	Nkw/d/KZ8kl3HeWF8x9vupVic/AU9HKZwVTPsrEcleS05tIlhkxxikHDz0DRGjeO9ZkcvUeJhfX
	U4LlCDIUPgq5ksOOz+kzvqmvh4wNwbQ7WU4ieWJ/KxOXFj73/hzlE+EGe4X8CmKJNgyTuzRnD4d
	O88ij7+cBKozvRAv04yTMUPJFU6NV0TVcnbWh9TUUoird63MddrPfCLw6dctWjba15XvT6qNM9k
	shH9PlLN491pvXPWIt4oKNd8wx6d+Wczjq/+29c26N+JiZoUT0KB2u5V6qFwxB+4dUnV6nPcJv0
	TBfriO/7k2LVw42bp6HW/MjCEvsC9HHg0hZa6g1RqqaRLvTDdvbuqFYxzGbWBS+5Ngeb5EYjeC7
	8kmGxegw==
X-Received: by 2002:a17:906:4fce:b0:c12:5e26:da50 with SMTP id a640c23a62f3a-c15ce14c65bmr157380766b.65.1783533535639;
        Wed, 08 Jul 2026 10:58:55 -0700 (PDT)
Received: from olympus.. ([2a0a:ef40:ea3:3f01:2e0:4cff:fe68:285])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15ad9bcc26sm357653666b.34.2026.07.08.10.58.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 10:58:55 -0700 (PDT)
From: Dawid Olesinski <dawidro@gmail.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Corentin Labbe <clabbe@baylibre.com>,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dawid Olesinski <dawidro@gmail.com>
Subject: [PATCH v2 0/4] crypto: rockchip: Add RK356x/RK3588 cryptographic offloader
Date: Wed,  8 Jul 2026 18:58:21 +0100
Message-ID: <20260708175837.1718437-1-dawidro@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_105858_608648_F0BC249E 
X-CRM114-Status: GOOD (  18.93  )
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

This series adds support for the second-generation (V2) Rockchip
cryptographic hardware accelerator found on RK3568 and RK3588 SoCs.

The IP block provides AES (ECB, CBC, XTS) and hash (SHA-1, SHA-256,
SHA-384, SHA-512, MD5, SM3) offload via an LLI-based DMA engine.

The series is ordered as required: binding first, then driver, then
the two DTS nodes that reference the binding.

A prerequisite patch removing SECURECRU reset definitions from the
non-secure CRU driver is sent separately to the clk/reset tree, as it
touches a different subsystem. That patch is not a hard dependency for
the driver to build or load, but it is needed for correctness on RK3588:
those register offsets map into TrustZone-protected MMIO and must not be
accessed directly by Linux.

This work started from unmerged patches by Corentin Labbe
<clabbe@baylibre.com> posted at:
https://patchew.org/linux/20231107155532.3747113-1-clabbe@baylibre.com/

The implementation has been substantially reworked. Notable changes from
Corentin's original series:
  - DMA descriptor race condition and DMA mapping leak on timeout fixed
  - Per-device algorithm copy replaces global device list, removing a
    locking bottleneck and correctly supporting multiple instances
  - Runtime PM autosuspend added; clocks and reset gated between requests
  - Multi-SG hash requests routed to software fallback (hardware padding
    engine requires total message length upfront and cannot maintain
    state across LLI boundaries)
  - Hardware interrupt enable register write corrected to use the
    HIWORD_UPDATE mask that the hardware requires
  - Software fallback for all registered algorithms; statesize promotion
    for export/import compatibility with ARM Crypto Extensions drivers
  - SCMI reset and clock references in DTS corrected for RK3588

Tested on Orange Pi 5 Pro (RK3588S). All nine algorithm selftests pass.
AES-CBC throughput measured at ~100 MiB/s with cryptsetup. PM
autosuspend/resume verified over 1000 consecutive hash requests with no
errors. 20 modprobe/rmmod cycles produce no DMA coherent memory leaks.

Patch series for the crypto subsystem:
  [1/4] dt-bindings: crypto: rockchip: Add RK356x/RK3588 crypto engine
  binding
  [2/4] crypto: rockchip: Add RK356x/RK3588 cryptographic offloader driver
  [3/4] arm64: dts: rockchip: Add crypto node to rk356x-base
  [4/4] arm64: dts: rockchip: Add crypto node to rk3588-base

Separate patch for clk/reset tree:
  clk: rockchip: rk3588: Remove SECURECRU reset definitions

Changes in v2:
 - dt-bindings: wrap example in a bus node with #address/#size-cells = 2
   and add the SCMI clock/reset dt-binding includes so dt_binding_check
   passes (Rob Herring / Krzysztof Kozlowski review).
 - crypto: fix Kconfig to select CRYPTO_SM3 instead of the non-existent
   CRYPTO_SM3_GENERIC.
 - crypto: drop IRQF_SHARED (the line is dedicated) and request the IRQ
   only after clocks are enabled and the completion is initialised;
   reorder probe accordingly.
 - crypto: set a 32-bit DMA mask before allocating the descriptor table.
 - crypto: suspend the device explicitly on removal before disabling
   runtime PM to avoid leaking clocks.
 - crypto: call synchronize_irq() on the DMA timeout paths to close a
   race with delayed interrupts.
 - crypto: convert fallback statistics to atomic_long_t.
 - crypto: use cpu_to_le32() for all LLI descriptor fields (big-endian
   correctness).
 - crypto: read key/IV with get_unaligned_be32() to fix an alignment
   fault and a big-endian double-swap.
 - crypto: fix the CBC/XTS IV backup offset to use the processed length
   instead of the scatterlist capacity.
 - arm64: dts: rk356x: move the crypto node into unit-address order.

v1: https://patchwork.kernel.org/project/devicetree/cover/20260530160704.3453555-1-dawidro@gmail.com/

Build/rebase fixes (not from review):
 - crypto: use sizeof(struct sm3_ctx) for the SM3 statesize, as
   struct sm3_state was removed by the lib/crypto SM3 conversion.
 - crypto: add the missing SHA-224 zero-message case.

Dawid Olesinski (4):
  dt-bindings: crypto: rockchip: Add RK356x/RK3588 crypto engine binding
  crypto: rockchip: Add RK356x/RK3588 cryptographic offloader driver
  arm64: dts: rockchip: Add crypto node to rk356x-base
  arm64: dts: rockchip: Add crypto node to rk3588-base

 .../crypto/rockchip,rk3588-crypto.yaml        |  75 ++
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi |  12 +
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  12 +
 drivers/crypto/Kconfig                        |  32 +
 drivers/crypto/Makefile                       |   1 +
 drivers/crypto/rockchip/Makefile              |   5 +
 drivers/crypto/rockchip/rk2_crypto.c          | 746 ++++++++++++++++++
 drivers/crypto/rockchip/rk2_crypto.h          | 249 ++++++
 drivers/crypto/rockchip/rk2_crypto_ahash.c    | 565 +++++++++++++
 drivers/crypto/rockchip/rk2_crypto_skcipher.c | 728 +++++++++++++++++
 10 files changed, 2425 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
 create mode 100644 drivers/crypto/rockchip/rk2_crypto.c
 create mode 100644 drivers/crypto/rockchip/rk2_crypto.h
 create mode 100644 drivers/crypto/rockchip/rk2_crypto_ahash.c
 create mode 100644 drivers/crypto/rockchip/rk2_crypto_skcipher.c

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
