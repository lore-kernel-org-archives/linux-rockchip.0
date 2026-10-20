Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78575606A328
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 11:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mN/b6O6z;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.a=rsa-sha256 header.s=google header.b=DfD+E9OM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GPNRPjFJajI7gK3VFvmKLYio+MWU1tewZmzHUQYVgMI=; b=mN/b6O6z55eZUY
	ibWeAtFxtL7LJy4FGB1B6Uy6Lz2yebqj98KuCiXsWODpHYvIxjGPix9ocObONk8Q204/G0bdp7Dgz
	Wd2+X8hHPjF3T+cIpGCfYWsElGbdSHmL+ue0qA68XG2ulsGg4Dyf2LvSrdgLj2IRNW41wIsK/3XCm
	DzdlT6HQFCsf28ZLuUF9l3dfNzaKU4wxK2Sull1EmqkA4Vn+ziXnuynE1S5/enOKgcgUEaOYqKKw2
	auOr2EIOfTHwFp3gEGG5dNcWBHwxVk+matwiOXL8mJN90P3YChA+Z7EYltuxX2mlIHLaGXnmOBW9f
	CAb/9a2hMBGiaR8om6Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ8AJ-00000009ZCS-0izj;
	Tue, 20 Oct 2026 11:37:59 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ8AF-00000009ZAL-2dvb
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Oct 2026 11:37:57 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-48afcfc4bf5so2640356f8f.1
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 04:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1792496266; x=1793101066; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=9EfSOgLxi4obTSYFEKDcXWdZzyYRk0JZmlRNRhuV2c0=;
        b=DfD+E9OMchU0/JbAb1DiZZUJq2+rPRcBpKED2Qucd2P4z06MYPyH4w0sX0UhbDLaDZ
         L9zW6rVIH/3p5Ui4hyCR6S05qbmkLtBykiAfgAoAc4e8TUhZFQe1ZX+juC1fVtSdtOj3
         olzjfkeMS1RdSNxEoqFx17VsvBJ6lI5dJIjXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792496266; x=1793101066;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9EfSOgLxi4obTSYFEKDcXWdZzyYRk0JZmlRNRhuV2c0=;
        b=zp5Uh+CYEX5wmLJRpqcbtfLYtDeL11rVKG32yB8eXkurVyXsDzgHWnO+iMZFN/l7eW
         r2FiKXOTlC7m+yhP6U7Nq/DCQdpKUrC3uC+OU1QZJVtK3wlmbaU5nPKi7R6Vb7x4cP/A
         xqEkvebcbMp+zPQmn6T5opBNjNvuC2ELyoa5UK6ewxT6dcZYQW5h5oEg1N51sROx3HIz
         e90OkGLqz6+Ic2UsvP+rgTKk48bfLTsv+5Yt9xY/y5m4PbcbtZA/eOxUsnurfR51GQXR
         hazJwPIPt55iO85oPADGHlcjqzToIBN5O4cQF/HgcyUkra+rkGPWnD+SWv6/OGssaWJl
         R4nw==
X-Forwarded-Encrypted: i=1; AKwUvBwQaDMU2pMJ58hmbW21jKEOTRBVQDQlQG6GKwD6vZEVHXUxLzSGUTAgNlOGn/L9cYnb8eBNUAqEaZAEjYWSPg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJrHnkJgp8CWlDnS0Q6ATlkZsfz97w2sgMSoZpsU4NPVNWTklEI
	gJI0ZZCPaGkpykjWXdFf6a8TILZ3rR0Z5wLZvTC9/MPT114uJf4wfo9Shlxd181GtSA=
X-Gm-Gg: AYBFou0dK3KcF8/Vgj+htzAubrmrbFVXrf8m4v8uznwIyXpWqMXzNPzpNjCf3lHqCKq
	q6ffK15IKo/2vbhNP9dtUntU5bP83NNLIqWgGylaUJAka38DJMiEKeZiFC9NRPn5ti8VPQsAUoe
	LjdoLQBKOwI64M1ZyPQ8hp+nTaTyuW3c27gUS7KCR/t2g7TFC+Of/DgJi9k6QtBJy+/g5wm1D7+
	gyd3Kr5iNUov9mdN2iFvoxidKXvLbHDpBvflFq9OAWRdITlALIoHTdPgsCarAg8UPgMLCb4qyiq
	jVV69cNz2b34iVTEQN7yN+3avqxa3ZS528yHoVBGI69yxqOpwXocb3x35tjMYmrNsec4xgBECG7
	LFTTF43xxfUhkBddd86Y7lXroK2D4jqliseUVKioBqOD7qw+9vjhQKjn5Vw8sIDv5be/2c8Va9d
	tQkiuSYSeNOISwVAGZjkjSk9Ihldy8eS7tCkz8BYFVyyWlFo03eE7SdxIkK4x366GySX8o3Pf/P
	U1ZgcEVyB9xjYlUdI32Q1XA/i7qIxDt3gLx3clfnUeOSvmK8iioMPycrB/eOEduagybOUFbjHCw
	otGnAry3
