Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06DA8C48297
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 18:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWCf9dlV0U1edidMrDqWt/b0XfeCJzFfBNf0pZ1Awzk=; b=NT2Vcr06g2rzr2
	UQOMLY0UZmBHxT686l9kxNfnHIu8c0Nj78nuKmhOBoFzeRxbyaPPfTSHHQq+3qPW6aSjsSoLg4+Dk
	oNyz5IOrIv6OldjApTEry0Qxn8C1vuDlKPqmPyro8zB1Yd2jvMEKPK3lk0Z0GlClz8OKRA0e4YiH7
	z5e+XtrCqd0TK9lWgw1dM1X/6atEKpBQKS22aWFIZpAUEnqDeMVkEFSUuod+HhrS2Yp7MX7vBdxTF
	5YSJmz1d4rNPhhH3SKmyGhXNMjHI7T8uS4iEP/XMwfZlG6TTvSHjnac3k2gYQ3e6DhDCY0dUDyv1v
	PYcZRnw+f8iCMPb4RdRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbA5-00000006dNO-2IIa;
	Mon, 12 Feb 2024 18:36:13 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbA1-00000006dME-1ye4;
	Mon, 12 Feb 2024 18:36:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707762965;
	bh=T6klo5znd49M931UrjN16DNw3T/R1nxaLTG4aDB8gV4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ViEM1ASSooz6/5l6YhYrLglA/e9pS7yzXmNL899kVcI6WvbWsO2YTMBU5RHhM6vHo
	 sDSDiOBEF+9A1U24pV7d6Nv30985UXdCSXoUx5+H/Yla0qVzWC/OPoMd1/J1WEo8Yx
	 jmUOfgyRlk/a6nLF26s8jpyQzl1e1G/x28X307zQFTPvDVV34WxMGM13V+fWNLfVSb
	 0TeJqUoxnUjURSy+5zYdcIr/3bnPOBiV5ScgmQBFcZuWX41VxhhfIaNk92UNZOqwtW
	 WDWgb3nhFoZGfvSMXy3nOcP+/xfI3vNm+zh1oG6gDiy3gbuLeXCLjdmy6iCdPmJ6nv
	 FtcJtDTDDWgYQ==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 277193781FCE;
	Mon, 12 Feb 2024 18:36:04 +0000 (UTC)
Message-ID: <4efca2ec-b078-4421-8956-e3add15d8f62@collabora.com>
Date: Mon, 12 Feb 2024 20:36:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: rockchip: Add Samsung HDMI/eDP Combo PHY
 driver
Content-Language: en-US
To: Luis de Arquer <ldearquer@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Algea Cao <algea.cao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kernel@collabora.com
References: <20240205-phy-hdptx-v2-0-a7150814c047@collabora.com>
 <20240205-phy-hdptx-v2-2-a7150814c047@collabora.com>
 <61af7b121b23fe8ed06df5348692f862b9b125bf.camel@gmail.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <61af7b121b23fe8ed06df5348692f862b9b125bf.camel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_103609_831261_AE82643D 
X-CRM114-Status: GOOD (  14.59  )
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

Hi Luis,

On 2/12/24 18:44, Luis de Arquer wrote:
> Hi Cristian,
> 
> On Mon, 2024-02-05 at 13:24 +0200, Cristian Ciocaltea wrote:
>> +
>> +static bool hdptx_phy_clk_pll_calc(unsigned int data_rate,
>> +				   struct ropll_config *cfg)
>> +{
>> +	const unsigned int fout = data_rate / 2, fref = 24000;
>> +	unsigned long k = 0, lc, k_sub, lc_sub;
>> +	unsigned int fvco, sdc;
>> +	u32 mdiv, sdiv, n = 8;
>> +
>> +	for (sdiv = 16; sdiv >= 1; sdiv--) {
>> +		if (sdiv % 2 && sdiv != 1)
>> +			continue;
>> +
>> +		fvco = fout * sdiv;
>> +
>> +		if (fvco < 2000000 || fvco > 4000000)
>> +			continue;
>> +
> 
> What about adding a check to data_rate, maybe like
> 
> if (fout > 0x0FFFFFFF)
> 	return false;
> 
> or similar, before the for loop, to keep the multiplication safe?
> 
> Right now it would be redundant, given that data_rate was, at some
> point, encoded in 28 bits within bus_width. But can prevent future pain,
> especially after changing to phy_configure_opts_hdmi.

Indeed, it makes sense to do the check, thanks for the heads up!
I was almost ready to submit v3, so this arrived just in time. :-)

Regards,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
