Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6326D606A682
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GILAiIW0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=kHPIv9+V
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=JstWYJK5+7X1l/SRnJSTUEF/RgzuUffkX4PHRgQg9LQ=; b=GILAiIW0m+vELvVIlMZ0F8VzaO
	CGXqLaYbfbdC8nwruucCE0e1H69Q9jgV3kuH7fgAFaAcusKNoazqwvL0u1OTaAt+tga3hQwOktWfi
	Vlrc6WnvG66XVgzg/6T/21fyq3CM4V3ECV0HbArJiVUhC9Bbh1S1/tqETG3aNfqLqeMm4OpHnYlgT
	8t2tHgKVivu85V8n2/W7pi0NU27n7KZ1P4kgmO4kmlNqOO1zkfx26fGjH15O511LDIB/Pc0dayL3c
	/gFHLsFZa90J8dq+LOLks6q/IRo48emX0onc3yMvixOkZvYoYosLdBtqgtbgCA73v77bGU+UZLuRK
	I8uQOh+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVW56-000000040xS-2fht;
	Mon, 23 Nov 2026 15:35:48 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVW51-000000040vB-1kaG
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 15:35:47 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4a207b02a2cso24643255e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 07:35:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795448141; x=1796052941; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=WJ9u915aobNPmfIneqbGjqdZiarGAKLNjxdAyEJTY/k=;
        b=kHPIv9+Vx3JpfHRPH/ejWA9ajcrWsgK48aPNGwnveAx20Os1cxm9yLsFUGQ8WLMq2d
         yIfLN8Tdb+omvrZnxvKNQmcXFzfyTbae/J6eHD35GeSlZbXz9A2eW5FrqzZhEgawop/0
         tLuqldE8WzJHYYgnqACWCun6TstZAniaw+y1Qh/WtQnIHkFSrRVsHGeZ9NJFcO+aEswi
         u+pSYINumqy+eYv41ChsvvnJ23zRontxUwwIzthjXKRdfh23F7AwIMUY/6trPpTuD0hl
         YEe2O+UGbGAInr7gxFaTaa0k+NEGcNZMeiFb5GsHK/8j3uRsN3jKufj5KatSBg3rSarr
         lRig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795448141; x=1796052941;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=WJ9u915aobNPmfIneqbGjqdZiarGAKLNjxdAyEJTY/k=;
        b=cBs/k3MWVMdr5cdLpIQQMIjKhcGd/SsOrfV6oYteXcSvuIdCvET4NMMybY8vK+wJv3
         I85KvT+06VlQXyTgRGf54tei/eYJScfVry8MTzBV5kEAvkNgfznpiuXB94yrAs0h9jKZ
         DrXWhv60kzr5qtht8kDtKj5H7OvBU7aWKg6vxoZ4mIsjbnig3UOzJ+7Rd4FR5JIqARGW
         w20JYIxc56E2odhAamlrI4RiX/32DZwkZkKqOtM+/PK2VJKTwVMfIMYMcumUN0U+v4HH
         lzU8ESAGAlXM9C8qNAhVRvOkqdJUKMUIXg5PuoiMb8SKkdScUvLbXdnW/ujIp3/YhN7R
         N5kg==
X-Forwarded-Encrypted: i=1; AL+hErH4+DCIPReYIOyuZMdkUCHaTmxL3e8vbkl15eRVyMcRxGfM50vKRqt6DbxvKyUb3CVWSSXKurkoIxQPI50p1A==@lists.infradead.org
X-Gm-Message-State: APuU4Z9qY02O1JSvNDF29NJCB+vtd+6orLMiCARuiuPKO5PVaddPbL6B
	Oo9FfFlzqW9FYfPlxd2p9Lfdl1D9YRuy2uk3s9tMThI5n8MXgpwv4tbQwzwuJdiPU/s=
