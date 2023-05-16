Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 108E9C77B7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 23:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9RJuHfV+1eBWUylcaYjZtMIXIiwaMv02zxkIIBCqA6E=; b=kfoVsHKjo8fW+E
	OLLdZ+PpkNhs9Fe5RI/FddYWnGzP230SuG9M3s3WWAHtcF8EMwjardET1CXyic4jLNXZduNgrzw2G
	x9s0rHLT4kA4m/LcOWCSUl3g9hE/dm8OdOUlrTdQkvWMpO9monDsqctIE6aNivhQbYES2/k80PVFS
	XpVOmjk3/vgAjzQB669N6q0taBJ2c9PT2psbmZk+bvuWVqzFYWRxZfESuhE3t4OEMuEGmUaoFGCGJ
	FWtylYGtVvn++mC88Wz63aQ1wwtjyHRNx2/r++iNizDU9vUgwIP51pBLzUDn3sfchTKL1Xs+QIX19
	BdyC7+bVQSRpKiGn4zaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pz3gw-007NnZ-37;
	Tue, 16 May 2023 23:02:50 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pz3gt-007Nlq-2y;
	Tue, 16 May 2023 23:02:49 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:73f6:2283:f432:3936])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3AB98660322D;
	Wed, 17 May 2023 00:02:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684278162;
	bh=zxx/0uLHIiU/dV4bb646/T74e4BDMJ4Bb1ejBv5KV0w=;
	h=From:To:Cc:Subject:Date:From;
	b=kduFv+PCqztIKtviaxymKsO7g3OzFC6kl3N+qEgVpTWLRW7wRfH7HlRuJhfPhzYOY
	 gGUPzcy6uK1oC6LzCB6PDtyeQkPj2A8fGIdHeyElTpUvWZ9GzXHvxC+j82HQw6h5cO
	 vR4R2Pb7NhKORf16ioZaS6VFPVuE76pNzbp/+XqKAo+SVah6G24U9SbuUh50r/uUT8
	 FNf9Dkh+7Xg4fvBnG+f9B0tiWAQC+ppFPPCjOoNQvKl4SslOGs4w5rIFAADAP5Tq2i
	 T+TIlGtUWNQc1+QWEghzYxjamLLwnlHQHHUWeIUCehI/vsOejaLf0PXmtM3kR2hF3o
	 Sqtc/4rU0Xz6g==
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
Subject: [PATCH 0/7] RK3588 ADC support
Date: Wed, 17 May 2023 04:30:44 +0530
Message-Id: <20230516230051.14846-1-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_160248_103280_6948A5E5 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
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
tests were ran for testing the buffer and trigger using the
iio_generic_buffer tool.

Shreeya Patel (7):
  iio: adc: rockchip_saradc: Add support for RK3588
  iio: adc: rockchip_saradc: Make use of devm_clk_get_enabled
  iio: adc: rockchip_saradc: Use of_device_get_match_data
  iio: adc: rockchip_saradc: Match alignment with open parenthesis
  iio: adc: rockchip_saradc: Use dev_err_probe
  arm64: dts: rockchip: Add DT node for ADC support in RK3588
  dt-bindings: iio: adc: Add rockchip,rk3588-saradc string

 .../bindings/iio/adc/rockchip-saradc.yaml     |   1 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  12 +
 drivers/iio/adc/rockchip_saradc.c             | 260 ++++++++++--------
 3 files changed, 164 insertions(+), 109 deletions(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
