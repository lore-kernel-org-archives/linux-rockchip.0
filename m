Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36776606A691
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 12:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EMhMSyFP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=WPF+Xx6n
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=BwQAG4wV72lYmaR8Q1Yyr8QYkIqEaH34FF+5/fgh1LM=; b=EMhMSyFPKokzBckdgtr1ed+hKe
	6D3U3HhyK1njgVB+TNqu2lcm0v/SUS9JMeVyChupPMdEM15Gaw4qeQaHzW3Z+GZg4UPAuOGD9mOvq
	lFDtESndWx2uI/+dcJryqJu+Xz0f++uTxZ4v6aCkn8y9VrhYZYUblgCQnT0vd5Zp4s/Bl/lfw51Wm
	fV2b0OvzMwXJZPQiikEFrxunyo86ryD8ohNZSP5LgEHmoSZb0w81JPBHGkQLfk7z3km2tzuyWyQgy
	3fj7z2nyjCy4vBmjfEZJVA4eO3CHPUTCVeRNHgLtjDER9vuqkXKXhtfV+6kpE8GM1btGbNWUMooBV
	i2kdaDIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVpGT-00000006Sgf-1QbU;
	Tue, 24 Nov 2026 12:04:49 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVpGQ-00000006Sfc-1IZX
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 12:04:47 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4bb6adaf0f1so38620505e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 04:04:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795521884; x=1796126684; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=sYVXSUbjmCPUkI0VH9/e22EvsmQLOmp2AWEy5Mzz0qs=;
        b=WPF+Xx6n3Hi/hpF27hKgMi/oX02hwA5ODuedUT0HqYV0yeAgbL587P/U1Mbtea/W8a
         CYrsHyO8hQ0pvfGKahvN5cmK0bIYuYpwtE4weSKxKDjHoOFp6HDi4YB9QFIG0a8CNB2t
         am9x4KsIAczQ++Ur5P86cIp0FEPRNPJEVmj8CiVz7QRpa4Q9hXO6rTgzQlUDGcFGI3CV
         SN2Z3r1ArrATnJACOJznV+TypDBTucyfnP4fYzcJS+Cws6/kJBDsHLOJPkj2wSiBP0NA
         bNUKgg8fXtukd/yIN7GIuXURJgOqwryniJR3i2QdkuIJ3orczt04W7ma+kC9UwCOqW8F
         dCjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795521884; x=1796126684;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=sYVXSUbjmCPUkI0VH9/e22EvsmQLOmp2AWEy5Mzz0qs=;
        b=MggwRNR3/jYYzfhdBoMkThUme98PSBp3DY3+P/b8wFlcbR5JIZ/kxJ1OSjVIuHNyLt
         9qh0LOU13xW96c+3rXyqbah0YTkUDVvqOyGAkZB+l3L3iNh3pNA178y2f4JJ/qb2hmIp
         KROLi/K/AAfLC20h8txwMH/Cx/7CU5R6732U1YNWSvtnsEi/rsKmNF29GcPG/N2EDHc4
         y7wCeuw6Z6CW/Ypdx2VQ7W4wQNChzIIcSutjb6WfJcv8nXZisbsVcZqo3cj9ov5W8YHj
         A1ttvM/d+hQT5cw3J8O5K733YmUKFknTZK2iW7rtb3pdYX0EltlX81iqC+Qdlk2Afm2J
         fRQQ==
X-Forwarded-Encrypted: i=1; AL+hErHbWYjwUlmVXDUaGA5QTq+6TBh8BIii6N3KjqHTkXQ9XYPNoAC7pQJfH24mQtncG+YGVArHVQ5rLmB1pVNfTQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z/E/NHfdKkP+EKBVQfX0EUvK6NymI8XnCesk2ZLMBkpX06ueo7S
	lDXz1XrGW44gdysLzg4vQM83l/xZ7xxm8xogaCJGKGbkvyABrNEM+aMyhnIm2NIOsxs=
X-Gm-Gg: AZFdTZd4r/07Jh1+zlGN46E5xH6GzOrADUQ3MskkN8uPMR2qO1NQZYwj/xIAm0q2GFr
	pQj+HX8HSakqYE2pGw0gR9idgMAf8BSk9BJXqcmZfRqDFYfirSvdO/4PIRIWfzDz+eaFueoUpLA
	P3b5Wt8QKCa05zqI+FiCQirBoOfG33bVuaE2wSnchoyb//4GL/yHFDtw2nSZo7NLqU6Kn1rGJ8A
	B+U3r5/WkkF2Mr54b6VguF+bdRVZ9jxYBwy1F9KbjG8bJenWoIpm+3/cpJyQguwr8vzNA5Q/fGw
	eUZAN8VVLh27KPaCJT8XqHXZ2ZcOFFw80A2kPHnbEo+W30lL1mXyYC9WmrQAib6LbbRr5xpLjH9
	OgAuB6R4qiiP1a7LuMbNExBoFOrFCPT9hGGsBiXHdv8e4T6jQ/jUtRbYje1xj8fMb+auXv5HOyH
	F2scxcDUrotwIp5axM5iEzxPgcMqDA7yjJAXFdaNRy3ibJk4bbaHdM9PmKNY/Vw2vLAwRMJKlQ2
	sqPsSYIeQAvwdt3GUIOGgUNT21e/o/CMOyue0EzHMhLsFxp5w9eqm6a4CA9NGqKMz+opmeRqN7P
	vJYNbbOKGtOEu8sTryWtJ8MCjAIw53tk2etGSAOr9jTRCZZg3DDy3uPkCTFG8rBFimxCRjld5dP
	DtXC8Q/K9JL53Vm9XSPz9UmsmOZADKw==
