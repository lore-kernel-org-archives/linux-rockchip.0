Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AA10C7EE29
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 21:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SfC5n+uuv38+Cj2wKppCWH04N17nLm8cjUoDP5PDZ4A=; b=yqQCzStFomOflB
	iue3kkIdHgp3ZUnyUMWuAA5wa1VzGZz0XPw0X3I5qZDKEwuFaWHGqJ1jh/9lWJM3EiGNohRc9mIUc
	SOkKg8PB0E2tfAAl9nSPD8HuhtCrCXRj+N+WWwLqs6nshPzuH7iW3hCB/hH9eYE6CZEbpFS0fAGIr
	wALYlMy0iw3zJlTwnBD8mhBjGOtckgJgreWtcovflJFp/PrOZ1jv/6L8NH6iNAQOq/oDKhL9jknPt
	E7iYMhlK6Qs/WUWG/gqaEvIkVcjDob0D/APeGk9gfo6G6w+K4W0zvvNBPkRvb8vsLZZN6V52dSrwD
	ol2rdwUW/sLbKbDQLQVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2IV4-000BiF-2d;
	Thu, 25 May 2023 21:27:58 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2IV0-000Bfn-11;
	Thu, 25 May 2023 21:27:57 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 59D656601F54;
	Thu, 25 May 2023 22:27:46 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685050069;
	bh=dP+0YR0RnQxfWF3b6qBWLSWc9N7BIfuDH1T6X6tTKTI=;
	h=From:To:Cc:Subject:Date:From;
	b=cEFU5gjHsRkaTMKoERUZBnhYoVu+4ax17TQxCAKp9CIg3LbiC0eVwgVuaz/9JNjxs
	 FC9aA9/Oo9pabfPQ9UsLyibIscCtcJnOy9c7YSKpvVmS4HG2Gq5D2ixzpSb8B3bK+V
	 E9L7eZ6B5geX1ThOQC4Xp/2qFcL4VP65YVtnmMFJ8Hh/aOnxHxoDKRPLla0DD/MeEo
	 vcPRdMeGPHLKG73T7NHv3sHEZSX0g6Txa5ZQzUFxUU4r/Pv9XOUIZzJN97UfkfFJFz
	 qgRy8WpExsMydsMOOT17LNKDmLmQNJkj+1YJ1/3Sf5I3OdMFa1aw0cUXScDvNXx52U
	 gt3hQGiwtCtvg==
From: Shreeya Patel <shreeya.patel@collabora.com>
To: jic23@kernel.org,
	lars@metafoo.de,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	gustavo.padovan@collabora.com,
	serge.broslavsky@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH v2 0/8] RK3588 ADC support
Date: Fri, 26 May 2023 02:57:04 +0530
Message-Id: <20230525212712.255406-1-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_142754_517042_7C20FF32 
X-CRM114-Status: GOOD (  11.61  )
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

This patch series adds ADC support for RK3588 and updates
the DT bindings for the same.

To test ADC support on Rock 5B board, a voltage divider circuit
was created using the gpio pin 22 ( SARADC_IN4 ) and few more
tests were ran for testing the buffer and trigger support using
the iio_generic_buffer tool.


Changes in v2
  - Add from address in patches 1 and 2.
  - Create separate patches for adding new device support and changes to
    the old device code.
  - Make use of FIELD_PREP in patch 2.
  - Move the enablement of clocks at it's original position in patch 3
  - Add Reviewed-by tag in patches 4 and 5.
  - Add an Acked-by tag in patch 8.

Shreeya Patel (8):
  iio: adc: rockchip_saradc: Add callback functions
  iio: adc: rockchip_saradc: Add support for RK3588
  iio: adc: rockchip_saradc: Make use of devm_clk_get_enabled
  iio: adc: rockchip_saradc: Use of_device_get_match_data
  iio: adc: rockchip_saradc: Match alignment with open parenthesis
  iio: adc: rockchip_saradc: Use dev_err_probe
  arm64: dts: rockchip: Add DT node for ADC support in RK3588
  dt-bindings: iio: adc: Add rockchip,rk3588-saradc string

 .../bindings/iio/adc/rockchip-saradc.yaml     |   1 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  12 +
 drivers/iio/adc/rockchip_saradc.c             | 262 +++++++++++-------
 3 files changed, 168 insertions(+), 107 deletions(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
