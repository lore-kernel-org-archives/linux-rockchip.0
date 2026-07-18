Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DAC3C4451B
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jul 2026 08:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LXj9D+1X0kP8Zdu1IKG3QuuuakrWa2K5r8ysFEXF9vQ=; b=Wr8+2h6YqnZdDM
	CtnZ7ZrIUL3DJJkywlDYUGzTQsQkYDj1PR0GaGhEyiBlHG2WFUpSfMeWEQMNwDshelvkHJ3gFZSiB
	tqzlbQNcDolxne4n5B7wlv21QmLdMzAd3vKb+PlB1ch32DCZp7nrNKPETZY0UQLlZRdcKxk3Pp6zR
	L7VdC82otL09jg+WwY1mZYcOUKRBkHUmPJdBBT+HS490PMd4qZRzDD2HEePArI+adwOHC+dqhkKsi
	oLRLorWV5lifNFPmLz4cOMpZSPqh9a0binwv0P5ytlGBpbosC1zHAaCApTblCR7v1U2WhhOkQrN6E
	1dcrCG+UqFjgXaHBHeIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl0ro-00000003uxx-0ijX;
	Sat, 18 Jul 2026 08:57:52 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl0rh-00000003uut-2pba
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Jul 2026 08:57:47 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4954b3c5cbeso1387935e9.1
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Jul 2026 01:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784365063; x=1784969863; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=BJFiBGt3rnsgbEqpBZLJArMrhdkhs48oNDcrYNrzXaM=;
        b=TSQBXb0MzdUYaeLUnoor/FH1Mf6yJsfOhFRHyXTV2Lip/uHjcUJtuczA4/R9Wj0nmM
         UIdU3R3lvf+l4tiLw7CfCHQqrnnzNJ4N6Fp8B7/cyYXDUPpgHQuSwX89hVpPvXFGLtVk
         CC3AZ0bcmOhsCffqkxmMJxsC6l+FDmW2NXZhFNvnxiaBe4dnvgvYnF7PUfd5cd3Qvg2D
         3a9jlXGPHVGSflZ0A39l1bxevLrT6NzhJ2GEsWOoGiALrD+Q6EGRpFUmszATFprmiPBp
         0rg451IFJY+MRuSJDPd/aMC/G+M3RCxAlE27cb5VjFyAudU2NFtiB5IxM6k0kns3PbJB
         AAmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784365063; x=1784969863;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BJFiBGt3rnsgbEqpBZLJArMrhdkhs48oNDcrYNrzXaM=;
        b=ZbeA1BeD4oX/JvsrPkaE9OAl7K9gpOQlvf2Ol0bVqLjawqfOxmj7NCAk9V40WohO2P
         s6twfJ5yb+3ogGX33FgtPt4byoUxMP2Mcyyps4ZZfQdZI1HsANIxYZCXi0PRD1whXniu
         umLQOMTbA3ZL2KNqTaR62I++BNE2IfNcwYPyo8xDelm335PdbDsNHaYQITIWUW9jat1n
         gixtGbVXKOd7Z/szHCmr7R29QPP68Smd5qQIu/Mr0c04th/AteIS6PnvuwWlMagwnsX8
         W4uai8cScuf+qNhWQGwTIxQBOMQxM5ClKhzM7HjvBIVMiiOETdHZ3bVWhiymp4pTHauC
         xEfA==
X-Forwarded-Encrypted: i=1; AHgh+Ro07uHhVB4/UmcXi23ZZiVqNavILwGpaNiCgiS7cf/rkpHLKx+BH9OxLobuilJUAKmF0dv7smQmno9sASZc9Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxkj1urjjq9fyqhjs/3hJ17tF4oQEKQwexRlM75G+zwXD7RAe4O
	TFMUHiAFQlIMTW4bhumniMajhtT6a5JMsWYVX6yePI4yaDFTMEbNoB0J
