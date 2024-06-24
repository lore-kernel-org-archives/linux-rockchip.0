Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A987C2D0D1
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 16:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z29X/MjLnQyq2oI33tevwNkrjYtpoqQ7gRamp20Jzmc=; b=AbCQKMOGSqQ9Rk
	o5vjERB8zbp9kN4Tvyt85PoBnL/KHH2w170EZKmWpFHrVPjVxIbmOQ1lwE+F78HhxtZe9ecEs83ge
	9CLt4q62h1Ba43tyKketwi1AjREWALsajF0GzUfzlNl29v5Ug3qwnHu0hdjOpN33AobIxcYaSdCak
	MMU7znG32sHGLbskp7Kuws6DGq5D8vln6qn3JXUmsRw0BgkEL2YzBDFv3fypdxT2xAmLoQtRKR+hu
	VyFmkdFbhpnwTzEIQprO5PT1u4mWK9OGTYfBKlucStHZuWuNRNrjhdsZrIRUMSFmZM3HIBDEoHzMk
	2MuiGEIPzpXtyjvRG5VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmQs-0000000HSjE-2bCD;
	Mon, 24 Jun 2024 16:20:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmQg-0000000HSaf-17bD;
	Mon, 24 Jun 2024 16:20:31 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLmQa-0001wn-L8; Mon, 24 Jun 2024 18:20:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	inux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/4] Add LBA3368 board
Date: Mon, 24 Jun 2024 18:20:16 +0200
Message-Id: <171924573797.612064.16542436099150666874.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240623090116.670607-1-knaerzche@gmail.com>
References: <20240623090116.670607-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_092030_366920_A73E2EA3 
X-CRM114-Status: GOOD (  12.31  )
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

On Sun, 23 Jun 2024 11:01:12 +0200, Alex Bee wrote:
> This series aims to add support for RK3368 based LBA3368 industrial board
> form Neardi. The device tree currently only contains entries for which both
> bindings and linux driver exists and is expected to be exended in future.
> 
> NB: checkpatch throws me a warning that no venddor-prefix for "usb5e3"
> exists - which is true - but "usb5e3,610" has a valid binding.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: vendor-prefixes: Add Neardi Technology
      commit: 79cba74263d96ab1848eb04862f72f8988eb0486
[2/4] dt-bindings: arm: rockchip: Add Neardi LBA3368
      commit: a30a6386ecc1f6ff71d4f7606bed25b7075476ab
[3/4] arm64: dts: rockchip: Add sound-dai-cells for RK3368
      commit: 8d7ec44aa5d1eb94a30319074762a1740440cdc8
[4/4] arm64: dts: rockchip: Add Neardi LBA3368 board
      commit: 7b4a8097e58b608638d416bd57469f8a9ab70e7b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