X-Received: by 2002:a05:6000:260f:b0:48d:f14a:9176 with SMTP id ffacd0b85a97d-48e07bc1033mr21008073f8f.22.1792496265627;
        Tue, 20 Oct 2026 04:37:45 -0700 (PDT)
Received: from thinkpat.amarulasolutions.com (host139-112-32-195.dimensionesrl.eu. [195.32.112.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e1d83a099sm4709728f8f.57.2026.10.20.04.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2026 04:37:24 -0700 (PDT)
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
Subject: [PATCH v2 0/3] arm64: dts: rockchip: Add support for Axelera Embedded 111c
Date: Tue, 20 Oct 2026 13:37:14 +0200
Message-ID: <20261020113717.189082-1-patrick.barsanti@amarulasolutions.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_043755_700081_1AF69533 
X-CRM114-Status: GOOD (  13.73  )
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
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Axelera Embedded 111c is an SBC based on the Rockchip RK3588
SoC. It offers efficient AI compute for multi-stream computer vision and
generative AI applications in a compact design.

Product page [1].

This series aims to introduce basic support for the board,
which includes the console, the eMMC, the two Gigabit Ethernet ports,
the four USB ports and the HDMI connector.

Changes in v2:
- The board was renamed by Axelera between v1 and v2, from "Metis
  Compute Board" to "Embedded 111c". Address the name change. Drop
  Conor's Acked-by on the bindings, since the compatible changed. Keep
  it on the vendor-prefix.
- Address Heiko's comment about regulator node names starting with
  "regulator-".
- Address Heiko's comment about non-existent "mem-supply" binding.
- Address Heiko's comment about dropping the unneeded "Use rgmii-rxid
  mode to disable rx delay inside Soc" comment; checkpatch complains
  about uncommented rgmii-rxid, so take the one from
  rk3588-youyeetoo-yy3588.
- Address Heiko's comment about reset lines of the phy nodes being
  incorrectly described in the gmac node; note that these are still not
  described in the phy node because GPIO3_B7 defaults to pull-down,
  which causes the rgmii_phy1 node to never come up; rgmii_phy0's
  reset GPIO, GPIO4_B3, defaults to pull-up, so that node does not
  encounter the same issue. Moving the reset to the parent mdio node
  instead did the trick.
- Address Sashiko's high severity comment about hdmi0 node mixing M0 and
  M1 pinmux groups; use the existing hdmim1_tx0_hpd pinctrl group
  instead of redefining it. HPD is wired to M1 while CEC and DDC use the
  M0 pins. Verified hot-plug detection on external display.
- Address Sashiko's medium comment about "full-pwr-cycle-in-suspend" and
  missing "vmmc-supply" and "vqmmc-supply" on the eMMC node; drop the
  former, add the latter two.
- Address Sashiko's medium comment about the pmic node lacking a pinctrl
  assignment for the interrupt pin; add it.
- Address Sashiko's medium comment about the "vcc3v3_hubreset" regulator
  hack; describe the two GL3523 hubs linked with peer-hub.
- Address Sashiko's low comment about defined-but-never-referenced
  regulators without regulator-always-on property; drop them, alongside
  their pinctrls.
- Mux PCIEX4_PERST_N as GPIO, to match it being used via reset-gpios.
- Drop the unused input.h include.
- Drop the unused rtc label.
- Drop the local PCIe x1 pinctrl groups, which duplicated the
  pcie30x1m1_1_* groups in rk3588-base-pinctrl.dtsi.

Link to v1: [2].

[1]: https://axelera.ai/axelera-products/embedded/111c
[2]: https://lore.kernel.org/r/20260522174918.61523-1-patrick.barsanti@amarulasolutions.com

Patrick Barsanti (3):
  dt-bindings: vendor-prefixes: Add Axelera AI
  dt-bindings: arm: rockchip: Add Axelera Embedded 111c
  arm64: dts: rockchip: Add Axelera Embedded 111c

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588-embedded-111c.dts     | 816 ++++++++++++++++++
 4 files changed, 824 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-embedded-111c.dts

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
