Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E71F606B241
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 15:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=favgc0Bn;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=163.com header.i=@163.com header.a=rsa-sha256 header.s=s110527 header.b=aak/E1CJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=LTn8gZ2VHGb2JcsIfZgavs8gj4w6IypMnPqLpsFbsUE=; b=favgc0BnFX9x9JMcpyoOGag2Fj
	OwS3bT+t9hLuyawvTniSs4Rh7oxcilDMBrb7MHx1kTtH5ulp55QinFpBOj/GTfmQsswLgb9W4O2gp
	5DkztwpXHQO0MVEPPF1EZ/GfRKYzhLD1C7Hzb8lecjXdYzuntLLMGEmNpoFB9l4EeLZuz6QPoxvfG
	i3o3SX0ssGxmrpiuSvLFlQitiK+0eeuEHBqWeOn8frqmjKZ8x1/fLngc8hd8iF8AnyNHtoJSHcCrX
	p8VIac44Ju3Wd3PfohAl3aKeTKOoqu2KvZyFylZk1hY1g3X1cbV9CUgDskfPUIPGU1bd5VVcdUhut
	Xor5pOMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOGDt-00000002tf2-1XjZ;
	Tue, 03 Nov 2026 15:14:53 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOGDp-00000002tZE-2rUp
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 15:14:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version:
	Content-Type:To; bh=NaVbGjpCB1+ihGDMTWVDYCcxjn/9X7pRUYNMNxwpYIM=;
	b=aak/E1CJkpTq5CuU/H16yUcLd+d/zEpnL1YmWirIzje0zAB91ynHJ8gJJ5f142
	qM/Wy1Z3ZVq0IsqdoCb+lf9l/wcLVOJs1r6u7mRjvfil8qZNmmvYAJvVzCtNqAFP
	BoY1qk0D0bcf9S7QFKIMN6JV3G4vbtdrv4lJQ4pcnVJgg=
Received: from 4F-GAME.localdomain (unknown [])
	by gzga-smtp-mtada-g0-0 (Coremail) with SMTP id _____wD3NzWP+elqrXnHFA--.58335S2;
	Tue, 03 Nov 2026 23:11:12 +0800 (CST)
From: Bob Hui <bg9oxa@163.com>
Subject: [PATCH v14 0/2] arm64: dts: rockchip: Add ALIENTEK QuarkPi-CA2
Date: Tue, 03 Nov 2026 23:11:06 +0800
Message-Id: <20261103-quarkpi-ca2-v14-0-290990440b67@163.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIr56WoC/33QzU7DMAwH8FeZcqbIdtJ8cOI9EIc4SVlArKPdK
 tDUdycZQmt7mJSLI//+tnwRYxpyGsXT7iKGNOUx94dSoHrYibD3h7fU5Fg+BAFpBFDN19kPH8f
 cBE8NYSTfutBCkKKI45C6/H2Ne3n9q8czv6dwqhG1Y5/HUz/8XOdNpvb9J5tV8mTqg8ZbFXRso
 06dfkYtH0P/KWr0ZO9gWyRbiY44RTC8lm4hCdfSVWlaAM1EHNq1RFhSuaYIxbrIDhQ6lUBuLN5
 swRuLxSYmpcFob6nbWLpnqdholIuOmbhzGyuXdruzrDeONkgIkbVJNzvP8y/s/mgDHgIAAA==
X-Change-ID: 20261004-quarkpi-ca2-21d2a59c50c3
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Andrew Lunn <andrew@lunn.ch>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor.dooley@microchip.com>, Bob Hui <bg9oxa@163.com>
X-Mailer: b4 0.15.2
X-CM-TRANSID: _____wD3NzWP+elqrXnHFA--.58335S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxCrWkAF1kCryxZFy5Kw4kJFb_yoW7JFWfpF
	ZxuFs8GrsxtFyxuFn7uw1xuayS9ws7tr4FqF1rt345Za1Ygr1xAryftw1FvanxGrnYy3WU
	GF15W348GF9xZ3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0pRiYFJUUUUU=
X-CM-SenderInfo: lejz05rd6rljoofrz/xtbC+hG3JWrp+ZHq8gAA3K
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_071450_197150_3452FC6B 
X-CRM114-Status: GOOD (  17.76  )
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series adds support for the ALIENTEK QuarkPi-CA2, an RK3588S based
single board computer. The binding patch documents the board, the DTS
patch describes the hardware.

The DTS was rebuilt from scratch against the vendor 5.10 BSP device tree
and then translated to current mainline bindings, so that every node and
property has a vendor-side or schematic origin instead of being carried
over from the earlier revisions.

Changes in v14:
- Drop the unused media/video-interfaces.h include.
- Write the ramoops zone sizes as powers of two.  ramoops_probe() rounds
  record_size and pmsg_size down, so 64 KiB and 128 KiB are the sizes the
  driver already used and the layout does not change.
