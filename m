Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD852C282DE
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Mar 2025 00:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2xS9GamZwuwzJhHHVRvC5dMZhOhzEgHAXYTQrQsp8Q=; b=RnnFin9LjKU/W0
	qIYT/md6pF2any242ML2ni0Qvl0H3W/diandqANv2yPhqrYmoGBDCZC4daWtci0gLuq5aXv84Ms1o
	qLj6b5O2bbKuQLgyVANxqRGy+OjCBQx9lTN7xBDIkfEMFHIOiUBbLBVmeUQt65Mp/tse9uzpSK563
	5YStpFTVzRlsPkAxkef42vJg8OTzO9PhLGUdsCo+SB92xazj+QgC/81pvHDT6BEkCWPT4Oo7PdFfL
	Wy4Z80wgrnAaehtKlDm+zqt+4nqLjWrtj7FCl3oLEIkHjsJqG1xFwLmFOT6ZAeYobgAJpdSE96Egv
	uAktKJ5VPVzJXnw1Pm7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trntL-00000004IS2-3o1M;
	Tue, 11 Mar 2025 00:54:43 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trnrg-00000004IJ3-3tmC;
	Tue, 11 Mar 2025 00:53:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=s9iY3SgRKB6srQmwKyQpR70K8gxHWLVabwner/iiHc4=; b=l
	Y4Lb9ns6UjkinEg7ybomWiDQZzqDRaXLmyAIxi88UXcMhDLs7FCIWnM0z7IetRSq
	p0OlbwAsdvLoNf6pltec2XtQYY6jF+SnNdKc6s1uMOs7VME4rJn6lNz2IgMlt2Vt
	Gzd4++czLR1evt7VgmyFF6aw6VGn26hRb/4lrsG7ko=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-123 (Coremail) ; Tue, 11 Mar 2025 08:52:31 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Tue, 11 Mar 2025 08:52:31 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Vinod Koul" <vkoul@kernel.org>
Cc: heiko@sntech.de, kishon@kernel.org, sebastian.reichel@collabora.com,
	yubing.zhang@rock-chips.com, dmitry.baryshkov@linaro.org,
	frank.wang@rock-chips.com, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH] phy: rockchip: usbdp: Check these parameters only
 when the corresponding set flags are set
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <Z86UOmPg/UDSBajZ@vaman>
References: <20250306065952.485809-1-andyshrk@163.com>
 <Z86UOmPg/UDSBajZ@vaman>
X-NTES-SC: AL_Qu2fA/qeu0su5yeabelSyjNW+7xfHKv6+qRChMQvQtsqqTHr9T0KcVtuP1XR3//Ga5IHjaerK57zwsKY57HR
MIME-Version: 1.0
Message-ID: <1379400c.90c.19582b05f74.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: eygvCgCnbINPic9n4zl7AA--.15549W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gwNXmfPgTNCjQAGse
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_175301_347027_D1DF6D0B 
X-CRM114-Status: GOOD (  22.49  )
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


Hi Vinod,

At 2025-03-10 15:26:50, "Vinod Koul" <vkoul@kernel.org> wrote:
>On 06-03-25, 14:59, Andy Yan wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>> 
>> According documentation of phy_configure_opts_dp, at the configure
>> stage, we should only verify/configure the link_rate when set_rate
>> flag is set, the same applies to lanes and voltage.
>> 
>> So we do it as the documentation says, also record the link rate
>> and lanes in phy internal for set_voltate stage.
>
>Whenever you say also, that is a sign that it should be another patch!

This patch is inspired by Dmitry's suggestion for DP/eDP driver which calls phy_configure[0][1]:
the phy driver should skip the values for which the .set_foo isn't set. So we should not set rates and
lanes when we set_voltate, but the rates and lanes are needed for voltage set, this is why I  record 
rates and lanes in this patch.
I can split the record to another patch,  but then this patch will not work correctly itself, 
I'm not sure if this is suitable.


[0]https://patchwork.freedesktop.org/patch/629780/?series=141829&rev=3
[1]https://patchwork.freedesktop.org/patch/638961/?series=145286&rev=1

