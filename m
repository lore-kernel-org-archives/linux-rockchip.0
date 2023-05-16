Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 144BCC77B7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 23:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t+BQ122jLZN1WBWZgMKOJ2JMjnxBmXGLeLSApD3jMF0=; b=gBUiwhJQ9H0xlT
	3HSrEuphxq46zJBH7GIe0LQLtpPRVyIFBNFN0Mq+7c7+3p30AMnudzScl/OBTJ89NvqVa63jHAeh+
	zL+RwYQkFkazUFeozo6vtz1ZzZpxSK02GEJhy8AsBP211eNR7QkXjzBKKII7AtBr7KAJCHegT7D+d
	i6i+LArdTpEw+7Zh9E/QeXdgf9c+6AB7gC2MAzeoYme3ajhvjORRqlmhEBCIT68FU6gru/fi/1h5t
	er19n6CQ5P5qhGPtcqWT6VGogNtlSeu+ky+E6OSaL15fPIBVlhd2F0xORI7QCnmRa96i3xJVCP2IW
	r3ilDzpjgEq6u8krOxww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pz3hj-007OBm-0S;
	Tue, 16 May 2023 23:03:39 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pz3hf-007O83-1i;
	Tue, 16 May 2023 23:03:36 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:73f6:2283:f432:3936])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 65656660322D;
	Wed, 17 May 2023 00:03:22 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684278214;
	bh=FVMe/5NMLn43mP7albuxLlvogh9o3Yme9lezj9TaBTo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DCCDEMjrrn0YouSvTb0b0EFIbk81oW3SvEAMRgraJ72fqcOIZAQoXHYYGtk9kiibk
	 g5lkwzQ/qOyZHv6l/1Ak/BRZvp0SZUHKOYiuwCSw5ZFlUruDk2dtKcWlPu9giDeXC0
	 gLWWyFyU3dL2i0i4TqZ5r+Ly42Op3pWYgYK94kr7rFgf8BfLk0mWRWbUGy/gdKUtgu
	 DS45rl1rR7LI/YurnE/P4y/34tEq6K4thixMhMnwB9sc4AhPQaEjupBqcmAAQjPgyl
	 LkMK3FffbZzqp8y5AX5MEfq21UEBYRqXdxOluqT1Gz8BcNKXq8x4F1BcmYNG3YUsGn
	 SFzJvdS0fQNHQ==
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
Subject: [PATCH 4/7] iio: adc: rockchip_saradc: Match alignment with open parenthesis
Date: Wed, 17 May 2023 04:30:48 +0530
Message-Id: <20230516230051.14846-5-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230516230051.14846-1-shreeya.patel@collabora.com>
References: <20230516230051.14846-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_160335_709479_6EBAE6E6 
X-CRM114-Status: GOOD (  10.83  )
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

Match alignment with open parenthesis for improving the code
readability.

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---
 drivers/iio/adc/rockchip_saradc.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 05ea823a8f16..5e1e8575bc76 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -144,7 +144,7 @@ static void rockchip_saradc_power_down(struct rockchip_saradc *info)
 }
 
 static int rockchip_saradc_conversion(struct rockchip_saradc *info,
-				   struct iio_chan_spec const *chan)
+				      struct iio_chan_spec const *chan)
 {
 	reinit_completion(&info->completion);
 
@@ -387,8 +387,7 @@ static irqreturn_t rockchip_saradc_trigger_handler(int irq, void *p)
 }
 
 static int rockchip_saradc_volt_notify(struct notifier_block *nb,
-						   unsigned long event,
-						   void *data)
+				       unsigned long event, void *data)
 {
 	struct rockchip_saradc *info =
 			container_of(nb, struct rockchip_saradc, nb);
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
