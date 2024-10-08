Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9AD8CEF172
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 14:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bTSS3L3n3kben1TZfpkMyI7RFUao+WO3x/cF394d4Yo=; b=D8UO1ZidugJFRhQflTRAbOf5AJ
	dAoiNDhNrgtvsPTcQfpN19tTS799w7L5KVtakvF6MvMDZQ+Kz6MtnfioexqbXbGr2np2jQGHLLyaL
	YTs+v893Rq5KER7F6rFymr1JX8B6qBzxZLGDmvSVhUqHkUEg59JoTMJOc6zNjoPNqgxT8+vwgRIx1
	tFu9mn+EpusJbsq6M1e/fs3/u0Ou9nU+m6lGIs6b7XcdbhI7PWtKt5zyy3mCZHeJ5vpmn81kzWTmc
	tAOUovEEVJYM0/zXD5XOUEm/M9MD6yQjMF/jXlVCDhQ7JJU+6hYYzjZUyd/EY0r0n5R72PRW5mofi
	1WzQJ5Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syBgI-00000006HJr-3t4L;
	Tue, 08 Oct 2024 14:59:22 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syBdj-00000006GiG-2TDb
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Oct 2024 14:56:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 22EC1A41F88;
	Tue,  8 Oct 2024 14:56:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41E7AC4CECC;
	Tue,  8 Oct 2024 14:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728399402;
	bh=sePsY7rsayUrwCs6/we5NcvRcTe0PxkhfzCQmNjdH+w=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=hgv7BiVbqrMndsGdMyzclz7xCLYO0pjQNRE8rM3v9cdYoVbdpu3l2V+XDvKBNhHzl
	 s9JclfY8oVj1HAoWGNvI+mGpJSQQvP+M7aFR3EQfkxunHd1fErLXeM0EfSssG6rriL
	 zEvGxfeR8RSUCC9F2p2z1Ldlgo71EfYMfvti5zvxQbBcKzfUJnsxBarbzx5jw8qGPV
	 RmsmMx6xJBYusJpXdpDLUWRI3imC4O6ufQS2umLAzpmNTV3DYK7iHdkL4OsiuTrU1M
	 N1CPphHIG0rMCemOYwOrnblHWyTY9duWMmSJuWEPfCA9AgeW07DUeOJVO8eKhWqaqa
	 dXVQPNsJUlN1Q==
Date: Tue, 08 Oct 2024 09:56:41 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
In-Reply-To: <20241008031429.2410-1-honyuenkwun@gmail.com>
References: <20241008031429.2410-1-honyuenkwun@gmail.com>
Message-Id: <172839929050.1375676.6206290291229445428.robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: analog audio on Orange Pi 5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_075643_710854_C0A058B2 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
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


On Mon, 07 Oct 2024 22:14:29 -0500, Jimmy Hon wrote:
> Analog audio using es8388 codec via the headset jack and onboard mic
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 64 +++++++++++++++++++
>  1 file changed, 64 insertions(+)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-orangepi-5.dtb' for 20241008031429.2410-1-honyuenkwun@gmail.com:

arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: gpio-func: leds-gpio: {'rockchip,pins': [[0, 2, 0, 243]], 'phandle': 256} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
