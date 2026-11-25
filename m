Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A656606A339
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 19:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DM2dgJo2;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=i7fkoV+7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=psD4cixfs6nEPyaOiS6xBfZADLYdsaul4kFTCRA3Gfw=; b=DM2dgJo2TO4FKiqSTy8/d9Ijm7
	n78Gz3i05r1nso51DVt6qEl4RID0XmzFsXOI7Oe/ltrYyV2Pc8oDhIYMt3Hq5ust/N3HCjoXiXjb7
	ZnnfGpJc7lS/HytOkQ09a7yFqJsfhY+7kM32MVZKVavsKHEsbmg3ANXcm8TD8zX8RvawU6k5A5aF/
	HftSb8TFx1RRtzl26lJYxVXYxR0gqDPdHzapAWY1AuMFsfyGxTrg2kGVZmXk6FTKgWwBkZ3O5KER/
	FLtj3tkyCOV71v4/F9+4kyqWian0QicKU5t0CHO67fRYs9BxEVa2CiF4QzrUBvxr+Yv88Tqj7UJQt
	EscFmCCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWInY-0000000B9uI-40DC;
	Wed, 25 Nov 2026 19:36:56 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWInU-0000000B9sI-1LX4
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 19:36:55 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-4a2f4ca0dcfso3563567f8f.1
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 11:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795635410; x=1796240210; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=uUEh2z/Lfj/cyfXTO+Xgga6ml9wG2VHxoXZf23tHAmg=;
        b=i7fkoV+77Bpuw4C062LBuexEakC/63Zlqg4zYKMuL1aHO50qfu73gQAGYR+184lB8u
         RUoVXNxgZxpydYRouvDbS5xF0Ubx23sqqiBuX5HQMxXZhpMQv98nCQTBNiBmu1+axdVg
         uc0bNYBvCj6OvFFJNrPTIecrS30hNtP+myS4lVE/IMIw8Xm8Y9O5ycotCXzZoPXAQBtS
         JLD/NkyYu7SdzV9h8mbHObOZVELEUsYw73g3DpATutPzvl5r1+Iy038kkxSMeY22pNsO
         GtzYtRIuh0qytxNOCN+aw9JjP5oAED2iOZiVe67miKYEk2b/C2lhgx0yvtFyyY6lf+UJ
         S0lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795635410; x=1796240210;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=uUEh2z/Lfj/cyfXTO+Xgga6ml9wG2VHxoXZf23tHAmg=;
        b=tOpi3TBa9Gqkcv0OcfHcKP9Jq+k0/oeY8LTrhnt/FYkIRQXH1IEEtwSp9JwjCOwjvd
         2Ze0BkRushFMT9mjf3EzHA6WDeu5+t/GfCQO5ImxycDb06veaAegwcOvQblR58CZ4Aw0
         LV+yz9x9FJCLKLkPizTq1fUR5wOvVHSvqejXVLShAciNKZcC0UltiBcJx7A0Age45SV7
         SrWKKq858K8RRR0QzstyR209ktjByi+rH1tRGXWmo8NjvL1PnDC0e73YKJ5j0ZGlAEKq
         I0+7vSFJuHugRXd/I0LsPmHz0LuRKbMThl9T/UHEib8J2BTOkXbyLKGXIleOR0Aoh4Yr
         +HjQ==
X-Forwarded-Encrypted: i=1; AL+hErFY6l1lAPx0kreBx9Cp2ozl7EQwMjfmsCiOOMfJMlSA+eovYDuBGI3jIrmXSFG+EdRh2OMBz4ywejXcAZo/zw==@lists.infradead.org
X-Gm-Message-State: APuU4Z8FhfgDxsZzD3u8cJ87OzyEldMInHRoG76zPRPT3MDqtEba31ph
	HIS8+A+XhBZWIOl8dzsAXnCuSsfgoN9yPYmDV/kEVTuipNKK+Dnd39BlEHtsOFhAa74=
X-Gm-Gg: AZFdTZfU6d0YnrrWBICdBUIm0WR/158+sjF9ZpVrDmz7+Ifwq2vRzokEyk7ny1R7S0X
	naptllFCeV4X/UtZTs+lt9MPraFD2CIO5nk49fXNQi16uk8LBsDOe7UrsjnVU3XoUa6MB3FZxVQ
	l38k9Ae44XzKoOZQfGAtk4rnshmjLw3D4AtoVTjpUFPfFXbPLIH9dBSUTO1tukny0uDbBm2VDOi
	DFJEDgKL53mgcr97741vkxc9xZBSxwu8mYwsgLBaDPRdmfbc0+ddzZsBWV4TTHpAdyzq04+7bOq
	0UFdKPh+rH/dw8CeR12KtX6ZzQxpVpoZmZ3CiHhXIKRnFoisdTAp85jSpletV8DGfb/Xxb3/zFJ
	YIsz5HW1A37ZqnyWnwkuEXiaEd674euNzD91bm2bS4BIzFiK71oMqNmZmaYrZOQ0NGjgkcwiEE7
	jHBj1Z/qJXIcvxWa4QS/zq5sUeEZ58JW1tjZHFZinPWr3IpEfItR98gDBkM5ue5dSr+emF2IrHx
	Pdm4yxZsgnxB26+QCmLp4w+loncRaHmVtvixEQ4jEJPZqZ69Nyu5sWypxATE4hehH9phG2Y2iqc
	59p9qKk82mfIkmFxoIkb+pTfFUg3q0XXdVF1RhTXM73+t1K2wu3WrfjqTnro5l9jwKRc+5dh75U
	6jJHURcqvFQ==
