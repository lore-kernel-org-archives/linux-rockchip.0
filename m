Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95F51C44521
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jul 2026 23:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KbK9KSH3UIN4wLatKEbwcUGZzOZBJt3DIaeCFgzHwwY=; b=3hiyPX7KKNJyEU
	HHN7oVrZXFIqBhbOCDjzrrmfXKXXFGNvr0ki82HjFBC/ny5iJc0vYMLodj398hDru7oY/Fnj7w1gG
	qSRkkX5cjf9SuAfoiJFhM9ldl2Pn7BVVr1YKAc9KKt34cgzde0KQjUqK1buLArmd7AjW3tXb6Xeb6
	GEw4lGcyqw4Pu8ZTeluAapGxOiYVRezY+DG4YSV/1LQrXO9TKifiMU+mN38HCgxkoTU6JgE3qcdlB
	oSC62XNi+0aRUkqLS/5zg4X4v9JBMaPR1k7lbL34LErONOI4wokvGtcvobUvQNfSXaXDaH2D7n+HF
	bNRRUyK1CHlqcM01wqdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlE6H-00000004a4R-3F9o;
	Sat, 18 Jul 2026 23:05:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlE6F-00000004a44-0n2j
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Jul 2026 23:05:40 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66IN2GqV1989868
	for <linux-rockchip@lists.infradead.org>; Sat, 18 Jul 2026 23:05:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wRKQ5pXg21yJ1hMXPtAg7ySESJu3pGjBMk8RjKfSal4=; b=VkVhlDeGpcdFWlss
	2oXUfvMitNlPdnS1Pj91E4hyDSnKRaiYg+cLbMxRvxJfMLZQ3RXoTTXbtBTLusNl
	+oVHq2apfKNrOZx6O7nVjVWAk29DfkcuyaOt34mjH78AOK+rDO6DVjFdigT3s85J
	2Q3E1sYU8lnHHJi4l+Y3pmivxTI5/UA6Nqo7+GRvS+IO4bR78AoNeXArYesx8HcI
	0HTXeghec/8zj+1ypld+8tgPQeTINaMMYu7xelGJkvIffowcmiT2rtBzPENlLrXL
	StjzqeGoyhtWltXJMBLwf28vTnVyLz16SkZfeagpNdpA34/VR+5/fGveJKSbNcjM
	2aD3gw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fg2dc1r59-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 18 Jul 2026 23:05:37 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-848544a8496so6627327b3a.0
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Jul 2026 16:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784415936; x=1785020736; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=wRKQ5pXg21yJ1hMXPtAg7ySESJu3pGjBMk8RjKfSal4=;
        b=PvP58bZkSmDtfvro6WdZUyO9kpO4Gen84q+dLc6CVRKTZKEMI4U50YcvQD/SP2fKmW
         tuQm4TOzEEWhgbHYcQ4Dr8tXTLsNAtZqgckNAJSW16QKAuByZsyWIiRUj7bwSff0DqLL
         7adGi3cMHiDC+gxPkjrjoXliWWY6MePrWA/u+kZHnZ+LVw3xzDX5T/rpndouHeIuXt/h
         0pEDufqgGbfxQMw0WdEknS4G3IDfBm/1wXPokKJIxwJSI6C3LO5Tq643pTAfZ0kzknYb
         pOgfdrWMJTQaDI3owXSWqrK5AM1BpM7vAwXEGG9Z2wwhsUW2NYSEjJusn4B3nOjLCk3s
         LFKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784415936; x=1785020736;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wRKQ5pXg21yJ1hMXPtAg7ySESJu3pGjBMk8RjKfSal4=;
        b=BscJgzKpilvEpnBgKs22y/KDgZ8Brtz4GomNUAhNel/a04lqRcmbi8lIhJ4MhYGZZe
         6QwI8mgzdD7W1M73oeGwOiqwiz/o3lTncJXqBGd8dm8QkA4c8gjsQrWh/PykU3SIPePe
         qqRstVS3XDa4D5f/ZrYOIUykXocoyWfQxFNEtwhVO77bTInSg9cMJppgatOvvFr5wb1j
         3hGWSFtyoTbrB0zgEtFLer0rZf0JPSYFXjXyafPKJ85Zyp9m3X+xTGj1DsYaME2+RWQh
         IwePuujFLSWj5ES/OTMMDlDnpU6Tk5KP8Pp+8wQVgqnpS/B5l/GaUtzNkvqjo4CW2Ru4
         dKNg==
