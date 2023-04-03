Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB6B9C77B6D
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 10:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nIuwK4WxhhzHtNzqCKvfdathKTljKPXA1JjbfvrcXOI=; b=Z/skyCmJwOlN73
	Knz0oRVxbSvORYFE4s5qsjiVfEo1ExtU8jde1sABlTxnyAmV4g4RTB/IzoJrIbWCdOtKg4i1ZOokR
	BbrH+1wxwAJNI1wO4JDsjSptNFqunIkgn3WY0Dh4dCEXeLe5xQDAL71tesLLtXElzh6rGzsw5vLYq
	8HPqPUNAoKcIhgFC0NOgAT7GRxFPAaa9/qpDcjXa0L0PwCijmyAVsUDRMbFP0QIEFL6uwoJ5vVZSp
	J+Uv2fa45xYQ6VX0pP30z0TG/wFJRK58KxIogqmNJy+FJOLZ6cB1Fpm7/MktDb8mYlxe1GApIxia3
	d/rPIfkEN5TH7dUPl8Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjHmL-00F0LC-0r;
	Mon, 03 Apr 2023 10:51:13 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjHmE-00F0Hz-2N;
	Mon, 03 Apr 2023 10:51:09 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1F10366016BD;
	Mon,  3 Apr 2023 11:50:57 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680519057;
	bh=3qEFOeZjSFPDZuAih2rvjo48GXJkxFBE9+hVoCCPrnQ=;
	h=From:To:Cc:Subject:Date:From;
	b=odTpCRqf5S76SzsIo9CrCJ4Ad+vpG5atWQ6OFJaf9Y2+icWyTyQGYYovNFoFZXpOU
	 HrYkU1S4sBggOgpSt6VybMeiKtthEVYTWzS6g0Shda9yU4pm+e4Olc8Vk7HLZ5pA5i
	 qVlLESS3X2VjjAy3x2cYdhZej/32yzouBxtvp9LvvWGIOFvAWbQkhkH0ZlWJ7BeFey
	 Pbr7clShVr4iN6JsTA2zch8psDSK6Tx8kj8Eoyw/WFLls+1Jnmz4BU4Ge9RWTEwI8D
	 j/mbUXPU4lusuJxrFJXDdxQmWPIIs0ZAbuYvVDxH7FFSxi9SnvAoLrIRR5y/rR9ZFv
	 Lk5mzaQAmzWYA==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 0/2] Add PWM fan support to Rock 5B board
Date: Mon,  3 Apr 2023 13:50:50 +0300
Message-Id: <20230403105052.426135-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_035106_900293_F1DDD196 
X-CRM114-Status: UNSURE (   9.37  )
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

This patch series enables support for the PWM controlled heat sink fan 
on the Rock 5B SBC and, additionally, converts the hwmon PWM fan bindings 
to DT schema format.

Cristian Ciocaltea (2):
  dt-bindings: hwmon: pwm-fan: Convert to DT schema
  arm64: dts: rockchip: rk3588-rock-5b: Add pwm-fan

 .../devicetree/bindings/hwmon/pwm-fan.txt     |  68 +----------
 .../devicetree/bindings/hwmon/pwm-fan.yaml    | 109 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |  12 ++
 3 files changed, 122 insertions(+), 67 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/pwm-fan.yaml

-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
