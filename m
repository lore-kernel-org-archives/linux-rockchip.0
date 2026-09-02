Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20F40C624D3
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 13:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fkOfYDhiQphImUbktRidfSLxzriryu0Ezd2qpAfbPfo=; b=EBN9iIJtIqFu/i
	k0IIm/93yItVKriIv9DL5XtK3dQFvIQpS5xgyuVO7E1PWI9O2mG3etVC7Fu6Icip37yRIMu6w7wfr
	8OpUB05sSGSIsD1lyoE3DHOE0R0i93mRsuchJgHFprrLasF2t5QFiQWrWCk77gXWDW4/E29TrkgD3
	EOd76JrkekL+Z2zHxnFgYv8cLVI9xvwtJKo0I94g4rVZ3jgq3tiG5okmbmm9S6Y0E8iYBMeJieU63
	IM0mu7mOBWptHOdhLODfIxnmETvNn539PGTWCBglz+vYwl7F7TZ+6CcAGdYhD+yDQh83aoE4EJyLY
	hmh8hztWljv+2btpxufQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1khF-0000000El3X-2eaa;
	Wed, 02 Sep 2026 13:08:09 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1khC-0000000El2G-1RXh
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Sep 2026 13:08:08 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-48436216a98so679593f8f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Sep 2026 06:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1788354484; x=1788959284; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=8CCYbVer4UrDr5i1p//z3lDPoKdyao2pFzFH41cydj4=;
        b=Vn1NXywQAT60d5qISNLWjPr73QX3LkklvBp0h4ouorPu/9Lou2EzSDAxQ81magyaNE
         84RtTRNvNXVoRhFdQ07AEzk+8qRgCuFLwkL9vRTceaEPAHBYhyUDvv26e+BV2bvviZO1
         KYeGc35ux+0z86V9uAi0FQlXGyJk8OaO1jo621NHOlqjpT5FOT4iNB0PsKt/9c1uOs/7
         mA/pbM6YSXqfPrqrmR/LtZSzBbMHnIx5Pv9eTcj1Sw4adQ+LO+uGrkVAmL4sMr46s6kG
         KJHhq9cTZeUfenKofJkxuw2FVuRrIb5V9mwk40zJhh9MBnE3kXdb0nU+fC+KVyoBFieU
         skAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788354484; x=1788959284;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=8CCYbVer4UrDr5i1p//z3lDPoKdyao2pFzFH41cydj4=;
        b=Edthe4KqpGk9w3Y2g+8pLK6mBeFp3OWmO82at9j4J2tXK459AXUYjwjAeoBKxtg1vd
         B/6htPESSAIshU7gaqAv5QsP5C0UDQUlNO7Guh49MjVeKSgebtpl9UbDsdYicdMZtpoy
         YtXwQ1hNSmLoFYnoL+X5icEImxOCrqdTVgXQQBiZRd64UDDZuQG0sE+hrkvwj/AqNYkH
         rCAaCvrtHpOzw1oPmDRwphKxEuZoKVCqxFyV53bhzWMeZi1K66QVh5ZEHmg07+SScZ9U
         3ufABxh5tKtQB1iziP0MJvIsdBXUTQYWruqK4y4NPo0/Ek1YhWEZwlzfibPRFhKd4CFG
         ixHw==
X-Forwarded-Encrypted: i=1; AKwUvBwXhGIzKnFc9rNSWeQzBGiYsrrWmgjW0nbK/ls0ha+Xtqt/sIhYF9RBEpHjLoc2r3i71GeU1fmTD0ovAlxwvQ==@lists.infradead.org
X-Gm-Message-State: AFuF++lDMESThjFaWxEJ6v9/gmLntTi8HkwbercfL1KBSKezZti3gFms
	edn7cUuGZpVoc4ttxScUydGqXJ1f8UA7fgOGdxqf+7KTh0wHR7/FgMZ2/yOMmzGrlhU=
X-Gm-Gg: AYBFou2QbaXYgAJ5P6fUpTqgDG0w4kNmTKWCLWIq5WDigr7nZ9XPpsExEnz9FY+a3//
	Mrsd6DppC+HpG2Gl1NfSARknNXD0GBE9EUyAnSGq4jmYQvgt9dZV9Jb7OQYDG05CXJBMMjlzbFm
	2FcCJuAIKsWDCEUyNmhiuliN0umzc6sZrFL7vwtrauBAWHWZ8SWGZhrDaUWlWI+QdS3/oBwx1Pa
	0MFgzCXbSmPiuth1v3o4axHb8u18CWrIHPfZAVKUSOd0NYoTVFwb3pPyWSRXEexXm4zzmb9nfAZ
	BOW04dh20e+FrVc3I4bvpRxxMlz5b7nauwCBgNnau475QBdv4ZFTbGn7vzekKHpcJL1iLLgX/Ws
	ldUKV8dAsUz2YljNEdQMM5zfKGjYV508BfwsSk0dE0Uj/kKIVIVgofaXyVQlu9vTeBaIH71FAzM
	WASe0qSTKezot434qrLGJ9NEKKLIZ49ouO9gDtCicC2K2a1UaF0kPC4PQEiKL10lG75xXXSg9bu
	1cGW2g/OzbKFC6kwpmSt1gnsVGXG4sLQ4jUBtdnwA==
