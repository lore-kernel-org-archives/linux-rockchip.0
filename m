Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABB55606A32D
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 11:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GDhKfsR8;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=vHZ/ZdKs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=+AbhSBqrWidsbi0BTPEQdkfNykfRwxKvJjEHFEqXyQI=; b=GDhKfsR8fAeic6mMgdGsgG1jad
	jFt4bG88s7+fW7wW8nJpbnrU9jLIiHeAdLI3nP0RJFnhSBYKdRqaFJrQP2XkQd2sAhClphlrHvW80
	XbYJ5hsguBn2dRd/Hn5+SBTCTj8IzB1J0PasQtDRO2yR8a/xFXKfJP1etwFUJOeZcY5+pohcKn1sT
	VM05i6L86V5Qjen5GxnV4ziQGr6kQ0o8MkVk02dK0ZaEOq6nmdpTedIjh/pgAlfCve/HelMI3bM0a
	oBZip76cOO40lFVdqT2WXeQs9YdZjBmy927XnYW6+laedGlqL2lVgjhXvZX0v8IHSQ9/N4d+cl/Mn
	VBvwlJFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWBTu-00000009h8h-3go6;
	Wed, 25 Nov 2026 11:48:10 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWBTr-00000009h7B-1ADk
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 11:48:09 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4bba60271d7so4838485e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 03:48:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795607285; x=1796212085; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=vpR5O1RFGnmEKRzAE5aTOTm5Hq/TE8oYJvYgkp4gzQg=;
        b=vHZ/ZdKshaq82o1SuNRcYw1hpFwm7bjfzLObfCXZNa2t8tJzB+7raUvyK2n98MyhNW
         lH+xyZ00HZoly+2J6Gs8S9ID0bJT9vXQFfl6rqsVp+wkiTfoZfcHlJybJbMBTs98LAeL
         FOuVG1AFWe91trILEMLITQpaxKYqCV+QD8oavhPdJAjqAHQC7zV6uxfTfNb1rCysm5ET
         bgm2bV4ycpmvdae/n3OGJr2szWt/9lfejsh/y/6UpAEVOLg3n5OI2xTAk1pKBmafdQc0
         lJonl2F44eNRgXi9bro8kTrVbbUflGlGP6Y18fh3rjK0NHMzoI/j5NXD4pKQ6KZnyDqL
         9hMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795607285; x=1796212085;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vpR5O1RFGnmEKRzAE5aTOTm5Hq/TE8oYJvYgkp4gzQg=;
        b=Lihpc4yUanQtLFR5Kcj8Th7CeeJA03TjVw/s5C/tWpYNU1KNNd0nADJwBSWl6BdmgL
         IfATrnUACWCvIGgkGlKxv7e4pFkuJR61e9FhoNE9/6VOY7kpsLY/AaN6T3oSRRckhflt
         W9uk7w/91sX8IDhViCpuNFzl6tz7pnMtnXxZIF9LZPDWKEZ5NkSIwxr5r7uiFzEXEB6T
         U9hafNbqU8TyEF4EoFL6FAwKz9PejLbQD0dSG7o7eHq27ZjhSn9y9y9OwnQgqhCEISSN
         OniDnf+1mW6chmL+UYsd9HHtuyq1dsgXZMQciC9siqJQR6P7JIpjP7b31UJljCrDJnX/
         vrnw==
X-Forwarded-Encrypted: i=1; AL+hErERkYW9xhcm7VRquzG4mxSJ9hxNPxQqpbtHWRwEmCYo0PRycAHgBARlRX6r/mTQ/SpJbSvuu2nYjFxMkRpd0A==@lists.infradead.org
X-Gm-Message-State: APuU4Z9NfRssy68Y1rQqHCAJCFqZwy4BWHLW4w8/w9dY/UTdeMdjUSLY
	r0qmBFvrYFzsrNhShQojWabOVoz3cYcq/ZJIkez0gTGCCf5g1qFRa3wx
X-Gm-Gg: AZFdTZeYJHYAV8BcGBCsNPYgvxYW5udUUGG8N5fL0bmGiOegC4im1zUrKNiBwNrC1Ty
	PDIjwnlqEvSD56dedy5A4++zi8szmvelocfcWAHI+4L2cAR010MmvEfG3vFsawsKIKO7t+l2nyu
	9x+topBRlKe/EQFrczYqSfxDtgBk2jmoU9Qo+gmdasMfBP99JXcV+DZAkgxyqFWQclCIv4kbYFU
	VHTLdLw6dpy2EMbOR8cgQRhrx4A35oIXVIjXCdQCBWIacfeLK3p5Fp1Y+Wn0hue67hjXkVPRcMt
	zat2FpKf1fHf1YXkuLFA2WKKo/l/BSxU49wmu5chq8qQ2op7QlNTEl/zMqMigjGk3R9TRA7Xlth
	jWfs57NuJ3pYLKK58OuVbTc287N8ueq+9aTHUQRfbORBYIX8CtfJTHEt8mCj03n9jVc5Tdbsltf
	YE8XEPwW0i4Q1lnuNryS2hMLkoTpLM55aXWWVn5gzwKuwpztrCfYVOBHBYRy2+6MmpuHmN/Jh+D
	zwzNNqspvm3+8XVNF7cn9f2YKNj6Coi0vcsJrFGPqAox4dGz5gx6uO+9GJ3kjOx0CPGjt7ppbvv
	/5Rb/U19grvzFMVieBO9/4Lzywmnc9uUWVbHxwWLY700ql3uh1bDvTxNdtS32dEtI1amuUO2nBR
	NjZ0W5uNNUG5tKmqPeXQ=
