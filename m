Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE6D6CD5BA9
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 11:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCcbumwPluG/ngilKoAf1J5d2QfCsbd7w5+4ZkYaYMA=; b=z9onvL7SXib4pO
	9Gn+f/hKcvoNQfytAtO2HWjW+N79cIIRtxdUnVKGp5R445+h6ejyKkg2lXVjoIAKp9UFhd4aVIbSm
	H/s2XqrTbK2SS7IgXbUD8y9gVwxkh4cZieYUmweGUKo1m7cdDfZcCBaXJoRhr6ZWshymmae4Sjkh+
	rszIa28ah/AgT8xp4ZjJQIIPbsgrOtc+M4jaA6ClpQRqVYc6kvB+/jLLxOCSn4DQl34pyDWRttzEO
	Eqh6pWktkCW7+1pxY+FZQP2EEqbD2lArttCqDzry+BTof4cLUo8lS/10WooBaRqcAb+CVfJ29hspl
	ZgRC0UizMr5GfHK6/1+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smATj-0000000861a-1SGW;
	Thu, 05 Sep 2024 11:16:43 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smASk-000000085vF-2BU4;
	Thu, 05 Sep 2024 11:15:44 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 7DB03789F0;
	Thu,  5 Sep 2024 19:15:37 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 7DB03789F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725534938;
	bh=JOGaZj39lzFUsnVmb+9NOSEKsjbRLstbQxPE3JMJV+0=;
	h=Date:Subject:To:References:From:Cc:In-Reply-To:From;
	b=VxUTqFwxyboQDUWWIUMv5fOWPIfy9DxQC8xpIlawOx6NZOtz2frHITCp6UXGLmDrA
	 te+s86iIiNUkqjG8TFna6ln51ncTWioR8I7Oygw8qbudwAh/xqdlsg7mQklbv9dqlY
	 d6QeCoVPD/EPmCX3finH+YZpNvlJ38em01XLXql0=
Message-ID: <1e189c70-e677-453d-9e31-6637196c2b5c@classfun.cn>
Date: Thu, 5 Sep 2024 19:17:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
To: Andrew Lunn <andrew@lunn.ch>
References: <20240904111456.87089-1-bigfoot@classfun.cn>
 <20240904111456.87089-4-bigfoot@classfun.cn>
 <6030542f-070d-4d76-9a5a-fbfc6bd433e6@lunn.ch>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <6030542f-070d-4d76-9a5a-fbfc6bd433e6@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_041542_988695_7091BEC7 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
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

On 2024/9/5 01:25, Andrew Lunn wrote:
>> +&gmac1 {
[...]
> This has been discussed a few times. You should be using phy-mode
> rgmii-id.

After I changed phy-mode to rgmii-id, it seemed to work,
but it didn't transmit any data.
Maybe I made a mistake or should I continue to use phy-mode rgmii?

> arch/arm/boot/dts/rockchip/rk3288-phycore-som.dtsi is i think also a
> YT8521SC.

According to commit message and some pictures,
rk3288-phycore-som is using TI DP83867 PHY?

Best regards,
Junhao

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
