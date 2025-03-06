Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAF97C282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 17:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mHgXtmdHPhs5U//e0hPGdXHkpQw08MUu1GpUlX/R1sE=; b=LTvQBwDkL9uwhdbutbf/W/71Lg
	yGTlUHmybDeB5OElzXJtDaCCGl+ofpHtIUmoVQL3sPl7j+g+Te+VwrZXG1upVA7jAh2pDImFMtKd4
	+BUgYT3z08RvLS3TWWthZct1hL3UhLuN9P7wcKBnVTHDI5Ap9Yi6wqQdbEq1W6Qa45wUll7A/eB0q
	RnIggqYrtyNdvbhK7i+HRVXSNCbsAxy5a+BPZenHPKH6Kg5lGGLgu1+BfeJSGYRWdmqQwYsE1qBOd
	T2IIKQ0aQ6eqkz/cvtnGdiB9FZeMLJtXKpkVkPWuK1onRiXsqQpSkzstabrP7l4bisjBWhOW2RLyw
	Jbc4PXIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqFK6-0000000BjLT-1lxi;
	Thu, 06 Mar 2025 17:47:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqFK4-0000000BjLG-2hBp
	for linux-rockchip@bombadil.infradead.org;
	Thu, 06 Mar 2025 17:47:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Content-Transfer-Encoding:Content-Type:
	Date:Sender:Reply-To:Content-ID:Content-Description;
	bh=OlSMzSl2XB2dZCInSm2QKitHqdeJl4yj3DmUFUnGkFw=; b=VJqs6u34ZUy9zeXx+qufi/shFY
	1dUxmCbxC47h5OfdELDMrr7HxNeUPAK3LzjnvLJbzO/zEcVORsT8hDfnpQa1DWip19xCg4BSMwCT1
	rjcJfGshrLtSvh7aELDx4YbEWdva9aTVxAIkUiaBQC7Ukwnu1QH+ZZEQtpbrM3ccgDdFtW9fzNtT9
	vsG1Wyt8Twxmqp0+ioPaakvIdCWdBPsNTXYb/gsMh1S9+27ldgpVEq00SNVYcijla1pNe9I7W3hua
	VZQpjykip8XjQVdc5z0Zc3TyFma22S7+T73mFgouE6cvtbZJTWHV3GIsqYMCsyAslj8AFdaKV6Odq
	b5a+DtOA==;
Received: from nyc.source.kernel.org ([147.75.193.91])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqFK1-00000001BYu-1ZaH
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 17:47:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 71E80A4500F;
	Thu,  6 Mar 2025 17:42:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88C6BC4CEE0;
	Thu,  6 Mar 2025 17:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741283265;
	bh=vLYpv2pNjYOdh5O6HeK/ePYCVyI3JgI8QCiLliFyZBI=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=ptToXzUwYt/ACtzyfBCHKIux4Wmgsh77p4jdAvYm6bHcHi51dDoYDI7QegezkukwS
	 LwtVTUhq0hd43i+dG+v8FEmhOSBXVNeBJrQUPA9tn9BnGtGGLMfoRR5g5DPWLtBMwO
	 wFlCc7WzmNDG+MZlss5UTMtvr6t96OLVn9b9g/tSWQAhkn9BY9pn0T0SHfhBRnRd+B
	 s/pFz6rKoWX38fOjdxwe8vJvVUmjIKSm9NFDiwiNPe3aYy9/57uSxvqViQ182JgqXk
	 RJFCMNYy1Iem7rxiY3pyUa0R/JUsYW+RbaXDPsMCcxKSh10TPnEKjrzvHHhsc/ADC6
	 BIGjagzLNQ/0A==
Date: Thu, 06 Mar 2025 11:47:43 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Diederik de Haas <didi.debian@cknow.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Tim Surber <me@timsurber.de>, 
 kernel@collabora.com, nicolas.dufresne@collabora.com, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, 
 Shreeya Patel <shreeya.patel@collabora.com>, 
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org, 
 Hans Verkuil <hverkuil@xs4all.nl>, nelson.costa@synopsys.com, 
 shawn.wen@rock-chips.com, jose.abreu@synopsys.com
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
References: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
Message-Id: <174128292021.549217.1931417772861083999.robh@kernel.org>
Subject: Re: [PATCH v14 0/3] Enable HDMI RX controller on RK3588
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_174749_767596_8A0AEC75 
X-CRM114-Status: GOOD (  16.05  )
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


On Thu, 06 Mar 2025 10:28:39 +0300, Dmitry Osipenko wrote:
> Hello Heiko,
> 
> This is a follow up to the v13 of HDMI RX patches [1]. Hans queued the
> driver into the media tree. Now the DT patches are left to apply, could
> you please take care of this series if it's good to you? Thanks
> 
> [1] https://lore.kernel.org/linux-media/20250304085819.108067-1-dmitry.osipenko@collabora.com/
> 
> Changelog:
> 
> v14: - Re-enabled LOAD_DEFAULT_EDID=y option in the defconfig and
>        added ack from Hans Verkuil fot that patch.
> 
> Sebastian Reichel (2):
>   arm64: dts: rockchip: Enable HDMI receiver on rock-5b
>   arm64: defconfig: Enable Synopsys HDMI receiver
> 
> Shreeya Patel (1):
>   arm64: dts: rockchip: Add device tree support for HDMI RX Controller
> 
>  .../dts/rockchip/rk3588-base-pinctrl.dtsi     | 14 +++++
>  .../arm64/boot/dts/rockchip/rk3588-extra.dtsi | 57 +++++++++++++++++++
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 18 ++++++
>  arch/arm64/configs/defconfig                  |  2 +
>  4 files changed, 91 insertions(+)
> 
> --
> 2.48.1
> 
> 
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


New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for 20250306072842.287142-1-dmitry.osipenko@collabora.com:

arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-h96-max-v58.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-h96-max-v58.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-armsom-w3.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-armsom-w3.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-firefly-itx-3588j.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-firefly-itx-3588j.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']
arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: /hdmi_receiver@fdee0000: failed to match any schema with compatible: ['rockchip,rk3588-hdmirx-ctrler', 'snps,dw-hdmi-rx']






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
