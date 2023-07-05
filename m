Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDC0BEB64DA
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jul 2023 20:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-Id:To:
	From:Cc:Subject:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IP9HcHbdTjC0TErClaGC3OWLzC4P5AM1RGRBemQwEdg=; b=WN0eyLEdxJ0JLe
	+j5NFXST/9JE88h0BrPmbu/Hcm0Dsm8Om3e5QfthjiQ/oi6R+1M+hog8eJYyRbw3M07DaPvhnXwL1
	dQq+jPqINQqrZNdbjq04Rh7+rupniA8H2uHRv0fNrfW14xcToxy8EQx1EmXcLvNcYko3AivvdsZQw
	x5nVvTZFYEf+qaDmpTkYLxR32m7rnUYrSzzQbbm5tuzBlCxD8+iAoSVxQUwDxNCHG1ZtBlzYDSDyV
	f13NYTvUbR2IFhikyLb76YxP4VdFbIWBGoaR4AEJiklwYpDkPUiLEEiy+onsbNjR8U7t6ic5rzu/7
	a4g/93rGQZok8h8vYtDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH9Eg-00H24e-0I;
	Wed, 05 Jul 2023 20:36:26 +0000
Received: from www522.your-server.de ([195.201.215.122])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH9Ec-00H23j-1w;
	Wed, 05 Jul 2023 20:36:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=folker-schwesinger.de; s=default2212; h=In-Reply-To:References:Message-Id:
	To:From:Cc:Subject:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:
	Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=ch8QsoZ57xKqhInAucg2KEU9iJc99iTHFEjakBXMmHY=; b=IqBwySTu/tbgQgnJb9pBqztjly
	F8VPltD6kza90+kMqoMxI0ocizwBeP9Y85eIlboyp/1swhBPEDhndWcbz0WEiuw3uRLBEFbYCRMsX
	Gjs1seNVkG/b6npi5V+aZ7VkuH4pxppr+MX0zQfMPL3jAN99lI6/YRdK2RPsUuKbHRsuszVPXEsfZ
	a9jYxjoQI8+zpgUUyFJYGcjI7R5QROlhd4/xyLtYr129N6rmc99v5UitklD4OHLmElCs/3sA3havr
	k6VcFMDsm4Tduupae9V4GbGNhrbcsejnDMxRpmnKKyttAce7LgYdZkz1TF18xek0raB8mipmV8DHq
	1EnLMEEg==;
Received: from sslproxy03.your-server.de ([88.198.220.132])
	by www522.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1qH9Eb-0003s3-1g; Wed, 05 Jul 2023 22:36:21 +0200
Received: from [80.88.20.1] (helo=localhost)
	by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1qH9Ea-0001Sb-EV; Wed, 05 Jul 2023 22:36:20 +0200
Mime-Version: 1.0
Date: Wed, 05 Jul 2023 20:36:19 +0000
Subject: Re: [PATCH v1 1/2] arm64: dts: rockchip: Disable HS400 for eMMC on
 ROCK Pi 4
Cc: <kernel@collabora.com>, "Akash Gajjar" <Akash_Gajjar@mentor.com>, "Conor
 Dooley" <conor+dt@kernel.org>, "FUKAUMI Naoki" <naoki@radxa.com>, "Heiko
 Stuebner" <heiko@sntech.de>, "Jagan Teki" <jagan@amarulasolutions.com>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Pragnesh Patel"
 <Pragnesh_Patel@mentor.com>, "Rob Herring" <robh+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
From: "Folker Schwesinger" <dev@folker-schwesinger.de>
To: "Christopher Obbard" <chris.obbard@collabora.com>,
 <linux-rockchip@lists.infradead.org>
Message-Id: <CTUIWUIPVCMZ.17974ZYUS1D93@homedev>
X-Mailer: aerc 0.15.2-76-g69094e332779
References: <20230705144255.115299-1-chris.obbard@collabora.com>
 <20230705144255.115299-2-chris.obbard@collabora.com>
In-Reply-To: <20230705144255.115299-2-chris.obbard@collabora.com>
X-Authenticated-Sender: dev@folker-schwesinger.de
X-Virus-Scanned: Clear (ClamAV 0.103.8/26960/Wed Jul  5 09:29:05 2023)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_133622_641316_D1B68E7E 
X-CRM114-Status: GOOD (  17.00  )
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

On Wed Jul 5, 2023 at 4:42 PM CEST, Christopher Obbard wrote:
> There is some instablity with some eMMC modules on ROCK Pi 4 SBCs running
> in HS400 mode. This ends up resulting in some block errors after a while
> or after a "heavy" operation utilising the eMMC (e.g. resizing a
> filesystem). An example of these errors is as follows:
>
>     [  289.171014] mmc1: running CQE recovery
>     [  290.048972] mmc1: running CQE recovery
>     [  290.054834] mmc1: running CQE recovery
>     [  290.060817] mmc1: running CQE recovery
>     [  290.061337] blk_update_request: I/O error, dev mmcblk1, sector 1411072 op 0x1:(WRITE) flags 0x800 phys_seg 36 prio class 0
>     [  290.061370] EXT4-fs warning (device mmcblk1p1): ext4_end_bio:348: I/O error 10 writing to inode 29547 starting block 176466)
>     [  290.061484] Buffer I/O error on device mmcblk1p1, logical block 172288
>     [  290.061531] Buffer I/O error on device mmcblk1p1, logical block 172289
>     [  290.061551] Buffer I/O error on device mmcblk1p1, logical block 172290
>     [  290.061574] Buffer I/O error on device mmcblk1p1, logical block 172291
>     [  290.061592] Buffer I/O error on device mmcblk1p1, logical block 172292
>     [  290.061615] Buffer I/O error on device mmcblk1p1, logical block 172293
>     [  290.061632] Buffer I/O error on device mmcblk1p1, logical block 172294
>     [  290.061654] Buffer I/O error on device mmcblk1p1, logical block 172295
>     [  290.061673] Buffer I/O error on device mmcblk1p1, logical block 172296
>     [  290.061695] Buffer I/O error on device mmcblk1p1, logical block 172297
>
> Disabling the Command Queue seems to stop the CQE recovery from running,
> but doesn't seem to improve the I/O errors. Until this can be investigated
> further, disable HS400 mode on the ROCK Pi 4 SBCs to at least stop I/O
> errors from occurring.
>
> While we are here, set the eMMC maximum clock frequency to 1.5MHz to
> follow the ROCK 4C+.
>
> Fixes: 1b5715c602fd ("arm64: dts: rockchip: add ROCK Pi 4 DTS support")
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> ---
>
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> index 907071d4fe80..95efee311ece 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> @@ -645,9 +645,9 @@ &saradc {
>  };
>  
>  &sdhci {
> +	max-frequency = <150000000>;
>  	bus-width = <8>;
> -	mmc-hs400-1_8v;
> -	mmc-hs400-enhanced-strobe;
> +	mmc-hs200-1_8v;
>  	non-removable;
>  	status = "okay";
>  };

Works as advertised on a RockPi 4b v1.3 with kernel 6.1.37.

Tested-By: Folker Schwesinger <dev@folker-schwesinger.de>

Folker

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
