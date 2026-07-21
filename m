Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13AD5C4451C
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 06:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HHQx3zfAIJn2udiM1ebgq+mPw8sSZ100EoxrZrQrbe8=; b=GxONljXyRpD9/D
	XzJWrMLngJQqLCIDufd6bUNGO/SFKuX8cWN4yf7TUpYKUHFwaXzdcZry7MD7VsIIxGbDNMUcdGtIo
	jX1KFUDRfgU+oqVi/kD1cysyZJwuB+odruFgbS7lTHBCplnRCt4QjhzXBYsAcyI/BbZcQRPd5te4B
	Kd6KOgrh3IlbQvEfTeb9VThug4V5eXY0Zp7GblRcSBXNS2c0PcYRI/MsHdixDvnnCPxki6FrGPBWg
	mYmYN39Bi0QvGTRinRqF42dwlE0hl4SXuwHoOzrXK3Jp2siIQ8o902IyjoFnFf5cGO9wczSGqMQL6
	N+eIsti2mUTttInCRfWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4AY-00000008Y2D-3nYe;
	Tue, 21 Jul 2026 06:41:34 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4AV-00000008Xzb-1nnF
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 06:41:32 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-47c2ae992beso714720f8f.2
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 23:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784616089; x=1785220889; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=olVi47cfDDwShzUFdBWycem44Z+dyrHJb9D5B3ac60w=;
        b=XZwwSdCX3J0HuDJTe8pQink1u4AOPTEF104ikmFayKU/kkreryPbhjEBGgiggQc2IH
         WusEz2yolnwbcl5rmfIZXGZDIxo7lfQVBTUStyKHpObo0Wh0tF5fENrO47WHgEkUv+qB
         pzX9H87uj/xLuYAADJDKXuFDz8ET+4vYzawqbeMimZso3mcJTc61SB56I+qOQwVJnQXE
         j7LkZImWvWPuCI9bTB82dRZg1yeK1o3E5LtBMXGC4XDpBZZtmzjDTbeiwLjq7vYO73Dm
         WzE7cE7kunHbduSCyyR4fFTj5VEaT7i3UJ6NOroqRrGZVWrd2jg3miuapsE7Eq1n7kAB
         7F/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784616089; x=1785220889;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=olVi47cfDDwShzUFdBWycem44Z+dyrHJb9D5B3ac60w=;
        b=VNYVts2dMeNdMcfCjeLUYoL0gxgkh84OcBxmVXqOSO31X/rccbcuNVsvzCG4gB78V1
         ALtZWybhbmL4L29NOuNs6RXan+ja+Mdpfd9MKgJEiyy1s6t3DCiByERIEBLjnfVm2uaN
         3sXCkn9S4td/PJtaK9RNavZwxQ3i6stkFWjgxJH5UkmYAWjVvMn2bAVce45LQcHiXjye
         lUVolrNgHHNTvyykgPJQscFIE4x7yPrIy4SP/ULFKLew+dhGlG218a8r6ChZuaT1dk1R
         KQyPGr/Q4t1NgLKpIhjY+/ECAJiCH6YZCrJq3O+APd30/0sQNjE3hKOgZ4/Z25meTKRN
         WbEA==
X-Forwarded-Encrypted: i=1; AHgh+Rq+xh7oZNUo5oxP+VZTnqgq9+03ExrQXQ0+QxUabgBLLa6VlRuko7eIXIGgz1Ifa/LlKBQMRyvr16Lm+dPbcA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxuwyu3DTTfT780Ay7zXLhJJ8OYMT4TuPEZYb2yeFGkp5IZmAR8
	5Mko7dOOjinhYq8QJbbOeBbuxGV3gGq+yyzB+LdFpNw/mWHdVLl7ZrdjBILw2h6W
X-Gm-Gg: AR+sD10BvAF4jj5emzvEdbgSC/lmxZy5rd+urzfkzA2PmdRUZILT91lbepRfXYA2zUu
	33Qlxmkx0B54u1x7hTb5aBjiQysFStK/c4gt9v14kkv51thatn3NJ9x/dB3v6Rk/l08n8EmZCcj
	tMbQpwZvPNi8CZ21ANV3vIMCl69Wu0o+reyBEk99+R5mfspkuNmDqh6hHR+1VLfAMnQs8h0SazP
	8AN/RCQNz0J9h27u+UP2i2FZJiBoEkkqi2tkQLAyKy+91KJBqyu25uDPuPraND7x5y4S2KUhtgL
	3eO0YTefYkSsJp+8fuW+34xUUV7GJgo5iB+Gp504ejw06lrX4oL1vo2H99tGNXTx7F+cLGTmaEn
	V+Jyw6FlpMp9COmZeMRm+4EEzbI+j3I5pM05rl0RcxhvW8Wf7pv19uzYAPyOOVeIPBSD8WETzrZ
	MAvnRxsYL5fm+NtQmz+C6iRZHv7AtPFJNfoA1KdEcHMdnI7RzCsAtJIeQrtsk19YzufKEBH/s8e
	VykRUjsyA0=
