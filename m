Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF8A6C5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 21:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNGM4Xt42huE49XrDae2f2RQbYXOBCCSYr8hG/+5UDY=; b=nqqMVv3GyQiAdd
	cDtDc/3E5btKmuFnk8kRyRHtEqFhLwhYHmaAilzuiBuy5k5kedYNL/6qbaAGv3uOIN5AelNjsLJYZ
	LZD7UhYSXPeRn86niJ5UP+0oCy3UtE4CmQ7y24zkFXZUY6ElcN25yXR95qTqjQ3/OVf9G3mw8/oCw
	EKJ4knuvIFJOdGgoLuyw3BOM4UPm5datikfTzXMUFjDG2jBRtxhvJiH0q/3zLRxFeR+GQB8QDx0Cb
	q7hc08QlIXDNjaYaBpt+5LglI5R0MHCvpI298RTrelrmKpR6dZB8ZHLmjhSVBYfWnVjEsIrwYI7/B
	BznxPjqWT9p5iABbz2Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sih4Q-00000008m0k-3fBx;
	Mon, 26 Aug 2024 21:16:14 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sih3Z-00000008lkE-1F4W;
	Mon, 26 Aug 2024 21:15:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=hEJqLkmZIVJ3wjtshHhvyIvFr1RorWiDAtkC1KcSIh4=; b=kfiXjXT7BgYlgCdzvsI7pG4hFF
	LSRToOaL3SNqqNCAm0xxpMv3oRA8o0n/b3++Zy5YS1rSPCZNx2DsuavOK//MpHqxFPlDYV3iMIbWz
	MygI8lERhOP7onOTWS8tBQtqCgLGS4XaoGz5lGpxUI0wXGdrymSxH6D9SjJgOwYhgq1TOM/EhAH0v
	uWqbY4A1S+NZ5x/UlI1lndqhD6QsfCKb1dNIwyHlPgIIUMt5kxRfr9A6vttnATsOHiGC8Dt9GhCBz
	Me7Hb4LOeuhpk/NZmriArgwdGMA6gVSu86jS9z4cjsW9/TWnBIfU5wgh+D7mv/q7uHGj60Pjs2qwJ
	bqHTY2ug==;
Received: from ohm.aurel32.net ([2001:bc8:30d7:111::2] helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1sih3C-005vE0-1j;
	Mon, 26 Aug 2024 23:14:58 +0200
Date: Mon, 26 Aug 2024 23:14:58 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dongjin Kim <tobetter@gmail.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: Correct vendor prefix for
 Hardkernel ODROID-M1
Message-ID: <ZszwUp4UfgPSiIkl@aurel32.net>
Mail-Followup-To: Jonas Karlman <jonas@kwiboo.se>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dongjin Kim <tobetter@gmail.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240826205538.1066103-1-jonas@kwiboo.se>
 <20240826205538.1066103-3-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240826205538.1066103-3-jonas@kwiboo.se>
User-Agent: Mutt/2.2.13 (2024-03-09)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_141521_352429_1EC24287 
X-CRM114-Status: GOOD (  15.57  )
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

On 2024-08-26 20:55, Jonas Karlman wrote:
> The vendor prefix for Hardkernel ODROID-M1 is incorrectly listed as
> rockchip. Use the proper hardkernel vendor prefix for this board.
> 
> Fixes: fd3583267703 ("arm64: dts: rockchip: Add Hardkernel ODROID-M1 board")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> index a337f547caf5..9a122f67a6c4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> @@ -13,7 +13,7 @@
>  
>  / {
>  	model = "Hardkernel ODROID-M1";
> -	compatible = "rockchip,rk3568-odroid-m1", "rockchip,rk3568";
> +	compatible = "hardkernel,rk3568-odroid-m1", "rockchip,rk3568";
>  
>  	aliases {
>  		ethernet0 = &gmac0;

Ditto, thanks for the fix.

Reviewed: Aurelien Jarno <aurelien@aurel32.net>

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                     http://aurel32.net

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
