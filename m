Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3632BC30658
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jul 2024 13:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UQcJkT+wrfPvCfKS1qcq5NuCofPoc2JH7CG6CzguWiY=; b=l2/wGP0hpiL6dj+giso5EUIk35
	QV/GPIXFsULSsGN/lZd3LJHw00YmY1pGzcEuBXRORtP6g+eL+IWd7oSb7SYYrhNPfywKXjFH7oVmX
	0LxZ/rrteBDxcjsvtMaO4XeRx3TBqU/T7qwvlotp2UZ1GJo2vcSmDjJNq/H75hEf2Vs+IQ2AezxRO
	6SyWIYPCj3Y70edexyMXXMvkSbgIJLs6vsygC0ZOdvi1dCfFLsArZoGvumCot2JzJrPC1im/Uhuc0
	vtpa7tRlaM/3vJ+JwbCUL1XH7SR/OhD013KfkrmLvi7rcZwYq2EV4O0V0Gl8VoAkRaVfeosZu0juy
	OoPxVsDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdnP-00000006u2i-2YIs;
	Tue, 02 Jul 2024 13:43:47 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdnK-00000006u1b-0LCy
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jul 2024 13:43:45 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719927817;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9RX9SwG+Ud+rC8/PJcXDp/BFOh2r5o2V9dRBtdE1RAY=;
	b=bHoa7vdsnmgdt2n+DRizAmRL9D44zGgxWVRniutYuvxVOAYv1Jdv4qAvxH0h/1yERaqAbn
	5Dp0yNtjzAgDIT86aCQ/AjJi/eKzM2QUA+PyBAC033ImfKGYZIZ5CO1GR+saIqRh8qFegu
	rexvIP6anoi0yLGIhJXslW3AqjHqfBDz3UNDLzqU39uTfrsHiwuwhm7ovuoJ+2LWByxkv6
	DCWS8whHy3xl968t8xvMa8eVecSmH03xGAX8UEXbtsx4SgBxaTTrYrE1XajqaiJwpqi+gl
	MdpNcYjfZ3bgizWPor2/sb43wKT+lBkR6l2Z6DkVqdP7U9eFGQA75rXLEQG5tg==
Date: Tue, 02 Jul 2024 15:43:37 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Philipp Puschmann <p.puschmann@pironex.com>
Cc: linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 heiko@sntech.de, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk356x: add ethernet aliases
In-Reply-To: <20240702124626.116290-1-p.puschmann@pironex.com>
References: <20240702124626.116290-1-p.puschmann@pironex.com>
Message-ID: <6bb12ab4cd12357dfd69db35107d8b88@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_064342_593984_036B14A7 
X-CRM114-Status: GOOD (  16.82  )
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

Hello Philipp,

On 2024-07-02 14:46, Philipp Puschmann wrote:
> Providing ethernet aliases solves a subtle problem for the rk3568. The
> bus_id used for the sysfs directory name of the mdio. Without ethernet
> alias the bus_id is always 0 and so creating the sysfs directory for 
> the
> second mdio fails with a duplicate filename error and by this the setup
> of the second ethernet port fails too.
> 
> Note: The alias numbering is inverted as gmac1 comes from more generic
> rk356x.dtsi but gmac0 comes from specialised rk3568.

Please see the following commits and the discussions on the 
rockchip-linux
mailing list that are linked in them:

- b0140a1b3b1d ("arm64: dts: rockchip: Add ethernet0 alias to the dts
   for RK3588(S) boards")
- 36d9b3ae708e ("arm64: dts: rockchip: Add ethernet0 alias to the dts
   for RK3566 boards")
- 5d90cb1edcf7 ("arm64: dts: rockchip: Remove ethernet0 alias from the
   SoC dtsi for RK3399")
- c900fef5deff ("arm64: dts: rockchip: Remove ethernet0 alias from the
   SoC dtsi for RK3368")

To sum it up, ethernetX aliases are considered board-level features,
because not all boards/devices actually expose the Ethernet interfaces
built into the SoCs.  Thus, adding ethernetX aliases to the SoC dtsi
files, unfortunately, isn't an acceptable option.

The sysfs issue that you've discovered should be instead solved in some
other, more systemic way.

> Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 4 ++++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
>  2 files changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index f1be76a54ceb..42018c8666e0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -8,6 +8,10 @@
>  / {
>  	compatible = "rockchip,rk3568";
> 
> +	aliases {
> +		ethernet1 = &gmac0;
> +	};
> +
>  	sata0: sata@fc000000 {
>  		compatible = "rockchip,rk3568-dwc-ahci", "snps,dwc-ahci";
>  		reg = <0 0xfc000000 0 0x1000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index d8543b5557ee..e13bd7b24752 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -43,6 +43,7 @@ aliases {
>  		spi1 = &spi1;
>  		spi2 = &spi2;
>  		spi3 = &spi3;
> +		ethernet0 = &gmac1;
>  	};
> 
>  	cpus {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