X-Gm-Gg: AZFdTZdkt25t2Xn77jyHLFRuH4tdtiMcaQEI2ZtZQUSYbSRwwbIHAC/clm3tC9/CQby
	wDm/umxjVFRe0EAIkaDsjeHJv9Ax087VdkxVpIV0GAxn8O3JDa8PLtKLmNrVm41tv3KJb+gswMS
	lRqp5+B4qVr5TUPS+BXq0NMk51Lk2oFoeUgXrHMZyXEquoejj6eRmErIojMGS8uTc4BnQrPy9kT
	JL8HmlGHOygmbuWpC0B7wYugDSyQuIH4XuMzT5BzPIZiq5W09K3oWFVWyrx4Q0yAnK5ZeGwEBj2
	B8LjMcg6ES/dabs7dTT9rHjUiinCuDHRh52uXXlKCC/m7FMDqHaQdaEBUggSnvFbU3fphkpE6E4
	Xd5ZJqAUPsULrlLSuw8atLPbbnXWr9nI471LvbdSmiE9DR0n8Cl71ER49r/z55ioJDmScf0RwbN
	pBwVQnFfDey1vp++DlcsadqtfKUS7ZCtvHL93HqElkPHg0PKw/yxD2k6UL7Aza7VmLb6bk6SUQx
	qVQNLd8FMImr4y3GkjvtLlzlpAqkNt5AJjaaR9a/WJcpqPitR63E/OFuulRkfgFZk7BzpBBkAke
	oiiD3bYO/czOFLCEm/OnbTtGJvGuqnYC0USop4h14CAyVP9+vLrt2vltxmRWnUrCIt1cxCuPOvN
	VQzooeUjw/1+NKIu1CYj8WQiHi7MAp+IA
X-Received: by 2002:a05:600c:3555:b0:4a1:9663:7639 with SMTP id 5b1f17b1804b1-4bb8882907fmr248126085e9.34.1795448141435;
        Mon, 23 Nov 2026 07:35:41 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb853a1e8bsm305917455e9.9.2026.11.23.07.35.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 07:35:41 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH v3 0/5] nvmem: Derive Rockchip MAC addresses from the OTP
 CPU ID
Date: Mon, 23 Nov 2026 19:35:34 +0400
Message-Id: <20261123-rk3576-otp-cpuid-mac-v3-0-40c756dcf36f@flipper.net>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4WNyw7CIBQFf8WwFgOXPl35H8YFpReLj5YAJZqm/
 26pG10Yl5OcMzMRj86gJ/vNRBxG483QLyC2G6I62Z+RmnZhAgwKVjNO3VXkZUGHYKmyo2npXSo
 qVM0gEy2rqowsV+tQm8eqPZ7e7MfmgiokV1p0xofBPddu5Gn3JxE5ZRRlzUUOJdMKDvpmrEW36
 zGQFInwqYEfGkiarCk1gmy40N+aeZ5fWqpr6xMBAAA=
X-Change-ID: 20260901-rk3576-otp-cpuid-mac-3c90243d0884
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Michael Walle <michael@walle.cc>, Miquel Raynal <miquel.raynal@bootlin.com>, 
 Finley Xiao <finley.xiao@rock-chips.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Ryan Leung <untilscour@protonmail.com>, 
 Ricardo Pardini <ricardo@pardini.net>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4623; i=alchark@flipper.net;
 h=from:subject:message-id; bh=IWttZoeJgqIMmrtNEkRl3I83UNMkrzhGlF9ZFlBL9Mc=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSzxHpu39yaVaHQnM63ueTGPo35mtytz5lN/x14+ICth
 a9056fHHRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oZGOsY4RAxenAEy1GSMjw+OF980D55QurfkRuId7t6/AQWWha0H7312u62YIv10absXwP+ryn6e
 xFw5JBXQ8PsedE31J4W3LTIZtX74+03wrc9d+FiMA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_073544_673553_6A7296C3 
X-CRM114-Status: GOOD (  23.14  )
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

Rockchip SoCs are shipped with a unique CPU ID in their internal OTP
memory, and Rockchip bootloaders use it to give boards which have no
dedicated storage for a MAC address a stable one anyway: they hash the CPU
ID and patch the resulting addresses into the device tree they hand over.

Kernels started without that fixup, e.g. straight from the SPL in Falcon
mode or by any other loader which does not implement Rockchip's derivation,
fall back to random MAC addresses which change on every boot.

