Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E60FC3ABC5
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 May 2025 11:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4N6OP0lEFLz3T8VgyQvTMDR5bYoC1fHhddyYHp/d5I=; b=XXd1OhXAfwqF2c
	u28bAtzvI46QIbGiTzfsWEwjAMzMBMpSoSkSXpvJ0shrSf6fFJ00IXhx0ddGY6tFDi5z58aOkvXmP
	2xLkbLz7XMrOWcj1ZIvGtM6RMFN6uP/Wc3sk0SykahbPcAYc5qsnrM7qPJJYRRQg1rfXYb8UB5Caz
	FomEVR9W7swY9juaEdVvJfn8q+rWqcpn7edDvcmSvPzTheQRr9TO645nrnntBOXqTGAJoIXHQ1yo+
	pwL+mzB6Nb0Ig/8GGziZ21gt1Y/Hz1C7xZ9TiEEiAj7f0I3PUxczZ45HXmjpkFHnX/ikerMfvCPGY
	01FoCHY95NOaSywyKymQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uE4ZI-000000078Uw-2cFB;
	Sun, 11 May 2025 11:10:04 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uE4Uj-000000078Al-23g0
	for linux-rockchip@lists.infradead.org;
	Sun, 11 May 2025 11:05:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1746961518;
 bh=ek6GBAYJeDRPIZjH28p/Q9SJdCsotpdSU7d2WoGn9tU=;
 b=wbkbLUpo1GidN1k282ZHOzF6GA1vqrv1YDsw9QPz62rKR3bQnk1bJUzUoj8DDmycT/2b2cPtk
 1NeSBDMg5Nr+nYbndJdwfcRzRVdsmCgV86SdAVQM1o+kwwIS67lVo0jqoseO/DT/AfTE0Iewoum
 Ju2UEip316A17uK1GJucX3NIK5Ea526z4fa0sYjseaomAzaCI/6ZP78ZkcXNTMySnC/VkKHh6e8
 R8PP8gm41bIuyXHQVfkGsSPMtfKFK84kNZxHHFQ6N9UAMQCEDhijMMW5Rz9sBINgURtGOHmxuLv
 yzNZ/DS9gvB2Nf5ajVpyXPdYqrDzcXrBivmsk1TIAyBQ==
X-Forward-Email-ID: 682084688a98caeef2469b46
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.0.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <4a4c0295-d8f1-4d8a-92e4-34a69b42c728@kwiboo.se>
Date: Sun, 11 May 2025 13:05:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: move rk3528 i2c+uart aliases to
 board files
To: Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250510220106.2108414-1-heiko@sntech.de>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250510220106.2108414-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250511_040521_788427_8FCE170E 
X-CRM114-Status: GOOD (  17.58  )
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

Hi Heiko,

On 2025-05-11 00:01, Heiko Stuebner wrote:
> Even though they will be the same for all boards, i2c and uart aliases
> are supposed to live in the individual board files, to not create
> aliases for disabled nodes.

This sounds like something tooling should be able to handle, e.g. U-Boot
use fdtgrep to filter out nodes (and aliases) for the FDT used by early
boot phases.

Maybe DTC just need a feature to remove aliases to disabled nodes?

Also how should overlays handle aliases? Are all overlays suppose to add
aliases for the add-on devices they may enable?

And how should we handle boards with e.g. a 40-pin header where pins
could be muxed to multiple functions. Is it the overlays responsibility
to remove and replace aliases? E.g. if pins can mux between i2c1 and
uart3, and i2c1 was enabled by default.

Regards,
Jonas

> 
> So move the newly added aliases for rk3528 over to the Radxa E20C board,
> which is the only rk3528 board right now.
> 
> Fixes: d3a05f490d04 ("arm64: dts: rockchip: Add I2C controllers for RK3528")
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../boot/dts/rockchip/rk3528-radxa-e20c.dts      |  2 ++
>  arch/arm64/boot/dts/rockchip/rk3528.dtsi         | 16 ----------------
>  2 files changed, 2 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> index 506d54337ece..9f6ccd9dd1f7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> @@ -18,8 +18,10 @@ / {
>  
>  	aliases {
>  		ethernet0 = &gmac1;
> +		i2c1 = &i2c1;
>  		mmc0 = &sdhci;
>  		mmc1 = &sdmmc;
> +		serial0 = &uart0;
>  	};
>  
>  	chosen {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> index cd8ef389ccf3..b2724c969a76 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> @@ -24,22 +24,6 @@ aliases {
>  		gpio2 = &gpio2;
>  		gpio3 = &gpio3;
>  		gpio4 = &gpio4;
> -		i2c0 = &i2c0;
> -		i2c1 = &i2c1;
> -		i2c2 = &i2c2;
> -		i2c3 = &i2c3;
> -		i2c4 = &i2c4;
> -		i2c5 = &i2c5;
> -		i2c6 = &i2c6;
> -		i2c7 = &i2c7;
> -		serial0 = &uart0;
> -		serial1 = &uart1;
> -		serial2 = &uart2;
> -		serial3 = &uart3;
> -		serial4 = &uart4;
> -		serial5 = &uart5;
> -		serial6 = &uart6;
> -		serial7 = &uart7;
>  	};
>  
>  	cpus {


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
