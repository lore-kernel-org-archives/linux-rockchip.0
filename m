Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0029CD4F3C
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 07:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9EhbYaISQPt30GV6IYZ8sD4JgvMlCi7NMP/xKjRc3IA=; b=WDljNRIb1e1AI/5bzzWMpSIxBg
	7H7s78w8/txJ+UZchq5WYq+AAlGiHWBpWY/QHQDNXQpo7QCcLooxSWOquPHE2HfHfdoFxRpbb+Mxp
	JhzmYzyLf3kuGXVaMuIxPXsPJkRWQnXVyLvOtVCwslzt3HDxK9PVX0WXBsWptdi+0b6na90VGYZdA
	VjWmjH6UfC5hM5iInqGxtti12K5p38JDEMuU1zkxsmwTSP6AFRp5bA0CstSHQqeLXLAm1FGgCMyis
	l9KbooMCZ5dpAbWDRPbzp9E9jjIDGmvFWsYF9fPhYp5+68z9HneSlE5hlP4W2aNdMb2LP9Yo1T/Gl
	T4+We4NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPy7q-000000070MQ-19dZ;
	Thu, 21 May 2026 07:47:26 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPy7n-000000070Lr-19D1
	for linux-rockchip@lists.infradead.org;
	Thu, 21 May 2026 07:47:24 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4903cbfad68so648965e9.0
        for <linux-rockchip@lists.infradead.org>; Thu, 21 May 2026 00:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779349641; x=1779954441; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hQfvvIZHcwDFSAgb014S9o2dz5FFVIJPNRzHERKBSM0=;
        b=UZlMS0PVPXKpJkvj5ltiRluzC1Zk8FgDgOzYY6hmo06GgM97+L4W3oSq576TgOYiut
         IBRao7xG5BjubLmGh+GDbE2GBRD+bzhsC9+hr68ii8JUOxv6wSkodrleGQ76qrnpKH78
         tSpJfsEq9ZKzUJgwXMgKwDNrDuWjlzLWNFtUvW6TAVjUj4xFovy1f6iI18u/VVXG2yhw
         tQ60gvssIcHbuHpxmBCID/MTJ7tmnUimeJQ3MdQs/R1XdeV0uPkyrtvne0rzQr2OEJ3N
         hP3dRbzskD9ACyOK9rJWDLvdVR36fAGgBr7UCvYbtSVnWJGN1hOpprM85oMHhr5LPX5J
         pesw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779349641; x=1779954441;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hQfvvIZHcwDFSAgb014S9o2dz5FFVIJPNRzHERKBSM0=;
        b=U0BKgoPCL0joT0wqkP6QGP0VQFi4u0Lngkccu/bJyZCzd+JAt+O4RX9mfLt7GZG/Ml
         NO378AOrlaHK/+NIUUbFeOr5HrX+fa9k9HJDUd5zpEMLPA2IaukbhMN9c4EsD9rzj8HN
         FuLKrRBQmP+2qiW4mfrA4XARFzsFO+3H/UQmPxIqVAHBwTW+hLDT2OwiFidP2LCvB2iX
         qv8a+bqKLzaLTvcKzDiVNaZVLX3qxH1L31skVPL+Kukc4x+uDTwbg1s9v5qzJAbQo+ix
         UpPSt9jhh0IxAjG3BR1+c2F7BKrpriMNRWL8C4pZKR9AVKrJuGDGjwabpnxE1RtudDX+
         IAZA==
X-Forwarded-Encrypted: i=1; AFNElJ/nH76BRzAyr/9M2lvDYtmdvqQ5DXw4L5ePqpQ/59TjfuoFMReELCQz382cNxf8DDeIERXSPE1/9pWdjmqPZA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxW3HirRbdPWryjtbUCf+BPr3SvTTA+oyBu/TEofCBwt2fiUSK1
	PQyUNlyrGtJ9yFbBWF6Q3aFJmuJfu5FJIxteVID2wQhQbngglcnhyV3RqYEePaMFtR0=
X-Gm-Gg: Acq92OGKuO02wBAsp8MeFQwVyz88xWxl64xBrlWz3LjQHCZV0blBHZf/lJ1VhIULIl8
	OKr5MiAQx07+Qr2HGOBqGBXM7sQ4wW74drRWrn+xkuiMb/f+5i0/huSC6iLShvazSBpS3FboZ6v
	ccKMcyEOxqQKGg4b9xciRPIxNNU5ptSmH6q39pviiD74EKIJZRak4EPgkDjNblw1w0ldGnMhW/p
	7deTByFmGqj2uIDtwaS3vceLm/4G+kLIK+1WKdgudROdyQ5jQO+oVSB45P1nCxLYhZZsaPGDzb9
	izWl3kvybJJGMTF+FkGNqKnt7grytS3uGxA4T9tZDMSt/s8tl5DFKdwrJXLpnsw25X53TaNeBu8
	z8DrbaJJupS2X2fZAsteRklKtun0qGjINHOqnS0m4N/kFIRRYZhLPDqMdY7YSsrXK5K9gdMd9Mi
	Ulkospta+TLkIPH2tqvJiMmrLIUee/B7bctzsuZqcCMzsiDy5gTWMTMC1Edgn9bx8JP3LFz0/fB
	9tkp08=
