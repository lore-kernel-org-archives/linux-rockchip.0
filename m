Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23E23C27C4F
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 13:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vzCSbLTPkAad8yScbmdljJ9iK0Sh9kPzQEtz2sKn8pI=; b=oIz28OU5qrL9Hww09b39hjHFm3
	/CzbCTlSsiJmBhNsiCGqJXsGWCva5qEqH5iuLFKbntcDldR2WsJ/YqMXRiZV0GSLjQ599s9UNVJsf
	a7v3TebXLyS+lPalUhqhiI7b7+UVNf3afXyRSk7fg+McVf8sL8auxlL7VzLGZAAZPC97ySxmAv0sb
	DMWYDB74ZFKcCECMZD9F+5eTc14yc9Zcxu27jywM7y+WMORQZDuG8rOY+nzJ1pR3z9ZaQYYBvqzOI
	dlH4AP943kqCx7G9Ku5va1vSSYXgXZuozVbBYFKptOHMifhLR4/a3mPItmrL/rMVtG+pBvA3ciBuO
	86SxDP1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMSeJ-00000006wqK-1suP;
	Wed, 26 Jun 2024 13:25:23 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMSeA-00000006wl8-3rmp;
	Wed, 26 Jun 2024 13:25:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6672A61A05;
	Wed, 26 Jun 2024 13:25:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B31EC4AF07;
	Wed, 26 Jun 2024 13:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719408313;
	bh=QmsuC8jN8Omew9b99dXKTzKG2pjGmCB6a1Jqa2GTJe0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=I5AF3cWMOPhUZyFXdF4BfnaEEDWY6TtzoicM6K0AbGFCqahYl7SGGEysS5IIXTp/6
	 bNhHRQgA15IMFugRaQF+Bq64tRfrBh/+l7ignallUkmtXHsYyqsyKIA1oa5JBc1Aj9
	 rtqDaGo3g3MOaTUh/nnXs55HVOBOm6fMC/OMDn9HbUAEEqdcOi678pY4WjgZvCO6Kd
	 rql0f90JKZMBvSrs105CHleiHeTGAYPpIp4E+5APkZseUzPVO/yiyTcMtfExTyQk5E
	 LsZ7Rp07d6W5d1lxuM7uBIjEpyxSZWmSEZ2ccPy/EU4JKx6A0z7Lm6EkVqcWK4Y5T0
	 fjzlnudtnZCpA==
Date: Wed, 26 Jun 2024 07:25:12 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Heiko Stuebner <heiko@sntech.de>, Sugar Zhang <sugar.zhang@rock-chips.com>, 
 Conor Dooley <conor+dt@kernel.org>, inux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
In-Reply-To: <20240623090116.670607-1-knaerzche@gmail.com>
References: <20240623090116.670607-1-knaerzche@gmail.com>
Message-Id: <171940790685.2950756.7239158796460093682.robh@kernel.org>
Subject: Re: [PATCH v2 0/4] Add LBA3368 board
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_062515_055409_FC61E59C 
X-CRM114-Status: GOOD (  16.87  )
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


On Sun, 23 Jun 2024 11:01:12 +0200, Alex Bee wrote:
> This series aims to add support for RK3368 based LBA3368 industrial board
> form Neardi. The device tree currently only contains entries for which both
> bindings and linux driver exists and is expected to be exended in future.
> 
> NB: checkpatch throws me a warning that no venddor-prefix for "usb5e3"
> exists - which is true - but "usb5e3,610" has a valid binding.
> 
> Changes in v2:
>  - board DT property re-ordering / fixes
> 
> Link to v1:
>  https://lore.kernel.org/all/20240621134030.243646-1-knaerzche@gmail.com/
> 
> Alex Bee (4):
>   dt-bindings: vendor-prefixes: Add Neardi Technology
>   dt-bindings: arm: rockchip: Add Neardi LBA3368
>   arm64: dts: rockchip: Add sound-dai-cells for RK3368
>   arm64: dts: rockchip: Add Neardi LBA3368 board
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3368-lba3368.dts      | 661 ++++++++++++++++++
>  arch/arm64/boot/dts/rockchip/rk3368.dtsi      |   3 +
>  5 files changed, 672 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts
> 
> --
> 2.45.2
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3368-lba3368.dtb' for 20240623090116.670607-1-knaerzche@gmail.com:

arch/arm64/boot/dts/rockchip/rk3368-lba3368.dtb: /i2c@ff660000/codec@1c: failed to match any schema with compatible: ['realtek,rt5640']
arch/arm64/boot/dts/rockchip/rk3368-lba3368.dtb: /mbox@ff6b0000: failed to match any schema with compatible: ['rockchip,rk3368-mailbox']






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
