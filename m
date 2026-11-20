Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF93A606A32A
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 10:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Sd75qowv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=asvW1+3c
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=lQ6KtaQj8G5XGliBQreDT5uP2FpAuE++2qXaQZUjsiE=; b=Sd75qowv9a2c8CFPGv8OHZWfPA
	ZcAD5zjhDfRxWLUOsKN8qNkEcElV+bprEdoqx/VfiiZ02uldPGuTiJIufC2foPYJbSF8o+y5kgd7P
	nJT8PmpNH4LCLchA/HoWgVr3ZKqBQOSXAQweHLYuJG2KAN+oOEZe4Ig8DB11mPBa2ZvQgGMdJ4Pwa
	wgOWtvLNyVvKR1tMv8S85mxhcrSrjr+4mK2UhKhzMsx6jl9vRwsctkHKFkOP43lxoKYgFgAIxXmLT
	CVxgvKlM9H1yVdolGaZ7xLHnseP5I1dcu1toY4aAUSXIv4uQVD2Lwje99p2NcYSlqgk7HvV4TEqO8
	ICB+a85g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMAN-0000000EeUP-2QTB;
	Fri, 20 Nov 2026 10:48:27 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMAF-0000000EeQO-1qhw
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 10:48:21 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4a35ac4475dso5097095e9.2
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 02:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795171697; x=1795776497; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=jg4X90e3zV23j2h+WGmYwC1M03nD+Yo2HGjKpBKNeHk=;
        b=asvW1+3c+MvNj+gkGlbWujAloDIHmApIY0YMf0FHli6n5TjLZ5feTiDQw0x1LCskGl
         eu7KlQuVTybsuNhket7j6uyawXw3z6vORcPboZuwgL3jjB3/WVTFxR6LA3hXcoqbjFuP
         nUKqKlWbhu+55iKAQxNJcf4VSTn80zfs4Ydi9QhEmcM+wUaHLymy4qp6+bz4ywg9d55w
         VkPVjAI9KBJSOAsxe6UshnYozTTi13CoNkNGVPfeEanz/+I+QKdf/WiJ3BN2bgWrJjYz
         Q7wDjwq5Ia8n/FQPyv9fSIz1DaHu37rpl+58N2bRNtHoMP8NoMNG6bgrhWBa8uowg3T0
         Z96Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795171697; x=1795776497;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=jg4X90e3zV23j2h+WGmYwC1M03nD+Yo2HGjKpBKNeHk=;
        b=c0dh3yRDDQohxgAoDmKYG0ZIIQHevCfdyVbWTDW9bP2+Lofg25Dnovy7LgON+GK5NQ
         woGBbfJy6wLZj4PDfQwuQbXpMNpFZhbiG/7Bi7D84/j9hOgvaus0v7aKzxjdkD8P+T1O
         JEJm4RF8nbRzW5KyWmKyf8qk8tDzYyP1eboUTGECCtbVtgxibzGZQnjvnSFZ6HGCBJ9a
         pg6G1GVN9WIOI6x0Iu7llsFCKvWtBKZ7TLy+Kp/NqtVVAZbaii1eSvOvcF5o46zjotE+
         PKhpl2pk3eN7yazrM3pLhh+P+1lveUJH3021wA6Z0IhpCTNOn43rTEaUEUfcRaOpLq/M
         dMkw==
X-Forwarded-Encrypted: i=1; AL+hErGWsO1wJfS+DIO3Cdkh8suItsT4sSPWxeNS9eANa0xVU9YSiHLmA5pOKWjFVAU2tcONyvza/tkJ9tcXu7swYA==@lists.infradead.org
X-Gm-Message-State: APuU4Z8tZYpMzbAXu3XPBqO+8X7MUrCNam2dr1O4qy/gAUPkCtT4yOpZ
	FF6A+cWYhJ9xemjfOQWbF3nG4jgQJNCkRjpnbQPPXIxs+c8AxNAw+DkCMmZHfFi/Q64=