>
>> 
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>> ---
>> 
>>  drivers/phy/rockchip/phy-rockchip-usbdp.c | 63 +++++++++++------------
>>  1 file changed, 31 insertions(+), 32 deletions(-)
>> 
>> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
>> index c04cf64f8a35..d1bbdf382aa2 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
>> @@ -187,6 +187,8 @@ struct rk_udphy {
>>  	u32 dp_aux_din_sel;
>>  	bool dp_sink_hpd_sel;
>>  	bool dp_sink_hpd_cfg;
>> +	unsigned int link_rate;
>> +	unsigned int lanes;
>>  	u8 bw;
>>  	int id;
>>  
>> @@ -1102,42 +1104,39 @@ static int rk_udphy_dp_phy_power_off(struct phy *phy)
>>  	return 0;
>>  }
>>  
>> -static int rk_udphy_dp_phy_verify_link_rate(unsigned int link_rate)
>> -{
>> -	switch (link_rate) {
>> -	case 1620:
>> -	case 2700:
>> -	case 5400:
>> -	case 8100:
>> -		break;
>> -
>> -	default:
>> -		return -EINVAL;
>> -	}
>> -
>> -	return 0;
>> -}
>> -
>>  static int rk_udphy_dp_phy_verify_config(struct rk_udphy *udphy,
>>  					 struct phy_configure_opts_dp *dp)
>>  {
>> -	int i, ret;
>> +	int i;
>>  
>> -	/* If changing link rate was required, verify it's supported. */
>> -	ret = rk_udphy_dp_phy_verify_link_rate(dp->link_rate);
>> -	if (ret)
>> -		return ret;
>> +	/* Verify link rate. */
>> +	if (dp->set_rate) {
>> +		switch (dp->link_rate) {
>> +		case 1620:
>> +		case 2700:
>> +		case 5400:
>> +		case 8100:
>> +			udphy->link_rate = dp->link_rate;
>> +			break;
>> +
>> +		default:
>> +			return -EINVAL;
>> +		}
>
>why drop helper? Why not set the rate on success?

I drop helper just because the flowing check for lanes and votages don't 
have helper.
The rate is set in rk_udphy_dp_phy_configure.
>
>> +	}
>>  
>>  	/* Verify lane count. */
>> -	switch (dp->lanes) {
>> -	case 1:
>> -	case 2:
>> -	case 4:
>> -		/* valid lane count. */
>> -		break;
>> +	if (dp->set_lanes) {
>> +		switch (dp->lanes) {
>> +		case 1:
>> +		case 2:
>> +		case 4:
>> +			/* valid lane count. */
>> +			udphy->lanes = dp->lanes;
>> +			break;
>>  
>> -	default:
>> -		return -EINVAL;
>> +		default:
>> +			return -EINVAL;
>> +		}
>
>another change where helper would have made this look better


Do you mean we should do it like this:

static int rk_udphy_dp_phy_configure(struct phy *phy,
                                     union phy_configure_opts *opts)
{
        struct rk_udphy *udphy = phy_get_drvdata(phy);
        struct phy_configure_opts_dp *dp = &opts->dp;
        u32 i, val, lane;
        int ret;

       .............
      if (dp->set_rate)
           	ret = rk_udphy_dp_phy_verify_link_rate(dp->link_rate);
     if (dp->set_lanes)
                ret = rk_udphy_dp_phy_verify_link_lanes(dp->lanes);
     if (dp->set_voltates)
               ret = rk_udphy_dp_phy_verify_link_voltate(dp->voltate);


Add helper for each of them ?
      


>
>>  	}
>>  
>>  	/*
>> @@ -1146,7 +1145,7 @@ static int rk_udphy_dp_phy_verify_config(struct rk_udphy *udphy,
>>  	 */
>>  	if (dp->set_voltages) {
>>  		/* Lane count verified previously. */
>> -		for (i = 0; i < dp->lanes; i++) {
>> +		for (i = 0; i < udphy->lanes; i++) {
>>  			if (dp->voltage[i] > 3 || dp->pre[i] > 3)
>>  				return -EINVAL;
>>  
>> @@ -1243,9 +1242,9 @@ static int rk_udphy_dp_phy_configure(struct phy *phy,
>>  	}
>>  
>>  	if (dp->set_voltages) {
>> -		for (i = 0; i < dp->lanes; i++) {
>> +		for (i = 0; i < udphy->lanes; i++) {
>>  			lane = udphy->dp_lane_sel[i];
>> -			switch (dp->link_rate) {
>> +			switch (udphy->link_rate) {
>>  			case 1620:
>>  			case 2700:
>>  				regmap_update_bits(udphy->pma_regmap,
>> -- 
>> 2.34.1
>
>-- 
>~Vinod
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
