Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B04B9C021B2
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Feb 2025 23:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3aVt56ucmlybS2CFQOzsj5hSvGUm5NH7X9NiSFr9cw=; b=DQ7tEUFPbgYVeW
	7MeejwhC6LCxFGmlBclWT7MAxKJSoP1Hsxi7UNb2BnaxCqBXWpodkYPUNrYAc8sbIWpRYZJjElMI3
	4/nMTXZDfac3ih//A+oLdOCASMhjV8ERDfV5j0SshCyBqnwsh6gQ87YFE2z0varpNxlYwFpic40XQ
	HZjFjOT+GWJ+aBWdk8EA3rFfuBgjj+fCGgJiUAoVH89Zvk8o8qOtjOVydOz1+giU0XyY+VRMgE00V
	YLYPLiKLwT97VhXnvrArsNvJ+PbOHoMotwdgZCr6ox0BGpEfNWAlBq7i7DMGwFU77fwxEembgDhCv
	rubQTt375RNiLr+7CggA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlygc-00000009BCG-3TUs;
	Sat, 22 Feb 2025 23:13:30 +0000
Received: from out.bound.email ([141.193.244.10])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlyf8-00000009AsL-2qgZ;
	Sat, 22 Feb 2025 23:11:59 +0000
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id ED05B8A312A;
	Sat, 22 Feb 2025 15:06:55 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id D5830160036F; Sat, 22 Feb 2025 15:06:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1740265615;
	bh=fdtZsIQbki6CBziVds4ivODGYCt8szGPIe5uhWOCfd8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fpZwpnql7MvraVaruTi8w2KRmKAjmS/zkX8MQ7czWS1G34FNqMfYWvOyG845B+dgu
	 IioVEay6viRQ25upCdj5s/PnTvd7MTJVjCT7lq/XhnEM/dOd9aVcIemvbus4r7H8Xi
	 mYzvnILn8DwsvqR08SJ1nCwgFF2oH5n9k7WlrQX4=
Date: Sat, 22 Feb 2025 15:06:55 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 3/5] arm64: dts: rockchip: Add Orange Pi 5 Ultra board
Message-ID: <20250222230655.GZ16911@sventech.com>
References: <20250222193332.1761-1-honyuenkwun@gmail.com>
 <20250222193332.1761-4-honyuenkwun@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250222193332.1761-4-honyuenkwun@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250222_151158_843848_45267416 
X-CRM114-Status: GOOD (  12.33  )
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

On Sat, Feb 22, 2025, Jimmy Hon <honyuenkwun@gmail.com> wrote:
> The RK3588 Single Board Computer includes
> - eMMC
> - microSD
> - UART
> - 2 PWM LEDs
> - RTC
> - RTL8125 network controller on PCIe 2.0x1.
> - M.2 M-key connector routed to PCIe 3.0x4
> - PWM controlled heat sink fan.
> - 2 USB2 ports
> - lower USB3 port
> - upper USB3 port with OTG capability
> - Mali GPU
> - SPI NOR flash
> - Mask Rom button
> - Analog audio using es8388 codec via the headset jack and onboard mic
> - HDMI1
> - HDMI IN
> 
> the vcc5v0_usb30 regulator shares the same enable gpio pin as the
> vcc5v0_usb20 regulator.
> 
> The Orange Pi 5 Ultra is a single board computer powered by the Rockchip
> RK3588 with similar board layout as the 5 Max but with the HDMI0 swapped
> for HDMI IN.
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../dts/rockchip/rk3588-orangepi-5-ultra.dts  | 34 +++++++++++++++++++

Tested-By: Johannes Erdfelt <johannes@erdfelt.com>

JE


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
