Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71FC5C7EE2E
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jun 2023 18:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RH/hf2VQ1k0jxUQjii19uhE9zLHlLZzMbrpqU2ycS7w=; b=t8u8y4n6huLQLX
	L2L2ti/pq8PSvt5iPBgdHlQJVhee0g9+Ccq6XigwCgkpQTdjq3wsIf5Xxr1gB8197Kiie7c8bQJ4P
	X3PmypsUYLZL2NNQky2g+IDRODWKHJ7QVhwFZ+Kd3L10zJ7sCJFHhAa85rDsD4+0ICPcy66GliJjM
	gFuoNgVMaCimUtiagUKQYjahWpbM/QtS8ey4Z/9wkmhhgAhkElvy+0o1nysv13SQkEfyr/dLboxwi
	ykXnMloIuxmWYR/0tNbEiqwJXpFdE8n+cFLV74Kd616Wvupk5DTiS8yt/ix6m0znkLk4fDjApv9nx
	oBbwk/oSOd16MGGG0mCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5WON-00ALqt-0G;
	Sat, 03 Jun 2023 18:54:23 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5WOH-00ALpN-2S;
	Sat, 03 Jun 2023 18:54:19 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 84F176603050;
	Sat,  3 Jun 2023 19:54:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685818454;
	bh=qJHl6ZztoyxnGSSFfe0ylaeipSQVNPH3nlpHB6A9Yak=;
	h=From:To:Cc:Subject:Date:From;
	b=gKkl5DS+Es+ob9eQWoxzh64xfN2ES2Srv/U8hUXZ4sG78XzQS/xziNqguoQg2ZeIJ
	 HKxVrhk4TdrsdLAXBIZ2NqHGma4ZtAjSbqqwmOZ3J+EBSDTRl4QuXSaR6gaxFRzYa2
	 JywssVzi3eEalKk/YRCxSlgBqrE5xtMy6fO70C7WLOZvOE+Rn+ghg+wE4aCF4tIgoz
	 Ywco5j9h2MFHhEJBWWlOuvuawwyjQHyfBE7ol1QMEb/iBOBnr7ZqXoLRIFhC+tntZL
	 LMyeGKz2gHv7CFUU+1XIf6d4iv6yLUZogTMJMqWf3cd5QsHxXnmv1kLycnJw1JoLBT
	 9d18xhz3DhoOw==
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
	gustavo.padovan@collabora.com,
	kernel@collabora.com,
	serge.broslavsky@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH v3 0/8] RK3588 ADC support
Date: Sun,  4 Jun 2023 00:23:32 +0530
Message-Id: <20230603185340.13838-1-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230603_115417_961193_D8784368 
X-CRM114-Status: GOOD (  11.95  )
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

Changes in v3
  - Add bitfield.h header file in patch 2.
  - Add a Reviewed-by tag in patch 2.
  - Do not remove clock enabling and disabling from the suspend and
    resume functions respectively in patch 3

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
 drivers/iio/adc/rockchip_saradc.c             | 246 +++++++++++-------
 3 files changed, 168 insertions(+), 91 deletions(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