X-Received: by 2002:a05:600c:5303:b0:4a2:1655:87db with SMTP id 5b1f17b1804b1-4bb88785d2fmr350066075e9.0.1795607284755;
        Wed, 25 Nov 2026 03:48:04 -0800 (PST)
Received: from saeedvft-ubuntu.tail2d4112.ts.net ([46.100.16.26])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb884c3063sm514068355e9.15.2026.11.25.03.48.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 03:48:03 -0800 (PST)
From: Saeed Nourian <saeednourian82@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Saeed Nourian <saeednourian82@gmail.com>
Subject: [PATCH 0/2] arm64: dts: rockchip: Add Firefly AIO-3588Q
Date: Wed, 25 Nov 2026 15:17:55 +0330
Message-ID: <20261125114757.654051-1-saeednourian82@gmail.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_034807_330905_81555242 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add a device tree for the Firefly AIO-3588Q, an AIO carrier board for the
iCore-3588Q system-on-module.

The module itself is already described by rk3588-firefly-icore-3588q.dtsi,
so the new file only describes the carrier: the two RGMII Ethernet ports
with their RTL8211F PHYs, microSD, the USB hubs and ports, the PCIe 3.0 x4
slot, the M.2 PCIe slot, the PCA9555 GPIO expander, the HYM8563 RTC, the
fan, the LEDs, the recovery key on SARADC channel 1 and the three Rocket
NPU cores.

Besides the board bring-up itself, this series enables the RK3588 NPU
on mainline. The three cores and their IOMMUs come from the SoC dtsi
and are bound by the Rocket accel driver; all this board has to supply
is npu-supply and sram-supply. Testing details are below.

The first patch only adds the compatible string to the existing "Firefly
iCore-3588Q-based boards" enum.

Tested on hardware with Linux 7.4-rc1 (for-next, e19bd795e8, plus this
series), booted from TFTP with a RAM-only initramfs, without touching the
existing image on the eMMC:

  - eMMC comes up in HS400 Enhanced strobe, all existing partitions intact
  - both GMACs bind, RTL8211F is detected on both MDIO buses, and both
    ports link up at 1 Gbit/s and pass ICMP traffic cleanly
  - the GL3523 hub enumerates on both its USB 2.0 and USB 3.0 side, the
    four type-A ports are its downstream ports and a USB 2.0 device works
    on each of them; the onboard FE1.1S hub enumerates on the EHCI port
  - a microSD card enumerates as UHS-I SDR104; no card detect events were
    seen, so broken-cd is set and the slot is polled
  - both PCIe host bridges come up (both slots were empty during the test)
  - the PMIC regulators, PCA9555 and HYM8563 (rtc0) are present on I2C
  - NPU: all three cores probe and report "Rockchip NPU core N version:
    1179210309", the IOMMUs attach, /dev/accel/accel0 is created, and
    a runtime probe through it passes
  - the devicetree has no deferred devices

The hub RESET# lines are wired to the PCA9555 and are released with
gpio-hog nodes; describing the hubs themselves is left for later.  The
display outputs (HDMI0, DP0, VGA through DP1, eDP, DSI0), the Type-C port,
the ES8388 audio codec, HDMI-in, the camera connectors and the 4G/5G modem
are not described yet and are left for follow-up patches.  PCA9555 line 3
is used both as the user LED and as an SD power enable; only the LED is
modelled here, and the card slot is powered through line 13.

AI coding assistants were used to help prepare the DTS (cross-checking the
board's hardware description and some of the edits, mainly the USB hub
nodes). I reviewed all of it and tested the result on the board.

Saeed Nourian (2):
  dt-bindings: arm: rockchip: Add Firefly AIO-3588Q
  arm64: dts: rockchip: Add Firefly AIO-3588Q

 .../devicetree/bindings/arm/rockchip.yaml     |   1 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588-firefly-aio-3588q.dts | 434 ++++++++++++++++++
 3 files changed, 436 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-firefly-aio-3588q.dts

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
