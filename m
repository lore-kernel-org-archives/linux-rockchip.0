Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04806C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Dec 2023 08:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/Ljqq7KjdREd8p/qDVtsZsyqggtT3AzI05bjqMz4qA0=; b=P+pwI8aO6s95j2
	qC0CB8v+GPkA2fVGk6nI2posCN0SOS82a1hlVeuiWVWSC5nQGzOjmocsq3ETNhhwGs0tbbWzDkGLN
	yXNVU9faq1uHGgTiv0kcpORjy3218hXUb3zarKqcU/9ODfuXbQOqo07pOqWXObR5hvMdb6KVzx0NV
	wM/SzBjbn+04GjR+t+DcEJtI2FwYLv7Y3hyK7zTYXQlIkBXUSuPuB/69071Y3fJeitete2eQtCYcm
	nIdN8n1gcy4peWMFO2XsBGGp2N/i9gxD8BapjITQk45l2Fs9ARDv10p6HPbgRHIMS9PXZIQKI/SUB
	YUcmfx7ahZ0BR/Ru6f7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCEnV-0019Bn-2G;
	Sun, 10 Dec 2023 08:04:21 +0000
Received: from m12.mail.163.com ([220.181.12.199])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCEnR-00198P-0c;
	Sun, 10 Dec 2023 08:04:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=DWuK7
	1f3+NV0Gd1BFFX8qr8YW0N0cWWpxbjMeAHzcQM=; b=NZ1OZTNYoGyBB+9Oo4f4w
	2eHe3QGXC4vA0cnrZYn6sO4sjUVtx2/PfUYpC4vBjV/tOxdgp3i5DOzRDnh5CwtI
	CzJt7f05GoBbohM47A+T1e4nM8BUdYAnMw6dvzH0aEhx7rCU07V0jWSboULuvJP2
	1zDV4h1ctridTQNNUI+NVI=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g3-0 (Coremail) with SMTP id _____wDXH6LDcHVlo_JkAg--.25492S2;
	Sun, 10 Dec 2023 16:03:20 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 0/5] Add 2 rk3588 based boards from Cool Pi
Date: Sun, 10 Dec 2023 16:03:13 +0800
Message-Id: <20231210080313.1667013-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wDXH6LDcHVlo_JkAg--.25492S2
X-Coremail-Antispam: 1Uf129KBjvJXoWrKFWkCw15JF4xXF43KFyUJrb_yoW8Jr43pw
	s3CrZ8tFZ7WFy7XFZIqw1kCrs5Awn5Jay0vrsxXFy2kryagr1DArnagwnxZ3srG3W7ZFWU
	CF1kKrW7Kr1UXF7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0p_Z2adUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAtCXmVOA3fo1QAAsd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231210_000417_649418_B37E5E61 
X-CRM114-Status: UNSURE (   8.54  )
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


This series add support for rk3588s based SBC Cool Pi 4B
and rk3588 based board Cool Pi CM5 EVB

Changes in v2:
- change board compatible from "CoolPi 4 Model B" to "coolpi,pi-4b" for
  Cool Pi 4B
- change board compatible from "CoolPi CM5 EVB" to "coolpi,pi-cm5-evb"
  for Cool Pi CM5 EVB
- drop ununnecessary property status = "okay" for gpio-led
- drop ununnecessary blank line
- change node name to rtc for hym8563

Andy Yan (5):
  dt-bindings: vendor-prefixes: Add Cool Pi
  dt-bindings: arm: rockchip: Add Cool Pi 4B
  arm64: dts: rockchip: Add support for rk3588s based board Cool Pi 4B
  dt-bindings: arm: rockchip: Add Cool Pi CM5 EVB
  arm64: dts: rockchip: Add support for rk3588 based board Cool Pi CM5
    EVB

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    | 887 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   | 840 +++++++++++++++++
 5 files changed, 1741 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
