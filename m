Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F421606A8AB
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 11:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hUvtKnO9;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.a=rsa-sha256 header.s=google header.b=nLAqHjfR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=0MbCy72JCru9/L/kjGZwmO6fy1B9SbBHT57LerhtsFg=; b=hUvtKnO9X7houytPWe5phUDwBG
	CHz8uKLAlWDlIjW1c1cZ3b4n53I6OMrb0kAEmBC+6HPRG1LNASrl+UsmV86YRrPtRbq0H9k0X5a/N
	twtapzgOuyOCUTZANQhR0N73ym3L3YXBK0LOFUxe2gvnayA568ndmbmhlB7tDQuaqTNtVNmetYau3
	6XAkFAG37RQ8pxReKPOm4P3hpBTg8rP3DUGbStkxEIr/9EZw91Lpf9Y+Dca4jneiagy5mwwFV0VZO
	Q8X6YzC7ybuTvq4NzbM8gZU3/Z/mFhtoBEpatA0x2OWeah/TzDHCWrbrsI4y66FWXJfPyAdDgAj/i
	938uSnLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRpbk-0000000CYQh-1ck4;
	Fri, 13 Nov 2026 11:38:16 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRpbh-0000000CYPd-3wSj
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 11:38:15 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4a208d93758so13095325e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 03:38:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1794569892; x=1795174692; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=DyYt9/DWMV0EyHpbAMNA++QZYC/8eNT5egYzuTC+VI8=;
        b=nLAqHjfRkjRp6LE8ogf33XQtEt2aj5nC0nJjYp9MdS0HQdoCEzt/5loV17CBPEeKyJ
         tMIYTqio6V81aGejiClM7agcc8NfUH6IFVr0grtdxDhguZDkcBJ8zOGXFBDPL2n1UNs2
         ITeetR42YwlgT+xRqy/3fIZLqlT51jbsopul0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794569892; x=1795174692;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DyYt9/DWMV0EyHpbAMNA++QZYC/8eNT5egYzuTC+VI8=;
        b=i9iNZZh7NEOMhNHV2voBb5K/LpScrcaWjM9CU1NjJBTsySW5DCdrOrfNWwuGuxBjpk
         +QJkq6pCneOQ7hBxZ0BCSQYqvOOI1mnFXfYUbfo/NtIW5uYR6ZlmRIzVeuUIkffSthQm
         /YKhemydBHSXF1+m0rf1ORf40IeIgRH3Rhn5iWHxr7/Dn+wk0kly1cWnOz8b0XcCenV3
         gALHlHqoRPH5tb9wpq3B1Kh7WPNY7gdcmQ7SNihQ8bRzqszDuRDA/CAKDgarmHVx+Ece
         cyirAc4ImocUifV5pE/lEaX1YCX1pgzvVk8nIvBebWq+0YnCDZge/Es9bfwy+1jeD200
         ez+A==
X-Forwarded-Encrypted: i=1; AL+hErHEK4iMZ5I/zhuohE9VYiEpHqitl78iVU9avGb9PaPlbCvOE3QL+Np+J8oqpWxia+R5VGXW3oItBCxCGkX/qw==@lists.infradead.org
X-Gm-Message-State: APuU4Z8ePVFLwIuJjk8kX8JSUgHXNwo0it6uTBcI+u8L+0yDui8R42rV
	80bArmn3XX54+Z196xXxARxailCapOM7a23CHLygdohynBkTGwE4aBjddw5bQnWjT0s=
X-Gm-Gg: AYBFou0na4KTk1aIt5fy3OIANzvFODMAe7Xy6pz7ArCtRlV19lXb/avtMMOKwl8rEb9
	oIoUn90LcAGjk4PtpmYshZRTUUTvGy1C3Uqm3Rgg6UvwRcCkuD+R131b9vuc5etZeOETde2SN/X
	79qVI6LYwJ4gt5dgk4jd+91EpYVYlxGMGu0bZMBhEmClx4aKyzAFfV56AFyp7rWG0pS0mb6vt3r
	SmB10+CsPNqXdsQPVKbXfMEfFGONzzUR3L6m60Tz8yg6FPq1k87uyy5ZKpm3EuYAuzQkQIjNbmm
	76nFx2EBqbXP/DASRJm9F1yb1HLAKh42Ch3FPHGM6nWV2Wej5aTcFko44kPOO1zob1LrwMcdHlg
	TGbTcn/7GEQtnNoYaDtJ6idFVXuMLCCu525GaoxsE46V2eBrUG7+4C/eZlHMTSaPEGvlzyX19Ke
	fxEbNqfyJvWc+vAOJIp5mCTDdFYJAeWcpPN6pnJofueNt3JkQakp7iSRBB5UDoOqs5K5KZezgRK
	pPZH+4EZye4h7LGEk1QHelQ++OOXZyW0vGoJcazuQ9HkMbn9JQYnd+dWL4xwVhenLKjWWTXm5xq
	V/DvztjqPbGD1XIkzdv08o3/RaxsYCA2Efy5eh1DbcP6pxj+uwiJX2AncZm3gAJ9pvLv4bd7v6F
	n
X-Received: by 2002:a05:6000:26ce:b0:48c:571a:a1aa with SMTP id ffacd0b85a97d-49c70de38a0mr4829044f8f.19.1794569891720;
        Fri, 13 Nov 2026 03:38:11 -0800 (PST)
Received: from thinkpat.amarulasolutions.com ([2a07:7e81:b71d:0:3e39:d071:1d81:5914])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c5d03b10fsm5448492f8f.1.2026.11.13.03.38.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 03:38:11 -0800 (PST)
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
Subject: [PATCH v3 0/3] arm64: dts: rockchip: Add support for Axelera Embedded 111c
Date: Fri, 13 Nov 2026 12:38:05 +0100
Message-ID: <20261113113808.1779860-1-patrick.barsanti@amarulasolutions.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_033814_006191_F0116B3F 
X-CRM114-Status: GOOD (  14.13  )
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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

Changes in v3:
- Address Heiko's comment about the incorrect Signed-off-by chain.
- Address Heiko's comment about the dts name being too generic.
- Address Heiko's comment about the deprecated
  "regulator-suspend-microvolt" property.
- Add Copyright header on dts.
- Add Krzysztof's Acked-by.

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
Link to v2: [3].

[1]: https://axelera.ai/axelera-products/embedded/111c
[2]: https://lore.kernel.org/all/20260522174918.61523-1-patrick.barsanti@amarulasolutions.com
[3]: https://lore.kernel.org/all/20261020113717.189082-1-patrick.barsanti@amarulasolutions.com

Patrick Barsanti (3):
  dt-bindings: vendor-prefixes: Add Axelera AI
  dt-bindings: arm: rockchip: Add Axelera Embedded 111c
  arm64: dts: rockchip: Add Axelera Embedded 111c

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3588-axelera-embedded-111c.dts | 810 ++++++++++++++++++
 4 files changed, 818 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-axelera-embedded-111c.dts

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