- Keep combophy_avdd0v85 and combophy_avdd1v8 although nothing consumes
  them; they document the two PHY rails the board has, and the combphy
  driver has no supply property to attach them to.
- Keep both the direct and the amplified headphone routes: the vendor card
  routes LOUT1/ROUT1 and its "Headphone Power" widget into the same
  Headphone sink, and with only the amplifier path the jack is silent here.
- Link to v13: https://patch.msgid.link/20261103-quarkpi-ca2-v13-0-ad8c30cdb67e@163.com

Changes in v13:
- Add a link to the board schematics and the Reviewed-by tag from Shawn
  Lin, who reviewed the sdmmc, sdhci and PCIe parts.
- Move the pin configuration of the headphone amplifier's enable GPIO from
  the sound card node to the amplifier node itself, as suggested by the
  review of v12: pinctrl is applied per device, so the amplifier can probe
  before the sound card and request that GPIO while it is not yet
  configured.
- Keep the direct LOUT1 and ROUT1 routes to the headphone jack alongside
  the amplifier ones, contrary to the Sashiko bot's suggestion on v12:
  describing only the amplifier path leaves the jack silent on this board,
  while with both routes LOUT1 and ROUT1 each have two active consumers
  during playback.
- Drop the leftover Assisted-by tag from the bindings patch.
- Link to v12: https://patch.msgid.link/20261102-quarkpi-ca2-v12-0-d749d9bb2bf9@163.com

Changes in v12, addressing the Sashiko bot's suggestions on v11:
- Sort the PMIC regulator nodes in natural order, so that dcdc-reg1 comes
  before dcdc-reg10.
- Sort the phandle references in natural order, so that pwm7 comes before
  pwm14.
- Put simple-audio-card,codec before simple-audio-card,cpu.
- Add the blank lines between sibling nodes that were missing.
- Link to v11: https://patch.msgid.link/20261102-quarkpi-ca2-v11-0-eb246076a82f@163.com

Changes in v11:
- Trim the commit message down to the board description and the list of
  supported peripherals.
- Drop the Assisted-by tag.
- Note on the Reviewed-by line which nodes were reviewed.
- Sort the properties in aliases alphabetically.
- Sort the nodes without unit addresses alphabetically, everywhere.
- Drop the deprecated regulator-suspend-microvolt properties.
- Sort the phandle references alphabetically.
- Keep a single root node and merge the extra root nodes and the &{/}
  block into it.
- Link to v10: https://patch.msgid.link/20261023-quarkpi-ca2-v10-0-9db904194e03@163.com

Changes in v10:
- Add the Acked-by tag from Conor Dooley, which I missed.
- Add the missing domain-supply for the GPU and NPU power domains.  Without
  it the power domain driver falls back to a dummy regulator for both.
- Enable the three NPU IOMMUs the enabled NPU cores reference.  Without them
  opening /dev/accel/accel0 fails with -ENODEV.
- Link to v9: https://patch.msgid.link/20261021-quarkpi-ca2-v9-0-b75006b22bc5@163.com

Testing: boots from microSD with this series on a v7.3 kernel, and the
on-board hardware (microSD, eMMC, HDMI, USB-C DP altmode, USB 3.0 and
USB 2.0, PCIe Wi-Fi, Bluetooth, GbE, ES8388 playback, PWM fan) works;
"make CHECK_DTBS=y" is clean.  The NPU works on this revision (all three
cores detected, IOMMUs attached, /dev/accel/accel0 opens, MNIST classifier
95.00% correct on 200 images), and so do the H.264, HEVC, VP8 and AV1
decode paths.

Note: there is no fiq_debugger node, so the debug console is ttyS2 and
console=ttyS2,1500000 has to be added to the bootargs manually.  Capture
from the headset microphone does not work with the in-tree es8328 driver;
that is fixed by a separate ASoC patch series (sound/soc/codecs/es8328.c)
and does not affect playback.

Please review.

---
Bob Hui (2):
      dt-bindings: arm: rockchip: Add ALIENTEK QuarkPi-CA2
      arm64: dts: rockchip: Add ALIENTEK QuarkPi-CA2

 .../devicetree/bindings/arm/rockchip.yaml          |    5 +
 arch/arm64/boot/dts/rockchip/Makefile              |    1 +
 .../boot/dts/rockchip/rk3588s-quarkpi-ca2.dts      | 1210 ++++++++++++++++++++
 3 files changed, 1216 insertions(+)
---
base-commit: c03c1a14507dfaf8b856c2608f9ac216021fc222
change-id: 20261004-quarkpi-ca2-21d2a59c50c3

Best regards,
--  
Bob Hui <bg9oxa@163.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
