Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CC92C0218B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jan 2025 02:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+VcydgxIviQUaYKqvTPhXQu7VnoPsexWj8U0HlO7GEE=; b=elt5u0CG73cKAeFt6XgGX8AyUQ
	oEksHx8/S9qDxllbu/862k702BWWMD4tPoSRNhuv8OnZTMjXMWD4DYo1I0CXnfjsq8AjSzBgQqfDr
	0JBjfNNvLDC5/G3UpUqwvf3H6jXX9J3Z8wQAO9Bns2i7tXZwqxUvVN6vXON0oQKNkpJN6esv69rFi
	K0lsCLS6IYjCY3Tt/DrQJmCUM0GKUX+Y2aWLz198rafmnyIZQautjXBGlUGONUhy8cFjs0TIKhsik
	LKLuFxakRYu9Sgv8iO/IIE1XTW9jHz2MOShxSFiTx/kB7kvx+ADN/k5wBMqM181oZf2bvJP/L/wW0
	2aPEm/xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbWOE-0000000FwH1-1W9k;
	Sat, 25 Jan 2025 02:59:18 +0000
Received: from mail-m49251.qiye.163.com ([45.254.49.251])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbWOB-0000000FwGQ-0Dyz;
	Sat, 25 Jan 2025 02:59:16 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 9a3da8cf;
	Sat, 25 Jan 2025 10:59:09 +0800 (GMT+08:00)
Message-ID: <860384d5-cc7d-485b-be1b-1bbfe27535f8@rock-chips.com>
Date: Sat, 25 Jan 2025 10:59:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 12/14] drm/edp-panel: Add LG Display panel model
 LP079QX1-SP0V
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Douglas Anderson <dianders@chromium.org>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-13-damon.ding@rock-chips.com>
 <rwn3g7tqgjnc525cjqtivgfgedhooiayn5nujng7bdzazgqhle@wfpuvoyr2tii>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <rwn3g7tqgjnc525cjqtivgfgedhooiayn5nujng7bdzazgqhle@wfpuvoyr2tii>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRgZQ1ZJTBpDQ0IdTB4dGE9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a949b6620f703a3kunm9a3da8cf
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ojo6Fhw5NTIVDhkPAxQ2DSkc
	VkowCjdVSlVKTEhMTExIQk5LTENPVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJSU5ONwY+
DKIM-Signature: a=rsa-sha256;
	b=NAllTc4IrhdZemINSJnIARwR6+qpPHvdRgMGW5ODEWzhYxQ20JdxOfBlhUUCuQglebhICW5Rj3EWmhHZUkQMqLJGvaVqgoQfSC/y5/dTF7hgEC1IVPDf8jPLXQc9g98Zo1W7BdjBtqnFn+pKHK9J88P4xkEbjuNHaPFAk5w/HnE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=PJ4vEGRebVfmD62DO8JbYjz0HrXPBA+KlX27omCmNMw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_185915_629200_55FD2DBA 
X-CRM114-Status: GOOD (  12.86  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dmitry,

On 2025/1/23 19:31, Dmitry Baryshkov wrote:
> On Thu, Jan 23, 2025 at 06:07:45PM +0800, Damon Ding wrote:
>> The raw edid for LP079QX1-SP0V panel model is:
>>
>> 00 ff ff ff ff ff ff 00 16 83 00 00 00 00 00 00
>> 04 17 01 00 a5 10 0c 78 06 ef 05 a3 54 4c 99 26
>> 0f 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
>> 01 01 01 01 01 01 ea 4e 00 4c 60 00 14 80 0c 10
>> 84 00 78 a0 00 00 00 18 00 00 00 10 00 00 00 00
>> 00 00 00 00 00 00 00 00 00 00 00 00 00 fe 00 4c
>> 50 30 37 39 51 58 31 2d 53 50 30 56 00 00 00 fc
>> 00 43 6f 6c 6f 72 20 4c 43 44 0a 20 20 20 00 3f
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> ---
>>   drivers/gpu/drm/panel/panel-edp.c | 8 ++++++++
>>   1 file changed, 8 insertions(+)
> 
> Please use get_maintainers.pl when compiling To/Cc lists. Added Douglas
> to CC manually.
> 
> Or, better, split irrelevant patches to separate series.
> 

I will split the panel related patch into a separate series in the next 
version.

>>
>> diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
>> index f8511fe5fb0d..77e3fd3ed160 100644
>> --- a/drivers/gpu/drm/panel/panel-edp.c
>> +++ b/drivers/gpu/drm/panel/panel-edp.c
>> @@ -1808,6 +1808,12 @@ static const struct panel_delay delay_200_150_e50 = {
>>   	.enable = 50,
>>   };
>>   
>> +static const struct panel_delay delay_50_500_e200 = {
>> +	.hpd_absent = 50,
>> +	.unprepare = 500,
>> +	.enable = 200,
>> +};
>> +
>>   #define EDP_PANEL_ENTRY(vend_chr_0, vend_chr_1, vend_chr_2, product_id, _delay, _name) \
>>   { \
>>   	.ident = { \
>> @@ -1955,6 +1961,8 @@ static const struct edp_panel_entry edp_panels[] = {
>>   	EDP_PANEL_ENTRY('C', 'S', 'W', 0x1100, &delay_200_500_e80_d50, "MNB601LS1-1"),
>>   	EDP_PANEL_ENTRY('C', 'S', 'W', 0x1104, &delay_200_500_e50, "MNB601LS1-4"),
>>   
>> +	EDP_PANEL_ENTRY('E', 'T', 'C', 0x0000, &delay_50_500_e200, "LP079QX1-SP0V"),
>> +
>>   	EDP_PANEL_ENTRY('H', 'K', 'C', 0x2d51, &delay_200_500_e200, "Unknown"),
>>   	EDP_PANEL_ENTRY('H', 'K', 'C', 0x2d5b, &delay_200_500_e200, "MB116AN01"),
>>   	EDP_PANEL_ENTRY('H', 'K', 'C', 0x2d5c, &delay_200_500_e200, "MB116AN01-2"),
>> -- 
>> 2.34.1
>>
> 

Best regards,
Damon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
