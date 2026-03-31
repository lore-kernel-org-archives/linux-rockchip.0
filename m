Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D221B10F9306
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Mar 2026 22:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0dcdkfjK5xrKRbeRfYlsSfUyC8nKj2HiDhI/4O9pFbc=; b=kO8XBU/79k2z60
	rjH97nKgLTGK1ojsocTnGbpDUyRY+JHi7ZuyrY7Lf1pw2W9fVmcuqn0qDpPUplf7GbSKAqXlK8zec
	0xfTpiU0+AvTD5UHVNmHoKXS9wNvkFotYXsPWQdGJplmw8yWPlW7lXtdtX1EM0oCbKqLaFmvKMeLl
	Pm8gelmMW0jgJmWUN1xCLjIDJqezS43dmG5p5TnLagxabjSAoJ5lW0mdZ1Z+Z04ppHSImZzV6DJTL
	FMqBNand3HqGZTTfc2X/rwQQyODvcZVE3Zxbq/8Z6kQmgVxBRHoES2tDkoMQWVKGkRhmHoK1fPF/w
	tcKT7uA8aCC8mXskvEBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7hTo-0000000Dd9l-1Cur;
	Tue, 31 Mar 2026 22:22:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7hTl-0000000Dd8p-3hsT;
	Tue, 31 Mar 2026 22:22:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=zn6Tx+/yUqe1wFWE2jjPTR23b4f4dmxO8nkrQL8rqP8=; b=of5TGQ3BY/0dYg1URKjyoESvBO
	WXTk2pPyPrMCkMK4+uqn8AKjLqJs0tgkgxpPvBGgmG5MvL0wqBRI5ixxaEtVHnDc/bd12kQHGXQ+D
	MGX+Am8QHsCVJuQhquqAC+qi0CdqFzDyrXoT+0Lt7rfGBHI3+6aboRx0JwiZ9G1eB97ifpZMm+xnM
	f8RVfU+U0xVnXNHFYnmWPqYoWRR+zOQdljjtbzkik/e7DVX+fuHOtaboo4Ew3XUSKagsTdcV4h8ZB
	eceTwq94vniZVWqvhCZ7fM9HLnXrcJFHjvSli50pym7lOwEdXDLMe+89t+86ZVto83iAdEjMlSOYF
	yZatu2Ow==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	linux-media@vger.kernel.org,
	Conor Dooley <conor@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v5 0/4] arm64: dts: rockchip: Fix vdec register blocks order on RK3576/RK3588
Date: Wed,  1 Apr 2026 00:22:22 +0200
Message-ID: <177499572601.2230685.5329289608304242879.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260304-vdec-reg-order-rk3576-v5-0-7006fad42c3a@collabora.com>
References: <20260304-vdec-reg-order-rk3576-v5-0-7006fad42c3a@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_152233_944249_DDA76515 
X-CRM114-Status: GOOD (  11.91  )
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


On Wed, 04 Mar 2026 23:00:39 +0200, Cristian Ciocaltea wrote:
> When building device trees for the RK3576 based boards, DTC shows the
> following complaint:
> 
>   rk3576.dtsi:1282.30-1304.5: Warning (simple_bus_reg): /soc/video-codec@27b00000: simple-bus unit address format error, expected "27b00100"
> 
> The first two patches updates 'reg-names' property in rockchip,vdec
> binding to make it mandatory for RK3576 & RK3588, since this is what the
> driver expects, as well as to allow providing the register blocks
> following the address-based order and, consequently, ensure the video
> decoder unit address points to the primary register range.
> 
> [...]

Applied, thanks!

[3/4] arm64: dts: rockchip: Fix vdec register blocks order on RK3576
      commit: f8fa98aa23699b7019023cc7cd8bbb8d837f2d3b
[4/4] arm64: dts: rockchip: Update vdec register blocks order on RK3588
      commit: 6c4a6f7f19e69bedddee87bebd4f1f1c7411b820

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
