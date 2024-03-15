Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71660C54E69
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 08:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3qjji1QgkHgFQGph5RYNU7l4MlQSoJzrgkyOX1HcEcg=; b=4PVerEPrGOTkN/CifiRM70FYLG
	vph/rsWROyyys/5NSSDxu0vpNCUEjnCVH6+pJLfVXEToreaDbKY44AT/QNwiiaamT2SRbB5xTVfi+
	9eRCSTJXbTeMYAs9J9iknX6qTlhcikZWv0SUcdjDTu57ZYvFr0G/GE/ff3G1Thp/+m+hfzUayV7tU
	X5hDJR4ITwqFxEszKSaxaXWmYLPTF1jV39NsSsQXtqesQFXdkczhovqMw8p+obI9f+Vu7s92da2gI
	44rr3EJFHWnc36SPwqmo1ouvNCwebb2Aip3CYJqjC3qo0OyUNk75+f24g+Qu/hmQZX65bSra0dtC1
	u/sm8y/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl3Mz-0000000HEir-3avf;
	Fri, 15 Mar 2024 08:56:53 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl3Mv-0000000HEhO-3H6z;
	Fri, 15 Mar 2024 08:56:51 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1710493005;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6kUz6qpyy9cdZkFMKb4gBD1woiTAQDRac1rAs4MrKdg=;
	b=coxq74mW/0rF9Q0Rb/Z800rMexLRbjJb9WGZ6alpM9dg172em/APKVn1/PIYdkysuh9srS
	ysoors/+/3TRH2kQXs7ndD0JpkITwRzrtFc+FnA+AIdwNjxbeNtewEzyzmLlRwaL0D1gxX
	IP1lkYFgq6xsJoASbM0iAm2nms5C780y7S5OLogioumm+X3lBRpvPIi3leDKTmguAsvalV
	1nwAYeDCFvqD5vIf3/0k4O9AUcpA3R1qB+Q6qy0oRKokgXbwnw1CN/AjJFYJkEMfcOPGp5
	JS5NPfigVcy83NZvHsgNjFN9rUB8mtt1bZ/tP9x3h1A+yaZQQ8Piond9FXEaDg==
Date: Fri, 15 Mar 2024 09:56:44 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Lorenz Brun
 <lorenz@brun.one>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add &gmac2phy in rk3328-rock64
In-Reply-To: <20240315084018.2200581-1-himanshu.bhavani@siliconsignals.io>
References: <20240315084018.2200581-1-himanshu.bhavani@siliconsignals.io>
Message-ID: <96a53f8560b3563328eaf7b9d6f63d87@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_015650_314522_1237D111 
X-CRM114-Status: GOOD (  11.68  )
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

Hello Himanshu,

On 2024-03-15 09:40, Himanshu Bhavani wrote:
> Add '&gmac2phy' node to enable ethernet1 on rk3328-rock64
> 
> Signed-off-by: Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> index 229fe9da9c2d..cb919367db54 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> @@ -12,6 +12,7 @@ / {
> 
>  	aliases {
>  		ethernet0 = &gmac2io;
> +		ethernet1 = &gmac2phy;
>  		mmc0 = &sdmmc;
>  		mmc1 = &emmc;
>  	};
> @@ -392,3 +393,7 @@ &vop {
>  &vop_mmu {
>  	status = "okay";
>  };
> +
> +&gmac2phy {
> +	staus = "okay";
> +};

Unfortunately, this isn't an acceptable change to the Rock64 dts file.
Yes, there's the second built-in Ethernet interface in the RK3328 SoC,
but the Rock64 layout doesn't expose it as a separate physical network
interface, i.e. it isn't available as a port.

Such a change would be fine to be applied to the dts by hand, by someone
who actually adds a second physical network port to their Rock64.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