X-Gm-Gg: AfdE7cme7UBgDcZOKMuokZNqpzuUimbO3SKHJysseO2Ue5H4itUg9ReRqjLZ2v4z9Ex
	c0koDgc6NSpnXDADLOe1qbVBRiX6PvL1WdAFbLjLf1KPdPR/HOnIH9jjlmmuIodXclXPywWMKKT
	egypj9/3ew8EkU2TaCG6IDbBAlRFJHXi4Y2d1cPv9QaRNNttb+ESg6EtEt80DqKszWJxMM1jn4W
	EjTgyKz59T58yPYn/uYuZwA60at385wmWclIc9iyhNLVzEaR4wENKUaEXx243Nshcs9klRikTTn
	et2hwb5fIxcIpUtRGiuNGBi4Q7+FhKEPcl3+b77mfbh7qhHt6lVgk5BYwW8se5d4ltGSxH4ZZ0g
	lfTrtu8wRl6RPpQ+BHp42NgP8xBiWDpK+djnbKognE3Zu/y3qDIOnD/L+t0crG9IYvkWI53tEQp
	kSjbuZXdLcE+b63KvvJavrBZFjUpfU0SMh15c7/+W/C2/S+7WC5hqjz+FRH37C+mZxOftjmuQpK
	0io0SIytA==
X-Received: by 2002:a05:600c:4f4f:b0:495:4856:4308 with SMTP id 5b1f17b1804b1-4954a513fd8mr52027345e9.8.1784365063203;
        Sat, 18 Jul 2026 01:57:43 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8D1600206D23E70680CBAA.dsl.pool.telekom.hu. [2001:4c4e:1b8d:1600:206d:23e7:680:cbaa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4954834edc3sm91477455e9.0.2026.07.18.01.57.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jul 2026 01:57:42 -0700 (PDT)
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
Subject: [PATCH v3 0/4] media: synopsys: hdmirx: add HDMI audio capture support
Date: Sat, 18 Jul 2026 10:57:24 +0200
Message-ID: <20260718085728.6797-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260718_015745_723918_D2A5D30D 
X-CRM114-Status: GOOD (  13.51  )
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
tracking the FIFO fill level. Together with the two new dts patches
this yields a capture-only ALSA card fed by the HDMI input.

Validated on the Orange Pi 5 Plus against multiple HDMI sources:
capture follows the source sample rate (44.1/48 kHz switches
included), survives repeated stream start/stop cycles and SIGKILL of
the capturing process, and stays free of FIFO under/overruns via the
clock tracking.

Changes in v3:
- Restored the v1 audio teardown in remove(): the worker is only
  armed while a capture stream is active and audio_shutdown() already
  stops it, so the extra flag clear and trailing cancel added in v2
  were redundant (Dmitry Osipenko's review; the v2 change came from
  an incorrect automated-review finding)
- Renamed the ACR read locals and added a comment documenting the
  register byte packing that makes the swap correct
- Dropped the get_dai_id stub so OF-graph cards resolve the DAI index
  from the reg property naturally
- New patches 3 and 4: dts enablement, so the series is testable end
  to end (requested by Dmitry). Patch 3 adds #sound-dai-cells to the
  RK3588 hdmi_receiver node, patch 4 wires up the Orange Pi 5 Plus
  hdmiin sound card. Both can go through the rockchip tree instead if
  preferred.

Link to v2: https://lore.kernel.org/linux-media/20260715200834.8486-1-royalnet026@gmail.com/
Link to v1 (RFC): https://lore.kernel.org/linux-media/20260715051939.64652-1-royalnet026@gmail.com/

Igor Paunovic (4):
  dt-bindings: media: snps,dw-hdmi-rx: add #sound-dai-cells
  media: synopsys: hdmirx: add HDMI audio capture support
  arm64: dts: rockchip: add #sound-dai-cells to the RK3588 HDMI receiver
  arm64: dts: rockchip: enable HDMI RX audio capture on Orange Pi 5 Plus

 .../bindings/media/snps,dw-hdmi-rx.yaml       |   9 +
 .../arm64/boot/dts/rockchip/rk3588-extra.dtsi |   1 +
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   |  20 ++
 .../platform/synopsys/hdmirx/snps_hdmirx.c    | 271 ++++++++++++++++++
 .../platform/synopsys/hdmirx/snps_hdmirx.h    |   8 +
 5 files changed, 309 insertions(+)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