X-Forwarded-Encrypted: i=1; AHgh+Rr/y7CpB3UyQc+T3nlj4t6lshdC1R1iCdPzgyTa0oeK2uDYgubgSITDug0+tM1cz0yIWjTd+0cbuLc5JNDoGQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyZ8ilgFOaDkhPfMG2wxp7NG00DdS/XDE957JBkmKR7vCAWfi0N
	aw74I257/TS5Dxps3+clXSIQzww/8D3fgaVJx4CsqiMpTt48Bey3EIXsroHexljSpvSMi2ZHnjc
	iTlI40I6T9FuR2r2fD0iVhunuGyc4+xSfsuFKnFzF8roWX5AWg6Rz9EZ4uTokhAyDKgTdKR28Ha
	0=
X-Gm-Gg: AfdE7cnlVnpjEH7Wiz3b3BzKYnH87M+dFKRKamrFPJgAq5X98uGn0qJjJuRUysGHT7+
	LiGCXE/85pEYncmdl1GKekWFjYzFwcJYldek3uGz+HIq/GPbeBqKBLu/f7TGqpHrG2iYEnmrY5B
	A2cNUfn9i2iwRUi1TTNJTPaNxf2UYo0/AvGY1cVI5jIGo4Dr4SV6XOZ2BItc2+Viuay2x4l2LPJ
	EFV+qqkMVf+j5LgPOOdsNuQ346bFhCuwSxox2Z9I+5nfY2F8HWGx2AqclWTMDymDVq1tAiBV7Vc
	6FQI+77euaCNzcgSGPcvxTazdgrBuEil4efp/sl3/EHUT2vODQDlizPkyg8qeYHtc+PJ948nX/B
	bnWj/ioCsbQO5rBCD
X-Received: by 2002:a05:6a00:e19:b0:847:8dec:1427 with SMTP id d2e1a72fcca58-84c29263726mr8487418b3a.8.1784415936260;
        Sat, 18 Jul 2026 16:05:36 -0700 (PDT)
X-Received: by 2002:a05:6a00:e19:b0:847:8dec:1427 with SMTP id d2e1a72fcca58-84c29263726mr8487393b3a.8.1784415935798;
        Sat, 18 Jul 2026 16:05:35 -0700 (PDT)
Received: from jic23-huawei ([50.35.46.84])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84c2adfdfd0sm3352876b3a.25.2026.07.18.16.05.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jul 2026 16:05:35 -0700 (PDT)
Date: Sun, 19 Jul 2026 00:05:30 +0100
From: Jonathan Cameron <jonathan.cameron@oss.qualcomm.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
        dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
        robh@kernel.org, andriy.shevchenko@intel.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V17 3/9] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <20260719000530.62bad145@jic23-huawei>