X-Received: by 2002:a05:600c:4849:b0:48a:761:5816 with SMTP id 5b1f17b1804b1-4903608030amr10856805e9.8.1779349640664;
        Thu, 21 May 2026 00:47:20 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:e038:7e8a:7467:8c6c? ([2a01:e0a:106d:1080:e038:7e8a:7467:8c6c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4903caede9fsm6987345e9.14.2026.05.21.00.47.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2026 00:47:20 -0700 (PDT)
Message-ID: <fb1c86bf-44ea-46ed-b93b-6cee579647d8@linaro.org>
Date: Thu, 21 May 2026 09:47:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH V2 4/6] drm/panel: anbernic-td4310: Add RG Vita Pro panel
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 xsf@rock-chips.com, sre@kernel.org, simona@ffwll.ch, airlied@gmail.com,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 jesszhan0024@gmail.com, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org
References: <20260515221947.299229-1-macroalpha82@gmail.com>
 <20260515221947.299229-5-macroalpha82@gmail.com>
 <c5ea73cc-ac1f-43ba-bcf1-0083a59bbef9@linaro.org>
 <PH0PR19MB9973388E4A62128DAC3D571E25A5012@PH0PR19MB997338.namprd19.prod.outlook.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <PH0PR19MB9973388E4A62128DAC3D571E25A5012@PH0PR19MB997338.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_004723_349795_F4BF1FBE 
X-CRM114-Status: GOOD (  16.46  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 5/20/26 16:29, Chris Morgan wrote:
> On Mon, May 18, 2026 at 03:55:08PM +0200, neil.armstrong@linaro.org wrote:
>> On 5/16/26 00:19, Chris Morgan wrote:
>>> From: Chris Morgan <macromorgan@hotmail.com>
>>>

<snip>

>>> +
>>> +	return dsi_ctx.accum_err;
>>> +
>>> +err_reset:
>>
>> And you don't check it here
> 
> Should I check the value and print an error if it fails? I had planned
> on continuing even after a failure with the shutdown so it could turn
> the device off, unless that's incorrect.

yeah continue and ignore the return value on the error path

> 
>>

<snip>

>>> +
>>> +static void panel_anbernic_td4310_remove(struct mipi_dsi_device *dsi)
>>> +{
>>> +	struct anbernic_panel_td4310 *ctx = mipi_dsi_get_drvdata(dsi);
>>> +	int ret;
>>> +
>>> +	ret = mipi_dsi_detach(dsi);
>>> +	if (ret < 0)
>>> +		dev_err(&dsi->dev, "Failed to detach from DSI host: %d\n", ret);
>>> +
>>> +	drm_panel_remove(&ctx->panel);
>>> +}
>>
>> And drop remove completely
>>
> 
> I take it the devm calls above remove the need for a remove callback?
> I take it that's new? Thank you.

Yep !

> 
>>> +
>>> +static const struct drm_display_mode anbernic_vitapro_modes[] = {
>>> +	{
>>> +		.clock = 140020,
>>> +		.hdisplay = 1080,
>>> +		.hsync_start = 1080 + 50,
>>> +		.hsync_end = 1080 + 50 + 4,
>>> +		.htotal = 1080 + 50 + 4 + 50,
>>> +		.vdisplay = 1920,
>>> +		.vsync_start = 1920 + 15,
>>> +		.vsync_end = 1920 + 15 + 4,
>>> +		.vtotal = 1920 + 15 + 4 + 32,
>>> +		.flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
>>> +	},
>>> +};
>>> +
>>> +static const struct anbernic_panel_td4310_info anbernic_vitapro_info = {
>>> +	.display_modes = anbernic_vitapro_modes,
>>> +	.num_modes = ARRAY_SIZE(anbernic_vitapro_modes),
>>> +	.width_mm = 69,
>>> +	.height_mm = 121,
>>> +	.bus_flags = DRM_BUS_FLAG_DE_LOW | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
>>> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
>>> +		      MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET |
>>> +		      MIPI_DSI_CLOCK_NON_CONTINUOUS,
>>> +	.format = MIPI_DSI_FMT_RGB888,
>>> +	.lanes = 4,
>>> +	.prepare_delay = 50,
>>> +	.reset_delay = 220,
>>> +	.enable_delay = 120,
>>> +	.disable_delay = 50,
>>> +	.unprepare_delay = 20,
>>> +};
>>> +
>>> +static const struct of_device_id panel_anbernic_td4310_of_match[] = {
>>> +	{
>>> +		.compatible = "anbernic,panel-vita-pro",
>>> +		.data = &anbernic_vitapro_info,
>>> +	},
>>> +	{ },
>>> +};
>>> +MODULE_DEVICE_TABLE(of, panel_anbernic_td4310_of_match);
>>> +
>>> +static struct mipi_dsi_driver anbernic_panel_td4310_driver = {
>>> +	.driver = {
>>> +		.name = "panel-anbernic-td4310",
>>> +		.of_match_table = panel_anbernic_td4310_of_match,
>>> +	},
>>> +	.probe	= panel_anbernic_td4310_probe,
>>> +	.remove = panel_anbernic_td4310_remove,
>>> +};
>>> +module_mipi_dsi_driver(anbernic_panel_td4310_driver);
>>> +
>>> +MODULE_AUTHOR("Chris Morgan <macromorgan@hotmail.com>");
>>> +MODULE_DESCRIPTION("DRM driver for Anbernic TD4310 MIPI DSI panels");
>>> +MODULE_LICENSE("GPL");
>>
>> Thanks,
>> Neil
> 
> Thank you,
> Chris


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