X-Received: by 2002:a5d:5f88:0:b0:484:3728:1369 with SMTP id ffacd0b85a97d-48488efe756mr8590701f8f.6.1788354484288;
        Wed, 02 Sep 2026 06:08:04 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-2-51-220-108.alshamil.net.ae. [2.51.220.108])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48448e72b5bsm6385800f8f.4.2026.09.02.06.07.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2026 06:08:02 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH v2 0/4] nvmem: Derive Rockchip MAC addresses from the OTP
 CPU ID
Date: Wed, 02 Sep 2026 17:07:51 +0400
Message-Id: <20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4WNSQ6CQBBFr0JqbZkeGF15D8MCm0LKoel0N0RDu
 LuAB3D5kvffnyGQZwpwSmbwNHHgwa6gDgmYvrE3Qm5XBiVULioh0T90VuQ4RIfGjdziqzGoTSV
 UqltRlimsU+ep4/eevdQ/DuP1TiZurc3oOcTBf/bfSW7en4tJokBqKqkzVYjOqHP3ZOfIHy1Fq
 Jdl+QKT/cYNzAAAAA==
X-Change-ID: 20260901-rk3576-otp-cpuid-mac-3c90243d0884
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Michael Walle <michael@walle.cc>, Miquel Raynal <miquel.raynal@bootlin.com>, 
 Finley Xiao <finley.xiao@rock-chips.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Alexey Charkov <alchark@flipper.net>, stable@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3327; i=alchark@flipper.net;
 h=from:subject:message-id; bh=0hKapFxMequ4DFaz8IR0nd0cULM83AQBEbTt3mZlvzc=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTNkN9ksZpPpmbdppJLOz+c4jmdszvBs+tw3vmTiV17O
 P/MqBQP6pjIwiDGxWAppsgy99sS26lGfLN2eXh8hZnDygQyRFqkgQEIWBj4chPzSo10jPRMtQ31
 DI10jHWMGLg4BWCqs5Yz/OFfdfprubXAJqfcozGLZzpss3aRY1SYacewUL/xd+5t7UMM/xQmNE1
 stVm8VtpLJ7LV8ZzeogtcjE6bV4XNOl9bVFLXzw8A
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_060806_418145_51C735B1 
X-CRM114-Status: GOOD (  20.53  )
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

Rockchip SoCs are shipped with a unique CPU ID in their internal OTP
memory, and Rockchip bootloaders use it to give boards which have no
dedicated storage for a MAC address a stable one anyway: they hash the CPU
ID and patch the resulting addresses into the device tree they hand over.

Kernels started without that fixup, e.g. straight from the SPL in Falcon
mode or by any other loader which does not implement Rockchip's derivation,
fall back to random MAC addresses which change on every boot.

Formalize the derivation in the DT binding and add a Linux kernel driver
implementing it, so that a Linux image can use the same stable addresses
regardless of the boot flow.

Only RK3576 is wired up here, that being the SoC I can test on. Other
Rockchip SoCs keep the same CPU ID at a different OTP offset - 0x7 rather
than 0xa on RK3588, for instance - which makes supporting them a two-line
addition to the driver's match table plus the layout node.

Patch 1 is a prerequisite fix. The OTP hardware has its own internal state
machine which only works correctly with serial access, but the current
driver serializes nothing, which results in timeouts and/or corrupted
reads (e.g. returning splicing a TSADC trim value into the buffer of a
caller asking for the CPU ID, or mixing up trim values of different TSADC
callers). Hence the Fixes: tag and Cc: stable.

Cross-checked on an RK3576 board: the addresses fixed up into the FDT by
U-Boot match the ones derived by the new driver, and the driver correctly
assigns them to the network interfaces when the kernel is booted without
U-Boot proper at all (via Falcon mode).

Sashiko also rightly pointed out a use-after-free in the nvmem core when
a layout driver is unloaded leaving its sysfs nodes and the postprocessor
function pointer dangling. This is fixed separately in [1].

[1] https://lore.kernel.org/all/20260902-nvmem-layout-unreg-v1-1-2d16bebeb518@flipper.net/

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
Changes in v2:
- Switched from a scope-based guard to explicit lock/unlock calls in the
  OTP driver to avoid mixing styles in a function using goto error
  handling (Sashiko)
- Link to v1: https://patch.msgid.link/20260901-rk3576-otp-cpuid-mac-v1-0-ea9135270fc2@flipper.net

---
Alexey Charkov (4):
      nvmem: rockchip-otp: Serialize reads
      dt-bindings: nvmem: layouts: Add Rockchip OTP CPUID layout
      nvmem: layouts: Add Rockchip OTP CPUID layout driver
      arm64: dts: rockchip: Derive GMAC MAC addresses from OTP on RK3576

 .../bindings/nvmem/layouts/nvmem-layout.yaml       |   1 +
 .../nvmem/layouts/rockchip,rk3576-otp-cpuid.yaml   |  73 +++++++++++++
 MAINTAINERS                                        |   7 ++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           |  12 +++
 drivers/nvmem/layouts/Kconfig                      |  13 +++
 drivers/nvmem/layouts/Makefile                     |   1 +
 drivers/nvmem/layouts/rockchip-otp-cpuid.c         | 119 +++++++++++++++++++++
 drivers/nvmem/rockchip-otp.c                       |  15 ++-
 8 files changed, 240 insertions(+), 1 deletion(-)
---
base-commit: 8b72f6626dc39b9e7e82b2721d4f7c3b86286012
change-id: 20260901-rk3576-otp-cpuid-mac-3c90243d0884

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
