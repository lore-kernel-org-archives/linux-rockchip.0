Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20F91F3380B
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 07:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eNqRvSzZ7GTHRV+j3l3MN3n5hu6OgOPh/rVRnjjcjC8=; b=zAy5z1NeOI9elW
	Dudvd/35fYfZXyo+8DxkRL69hcEJht3kP4v+rpaAZ0f7L34gO4Vg3Q0pdTK2T5f7ckf7ASlFZXlbw
	QlpjWEVg6z2Q1BMIhDOkmQxdLuAjmvxWlDkygoiSBI4Ko7pZOMRxxnrP1Rrlv3QcXedfY3487/Pvu
	AQwTIXJ5lfmmzKNxuIykR4U1dZWMwQFfC5f6/+ef6VO0ByUs4eJKESIlsXbzEDc3YGwaEeiF/5OOy
	H5KaxV9xjBDqwibpiVS70Z1qgJ2kPKJZA6++UBc6xsr/Hw7J+RuUjQN2rg16oWg+rvi03hblVJOqG
	EFZ/n6HjznRotPFf8RPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2PIx-00000005fYX-1LN3;
	Tue, 17 Mar 2026 07:57:31 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2PIv-00000005fYA-3aVf;
	Tue, 17 Mar 2026 07:57:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C3A7560127;
	Tue, 17 Mar 2026 07:57:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4CEEC4CEF7;
	Tue, 17 Mar 2026 07:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773734248;
	bh=IyXN2TCK4hpZjTBei8I7EpYihgR5hkgTrEpVtpaNzqQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Yrj3g6m/v3NubZpGS+qxy1IXDOIVsayNxmGnLxQVu6t/SHYHyimr1ame2rsxplSfB
	 SojmfXnbb9JLLVb9YqoDScDVt1OHxUp5AcCM0rwNRptaAA0ptR0t86fV17pBUoAszZ
	 cJdItJz6Vha543FlAN1EaBvssduDWXrVejc8SsUdlOUj5UeEMVpF+DOVzcI4GcupFL
	 8h17nPN/2sQQeZK4Xok8hg5X2lLRI0yrYBLVPA1yNpcY3Tc8ISWbqA3Va4hFBvpHN0
	 f6ZFn3gkhfT33PcrAWFreq8VW5LK3rH+COJq5SfPjjGiOk+UHa/hP/hjqCxeRDeRla
	 SCfcR1VbNFEYQ==
Date: Tue, 17 Mar 2026 08:57:25 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gray Huang <gray.huang@wesion.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, naoki@radxa.com, jonas@kwiboo.se, 
	chaoyi.chen@rock-chips.com, i@chainsx.cn, michael.opdenacker@rootcommit.com, 
	inindev@gmail.com, quentin.schulz@cherry.de, andrew@lunn.ch, alchark@gmail.com, 
	pbrobinson@gmail.com, nick@khadas.com
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Khadas Edge 2L board
Message-ID: <20260317-hypersonic-axiomatic-fossa-d5dd2b@quoll>
References: <20260317040248.267154-1-gray.huang@wesion.com>
 <20260317040248.267154-2-gray.huang@wesion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260317040248.267154-2-gray.huang@wesion.com>
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

On Tue, Mar 17, 2026 at 12:02:47PM +0800, Gray Huang wrote:
> Edge 2L is an ultraslim, credit-card sized ARM PC designed by Khadas.
> It has quite a few rich peripherals.

Drop marketing, please. Every board manufacturer claims they have rich
peripherals.

> 
> Specification:
> - Rockchip RK3576
> - 8/16GB LPDDR5
> - 64/128GB eMMC 5.1
> - AP6275P WiFi6 LAN
> - HDMI2.1 Type-A
> - MIPI-CSI x2
> - MIPI-DSI x2
> - USB3.1; USB2.0
> - RTC clock
> - PWM fan
> - SPI Flash
> - Pads expansion board (UART, USB)
> 
> Signed-off-by: Gray Huang <gray.huang@wesion.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
