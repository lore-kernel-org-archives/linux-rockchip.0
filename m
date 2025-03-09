Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1A94C28B28
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 18:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPBiPBqayLmmlzgBYma9EASewv1fMEK9HGBNprbsJjo=; b=i3dOdLIiV9UT2R
	UbAS/hEo8HpmVZkurT2DzdE1k7/WZXbVvlP1AVLQXrZ0PZfUziY/fqQnXZMFbMV+Jpc8g3WBw7oDf
	XFLtBb0GrvXiM0j2x6NLwMs3TTMp8Ma5H3QPOgc/xY/0T3bZtjXs6M6hJ/oFWIhDszNmFg/lFaiO3
	Bs4/cAgKl2ZOAPkKA9CldTqbYfVJpN2uLLrGJr0F8JBsRpdfcxPYJaYNRiUB/aVpBMRWdlZSmOZYH
	1ZpAQV3XYDb1H9vj9Op2s77Ntlh+pgM0ptm+HjcfODBe5smeFNDv8HYUzU+ZNNePD7b/XOiym0Zew
	YUlNNMNOraUxJAsiUabA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trLqz-000000011K7-29y8;
	Sun, 09 Mar 2025 18:58:25 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trLJL-00000000xuw-3ucR
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Mar 2025 18:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741544616;
 bh=QvnfGlC40UQmnKcl5OF0pRINHPgf7NC49WGBsWl3pAM=;
 b=mUjSMxiqPdCTwLtfP9Tq059DBC1ERQ2WdVsAe+EbV5rkAesqFr5wpZtr7MbBeHCENyWQ2yGJ5
 xG1U5li8eeDHRVxeDrFd0uYV5lreP+vZiScM38oLulvXlD4/XxOGnVSk0xicfsc1Ut2allNl1zN
 S5x0dKeT1SsRE+YZVeJPbNAJtUcxf5uauha/rapyT2PvklyziKPlMEVXnLw1/NwTuI5FBMuF51g
 b2ajs2uzlpD8nn9hRqJVnwGYgDAqelpiH++X6LO6vlyNlJXJaF3jW+Aiq5fe0bEqCTy/oaxESNH
 s6rVjFkqHn9drmHaXjTmnihwWssoQrsAiHRV/P5dDngg==
X-Forward-Email-ID: 67cddc968d04fc44bbac47b6
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <0b679284-d427-4229-b008-e3e466f66a0f@kwiboo.se>
Date: Sun, 9 Mar 2025 19:23:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Add I2C controllers for RK3528
To: Yao Zi <ziyao@disroot.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chukun Pan <amadeus@jmu.edu.cn>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250309070603.35254-1-ziyao@disroot.org>
 <20250309070603.35254-3-ziyao@disroot.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250309070603.35254-3-ziyao@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_112340_098483_DCD6EF19 
X-CRM114-Status: GOOD (  10.34  )
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

Hi Yao Zi,

On 2025-03-09 08:06, Yao Zi wrote:
> Describe I2C controllers shipped by RK3528 in devicetree.
> 
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 104 +++++++++++++++++++++++
>  1 file changed, 104 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> index 04ca2e2b3e9b..860b6057e5c2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> @@ -19,6 +19,14 @@ / {
>  	#size-cells = <2>;
>  
>  	aliases {
> +		i2c0 = &i2c0;
> +		i2c1 = &i2c1;
> +		i2c2 = &i2c2;
> +		i2c3 = &i2c3;
> +		i2c4 = &i2c4;
> +		i2c5 = &i2c5;
> +		i2c6 = &i2c6;
> +		i2c7 = &i2c7;

nitpick: These should be ordered after the gpioX aliases.

Regards,
Jonas

>  		gpio0 = &gpio0;
>  		gpio1 = &gpio1;
>  		gpio2 = &gpio2;

[snip]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
