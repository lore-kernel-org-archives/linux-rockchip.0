Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0EA0C27C4F
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 13:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3/2fO/BJYPpDIxxRN3X4gGN4U7XRZ4QBms3L9xnj7cg=; b=Lnt1GaH1QOMV+IydZcjmwUDthP
	oO7ITfQtHr+2Eu2OE3VJKS6MQcGuqQnqXkSE80+sTToofPJz+hRMqOlKAo6ysK/CkEf82u3qENtB/
	Cas33i+S9y5OxONj5ulUUfuuObPDTmTP5hSte9fh/k/J2oSlQrWf9iPf8qRIwl1909ftmCN31zYVF
	PKkMEebybEQPrtq+t0oe+q0n7W/oUDaoXgMFYV1q7XGuHxVcA6568u8z6wvmksUXWJJjr7v1ekEh2
	oQhNSz0GaHDdXz4meIapFRjuvH04upl9oxJ0HS2zLNCP66J/MWcJyXdkkz2ueveAVkUQuQLgU8e0D
	nXxxQK0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMSec-00000006wxA-1OLu;
	Wed, 26 Jun 2024 13:25:42 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMSeB-00000006wl9-27Lg;
	Wed, 26 Jun 2024 13:25:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 73E1CCE21D5;
	Wed, 26 Jun 2024 13:25:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98D42C32789;
	Wed, 26 Jun 2024 13:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719408311;
	bh=Z37XRrmWvVILWMnkjGGDKcM3OK2JNge9DvmvgsYx/vs=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=WjcDgGmPDPxeGeVOYqx3XflypyDVyUQ8wwWqn4i5CK2w6bQod3AHMFd6BRvJxJg4P
	 E2vdQuxkw9e7npfhsTClna0ER5pDDv7KGl/O6S0CexOQBEhwJFGdcDaXttsDmyJ+Sb
	 9bDK5Y0k3hi9tY/l6nlF4EmcAEUAGqFRlafKkVk+ksStQYleLe20M1V4LsGrishE1u
	 UvseVSo2ae9Zm5dsBI0hCJOVyIScEHwuKcAqBq4eU2doQSv/RRBUjH7f3k1gpeLqKH
	 ui21FEnDnQb/jteeNC/6sWcHYL47PGqyTsbQUaVD1B45Sw+pKdxafb0KqoKTc779uv
	 gzaTn5YdX3g2A==
Date: Wed, 26 Jun 2024 07:25:10 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: dsimic@manjaro.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, heiko@sntech.de, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20240623083413.2051412-1-andyshrk@163.com>
References: <20240623083413.2051412-1-andyshrk@163.com>
Message-Id: <171940790600.2950728.17625531433842246632.robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix the i2c address of es8316 on
 Cool Pi 4B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_062515_756327_5AF41B39 
X-CRM114-Status: GOOD (  14.44  )
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


On Sun, 23 Jun 2024 16:34:13 +0800, Andy Yan wrote:
> According to the hardware design, the i2c address of audio codec es8316
> on Cool Pi 4B is 0x10.
> 
> This fix the read/write error like bellow:
> es8316 7-0011: ASoC: error at soc_component_write_no_lock on es8316.7-0011 for register: [0x0000000c] -6
> es8316 7-0011: ASoC: error at soc_component_write_no_lock on es8316.7-0011 for register: [0x00000003] -6
> es8316 7-0011: ASoC: error at soc_component_read_no_lock on es8316.7-0011 for register: [0x00000016] -6
> es8316 7-0011: ASoC: error at soc_component_read_no_lock on es8316.7-0011 for register: [0x00000016] -6
> 
> Fixes: 3f5d336d64d6 ("arm64: dts: rockchip: Add support for rk3588s based board Cool Pi 4B")
> Signed-off-by: Andy Yan <andyshrk@163.com>
> ---
> 
>  arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-coolpi-4b.dtb' for 20240623083413.2051412-1-andyshrk@163.com:

arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts:286.25-300.4: Warning (i2c_bus_reg): /i2c@fec90000/audio-codec@11: I2C bus unit address format error, expected "10"






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