X-Received: by 2002:a05:600c:19d0:b0:4bb:65ed:b55c with SMTP id 5b1f17b1804b1-4bb88824b18mr298164705e9.33.1795521884259;
        Tue, 24 Nov 2026 04:04:44 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb906635c7sm242405235e9.2.2026.11.24.04.04.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 04:04:43 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH v4 0/5] nvmem: Derive Rockchip MAC addresses from the OTP
 CPU ID
Date: Tue, 24 Nov 2026 16:04:30 +0400
Message-Id: <20261124-rk3576-otp-cpuid-mac-v4-0-d403b8a25113@flipper.net>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4XNzQ6CMBAE4FcxPVvT7hYQT76H8QBlq/UHmhaIh
 vDuUkyM0RiPk8x8M7BA3lJgm8XAPPU22KaegloumD4W9YG4rabMQEAqciG5P2OSpbxpHdeusxW
 /FpqjzgUorMR6rdg0dZ6Mvc3sbv/MoStPpNtoxcbRhrbx9/m3l7H356KXXHAqcokJZMJo2JqLd
 Y78qqaWxZMe3hn4wUBkVJkZgqKUaL4ZfDFSAv5gcGKU0FmSVtpg+sGM4/gAX0gYqVoBAAA=
X-Change-ID: 20260901-rk3576-otp-cpuid-mac-3c90243d0884
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Willem de Bruijn <willemb@google.com>, Simon Horman <horms@kernel.org>
Cc: Ryan Leung <untilscour@protonmail.com>, 
 Ricardo Pardini <ricardo@pardini.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5166; i=alchark@flipper.net;
 h=from:subject:message-id; bh=RZAI1HlQZY9Dqv3pbjTGomGAzes5x9527TWoirzpG/0=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSz1gbN4XpVs6iYU77HOaej5VG1CHOgc5/j27I5l9Lfz
 Q6Jjf7cMZGFQYyLwVJMkWXutyW2U434Zu3y8PgKM4eVCWSItEgDAxCwMPDlJuaVGukY6ZlqG+oZ
 GukY6xgxcHEKwFTHfWH4Z110punTySyFR9LZkiW50ScMGTYLXMs0WMd9weJ2FMvy34wMk8IiDQz
 ebzNwuM1rF3F8+9O9XIcyrf3OFC73yt1b1HqSDwA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_040446_396949_F910BA19 
X-CRM114-Status: GOOD (  24.83  )
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
behavior already present upstream in drivers/nvmem/imx-ocotp.c.

Plain "mac-base" does not fit here: its argument is an offset added to
the base address, whereas the existing Rockchip derivation used by the
bootloaders XORs the index into the last octet.

Patch 2 lets the generic NVMEM MAC address helpers accept a cell longer
than six bytes and use its first six. NVMEM cells have a fixed size, so
the OTP driver writes the derived address into the start of the 16-byte
CPU ID cell for MAC address consumers, while the cell keeps its full
size for everyone else.

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
Changes in v4:
- Dropped the NVMEM core change letting post-processing shorten the
  output, as cells have a fixed size (Srinivas)
- Added a net change letting the NVMEM MAC address helpers take the
  first six bytes of a longer cell instead
- Made the OTP post-processor write the address into the first six
  bytes of the CPU ID cell, keeping its size
- Link to v3: https://patch.msgid.link/20261123-rk3576-otp-cpuid-mac-v3-0-40c756dcf36f@flipper.net

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
      net: Accept MAC addresses from longer NVMEM cells
      nvmem: rockchip-otp: Derive MAC addresses from the CPU ID
      arm64: dts: rockchip: Move RK3576 OTP cells into a fixed layout
      arm64: dts: rockchip: Derive GMAC MAC addresses from OTP on RK3576

 .../bindings/nvmem/layouts/fixed-cell.yaml         |  33 ++++++
 .../bindings/nvmem/layouts/fixed-layout.yaml       |   6 ++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           | 111 +++++++++++----------
 drivers/nvmem/Kconfig                              |   4 +-
 drivers/nvmem/rockchip-otp.c                       |  48 +++++++++
 net/core/of_net.c                                  |   4 +-
 net/ethernet/eth.c                                 |   5 +-
 7 files changed, 155 insertions(+), 56 deletions(-)
---
base-commit: 3191063649dbf7c0d0b768e1f3655e4c5fc6edb5
change-id: 20260901-rk3576-otp-cpuid-mac-3c90243d0884

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
