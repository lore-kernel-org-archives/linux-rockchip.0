Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43F2DC25B78
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 00:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bU8/IRaVRaqAGEvhZpwbw43ULKXIGJcQTeN0rA8bkDI=; b=xBNTrEZgxdDJs4YXsBwfrUtDez
	d9CMFzqUitwx4Z+EK5hOF5kzJX6IEM5Jt4N63ICKpNv7llCfxaTnzrM5Qw230aq8CE0O30SeyotZX
	WftWGLZiWiBrdFheKkX940a0ZLorfHaJyrN1HouPSeakaeYm9P/cm4uLVVDHcVao5sp8YIX+8rJt+
	TGkTHDToBdFUu+cNekiGakv1O9VpDLKh0V/wmCGXYSizF3qK/xLEUPlfJNs5+UoUcIk6S1VASDVLO
	IuqVBfx4SHyIYpzki4Pg05PwRzT8Ds0wayG5k+7zXMYPZ5pT4MhFFk6/rWfM/ddeF0eSt4va73eWr
	JwobRtoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC6tz-00000002Ofq-1DbX;
	Wed, 29 May 2024 00:10:47 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC6tu-00000002OfH-23Dt;
	Wed, 29 May 2024 00:10:44 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1716941440;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7z6F1Ao1L/n/qQAEst7AHuaT7MITPT2BokqzLZjAtkw=;
	b=oviVzV2CR0rzR2GZkxMTnKGG3dxWHNwxm0rcUxfymyh2sXXP+ybudxEfHhyAPcSU8fheO/
	/gpNHludd2JY83m/g3BWiVhGsreWWUhgGC28vJiyQ/ntFDx6N/pkJDTF3vYLsZht87gmLz
	W+oWD1aJuE45p2MJL1GgT5klAmcsdkdAVD3b6rSECtBRvxf5MQahneEFmkdFLysX8YSBf4
	0MrVLwy7bI6fQ7tic+/sROdvcdqlFlR7fCwG+HvX+jOEZc7DDYbInXr2NcyOrio9+AePsu
	xgLu0l4h5FTxgkZ7lYfkYaKRBdnGhDlveSJ3jkwRysOuFafFn6b/S23TJ+Igdw==
Date: Wed, 29 May 2024 02:10:38 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Sebastian Kropatsch <seb-dev@web.de>
Cc: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add CM3588 NAS board
In-Reply-To: <29e5cf31-3d9a-469a-befa-41a5aa2fe8b3@web.de>
References: <20240526214340.8459-1-seb-dev@web.de>
 <20240526214820.9381-1-seb-dev@web.de>
 <9f40c748-691b-4a03-bbd6-54870f46bf05@kwiboo.se>
 <29e5cf31-3d9a-469a-befa-41a5aa2fe8b3@web.de>
Message-ID: <bccd8879a19ceacfd92a41e7533b324c@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_171042_870635_8BC4F9BA 
X-CRM114-Status: GOOD (  18.96  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Sebastian,

On 2024-05-28 19:22, Sebastian Kropatsch wrote:
> Am 27.05.2024 um 21:02 schrieb Jonas Karlman:
>> On 2024-05-26 23:48, Sebastian Kropatsch wrote:
>>> The CM3588 NAS by FriendlyElec pairs the CM3588 compute module, based 
>>> on
>>> the Rockchip RK3588 SoC, with the CM3588 NAS Kit carrier board.
>>> 
>>> [...]
>>> 
>>> PCIe bifurcation is used to handle all four M.2 sockets at PCIe 3.0 
>>> x1
>>> speed. Data lane mapping in the DT is done like described in commit
>>> f8020dfb311d ("phy: rockchip-snps-pcie3: fix bifurcation on rk3588").
>>> 
>>> This device tree includes support for eMMC, SD card, ethernet, all 
>>> USB2
>>> and USB3 ports, all four M.2 slots, GPU, RTC, buzzer, UART debugging 
>>> as
>>> well as the buttons and LEDs.
>>> The GPIOs are labeled according to the schematics.
>>> 
>>> Signed-off-by: Sebastian Kropatsch <seb-dev@web.de>
>>> ---
>>>   arch/arm64/boot/dts/rockchip/Makefile         |    1 +
>>>   .../boot/dts/rockchip/rk3588-cm3588-nas.dts   | 1269 
>>> +++++++++++++++++
>>>   2 files changed, 1270 insertions(+)
>>>   create mode 100644 
>>> arch/arm64/boot/dts/rockchip/rk3588-cm3588-nas.dts
>> 
>> Because the CM3588 is a SoM and the NAS is a carrier board this should
>> probably be split in two, cm3588.dtsi and cm3588-nas.dts.
> 
> I thought about this before submitting. My reason for not splitting 
> this
> into two files for now was that as far as I know this board is the only
> combination for the CM, maybe no other daughter board will ever get
> released. If another carrier board compatible with the CM3588 is
> released, the splitting could be done at that point in time.
> 
> But since both you and Heiko prefer to have it split, I will figure out
> a way how and which parts will have to split up to the CM so we can
> have two files in the end. I guess most things will go into the NAS dts
> anyway.
> 
> I'll have a look how other Rockchip compute modules with split device
> trees were done in the past and orient myself by that.

I also support the DT split between the SoM and the carrier board,
even if there are currently no more carrier boards available for
the particular SoM.  That may seem redundant, but it reflects the
nature of the hardware setup, in which the SoM plugs into the carrier
board.  This follows the principle of the DT describing hardware.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