X-Received: by 2002:a05:6000:4023:b0:47e:96f2:52a8 with SMTP id ffacd0b85a97d-47f7fdd26d7mr1154379f8f.1.1784616088618;
        Mon, 20 Jul 2026 23:41:28 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B88AD00DA0BF9DB4519DBD6.dsl.pool.telekom.hu. [2001:4c4e:1b88:ad00:da0b:f9db:4519:dbd6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f63ed1911sm38837951f8f.22.2026.07.20.23.41.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 23:41:28 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH v4 0/4] media: synopsys: hdmirx: add HDMI audio capture support
Date: Tue, 21 Jul 2026 08:41:11 +0200
Message-ID: <20260721064115.64809-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_234131_512498_E1AF3DF4 
X-CRM114-Status: GOOD (  14.61  )
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

This series adds audio capture support to the Synopsys DesignWare HDMI
RX controller used on the Rockchip RK3588: the controller's audio FIFO
is exposed through an ASoC hdmi-codec device, with a periodic worker
that keeps the local audio clock locked to the incoming stream by
tracking the FIFO fill level. Together with the two dts patches this
yields a capture-only ALSA card fed by the HDMI input.

Validated on the Orange Pi 5 Plus against multiple HDMI sources:
capture follows the source sample rate (44.1/48 kHz switches
included), survives repeated stream start/stop cycles and SIGKILL of
the capturing process, stays free of FIFO under/overruns via the
clock tracking, and now also survives system suspend with an active
capture stream: audio resumes flowing on its own after the cycle.

Changes in v4:
- Driver: support system suspend instead of the -EBUSY guard
  discussed on the v3 thread (Dmitry Osipenko's preference). The
  worker is stopped before the controller clocks are gated; resume
  fully resets the controller, so the audio path is re-programmed
  from the last known sample rate and the worker re-armed while a
  capture stream is active, through a hdmirx_audio_setup() helper
  shared with hw_params(). Validated with an active capture stream
  across the suspend/resume cycle.
- Driver: use swab32() for the ACR word reversal; readl() already
  abstracts bus endianness, so the reversal must be unconditional
  (automated review, valid finding)
- dts: the sound card is now a shared, disabled-by-default
  "RK3588 HDMI-IN" node in rk3588-extra.dtsi, mirroring the HDMI TX
  sound cards; the board patch only flips it on (Sebastian Reichel)
- binding: reference dai-common.yaml, switch to
  unevaluatedProperties: false, and drop the consumer comment from
  the example (Krzysztof Kozlowski)

Known limitation, noted on the v3 thread and under investigation as a
follow-up: a second suspend/resume cycle in the same boot can leave
the audio datapath silent until reboot. It reproduces with no-stream
suspend cycles as well, so it is independent of the suspend handling
added here, and looks related to the cold-start behavior described in
the v3 testing notes.

Link to v3: https://lore.kernel.org/linux-media/20260718085728.6797-1-royalnet026@gmail.com/
Link to v2: https://lore.kernel.org/linux-media/20260715200834.8486-1-royalnet026@gmail.com/
Link to v1 (RFC): https://lore.kernel.org/linux-media/20260715051939.64652-1-royalnet026@gmail.com/

Igor Paunovic (4):
  dt-bindings: media: snps,dw-hdmi-rx: add #sound-dai-cells
  media: synopsys: hdmirx: add HDMI audio capture support
  arm64: dts: rockchip: add HDMI RX audio on RK3588
  arm64: dts: rockchip: enable HDMI RX audio capture on Orange Pi 5 Plus

 .../bindings/media/snps,dw-hdmi-rx.yaml       |  13 +-
 .../arm64/boot/dts/rockchip/rk3588-extra.dtsi |  18 ++
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   |   8 +
 .../platform/synopsys/hdmirx/snps_hdmirx.c    | 306 ++++++++++++++++++
 .../platform/synopsys/hdmirx/snps_hdmirx.h    |   8 +
 5 files changed, 352 insertions(+), 1 deletion(-)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
