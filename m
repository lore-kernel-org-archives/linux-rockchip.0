Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B696C04FF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 18:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zVPGHftQU64tcqx0Xbo3MtSxDVGNridAZDoDdd92on4=; b=ySs54R2XwG8lmdQPDTd7iaOJ73
	23qjv/94utANv/AOCgr9jv6sbqnymU5bznTrCKGnysu+SN7qzSmYM4irp8ATOJqvm5RBiYvQMqg7K
	yJRkE6S2XL4t3/tLEjvbKKB73vSQypGbgVX918Uy1+hMcHdLR2d0Bn9zkCTGQdJ0tbRxRtPa9sKuf
	6SIsilFfAecU8CUFgs78b25eCTPeOtp5j8H6p2u/rzbAsDgR2bZPTecn9GOCFdGm5YN+/+lj5ioIW
	5YW9tcwUxTr8h2My7TJK5R0T0R70yI2zEPP8HN3vbAdin8FrJNZTlFPyI41hKyzUViup5QeCCFfik
	Z1YLLtLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxWW2-00000003L8r-2Y49;
	Thu, 18 Apr 2024 18:29:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxWVy-00000003L8C-2cYk;
	Thu, 18 Apr 2024 18:29:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1EBD06183B;
	Thu, 18 Apr 2024 18:29:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95E1CC113CC;
	Thu, 18 Apr 2024 18:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713464981;
	bh=deLnIs4DG1KjLOKw2aX1JllHPjN9a4zOsTElzS3zg0Y=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=i7brIqOQKawp513lTJ6hZFNKVnbeze5AeWLK0oXNXB8wJNbfevhc2ZkSF+RKAotDw
	 V7l7VpF4JnjmkLVc6SfPTRdgGEJt5j8ECN2rxs6ohnCBGimITWSLiNUhRoqVGJezRz
	 MTSGPT2U0O7WheOWp4VOLMfAdwsxI6ps1MJZO2+Msz9gUM1yV4jxJt1J7eiVHQ46FW
	 yzYdEjHRAXDyudO5uGJlXPW0R1BtJGD70d5/QJ1rT7l4u6gK1ZL5jm4f5TH7dGPz0b
	 PzyTjc+zu9DDabCpOyC0nKiF8XX2JqXR43MHNbp4IeaBM2KAD/ZnA+ninTOZci5E9b
	 esm7itxyRyBvw==
Date: Thu, 18 Apr 2024 13:29:40 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <20240418035232.35344-2-honyuenkwun@gmail.com>
References: <20240418035232.35344-2-honyuenkwun@gmail.com>
Message-Id: <171346492555.2679631.1826619691769514446.robh@kernel.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk3588s-orangepi-5: add USB-C
 support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_112942_726892_83B12249 
X-CRM114-Status: GOOD (  10.66  )
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


On Wed, 17 Apr 2024 22:52:33 -0500, Jimmy Hon wrote:
> Add support for using the Orange Pi 5 USB-C port for USB in OHCI, EHCI
> or XHCI mode. Displayport AltMode is not yet supported.
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> ---
> v2: change ports section to follow typec convention of hs/ss/sbu
> 
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 94 +++++++++++++++++++
>  1 file changed, 94 insertions(+)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-orangepi-5.dtb' for 20240418035232.35344-2-honyuenkwun@gmail.com:

arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: gpio-func: leds-gpio: {'rockchip,pins': [[0, 2, 0, 231]], 'phandle': [[239]]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
