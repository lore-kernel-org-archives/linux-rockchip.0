Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29480C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ySYGzOfeRKN48lZziPbsrF2SnE3nRJhy10voJKPyR4E=; b=t4rk9TDb2sEZ7RpOJMj/ZJCK4K
	jo8i0+bWI8dFXqjbxOFtBY8g+S+bCzMrgOgPQsuu0PFBkCvAiYEdp5wXM3sxIm8jUXWD+q4VcqhMi
	twaQBOsVy6+LZkuKTW34pMk/zTi/30jCddDXGdaXh/rfEO9eBGOiBwh1RKeFVyC04WeZIaNI2wA2G
	7dE9Z7gAFloOiE5judmUOqRb9rZn0j+Zz4esTQczRI6JlurDnBMZuChsne8Hxa/VCh0NIkQM4ukVh
	qdKhOdGZG42NAFJkpkwg5ysAldC6c8mbU3p0zxcxhGHLBGzEgaEa99uTQtpidVKpSQI+7mxNN+aTk
	og3mHAAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCth-00000006DoF-2uxD;
	Tue, 26 Mar 2024 19:55:49 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCtd-00000006Dn4-3ka4;
	Tue, 26 Mar 2024 19:55:47 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711482942;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aK+zeuu0YN/Z0DLh3IdinoCfvuQvS+27+MOgeO9A3HQ=;
	b=Wt6eF98SDxyLQr6Okc4sm2GV6BQH6/hFW+ovHSF7ID+oEYB+hSbXCUwv8qlAudRJWUJDNE
	6GR41G9zyKwulpPei60k3pZQnzVMT3BBtHyVOlG6QuGEZ5ApyGFSmrYREdTdK8wIT2Je1T
	i8u0oNVqFaIO3kSocywO16HTO/Gvc16y04SoyEqSlGA70SbHFTc2HwirwTqwvfBHBacHPk
	kcIjW2tzvbT+b6BlDMELsbPOy1KYJJHt1HVL0+tvLOiMMB0+JV+qGBHgkGidlEjdD7UuIZ
	EQoq34KPbf4Qblp/MsrgH2fejtnuN+/ZRHVa3fsp/cy4MmNfpB+Yr5evKbCtpg==
Date: Tue, 26 Mar 2024 20:55:40 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Conor Dooley <conor@kernel.org>
Cc: dev@folker-schwesinger.de, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Chris Ruehl
 <chris.ruehl@gtsys.com.hk>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Christopher Obbard <chris.obbard@collabora.com>,
 Alban Browaeys <alban.browaeys@gmail.com>, Doug Anderson
 <dianders@chromium.org>, Brian Norris <briannorris@chromium.org>, Jensen
 Huang <jensenhuang@friendlyarm.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] phy: rockchip: emmc: Enable pulldown for strobe line
In-Reply-To: <20240326-tactical-onlooker-3df8d2352dc2@spud>
References: <20240326-rk-default-enable-strobe-pulldown-v1-0-f410c71605c0@folker-schwesinger.de>
 <20240326-rk-default-enable-strobe-pulldown-v1-1-f410c71605c0@folker-schwesinger.de>
 <20240326-tactical-onlooker-3df8d2352dc2@spud>
Message-ID: <436f78a981ecba441a0636912ddd1cf2@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_125546_374330_20FF6024 
X-CRM114-Status: GOOD (  26.62  )
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

Hello Conor and Folker,

On 2024-03-26 20:46, Conor Dooley wrote:
> On Tue, Mar 26, 2024 at 07:54:35PM +0100, Folker Schwesinger via B4 
> Relay wrote:
>> From: Folker Schwesinger <dev@folker-schwesinger.de>
>> 
>> Restore the behavior of the Rockchip kernel that undconditionally
>> enables the internal strobe pulldown.
> 
> What do you mean "restore the behaviour of the rockchip kernel"? Did
> mainline behave the same as the rockchip kernel previously? If not,
> using "restore" here is misleading. "Unconditionally" is also 
> incorrect,
> because you have a property that disables it.
> 
>> As the DT property rockchip,enable-strobe-pulldown is obsolete now,
>> replace it with a property to disable the internal pulldown.
>> 
>> This fixes I/O errors observed on various Rock Pi 4 and NanoPi4 series
>> boards with some eMMC modules. Other boards may also be affected.
>> 
>> An example of these errors is as follows:
>> 
>> [  290.060817] mmc1: running CQE recovery
>> [  290.061337] blk_update_request: I/O error, dev mmcblk1, sector 
>> 1411072 op 0x1:(WRITE) flags 0x800 phys_seg 36 prio class 0
>> [  290.061370] EXT4-fs warning (device mmcblk1p1): ext4_end_bio:348: 
>> I/O error 10 writing to inode 29547 starting block 176466)
>> [  290.061484] Buffer I/O error on device mmcblk1p1, logical block 
>> 172288
>> 
>> Fixes: 8b5c2b45b8f0 ("phy: rockchip: set pulldown for strobe line in 
>> dts")
>> Signed-off-by: Folker Schwesinger <dev@folker-schwesinger.de>
>> ---
>>  drivers/phy/rockchip/phy-rockchip-emmc.c | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c 
>> b/drivers/phy/rockchip/phy-rockchip-emmc.c
>> index 20023f6eb994..6e637f3e1b19 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-emmc.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
>> @@ -376,14 +376,14 @@ static int rockchip_emmc_phy_probe(struct 
>> platform_device *pdev)
>>  	rk_phy->reg_offset = reg_offset;
>>  	rk_phy->reg_base = grf;
>>  	rk_phy->drive_impedance = PHYCTRL_DR_50OHM;
>> -	rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_DISABLE;
>> +	rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_ENABLE;
>>  	rk_phy->output_tapdelay_select = PHYCTRL_OTAPDLYSEL_DEFAULT;
>> 
>>  	if (!of_property_read_u32(dev->of_node, "drive-impedance-ohm", 
>> &val))
>>  		rk_phy->drive_impedance = convert_drive_impedance_ohm(pdev, val);
>> 
>> -	if (of_property_read_bool(dev->of_node, 
>> "rockchip,enable-strobe-pulldown"))
>> -		rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_ENABLE;
>> +	if (of_property_read_bool(dev->of_node, 
>> "rockchip,disable-strobe-pulldown"))
>> +		rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_DISABLE;
> 
> Unfortunately you cannot do this.
> Previously no property at all meant disabled and a property was 
> required
> to enable it. With this change the absence of a property means that it
> will be enabled.
> An old devicetree is that wanted this to be disabled would have no
> property and will now end up with it enabled. This is an ABI break and 
> is
> clearly not backwards compatible, that's a NAK unless it is 
> demonstrable
> that noone actually wants to disable it at all.

Moreover, as I already explained some time ago, [1] some boards and
devices are unfortunately miswired, and we don't want to enable the
DATA STROBE pull-down on such boards.

[1] 
https://lore.kernel.org/linux-rockchip/ca5b7cad01f645c7c559ab26a8db8085@manjaro.org/#t

> If this patch fixes a problem on a board that you have, I would suggest
> that you add the property to enable it, as the binding tells you to.
> 
> Thanks,
> Conor.
> 
>>  	if (!of_property_read_u32(dev->of_node, 
>> "rockchip,output-tapdelay-select", &val)) {
>>  		if (val <= PHYCTRL_OTAPDLYSEL_MAXVALUE)
>> 
>> --
>> 2.44.0
>> 
>> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
