Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0239FC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 14:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=muBpB5+v6FNZrWc9Fskil6N8fCyOhep7NjaYOr2J+xs=; b=wpztDgSDgnqi9E
	wuTyxozK4DboQBpKF25R2lz/NXshsWoTGYAAXzhKZIQxMZGiJotPAyQzqLIT98q+hG5G/GtTCFOo0
	8CVZOZHC57508oHVy9RtHDygZh4/YIqANG3qD3e1yjasHRL/AminEWi6eYFMmZi1L3wqfKaHli//4
	ZcaPld9AuC71bcRfFqSkymiujrZfObz0SRKKFrbRKRxcet0hxOjmGlxmWCNRrOIPJUVVRCckNnYiB
	drBG9baEk68DCMJsXYAIfVlnYXaOFVZ4dVz7BO2DnYvdQ0s/pwtNeDSIcDFVO9lUzbCo6tuQv9wCJ
	9nNDttM06dJZbEML4bwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nknjl-00EQiF-P9; Sat, 30 Apr 2022 14:06:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nknjV-00EQW7-3g; Sat, 30 Apr 2022 14:06:02 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nknjT-0001Wl-2J; Sat, 30 Apr 2022 16:05:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Riesch <michael.riesch@wolfvision.net>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
 Frank Wunderlich <frank-w@public-files.de>,
 Peter Geis <pgwipeout@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Liang Chen <cl@rock-chips.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: (subset) [PATCH 1/3] arm64: dts: rockchip: enable otg/drd
 operation of usb_host0_xhci in rk356x
Date: Sat, 30 Apr 2022 16:05:53 +0200
Message-Id: <165132754299.647302.7977397851546544762.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220425133502.405512-1-michael.riesch@wolfvision.net>
References: <20220425133502.405512-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_070601_219580_044F141B 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 25 Apr 2022 15:35:00 +0200, Michael Riesch wrote:
> This USB 3.0 controller is capable of OTG/DRD operation. Enable it in the
> device tree.

Applied, thanks!

[2/3] arm64: dts: rockchip: add usb3 support to the radxa rock3 model a
      commit: 254a1f6a29e7a273adb1a1d032305ec58ef83a69
[3/3] arm64: dts: rockchip: enable usb hub on the radxa rock3 model a
      commit: 160f126b89e10bd58491e10067a44c7e3f85fa2c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