X-Received: by 2002:a05:6000:47d4:b0:493:8c32:94 with SMTP id ffacd0b85a97d-4abb400ae31mr24341175f8f.38.1795635410326;
        Wed, 25 Nov 2026 11:36:50 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6baa3882sm35614063f8f.49.2026.11.25.11.36.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 11:36:49 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH v5 0/5] net: Derive stable MAC addresses from a unique
 device ID
Date: Wed, 25 Nov 2026 23:36:37 +0400
Message-Id: <20261125-rk3576-otp-cpuid-mac-v5-0-b3125c9a5fc8@flipper.net>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4XNy27DIBQE0F+JWJcI7gU/usp/RF1guDT0YSNwr
 FaR/72QSFWq1upypJkzF5YpBcrscXdhiZaQwzSWoB92zJ7M+Ew8uJIZCGhELyRPr6jbhk9z5Da
 eg+PvxnK0vQCFTnSdYmUaE/nwcWWPT7ecz8ML2blatXEKeZ7S5/V3kbX3z8UiueBkeokaWuEtH
 PxbiJHSfqSZ1ZMF7hnYYKAyamg9gRkk+t8MfjNSAm4wWBglbKsbZz02fzDqnlEbjCqMUwKHzoC
 WEn8y67p+Ab0IaeKhAQAA
X-Change-ID: 20260901-rk3576-otp-cpuid-mac-3c90243d0884
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Willem de Bruijn <willemb@google.com>, 
 Simon Horman <horms@kernel.org>
Cc: Ryan Leung <untilscour@protonmail.com>, 
 Ricardo Pardini <ricardo@pardini.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5804; i=alchark@flipper.net;
 h=from:subject:message-id; bh=i85cUXhyWb7m3a6ui+zF4b9HUAnpfV7UPHIO1a7Igto=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSzW5y19/A21y7VXBHY2fcuT1DMuHaewckTewWz88TyO
 W4mG+l2TGRhEONisBRTZJn7bYntVCO+Wbs8PL7CzGFlAhkiLdLAAAQsDHy5iXmlRjpGeqbahnqG
 RjrGOkYMXJwCMNX3njMyrF9XWXL25prW7JVf2c0qD+Ql25xfV8fvPMng3/aTB6K3/GRk+PBaRrW
 QQ/Kyc0jP60UlW0IV5zNPfRXnsrzoC6Pc+VIufgA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_113652_413780_800EA3A9 
X-CRM114-Status: GOOD (  23.02  )
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

Derive the addresses in of_get_mac_address() instead, as the last resort
after any stored address, from a "unique-id" NVMEM cell referenced by
the Ethernet controller, so that a Linux image can use the same stable
addresses regardless of the boot flow.

v5 moves the derivation out of the OTP driver following Andrew's review
of v4. The CPU ID cell keeps returning the raw CPU ID to everyone, and
the Ethernet controller references it as its unique ID rather than as
its MAC address. The derivation is picked by the compatible of the
referenced cell, as the algorithms differ between vendors: Allwinner and
Amlogic bootloaders also derive addresses from chip IDs, each in their
own way. The addresses are indexed by the controller's "ethernetN"
alias, which is how the bootloaders assign them to interfaces. Doing it
in of_net.c lets any controller with a device tree node use it,
including PCIe ones, and needs no changes to NVMEM or to the handling of
"mac-address" cells.

On the Rockchip side, the existing CPU ID cell gets a "rockchip,cpuid"
compatible. Its location comes from the cell's reg property, so no
per-SoC data is needed, and other SoCs only need the compatible on their
CPU ID cell plus the references from their Ethernet controllers.
Controllers without an "ethernetN" alias keep getting random addresses,
as they would with the bootloaders.

Patch 4 moves the RK3576 OTP cells from the deprecated direct-child
syntax into a fixed layout, as the former does not allow a compatible on
a cell.

Only RK3576 is wired up here, that being the SoC I can test on.

Cross-checked on an RK3576 board: the addresses fixed up into the FDT by
U-Boot match the ones derived from the CPU ID, and both GMACs get them
when the kernel is booted without U-Boot proper at all (via Falcon
mode). The raw CPU ID cell remains readable alongside (e.g. via sysfs).

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
Changes in v5:
- Moved the derivation from the rockchip-otp driver into
  of_get_mac_address(), with the Ethernet controller referencing the CPU
  ID as a "unique-id" NVMEM cell (Andrew)
- Indexed the addresses by the controller's "ethernetN" alias instead of
  a cell argument, matching how the bootloaders assign them
- Added "unique-id" to the ethernet-controller binding
- Dropped #nvmem-cell-cells from the "rockchip,cpuid" cell
- Dropped the net change accepting longer "mac-address" cells and the
  OTP post-processor
- Did not carry over Ryan's Tested-by from v4, as the implementation
  changed
- Link to v4: https://patch.msgid.link/20261124-rk3576-otp-cpuid-mac-v4-0-d403b8a25113@flipper.net

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
      dt-bindings: net: ethernet-controller: Allow a unique ID NVMEM cell
      net: of_net: Derive MAC addresses from a unique device ID
      arm64: dts: rockchip: Move RK3576 OTP cells into a fixed layout
      arm64: dts: rockchip: Derive GMAC MAC addresses from OTP on RK3576

 .../bindings/net/ethernet-controller.yaml          |  11 ++-
 .../bindings/nvmem/layouts/fixed-cell.yaml         |  24 +++++
 .../bindings/nvmem/layouts/fixed-layout.yaml       |   5 +
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           | 110 +++++++++++----------
 net/core/of_net.c                                  | 105 +++++++++++++++++++-
 5 files changed, 200 insertions(+), 55 deletions(-)
---
base-commit: 3dd8c790a7b7027abdd568e36db5e82ffaea7c77
change-id: 20260901-rk3576-otp-cpuid-mac-3c90243d0884

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
