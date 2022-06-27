Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70F50C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jun 2022 06:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3IyxYhFvNP+uSH88zXz3vye1i/gRq505ChneVjJaXNo=; b=Rzp+F6hRVv+nGT
	3ffRaN+/2JxFycDG6+t9ThzqJbBwPVQRjTEW91NVfXbwknxsZaH+Z/Ch/Zxt1C/ETH82QhyTw2Ue8
	28mAk6hr1SB7mUCY3e5FGg3R0rfaU6nj+LJ9OsOpmjbAMesRapW05f2PkEgGyyi47vN0j6rz0hPaZ
	9pVAOqW7l4KmEtTMYKOZ/JZ96Ttyg7ZOWO49uv0fAnK1cWLUxHL3rfiuPx2ZK7oBmeqgnULIftUQi
	GBhxmRQVSnOhm4yQq06VYrVulSI0XmE8Cb+nDtWfu2FFFeX+Sk+RUXwMFoaNMPNq1TsY7GHk9ZUAB
	nZJxFWsuDzsQEvFsphLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5i3k-00G1mM-OE; Mon, 27 Jun 2022 06:17:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5i3h-00G1ko-Ny; Mon, 27 Jun 2022 06:17:18 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o5i3f-0002kD-Vc; Mon, 27 Jun 2022 08:17:16 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>, kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 1/5] dt-binding: clock: Document rockchip,rk3588-cru bindings
Date: Mon, 27 Jun 2022 08:17:15 +0200
Message-ID: <1896998.PYKUYFuaPT@diego>
In-Reply-To: <20220623160329.239501-2-sebastian.reichel@collabora.com>
References: <20220623160329.239501-1-sebastian.reichel@collabora.com> <20220623160329.239501-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220626_231717_829388_33254212 
X-CRM114-Status: GOOD (  14.69  )
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

Hi Sebastian,

Am Donnerstag, 23. Juni 2022, 18:03:25 CEST schrieb Sebastian Reichel:
> From: Elaine Zhang <zhangqing@rock-chips.com>
> 
> Document the device tree bindings of the rockchip rk3588 SoC
> clock and reset unit.
> 
> This also contains the header, which is shared betwen the DT
> files and the kernel driver containing the clock and reset IDs.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> [add additional clocks IDs for gate clocks, which are handled via
>  separate DT nodes in the vendor kernel]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/clock/rockchip,rk3588-cru.yaml   |   59 +
>  include/dt-bindings/clock/rk3588-cru.h        | 1516 +++++++++++++++++
>  2 files changed, 1575 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
>  create mode 100644 include/dt-bindings/clock/rk3588-cru.h

please split the binding and dt-binding-header into separate patches.
Depending on what gets merged when, I will need a shared-branch
for the header, so don't want to also carry the yaml binding in there.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