In-Reply-To: <20260716182637.24310-4-macroalpha82@gmail.com>
References: <20260716182637.24310-1-macroalpha82@gmail.com>
	<20260716182637.24310-4-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzE4MDI0MiBTYWx0ZWRfXw9rmC1EvuRfb
 5txpHAN3UFNVAFmRNhkfoZGFlYuGPBfFE5iwwOE5TAR63FpcrHiJfLwG2VxjfymglTVZBLbY+CF
 oOMfS6HbmBAf1Z+PNB4iN40301uniDI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzE4MDI0MiBTYWx0ZWRfXx6YzmRmh4K/K
 tm9aTRh4kH3R/N9JATZvpOhttMJg8+3Ml8j/rkkEanftaxPUGWdYI9t7RYNHmKyS6kz+bJhzgr0
 Ymmtdzq1EyjCpOkl2iVLcuNFcsP5SC2EfqFZam7OvHSXF9WSGQfB6Bbu17MdH3JukSgZsn+1NfU
 bIpdIhDIqnhNgiqcyWVZPHhKnv9Zs25CBwAlqG2uWcNAuqcTVwGCIFJ51osltm+dfnqD52Q3thU
 z3/WZcHQ/2UiZyrxfKNJFQMAjzXZqKaqBPpCDynpcrILEuwwFWJFUFVbQ2ys3xQUU7ejvxdHQlY
 de2rrdI/OOYC1/nrB6ryZ5szdcKGxiyDOaOwzizlRTWo/gZhjFWMYC20JdWEHoOe4z3y6LmhY3Q
 TKOVqRbqC4xDpSFHPKjNXQQ7+6OJy4e1/5I7QW+PfIDxVFhvwCjrT3DWdNq6zu8QbPpWshBN+cu
 tYi67eK/kC46Omr+huw==
X-Proofpoint-ORIG-GUID: VUU6WfyJzBe-vDfdWAantN6bMbEUXDt4
X-Proofpoint-GUID: VUU6WfyJzBe-vDfdWAantN6bMbEUXDt4
X-Authority-Analysis: v=2.4 cv=FOQrAeos c=1 sm=1 tr=0 ts=6a5c06c1 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=qC1CW/w66vtJz1P9yTJxNA==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=pGLkceISAAAA:8 a=69EAbJreAAAA:8 a=QyXUC8HyAAAA:8 a=K7FbP7-zQIep73dBFt4A:9
 a=CjuIK1q_8ugA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-18_07,2026-07-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 adultscore=0 bulkscore=0 spamscore=0
 malwarescore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 clxscore=1011 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607180242
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260718_160539_440620_ABE44B70 
X-CRM114-Status: GOOD (  21.60  )
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

On Thu, 16 Jul 2026 13:26:30 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the core component of a new inv_icm42607 driver. This includes
> a few setup functions and the full register definition in the
> header file, as well as the bits necessary to compile and probe the
> device when used on an i2c bus.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

Hi Chris,

Just one small thing below given you are probably going to do
a v18.  If it had just been this I might have tweaked it whilst
applying

Thanks,

Jonathan


> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
> new file mode 100644
> index 000000000000..8f74bf38aad1
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c

...

> +static int inv_icm42607_probe(struct i2c_client *client)
> +{
> +	struct device *dev = &client->dev;
> +	const struct inv_icm42607_hw *hw;
> +	struct regmap *regmap;
> +
> +	hw = i2c_get_match_data(client);
> +	if (!hw)
> +		return dev_err_probe(dev, -ENODEV, "Failed to get i2c data\n");
> +
> +	regmap = devm_regmap_init_i2c(client, &inv_icm42607_regmap_config);
> +	if (IS_ERR(regmap))
> +		return dev_err_probe(dev, PTR_ERR(regmap),
> +				     "Failed to register i2c regmap\n");
> +
> +	return inv_icm42607_core_probe(regmap, hw, inv_icm42607_i2c_bus_setup);
> +}
> +
> +static const struct i2c_device_id inv_icm42607_id[] = {
> +	{
> +		.name = "icm42607",
> +		.driver_data = (kernel_ulong_t)&inv_icm42607_hw_data,
> +	}, {
> +		.name = "icm42607p",
> +		.driver_data = (kernel_ulong_t)&inv_icm42607p_hw_data,
> +	},
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(i2c, inv_icm42607_id);
> +
> +static const struct of_device_id inv_icm42607_of_matches[] = {
> +	{
> +		.compatible = "invensense,icm42607",

I'd expect to see the data here as well.  Look at implementation of i2c_get_match_data()
and consider what would happen if there was a slightly mismatch between which devices
were listed in each table.  To avoid that fragility we normally just put
the data pointers in both places.

> +	}, {
> +		.compatible = "invensense,icm42607p",
> +	},
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, inv_icm42607_of_matches);



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
