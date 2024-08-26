Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90E5DC5321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 04:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cs0bq3o+8d4AxGGZMPq4ps/deodwuB/ZqhaKYCzfi+4=; b=1u2U4teWhMoUlb
	4xTEGljvgD4gVEfKmDzhpnzFvdYCPQIQ5qeXjKkcOwexw0lyLDj1jrSIE27acQszlLhhM18r9mdMY
	zs3qybb7ijZPy4xBRD24U44+0ujiPcdjSYKSSwVaKQQpkokcZVX6/vaIJCAyzbwJJRFkH7MJlKgMx
	0PcquP5+DioBotHYZTOOi0hAeZ6kv0PRuOX3MhX6G36HtnBKJ4TX5dqajkMtQ4bIWRybvEevVYkN7
	YA1gVUjeZ3kSNTuwgvmkxTJLtUFUWACnZFG4walK4bEAVcx4MqG/h73xefpTItHKR4vKNJq/hmKAO
	5Okz8P7vdDTwXJRPrE2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siRkv-00000005pFj-3Gyp;
	Mon, 26 Aug 2024 04:55:05 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siRiN-00000005ono-1Ycp;
	Mon, 26 Aug 2024 04:52:28 +0000
Received: from bigfoot-server-arm-node1.classfun.cn (unknown [124.72.161.4])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id F0B8C78906;
	Mon, 26 Aug 2024 12:45:57 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn F0B8C78906
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1724647559;
	bh=NSHErsM8htHNOeXSrXTfEZqSzTZxwoCyojkZOF0TEmQ=;
	h=From:To:Cc:Subject:Date:From;
	b=cU7tB+ql1bVLvh1HSL0UULk7sCTs5R7klAX3hngYIIfY2nR2PqcwDDftd6RSUjVak
	 AcMc/rQ9J7ceXC/7Wjav/4GZwme0rjL7CSDJfg27496Y0nfB8Qt7dS0joN8JtH7o6j
	 7DOZwcyAhyRlU24zimTc9jMQell6Q5b67on9Qdfg=
From: Junhao Xie <bigfoot@classfun.cn>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Junhao Xie <bigfoot@classfun.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Add support for LCKFB Taishan Pi RK3566
Date: Mon, 26 Aug 2024 12:44:10 +0800
Message-ID: <20240826044530.726458-1-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240825_215227_576264_F1BEA5F1 
X-CRM114-Status: UNSURE (   8.63  )
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

LCKFB Taishan Pi is a SBC based on the RK3566 SoC.

This series bring support for:
* UART
* RGB LED
* AP6212 WiFi
* AP6212 Bluetooth
* SD Card
* eMMC
* HDMI
* Mali GPU
* USB Type-C
* USB Type-A

Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
---
Junhao Xie (3):
  dt-bindings: vendor-prefixes: Add Shenzhen JLC Technology Group LCKFB
  dt-bindings: arm: rockchip: Add LCKFB Taishan Pi RK3566
  arm64: dts: rockchip: add dts for LCKFB Taishan Pi RK3566

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3566-lckfb-tspi.dts   | 743 ++++++++++++++++++
 4 files changed, 751 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
