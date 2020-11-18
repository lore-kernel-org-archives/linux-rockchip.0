Return-Path: <SRS0=K/1+=EY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17D75C5519F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2020 13:58:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8B79C2078D
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2020 13:58:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="AKcKmwWg";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E0TgA8Fv"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8B79C2078D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZfZjSxQBOxHtc19VrRqYWuiSbUX6eSCWfDfF3IcXgKw=; b=AKcKmwWgELSixHgFeX8D+sug+8
	/z/BveEUU94mli8+gfjygl0mhguo+k269UxIv6uyqUj3VVpUudwTpyp7Y9BHF0wgYvi8Z0iIcJpt6
	jICF7qkWN2IbBiNJDd7bBmc5+kdFK9YzQdv7iLxPZxsPqsHjl/xjMMKS1ouKnwRO5DMpoohocjI/V
	1ZW/oy/O+Y2o0CtHfLGR9QBVmZzrfPmws0ZLsSsMCpTc6AqpySY2jAR3xJZf9oUflJVZxxxVdzl+B
	rRKDyz5FogMtalbdsiU6EphRG5ilcGICirVA+ke1e7FobJzKTPlTOr67SY5jfyJ3fTS/1t9Meds/J
	aaa7quqw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kfNyo-0001S5-86; Wed, 18 Nov 2020 13:58:38 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kfNyi-0001PX-30; Wed, 18 Nov 2020 13:58:33 +0000
Received: by mail-ed1-x542.google.com with SMTP id v22so2071989edt.9;
 Wed, 18 Nov 2020 05:58:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=O15+S8qQJDT/sctgXYGA2Ljv6MPm4itzezho9fQXrTw=;
 b=E0TgA8FvVhJVuL4QjwryYioG5ukaTZDNGKeVPP3cxNuekjQQhONNdSjVEESHmJaMnN
 FVEhigRNXoJlEDXlkZED6SOZu4whMRqRW0kN12qqnG1hTjYB/YXvJ8tOQmaj2tzD8/Xe
 tG5CucGg2BBmGqVIvY214dt5Dpd2RySOukfaAinlUD1qgjnqLqLVxwjIkzqzIca33e77
 qVhzBxHLQ0J0l8xc1UU1XZe7zySDlJF3C7lK/QV6Qo7WqkHrBoWN/qNKiQltWAV5nLN6
 TlIbrXowVBZwxjV5kuY8jvvFRVYK65IvSQSa3WziRuUpuKBdLZKH1G6Yfe4d83n4VDq4
 MF+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=O15+S8qQJDT/sctgXYGA2Ljv6MPm4itzezho9fQXrTw=;
 b=CGXtq/EYcjXlsjF9VnUrYpnwMRd+MbkND1ya7+wIWEp6eWbzCl/nCY7bXvRDShgKR/
 l0Plr5ChET3Si96L0R4PGbw8Cm/2IdEWfFvZT2X3122duyLtZQgSi01vG0tiX9u9oK15
 rXmoOoizZI1tVYJY4smnJn8Bt4/5F+qvH1+xpTcg2aNLIhI4iV8y1QJbCki6knUiDcWC
 Mlsa7QcktjpEeO/fD+jJtiZEuUXoK1TP6xVCMr1htFYkKX26gDw3iLc4pT0ysGtP6k6W
 ELvF/oOyFZ89B3GasppQcGMCmTGm97K44QmKLFIRYG7MqI/JiPd7+ujjPh//Z0KYNdFD
 PRRg==
X-Gm-Message-State: AOAM533UNpnLSO38yqDRbdlH+SFQkHaePiyDr4Wr7mVsmyT25kjZlwDo
 8STHv9z13br0Wb0EBH+bALw=
X-Google-Smtp-Source: ABdhPJyEp8bQ0cA1TBErbYejuIdVGGdRiXYdRohu8yPSprOL85WW3/XUARu8cgP0kyWc2Poc9qXFYA==
X-Received: by 2002:aa7:d703:: with SMTP id t3mr25109179edq.375.1605707910648; 
 Wed, 18 Nov 2020 05:58:30 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cx6sm13721384edb.61.2020.11.18.05.58.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Nov 2020 05:58:30 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v5 0/7] Enable rk3066a HDMI sound
Date: Wed, 18 Nov 2020 14:58:15 +0100
Message-Id: <20201118135822.9582-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201118_085832_157682_40E09880 
X-CRM114-Status: GOOD (  11.18  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
 airlied@linux.ie, linux-kernel@vger.kernel.org, mturquette@baylibre.com,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org, lgirdwood@gmail.com,
 sboyd@kernel.org, robh+dt@kernel.org, broonie@kernel.org, daniel@ffwll.ch,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

First fix some legacy things in clk-rk3188.c that was never updated,
because probably nobody used rk3066a I2S before in the mainline kernel.
Update the rk3066a HDMI documents with a #sound-dai-cells property.
Include the code for sound in the HDMI driver.
Add a simple-sound-card compatible node to rk3066a.dtsi,
because I2S0 and HDMI TX are connected internally.
And as last enable rk3066a HDMI sound in the rk3066a-mk808.dts file.

Changed v5:
  removed unused variable
  fill frame structure

Johan Jonker (6):
  clk: rockchip: add CLK_SET_RATE_PARENT to sclk for rk3066a i2s and
    uart clocks
  clk: rockchip: fix i2s gate bits on rk3066 and rk3188
  dt-bindings: display: add #sound-dai-cells property to rockchip rk3066
    hdmi
  ARM: dts: rockchip: rk3066a: add #sound-dai-cells to hdmi node
  ARM: dts: rockchip: add hdmi-sound node to rk3066a.dtsi
  ARM: dts: rockchip: enable hdmi_sound and i2s0 for rk3066a-mk808

Zheng Yang (1):
  drm: rockchip: add sound support to rk3066 hdmi driver

 .../display/rockchip/rockchip,rk3066-hdmi.yaml     |   4 +
 arch/arm/boot/dts/rk3066a-mk808.dts                |   8 +
 arch/arm/boot/dts/rk3066a.dtsi                     |  17 ++
 drivers/clk/rockchip/clk-rk3188.c                  |  35 +--
 drivers/gpu/drm/rockchip/Kconfig                   |   2 +
 drivers/gpu/drm/rockchip/rk3066_hdmi.c             | 275 ++++++++++++++++++++-
 6 files changed, 323 insertions(+), 18 deletions(-)

--
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