Formalize the derivation in the DT binding and implement it in the
Rockchip OTP driver, so that a Linux image can use the same stable
addresses regardless of the boot flow.

v3 is a redesign following the v2 discussion. Instead of a separate
SoC-specific NVMEM layout, which could not coexist with the fixed layouts
already used by RK3528, RK3562 and RK356x, the existing CPU ID cell gets
a "rockchip,cpuid" compatible. Referencing it as a "mac-address" cell
selects the derived address, while any other reference keeps getting the
raw CPU ID. The CPU ID location comes from the cell's reg property, so
no per-SoC data is needed, and other SoCs only need the compatible on
their CPU ID cell plus the GMAC references. This is similar to the
behavior already present upstream in drivers/nvmem/imx-ocotp.c

Plain "mac-base" does not fit here: its argument is an offset added to
the base address, whereas the existing Rockchip derivation used by the
bootloaders XORs the index into the last octet.

Patch 2 lets an NVMEM read post-processor report a shorter output than
the raw cell, which the OTP driver needs to hand out six bytes of MAC
address from the 16-byte CPU ID cell without truncating it for anyone
else.

Patch 4 moves the RK3576 OTP cells from the deprecated direct-child
syntax into a fixed layout, as the former does not allow a compatible on
a cell.

Only RK3576 is wired up here, that being the SoC I can test on.

Cross-checked on an RK3576 board: the addresses fixed up into the FDT by
U-Boot match the ones derived by the driver, and the driver correctly
assigns them to the network interfaces when the kernel is booted without
U-Boot proper at all (via Falcon mode). The raw CPU ID cell remains
readable alongside (e.g. via sysfs).

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
Changes in v3:
- Dropped the OTP read serialization patch, applied separately
- Replaced the SoC-specific NVMEM layout with a "rockchip,cpuid"
  compatible on the existing CPU ID fixed cell, so that it works
  alongside other fixed cells (Ricardo) and needs no per-SoC table (Ryan)
- Moved the derivation into the rockchip-otp driver's cell fixup hook,
  which also makes the layout module unload issue moot (Sashiko)
- Made #nvmem-cell-cells required for the new compatible (Sashiko)
- Dropped the dead match data and address validity checks (Srinivas)
- Allowed MAC address indices up to 255 rather than just 0 and 1
- Added an NVMEM core change letting post-processing shorten the output
- Moved the RK3576 OTP cells into a fixed layout
- Dropped Miquel's Reviewed-by from the driver patch, as the code moved
- Link to v2: https://patch.msgid.link/20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net

Changes in v2:
- Switched from a scope-based guard to explicit lock/unlock calls in the
  OTP driver to avoid mixing styles in a function using goto error
  handling (Sashiko)
- Link to v1: https://patch.msgid.link/20260901-rk3576-otp-cpuid-mac-v1-0-ea9135270fc2@flipper.net

---
Alexey Charkov (5):
      dt-bindings: nvmem: fixed-cell: Add Rockchip CPU ID
      nvmem: core: Let read post-processing return a shorter length
      nvmem: rockchip-otp: Derive MAC addresses from the CPU ID
      arm64: dts: rockchip: Move RK3576 OTP cells into a fixed layout
      arm64: dts: rockchip: Derive GMAC MAC addresses from OTP on RK3576

 .../bindings/nvmem/layouts/fixed-cell.yaml         |  33 ++++++
 .../bindings/nvmem/layouts/fixed-layout.yaml       |   6 ++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           | 111 +++++++++++----------
 drivers/nvmem/Kconfig                              |   4 +-
 drivers/nvmem/core.c                               |  17 +++-
 drivers/nvmem/rockchip-otp.c                       |  45 +++++++++
 include/linux/nvmem-provider.h                     |   8 +-
 7 files changed, 168 insertions(+), 56 deletions(-)
---
base-commit: 909ef7a9a30fa139e69e555e3606680f5cca7726
change-id: 20260901-rk3576-otp-cpuid-mac-3c90243d0884

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
