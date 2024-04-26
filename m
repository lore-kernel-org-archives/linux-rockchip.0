Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87B02C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Apr 2024 14:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=td7PyPgu1etKDU54A2kCNgYlce5+Y9HZXblIRbozi2A=; b=xQFgVJrLtrWszGGaMyPHRzIJNO
	tOqikF36kGxe6QFQqPUx/p2tBHyfb8mACHLwCJBQiYt/RUKHnNQFsXhfe295ZAZRK0WJlyTGP2Sdu
	1sNPkBmbsjzfZZJuv4nONCCeMtST5aSSwj7cGMAwjdc+7JrdpUI2Iiu6DVVWfHfr7GmunSQ2lGuMU
	3PDCxklO6uKRFDBeGr1TtL+NZ5TNWu6LojtN3hndIwCodeWzmsWptz4S9qs+v7V3WUaDKRS1svDOP
	bsUdHz2oSfJLaHKq6i/3k/NvZbhLnCzYn2a1OU5D19KEHHwenjRhxHpp9ag+lAYVFDpXPz7MOMq40
	S2ul7acw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0MTN-0000000ColE-2eBk;
	Fri, 26 Apr 2024 14:22:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0MTJ-0000000Coiy-3gHg;
	Fri, 26 Apr 2024 14:22:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AAA8861FEC;
	Fri, 26 Apr 2024 14:22:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E41AC116B1;
	Fri, 26 Apr 2024 14:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714141360;
	bh=xGYIK2uR0EjIwE5no8i0D9XaiNxJC0ttk/gjb20gsdc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=rZ/+T1Rey2/rnm0hF7gKkJvSwZwb5L3AldmnN9/pnv4Vm7iIrwtHPGfIqwoEeBNCo
	 w4ydI0ThNZKAiO/0xem87hoGYvUA/BqrSX1yf7tUwDNZEe9Yb4Efol5pWJoOhCfyNu
	 5Qd0AXTauG83F93r1UkEJus+aEFsa1vvBA8xvPk+GXq1bAvLm9dblYbtEcBdO3lqMQ
	 qUPwlQIwNpDACn+B1fqryP2U28+Xe/YGJbqcGphiSk072ljxIZG0No5SpJkcHbzmdP
	 roD0SQWyB6RbyDOe/jVMmLq45CQ4ghBLDeX+3I01ugVFriWr6hpsEuTjlB9Ll2S8+Y
	 3TFsqCe1j1LjQ==
Date: Fri, 26 Apr 2024 09:22:38 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20240425222913.1760-1-honyuenkwun@gmail.com>
References: <20240425222913.1760-1-honyuenkwun@gmail.com>
Message-Id: <171414068069.1496351.4140242282948810329.robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable GPU on Orange Pi 5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240426_072241_983109_09CBEA9A 
X-CRM114-Status: GOOD (  10.56  )
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


On Thu, 25 Apr 2024 17:29:13 -0500, Jimmy Hon wrote:
> Enable the Mali GPU in the Orange Pi 5
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-orangepi-5.dtb' for 20240425222913.1760-1-honyuenkwun@gmail.com:

arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: gpio-func: leds-gpio: {'rockchip,pins': [[0, 2, 0, 223]], 'phandle': [[231]]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