X-Gm-Gg: AYBFou1C9lBu/+iIN6OS0EvvsVqSLGehj7Td3G/PU8xVi/1EpkLl2Av1/JQhDAaAAeW
	hZIFsDocurJLtIfLhKGUNAu5+Hc6Eb1a5+0EIGzhcdISrlK1m5VeY2lU7Aw0QGnLjDrULO26+22
	KBguNafZfXoFLO7K40488tveRGMRCwE1hL+XDmasdENTu6Wii/9EBpgfjMFk0mIE7G2TDbhcE1a
	JSTQM7Bnbo2qIk0YRb9bsT1reg5jvf9YdT4yO88zlTSDV9QhF3sJS5RIhHZA70Zre486zPoEMM1
	zk/NxaY1QtoYhIs7YWm3e7J/JgrCiwrUMB5huLlnrBxjGiJnwvVCQ/oYrhCFQmZ0RflbQlLhdQB
	JvanpuKd2cDMes+YTWuWfBKNDJcGX2rT8MGFCsWqZ8s3/LcWR0PsHftPG7h0yJfTMYfaREwDWEC
	QsGmJ8iChJ1rxF4Dznr/OqHVX8IY1+tgLkE9joyAf+53ljRfa220UjOpGTrNo4fcci1QxIYorIr
	iH2ef1eEOExRcgKDsvGcLDqN/auKUifhSp7HhatI914wl1Ah+5JSjL2YH3lOEFBrSL0fvTbgVfR
	xN+AV3UaONf6Tbn7Qu3wQduKyeIdBJiEKW+ofbv0+jVT+O1boYDj+R9ioMp6lHg4/lwnO7cblZs
	uprI9vRiT
X-Received: by 2002:a05:600c:4e0b:b0:4bb:68f1:5bc0 with SMTP id 5b1f17b1804b1-4bb88920967mr58829305e9.33.1795171696983;
        Fri, 20 Nov 2026 02:48:16 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb88f14f1esm38161425e9.2.2026.11.20.02.48.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 02:48:15 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH 0/7] arm64: dts: rockchip: Updates to RGMII PHYs on Sige5
 and NanoPi M5
Date: Fri, 20 Nov 2026 14:48:08 +0400
Message-Id: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzNDQyMD3aJsY1NzM92CjMpiXSNzczMLg0QLc/MUcyWgjoKi1LTMCrBp0bE
 QfnFpUlZqcgnICKXaWgAJfcibbwAAAA==
X-Change-ID: 20261120-rk3576-phys-277680a877d7
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>, 
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2101; i=alchark@flipper.net;
 h=from:subject:message-id; bh=5sdbEL5GXTFR6FwhqPpfL+d2C9hL8olV/xv+pbxWIgo=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQzqOa83X/p5+Hdf6QYbtcl7MnLMPMpkrVNqZGMX/vZO
 XL3wjM5HRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oZGOsY4RAxenAEz1qdkM/31T1u/Ku+Mo29m+48QCYVGeRT/fVDT0XBN4vC77QxRv4UWG/wXinNK
 rVhwMf1V8uTqMR06Sq+fuhprm52yME779v277igUA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_024819_538922_8267A8E6 
X-CRM114-Status: UNSURE (   8.04  )
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

Both ArmSoM Sige5 and NanoPi M5 boards use the same Realtek RGMII PHYs
which currently share an issue preventing them from enumeration unless an
earlier boot stage left them out of reset: at power-on, their reset lines
are asserted, so they cannot answer an MDIO probe. Until they answer, the
OS cannot look up the ID to match a driver. And until the OS has a driver,
nothing releases their reset line.

Fix this by using their known PHY IDs instead of the generic compatible,
so that the deadlock is broken. This also opens up the possibility to
enable the Realtek-specific ALDPS feature (automatic link-down power
saving), which saves around 400 mW for each PHY with no cable attached.

While here, also do a couple of minor cleanups: NanoPi M5 uses a dedicated
crystal to derive the 25MHz reference clock, so it doesn't use the SoC
provided clock, and the current DT property is superfluous and misleading.
RTL8211F datasheet also specifies much shorter reset assertion and
deassertion times than currently used in the DT, so adjust those, too, to
avoid wasting unnecessary time during the reset sequence.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
Alexey Charkov (7):
      arm64: dts: rockchip: Describe NanoPi M5 Ethernet PHYs by their ID
      arm64: dts: rockchip: Describe Sige5 Ethernet PHYs by their ID
      arm64: dts: rockchip: Drop NanoPi M5 PHY reference clocks
      arm64: dts: rockchip: Enable ALDPS on NanoPi M5 Ethernet PHYs
      arm64: dts: rockchip: Enable ALDPS on Sige5 Ethernet PHYs
      arm64: dts: rockchip: Shorten NanoPi M5 Ethernet PHY reset to datasheet timing
      arm64: dts: rockchip: Shorten Sige5 Ethernet PHY reset to datasheet timing

 arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts | 18 ++++++++++--------
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts    | 20 ++++++++++----------
 2 files changed, 20 insertions(+), 18 deletions(-)
---
base-commit: adcad7f4e6332cff3d6d7165f41584899f598534
change-id: 20261120-rk3576-phys-277680a877d7

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
