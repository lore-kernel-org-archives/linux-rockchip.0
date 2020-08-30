Return-Path: <SRS0=N1pG=CI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29896C433E6
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 19:16:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CC4AE20757
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 19:16:53 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="UR453GGg"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CC4AE20757
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hHnLvXxtRuU6hBkPm6LYjUCArrL1wqAwxchFdCGorwM=; b=UR453GGgg8b7VmqGu27WOjqAV
	/i6zQGJNC+LglbdWKtwI3aCRP3s34EnfBWG5GDuDOmmHxmr2Dx3VEqoqy1tBrB4Cj/ClozzvlxqY4
	PGot1CL5r4l9eoYwzYv04C5DDTiCC8DWAH+kOrxI83f+g17htTb0JAVlpP0naESTtgflWGd7sPGqO
	zLz9Gmo109CSJQRr3rMDkd+rdtgTjeREAzxdE4oJqaPHOrP1++zLHo78ah7viGbFCBPj3kpDGwgiB
	lBEYDcrySnEVTe1lky7s/ccjiJoynSKuMb2/eV7DWYdw5UbquQxAqGyihX4eoD53sGvbknAODvKU1
	EldCGuBlQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCSos-0004Nc-Qa; Sun, 30 Aug 2020 19:16:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCSoq-0004Mw-P9; Sun, 30 Aug 2020 19:16:49 +0000
Received: from p508fca7b.dip0.t-ipconnect.de ([80.143.202.123]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kCSop-00028U-Vw; Sun, 30 Aug 2020 21:16:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable HDMI sound nodes for
 rk3328-rock64
Date: Sun, 30 Aug 2020 21:16:47 +0200
Message-ID: <7880329.2VsnZ9RgxX@phil>
In-Reply-To: <20200802154231.2639186-1-katsuhiro@katsuster.net>
References: <20200802154231.2639186-1-katsuhiro@katsuster.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200830_151648_828999_6D1D9FFF 
X-CRM114-Status: GOOD (  18.89  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am Sonntag, 2. August 2020, 17:42:31 CEST schrieb Katsuhiro Suzuki:
> This patch enables HDMI sound (I2S0) and Analog sound (I2S1) which
> are defined in rk3328.dtsi, and replace SPDIF nodes.
> 
> We can use SPDIF pass-through with suitable ALSA settings and on
> mpv or other media players.
>   - Settings: https://github.com/LibreELEC/LibreELEC.tv/blob/master/projects/Rockchip/filesystem/usr/share/alsa/cards/SPDIF.conf
>   - Ex.: mpv foo.ac3 --audio-spdif=ac3 --audio-device='alsa/SPDIF.pcm.iec958.0:SPDIF'
> 
> [Why use simple-audio-card for SPDIF?]
> 
> For newly adding nodes, ASoC guys recommend to use audio-graph-card.
> But all other sound nodes for rk3328 have already been defined by
> simple-audio-card. In this time, I chose for consistent sound nodes.
> 
> [DMA allocation problem]
> 
> After this patch is applied, UART2 will fail to allocate DMA resources
> but UART driver can work fine without DMA.
> 
> This error is related to the DMAC of rk3328 (pl330 or compatible).
> DMAC connected to 16 DMA sources. Each sources have ID number that is
> called 'Req number' in rk3328 TRM. After this patch is applied total 7
> of DMA sources will be activated as follows:
> 
> | Req number | Source | Required  |
> |            |        | channels  |
> |------------+--------+-----------|
> |  8,  9     | SPI0   | 2ch       |
> | 11, 12     | I2S0   | 2ch       |
> | 14, 15     | I2S1   | 2ch       |
> |     10     | SPDIF  | 1ch       |
> |------------+--------+-----------|
> |            | Total  | 7ch       |
> |------------+--------+-----------|
> |  6,  7     | UART2  | 2ch       | -> cannot get DMA channels
> 
> Due to rk3328 DMAC specification we can use max 8 channels at same
> time. If SPI0/I2S0/I2S1/SPDIF will be activated by this patch,
> required DMAC channels reach to 7. So the last two channels (for
> UART2) cannot get DMA resources.

Wouldn't the dma allocation depend on the probe ordering?
Or is this predetermined, so that always uart2 looses its dmas?

Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
