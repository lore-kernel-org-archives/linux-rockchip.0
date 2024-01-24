Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15F0AC47422
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 23:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3fVhbtMp4RcDPM0LD6lpVqA+ovaowXRp/5OmkeToY8=; b=YSkDjTEyWNPbEr
	MBHMgkaYDg4Yi8ocjjtivCt3G+Vd85dP4D994lIsFMTrn0PeprdlADH2vKfvcClHZ8ODyPDM8TG69
	cjssg7eSA0wk9Ih2mNxyN3dTSVz11Ku+pZ/HnmPMnqxzploD/h9LyH1MOANuA3HKdLrQBnTsqz+5j
	WxUQlZIjzGp77URk/axnggO/AB56CTQWUdhlbLU8AtYq6I7I7fuozMEnIuVKcZ50xSPjmcliyqtRv
	1BBcuim94e2rGb5VAEmS7N/CkNZs3sIHCb2bQmRnjzxPYeHTWYyequ6kcQ5IQaB0svneW4v8+Zsqu
	FEIU897PVFOqtJ92TJKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSmMU-005U40-0N;
	Wed, 24 Jan 2024 23:08:50 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSmMP-005U2A-2y;
	Wed, 24 Jan 2024 23:08:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706137721;
	bh=r+BNyXa+tutNidaJAQ5GCFSdQ6jcMos2xdU30CYj2LI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hPqE9lLG10rs/jdZyuob5naR3pMI7RbD2QGXP+V7c2w+OP5fjdBNWNbPT4RLb7+ie
	 UHYfz7ZtBoO8rccFOzK7OZAWanuOBoCIizRGW7xgIrNvpxr2MoyzvnxDH40oIPUxkH
	 NJMWolIxBsIOu4yX3FTeu4gH5mcpjCWBV1wzuPbs61QoXfA0dD9gGQ1zC6XJ5gq30j
	 xUm6OFC+gGdHSybjMm5otttZJI04WG/rCQk+i+HGoND08/VRfco9g4+eSuP+S7gVSV
	 ZsSnxqGx9GWOmugGQrcfPPaf+dCRo4wMmG+8yEtScE0w8f2Ygwb5m1qzls+Yu7/Y+M
	 KlWo0/Dz1x3gw==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id A4A5537811F1;
	Wed, 24 Jan 2024 23:08:39 +0000 (UTC)
Message-ID: <7a3020f1-9819-4439-9f62-1a77c1eb9cdf@collabora.com>
Date: Thu, 25 Jan 2024 01:08:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] phy: rockchip: Add Samsung HDMI/DP Combo PHY driver
Content-Language: en-US
To: Jonas Karlman <jonas@kwiboo.se>, Andy Yan <andy.yan@rock-chips.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Algea Cao <algea.cao@rock-chips.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Sandor Yu <Sandor.yu@nxp.com>,
 Maxime Ripard <mripard@kernel.org>
References: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
 <20240119193806.1030214-4-cristian.ciocaltea@collabora.com>
 <20240122121409.GW4700@pengutronix.de>
 <00c749f7-3eb9-4bd1-a057-43a692b77d68@collabora.com>
 <e1c56975-6a55-4b75-a447-dd2d0eec62e2@rock-chips.com>
 <b0a3da6d-84e2-44c2-9adf-421e306a2acf@rock-chips.com>
 <ba598f02-5f74-4cb8-97e3-c9369e6db0d8@kwiboo.se>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <ba598f02-5f74-4cb8-97e3-c9369e6db0d8@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_150846_145684_FB86910D 
X-CRM114-Status: GOOD (  11.19  )
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

On 1/24/24 11:16, Jonas Karlman wrote:
> On 2024-01-24 08:30, Andy Yan wrote:
>> Hi Cristian:
>>
>> On 1/24/24 10:42, Andy Yan wrote:
>>> Hi Cristian:
>>>
>>> On 1/24/24 08:58, Cristian Ciocaltea wrote:
>>>> On 1/22/24 14:14, Sascha Hauer wrote:
>>>>> On Fri, Jan 19, 2024 at 09:38:03PM +0200, Cristian Ciocaltea wrote:
>>>>>> Add driver for the Rockchip HDMI/eDP TX Combo PHY found on RK3588 SoC.

[...]

>>
>> How about add a PHY_MODE_HDMI to enum phy_mode, and pass this custom data by extend phy_configure_opts
>> or the submode of phy_set_mode_ext ?
> 
> Please see the patch "phy: Add HDMI configuration options" [1] from
> Sandor Yu. Also the series "drm/connector: Create HDMI Connector
> infrastructure" [2] from Maxime Ripard may be of interest.

Oh, nice, thanks for the heads up!

Regards,
Cristian

> [1] https://lore.kernel.org/all/19070c125268cfe900021dea6e7e8379b89c630e.1704785836.git.Sandor.yu@nxp.com/
> [2] https://lore.kernel.org/dri-devel/20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org/
> 
> Regards,
> Jonas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
