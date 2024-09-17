Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54DA8CAC59E
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Sep 2024 20:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=swvBCCsEurhZQxk3+qxIqYTiXVaWCa/ssGHyXPFOoZ4=; b=Z8P6771Mw0P8zd
	coJIhPwpKrlUtl3nO759NFEaL7+He4ooakKQK4FB5flmHOL/a6+lwhvVWNLWea0Skml1b3yHAOvrX
	rFCrRjZOdCaRDmRHKXBplnk5ivrTj/4s505cd51Jo/z5thVN6X6qd9HfcuVZUa/e3bBP10rOIcqJT
	MdiSi2a2y46o+YL2K05ASbsBWkAp9aSs7ZSindT0plRGq2qUPXGpuPfIxGRFVei1KvXK0Dsb/L7DN
	nExQhY6ZZ2LZnLJIolwb1z+TkRzuU5pELKCx7lOE7kQihAm0ApmwjcM5GW0y7zzcumJok8H5QB9ma
	2oD+A6E2n4g66JLPWXcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqecS-00000006qQY-07m6;
	Tue, 17 Sep 2024 20:16:16 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqebJ-00000006qEi-1MEa;
	Tue, 17 Sep 2024 20:15:07 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id D9E282004E;
	Tue, 17 Sep 2024 22:14:59 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z5SgtwYYZVmj; Tue, 17 Sep 2024 22:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1726604098; bh=81iSzbOqnhSne0ktuF01wg+nnD9mtVaFvoeVj8EBkw8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Th5+iAsGerByToyw4NuXu8K47DlwvEDYpiK0yxRx5l/RxP8eRTk9Tm/L/5lcBEv99
	 y3um4swxXKfFj5++rSau/mlVnzW2SqcbI4TWoNO2VDtzgNWtmtTlAyfZ8WZDDARLlk
	 njS39OGvoKPoyXdQ8nsieeU/tpVdGWrTp1PdtAJ/Cuw0wtP9+CWySSTKqzWZdY3Qy3
	 Dlf5vTvHGhqBWP8LK9KMyRlPhE0/CGUAopEuf2GseFQiB86ZAGDFg7Qt2LcWr5n1sP
	 i1rVOELPo+x6mIj5Tfaoj2l7RcZ7YAEo2Yom9g51I1QImo6U12IAJzDuR8vkB9T2mX
	 nsMCVFH3CzB7A==
Date: Tue, 17 Sep 2024 20:14:36 +0000
From: Yao Zi <ziyao@disroot.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
	Ondrej Jirman <megi@xff.cz>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Cc: Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH v4 0/4] Add initial support for Rockchip RK3528 SoC
Message-ID: <ZunjLMQGEcES2zIV@pineapple>
References: <20240829092705.6241-1-ziyao@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240829092705.6241-1-ziyao@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240917_131505_811917_D9AC223C 
X-CRM114-Status: GOOD (  19.69  )
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

On Thu, Aug 29, 2024 at 09:27:01AM +0000, Yao Zi wrote:
> Rockchip RK3528 is a quad-core ARM Cortex-A53 SoC designed for
> multimedia application. This series add a basic device tree with CPU,
> interrupts and UART nodes for it and is able to boot into a kernel with
> only UART console.
> 
> Has been tested on Radxa E20C board[1] with vendor U-boot, successfully
> booted into initramfs with this log[2].
> 
> [1]: https://docs.radxa.com/en/e/e20c
> [2]: https://gist.github.com/ziyao233/b74523a1e3e8bf36286a572e008ca319
> 
> Changed from v3:
> - move mmio devices into soc node
> https://lore.kernel.org/all/20240814155014.18097-1-ziyao@disroot.org/
> 
> Changed from v2:
> - fix fixed-clock nodename
> https://lore.kernel.org/all/20240811140725.64866-1-ziyao@disroot.org/
> 
> Changed from v1:
> - fix stdout-path
> - style improvements
> https://lore.kernel.org/all/20240803125510.4699-2-ziyao@disroot.org/
> 
> Yao Zi (4):
>   dt-bindings: serial: snps-dw-apb-uart: Document Rockchip RK3528
>   dt-bindings: arm: rockchip: Add Radxa E20C board
>   arm64: dts: rockchip: Add base DT for rk3528 SoC
>   arm64: dts: rockchip: Add Radxa e20c board
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  .../bindings/serial/snps-dw-apb-uart.yaml     |   1 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3528-radxa-e20c.dts   |  22 ++
>  arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 189 ++++++++++++++++++
>  5 files changed, 218 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528.dtsi
> 
> -- 
> 2.46.0
> 

Ping on this thread. Is it possible to get this merged in v6.12? Or
anything else I need to do?

Thanks for your time.

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
