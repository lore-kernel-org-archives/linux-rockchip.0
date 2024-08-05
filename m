Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B5BFC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 15:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NruVjzzR694FlexwnnbFwyESf3E97ITiTa55xtUe5k8=; b=buSHAXOS1XsBz7Z79c0V2kMB3u
	d3OkjV4fg++amcWD/BNXg+qzRDIGyVRffZDOOL+U2Ix6sEDEOKm6s3Q9l0nswI+KCCzqIicdm9Aw5
	xJcR/vV75MyUAEMZAvSPKxQ9xFHlzPp30/hxCkPK6lDNJ3q01s91F8/qTIjKEcyACW69o4tBADRXr
	/RDruEvsw4ZudhcFkiwuJ3mb/yjRWMLmH+/WRV2hfcT03fhoBjd9vgZaYafuBmDGTvlaEKZ6+mRHq
	zMvpFfA7MdODUVP7XTy+0j55EU5BZ2MYFqSH2XjmRvuLpkPQDdamHDHxc90N2387yB1j8qZcTDLyw
	6eVrxLNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sazCg-0000000GEYK-1ol6;
	Mon, 05 Aug 2024 15:00:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sazCA-0000000GEU8-32oD;
	Mon, 05 Aug 2024 15:00:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Content-Transfer-Encoding:Content-Type:
	Date:Sender:Reply-To:Content-ID:Content-Description;
	bh=SZoDW/WNj4kpqQAJb4vZQgfR1+6iCY19s8Ybkv43Yew=; b=EBAEA6HgkHPdnNJqFupmUpZzKN
	bHM+aHkQmqAupcX5GVCmbdQ/v7loTXVmt61s24xvE+jfRzngi4YklgMKtDuZqdFQZ647zT1K/fUCp
	/WFVb/KHFQRIkRUg+TYsoVw8I3mpkIxSZS/JAUnHm1cLH6RIoI4stkACHTzeaR9LLdCYMvKM+BEQ3
	6X47TI32wD+dJCA9efL8+HRssJTi3H9T0k+dUtGU5dovS7PB0EIqtDTSP6h1nBRqZPRxFqgJ1sHMv
	r2UjNoyJ1rhKd9vS9zqt2H5b8sYZdHq/Bqg/YTM9Db0cWXNlHrNrVrwJ7kv3+65KbTifbbsKZbhd8
	AwQcRRWQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sazC5-00000006HI7-2Fna;
	Mon, 05 Aug 2024 15:00:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7A42A60B83;
	Mon,  5 Aug 2024 15:00:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E690BC32782;
	Mon,  5 Aug 2024 15:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722870014;
	bh=BvrkceB7VckQ65t9UIejN1/seIpoW+gmGHw6Bpfa1KI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=RgtOWvXIe5UibJyNzAZ9c81c0XVk+dYUbypvfMiCLu2/CUOtXzp4ElCbp1eBqdScs
	 uEqs+7rh1jh6yZ5pNZvL0QsAFXom71FJX4NR/FeRQrwmcLUkWaGaAwrfk7/w4IhnxP
	 NfDHwDJbxDUJ7fQBdtsZPPWNZBP2ASER6HtQGMnRPvIjZQA33aAbD1AMYwMCD6vk8m
	 yk/G7fWZIt9Q7gNmul801q9CMnxxMJQelHMDHzK9Gd7NV2TwPgUbYwXl27++m+ruTI
	 oKciF7qSJbyqrRvurkAP++QjNYKZRcDc3HwvfMcJuL37P1BIPtmSMgds+t5kJP2Tcm
	 eCITua3KKiKoQ==
Date: Mon, 05 Aug 2024 09:00:12 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sergey Bostandzhyan <jin@mediatomb.cc>
Cc: linux-arm-kernel@lists.infradead.org, heiko@sntech.de, 
 devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20240801175736.16591-1-jin@mediatomb.cc>
References: <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org>
 <20240801175736.16591-1-jin@mediatomb.cc>
Message-Id: <172286966609.2708545.4957056858125634326.robh@kernel.org>
Subject: Re: [PATCH V2 0/2 RESEND] Add DTS for NanoPi R2S Plus
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_160018_602943_2F5099DD 
X-CRM114-Status: GOOD (  19.01  )
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


On Thu, 01 Aug 2024 17:57:34 +0000, Sergey Bostandzhyan wrote:
> Hi,
> 
> as requested, I am resending the patch series, now with hopefully all
> relevant addresses on To/Cc.
> 
> I noticed, that a DTS for the R2S Plus is not yet available, while the
> R2S is already there. The only difference is, that the Plus version has an
> eMMC, so we can reuse the R2S definitions and only add an eMMC block, which
> I copied from the DTS in the friendlyarm/uboot-rockchip repo.
> 
> I applied the same DTS changes to u-boot and tested u-boot 2024.04 with
> kernel 6.6.35 on an R2S Plus which I have here and the eMMC became visible
> and usable.
> 
> Kind regards,
> Sergey
> 
> 
> Sergey Bostandzhyan (2):
>   arm64: dts: rockchip: Add DTS for FriendlyARM NanoPi R2S Plus
>   dt-bindings: arm: rockchip: Add NanoPi R2S Plus
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |  1 +
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../dts/rockchip/rk3328-nanopi-r2s-plus.dts   | 31 +++++++++++++++++++
>  3 files changed, 33 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> 
> --
> 2.20.1
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3328-nanopi-r2s-plus.dtb' for 20240801175736.16591-1-jin@mediatomb.cc:

arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dtb: /phy@ff430000: failed to match any schema with compatible: ['rockchip,rk3328-hdmi-phy']
arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dtb: mmc@ff520000: Unevaluated properties are not allowed ('num-slots', 'supports-emmc' were unexpected)
	from schema $id: http://devicetree.org/schemas/mmc/rockchip-dw-mshc.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
