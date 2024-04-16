Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D89DC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 18:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n1QjXNbTF8a5i1YIsFoAqyktNI77DNbiGhtovhdtegM=; b=VdN7HXM/FTlJ7byqApxBwRZJub
	9bLLsJ8dhXq5ZAXdGFLIUeqpw9amyEyZFwUbrgczXXMXWvMgaFaPc7mWCCEEBW5+vlkJGLw2WfWs2
	DIbXuYZzmo31o+p4xAgAn4IDlGjmu6cFtbhhUHMuYEbFHlsPdrRdA0eWiv9G1BGbSXt6aHI3sPdFh
	b6CHks8oUW6TV3KDPDNj5nzaD/wpYfbImUtgQKrjZwV0ihC7s7GJFIdCJ0qUWc2bA+xbjIiNkyNJ1
	qy4ucaE6BLwcDjw8Ek5jGYO7ICfF5HTi54usdhhx60HJBnUUjqjVaPmZ7FhVzCgv1NrYUSEk81R2h
	BB7dAiQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwnDN-0000000DGDq-0AtO;
	Tue, 16 Apr 2024 18:07:29 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwnDJ-0000000DGCq-1zZQ;
	Tue, 16 Apr 2024 18:07:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 85604CE10A8;
	Tue, 16 Apr 2024 18:07:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C0C5C113CE;
	Tue, 16 Apr 2024 18:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713290842;
	bh=mPcxUkusbjZ+Ei2HTlWliz8OS/HXZY5rW2zmCEmMa7g=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=s0Q++CPnLfPnjuyO5i9nsxgsV38vjvkgNPmSBQ3jGNsA7vSkmh90QQ4ujoT9zDX8u
	 fqVRqEqaKqbVPmofejsMbOe8lmkIfJHkHibtLFYUKJZTk8DqdOKIwcRmsSXzKmPkOn
	 PWTRqcTKxNeZ+STOurK0Dc37NV1lP39C1SDf0fLt8IHmoM7UWuy+atEuECEoHRzWes
	 NJNMWs/FFbhMV20PhuyYKVKxXsD6gSOnaMfcSzhd3eC45+BvvCmEPk6j2+63scmyBX
	 i8HZ77TLUfU1EJPDI1ADb1VeE7yiIf1HJIU6PH8/rPQho7THG0wpQgebEKuBLA5ObM
	 ddCD1fuZcF9Xw==
Date: Tue, 16 Apr 2024 13:07:21 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
In-Reply-To: <20240415170331.1587-1-honyuenkwun@gmail.com>
References: <20240415170331.1587-1-honyuenkwun@gmail.com>
Message-Id: <171329074736.3416213.17172015384838607626.robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588s-orangepi-5: add USB-C
 support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_110725_715447_3AC703DE 
X-CRM114-Status: GOOD (  11.45  )
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


On Mon, 15 Apr 2024 12:03:31 -0500, Jimmy Hon wrote:
> Add support for using the Orange Pi 5 USB-C port for USB in OHCI, EHCI
> or XHCI mode. Displayport AltMode is not yet supported.
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 106 ++++++++++++++++++
>  1 file changed, 106 insertions(+)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-orangepi-5.dtb' for 20240415170331.1587-1-honyuenkwun@gmail.com:

arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: usb-typec@22: 'ports' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/usb/fcs,fusb302.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: gpio-func: leds-gpio: {'rockchip,pins': [[0, 2, 0, 231]], 'phandle': [[239]]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
