Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 809C6CEDD8A
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 13:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=liq/Ov9o5ZOSuKrapO5GrBMDnyTn9BC+DWtDvAyGd6c=; b=K8o7TBY5BnZ9RsRBI/1Um5deAv
	NRrD8kVoE05oTsTIeACNZS167j6jf9SVLJnmNDl45E9Lo4Pei3OmXEfay16CDSHOA//K8Kcdf+YXb
	D4pd24qnGEYN+XlRHoOfdnMgEJ7a5IqkWU2Jn/KQ93ll4c+KHRjFZ4SqmK+CDLKUVybq9ctJdWMzH
	GCfhfGwl1QnoG0n6lii9OWFNWM7qfPri+yp+BcuU2l15FuAYiJ8gmTcb1egEO/ZZWQGXI1zhs+wli
	VQ98B3lbfKyBc/uPuiZJEdnldba8dM6ACKr2H7YPBH1ZTSUm0VnFWV0NFEtD7xdE0L28vf7a4JMd2
	QHPxFUyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLM6a-00000000UTV-0HAn;
	Tue, 18 Nov 2025 13:50:48 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLM6T-00000000UPo-0iyR
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Nov 2025 13:50:45 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-42b31507ed8so4451559f8f.1
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Nov 2025 05:50:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763473839; x=1764078639; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dY87Qd6K9FmYpUIN2v9FDUk/qdoG5fxW/x7OSqsCn3w=;
        b=lkJrogEx+owEeZPlwXICzFL7YWtKJ5mCyJ/EZ2+PXvAKg6xpVrqyLIzzl+6j7GRJ4f
         r5aOOCsN0rNXk0cU2co7rKvzCDPyPpAdazdpaLVxegxOll5i9I2/ZuDRRNaR7c6C6mCR
         j6gDP88VholnlbzfjN6CTpxQDyY2qF4duitnRwYhS0RYl+ERrao34L2p3P/RzxNBy6h6
         KanBaJcYr8RwzE+o975LpBQ+DOKKo7STamrB+9L8bGTVT8LOxDdYxiIFq/48hmsn2tAB
         x/lj/VWWVW9R/5s1y1b9OYFnHs8YZVTl2vmOz7Ws0bJWmzq2RWbBu9z1kiFp5Wl3UObp
         a7vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763473839; x=1764078639;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dY87Qd6K9FmYpUIN2v9FDUk/qdoG5fxW/x7OSqsCn3w=;
        b=PJj2QaMO58TV9giiYVQLVZMWrV5IyU/11QXttApnwzlKKgOKmzldzHT2OzSrtYM6wj
         dLNo3M1SXgcgohRrFv2ksd5YHOjdTmcSMfEb4mlFL2axUm0CgqrpF76nSs2KhEZAPYn8
         cAuc/8S64qt4vZ5KkEH3TC9BEMluiJDJHuzsIWmcPezFVT0Rn17IPr5O2fb+3TNRV9re
         6hT3JgkHqJva+0K987nx8pbrqpmGnEq5ZuSiiAe9bn9QMYxwVAJlpMRJr+CLcyleTrSK
         WhTxP2N/wuplgM0RncAzua0Y2OUpfQiijVBTTgmo7R9vBkS0DMhNHy+gU7NfGGMyXVwC
         CSVA==
X-Forwarded-Encrypted: i=1; AJvYcCWy7kCvobc2m3895OIPKs1fM77xrKBOQvb5EIAuhSbhxPwcn9D8rPne2xFOxM2utu6Z6TVwYPym7/KFjWikxg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+sf8NQveWr52GDume6Ek01HiVCRSEEUGvo1aqd7U5iA4yYcrk
	pDSqtBXRsCGVgM2fTm/asHQaBMP3G6kt8hi23DggJRZXMsQ5lBYaV96y1KdZLx5bpEk=
X-Gm-Gg: ASbGnctTenKKsPTKubNy2qFc5YKApiH6ERy8zXkfbTrDtbE6UMQ1ORRwDOg9EUFUH1k
	tscF5DQb72B4HbhJ3S6Wt66nKES2K1RunCYPZCcDwHnt2jCQ7KA6fA98OYTBUamOkG2E6aTbdSO
	krQARTqsrsyDkKrro/I+5nhI09folO6LBxELu4+ur5KEa34uVewQS0Tk0FnsCCCNwq/g/wiAxBS
	LUdzj4g9hXZXnQbwB5fizjUJRQa3k+WA97BTiTLsCfXilUKHttNrCH+f2cyMTF86I9erT/arXgo
	u21voBBPyespihNyJhb6gRXX1mVQzTvrOwfyApYLQLUAW+xpRJjjyLhbcdU935mX9WlLxYuZfPn
	nYEnpo3DksT8pG34EYt7eVqPttCgDxg7uhg1XQors6FrOunt883W2xGWXNnUT2f6BJItCggylDv
	YfHe8YWCHeG7oC/tnoVxK50ialyKN0dFSRXQi5uKUQW125HhmyWCbtQZq1J/W1clg=
X-Google-Smtp-Source: AGHT+IHO7NgHAvMoNL+Vwr0gsrbLBbRzB68mfS+LYvq/Q1H/ixopITAemFG2PunekaEBn/eSbVurMg==
X-Received: by 2002:a05:6000:24c7:b0:428:52c7:feae with SMTP id ffacd0b85a97d-42b593869b1mr16288107f8f.32.1763473839029;
        Tue, 18 Nov 2025 05:50:39 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e85e6fsm32359458f8f.18.2025.11.18.05.50.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 05:50:38 -0800 (PST)
Message-ID: <e21760e8-4eaf-4181-a328-5d0d205b7ae0@linaro.org>
Date: Tue, 18 Nov 2025 14:50:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 5/9] drm/panel: ilitek-ili9881d: Add support for
 Wanchanglong W552946AAA panel
To: Chaoyi Chen <kernel@airkyi.com>,
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
References: <20251106020632.92-1-kernel@airkyi.com>
 <20251106020632.92-6-kernel@airkyi.com>
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
In-Reply-To: <20251106020632.92-6-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_055043_906590_CA7DBD2D 
X-CRM114-Status: GOOD (  13.73  )
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

On 11/6/25 03:06, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> W552946AAA is a panel by Wanchanglong. This panel utilizes the
> Ilitek ILI9881D controller.
> 
> W552946AAA is similar to W552946ABA, but the W552946AAA only
> uses 2 lanes.
> 
> Tested on rk3506g-evb1-v10.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>   drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 225 ++++++++++++++++++
>   1 file changed, 225 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> index ad4993b2f92a..9b3e9450808d 100644
> --- a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> @@ -820,6 +820,204 @@ static const struct ili9881c_instr tl050hdv35_init[] = {
>   	ILI9881C_COMMAND_INSTR(0xd3, 0x39),
>   };
>   
> +static const struct ili9881c_instr w552946aaa_init[] = {
> +	ILI9881C_SWITCH_PAGE_INSTR(3),
> +	ILI9881C_COMMAND_INSTR(0x01, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x02, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x03, 0x53),
> +	ILI9881C_COMMAND_INSTR(0x04, 0x53),
> +	ILI9881C_COMMAND_INSTR(0x05, 0x13),
> +	ILI9881C_COMMAND_INSTR(0x06, 0x04),
> +	ILI9881C_COMMAND_INSTR(0x07, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x08, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x09, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0a, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0b, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0c, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0d, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0e, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0f, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x10, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x11, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x12, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x13, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x14, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x15, 0x08),
> +	ILI9881C_COMMAND_INSTR(0x16, 0x10),
> +	ILI9881C_COMMAND_INSTR(0x17, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x18, 0x08),
> +	ILI9881C_COMMAND_INSTR(0x19, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1a, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1b, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1c, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1d, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1e, 0xc0),
> +	ILI9881C_COMMAND_INSTR(0x1f, 0x80),
> +	ILI9881C_COMMAND_INSTR(0x20, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x21, 0x09),
> +	ILI9881C_COMMAND_INSTR(0x22, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x23, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x24, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x25, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x26, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x27, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x28, 0x55),
> +	ILI9881C_COMMAND_INSTR(0x29, 0x03),
> +	ILI9881C_COMMAND_INSTR(0x2a, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2b, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2c, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2d, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2e, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2f, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x30, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x31, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x32, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x33, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x34, 0x04),
> +	ILI9881C_COMMAND_INSTR(0x35, 0x05),
> +	ILI9881C_COMMAND_INSTR(0x36, 0x05),
> +	ILI9881C_COMMAND_INSTR(0x37, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x38, 0x3c),
> +	ILI9881C_COMMAND_INSTR(0x39, 0x35),
> +	ILI9881C_COMMAND_INSTR(0x3a, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3b, 0x40),
> +	ILI9881C_COMMAND_INSTR(0x3c, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3d, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3e, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3f, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x40, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x41, 0x88),
> +	ILI9881C_COMMAND_INSTR(0x42, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x43, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x44, 0x1f),
> +	ILI9881C_COMMAND_INSTR(0x50, 0x01),
> +	ILI9881C_COMMAND_INSTR(0x51, 0x23),
> +	ILI9881C_COMMAND_INSTR(0x52, 0x45),
> +	ILI9881C_COMMAND_INSTR(0x53, 0x67),
> +	ILI9881C_COMMAND_INSTR(0x54, 0x89),
> +	ILI9881C_COMMAND_INSTR(0x55, 0xab),
> +	ILI9881C_COMMAND_INSTR(0x56, 0x01),
> +	ILI9881C_COMMAND_INSTR(0x57, 0x23),
> +	ILI9881C_COMMAND_INSTR(0x58, 0x45),
> +	ILI9881C_COMMAND_INSTR(0x59, 0x67),
> +	ILI9881C_COMMAND_INSTR(0x5a, 0x89),
> +	ILI9881C_COMMAND_INSTR(0x5b, 0xab),
> +	ILI9881C_COMMAND_INSTR(0x5c, 0xcd),
> +	ILI9881C_COMMAND_INSTR(0x5d, 0xef),
> +	ILI9881C_COMMAND_INSTR(0x5e, 0x03),
> +	ILI9881C_COMMAND_INSTR(0x5f, 0x14),
> +	ILI9881C_COMMAND_INSTR(0x60, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x61, 0x0c),
> +	ILI9881C_COMMAND_INSTR(0x62, 0x0d),
> +	ILI9881C_COMMAND_INSTR(0x63, 0x0e),
> +	ILI9881C_COMMAND_INSTR(0x64, 0x0f),
> +	ILI9881C_COMMAND_INSTR(0x65, 0x10),
> +	ILI9881C_COMMAND_INSTR(0x66, 0x11),
> +	ILI9881C_COMMAND_INSTR(0x67, 0x08),
> +	ILI9881C_COMMAND_INSTR(0x68, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x69, 0x0a),
> +	ILI9881C_COMMAND_INSTR(0x6a, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6b, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6c, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6d, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6e, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6f, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x70, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x71, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x72, 0x06),
> +	ILI9881C_COMMAND_INSTR(0x73, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x74, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x75, 0x14),
> +	ILI9881C_COMMAND_INSTR(0x76, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x77, 0x0f),
> +	ILI9881C_COMMAND_INSTR(0x78, 0x0e),
> +	ILI9881C_COMMAND_INSTR(0x79, 0x0d),
> +	ILI9881C_COMMAND_INSTR(0x7a, 0x0c),
> +	ILI9881C_COMMAND_INSTR(0x7b, 0x11),
> +	ILI9881C_COMMAND_INSTR(0x7c, 0x10),
> +	ILI9881C_COMMAND_INSTR(0x7d, 0x06),
> +	ILI9881C_COMMAND_INSTR(0x7e, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x7f, 0x0a),
> +	ILI9881C_COMMAND_INSTR(0x80, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x81, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x82, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x83, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x84, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x85, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x86, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x87, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x88, 0x08),
> +	ILI9881C_COMMAND_INSTR(0x89, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x8a, 0x02),
> +	ILI9881C_SWITCH_PAGE_INSTR(4),
> +	ILI9881C_COMMAND_INSTR(0x00, 0x80),
> +	ILI9881C_COMMAND_INSTR(0x70, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x71, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x66, 0xfe),
> +	ILI9881C_COMMAND_INSTR(0x82, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x84, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x85, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x3a, 0x24),
> +	ILI9881C_COMMAND_INSTR(0x32, 0xac),
> +	ILI9881C_COMMAND_INSTR(0x8c, 0x80),
> +	ILI9881C_COMMAND_INSTR(0x3c, 0xf5),
> +	ILI9881C_COMMAND_INSTR(0x88, 0x33),
> +	ILI9881C_SWITCH_PAGE_INSTR(1),
> +	ILI9881C_COMMAND_INSTR(0x22, 0x0a),
> +	ILI9881C_COMMAND_INSTR(0x31, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x53, 0x78),
> +	ILI9881C_COMMAND_INSTR(0x55, 0x7b),
> +	ILI9881C_COMMAND_INSTR(0x60, 0x20),
> +	ILI9881C_COMMAND_INSTR(0x61, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x62, 0x0d),
> +	ILI9881C_COMMAND_INSTR(0x63, 0x00),
> +	ILI9881C_COMMAND_INSTR(0xa0, 0x00),
> +	ILI9881C_COMMAND_INSTR(0xa1, 0x10),
> +	ILI9881C_COMMAND_INSTR(0xa2, 0x1c),
> +	ILI9881C_COMMAND_INSTR(0xa3, 0x13),
> +	ILI9881C_COMMAND_INSTR(0xa4, 0x15),
> +	ILI9881C_COMMAND_INSTR(0xa5, 0x26),
> +	ILI9881C_COMMAND_INSTR(0xa6, 0x1a),
> +	ILI9881C_COMMAND_INSTR(0xa7, 0x1d),
> +	ILI9881C_COMMAND_INSTR(0xa8, 0x67),
> +	ILI9881C_COMMAND_INSTR(0xa9, 0x1c),
> +	ILI9881C_COMMAND_INSTR(0xaa, 0x29),
> +	ILI9881C_COMMAND_INSTR(0xab, 0x5b),
> +	ILI9881C_COMMAND_INSTR(0xac, 0x26),
> +	ILI9881C_COMMAND_INSTR(0xad, 0x28),
> +	ILI9881C_COMMAND_INSTR(0xae, 0x5c),
> +	ILI9881C_COMMAND_INSTR(0xaf, 0x30),
> +	ILI9881C_COMMAND_INSTR(0xb0, 0x31),
> +	ILI9881C_COMMAND_INSTR(0xb1, 0x32),
> +	ILI9881C_COMMAND_INSTR(0xb2, 0x00),
> +	ILI9881C_COMMAND_INSTR(0xb1, 0x2e),
> +	ILI9881C_COMMAND_INSTR(0xb2, 0x32),
> +	ILI9881C_COMMAND_INSTR(0xb3, 0x00),
> +	ILI9881C_COMMAND_INSTR(0xb6, 0x02),
> +	ILI9881C_COMMAND_INSTR(0xb7, 0x03),
> +	ILI9881C_COMMAND_INSTR(0xc0, 0x00),
> +	ILI9881C_COMMAND_INSTR(0xc1, 0x10),
> +	ILI9881C_COMMAND_INSTR(0xc2, 0x1c),
> +	ILI9881C_COMMAND_INSTR(0xc3, 0x13),
> +	ILI9881C_COMMAND_INSTR(0xc4, 0x15),
> +	ILI9881C_COMMAND_INSTR(0xc5, 0x26),
> +	ILI9881C_COMMAND_INSTR(0xc6, 0x1a),
> +	ILI9881C_COMMAND_INSTR(0xc7, 0x1d),
> +	ILI9881C_COMMAND_INSTR(0xc8, 0x67),
> +	ILI9881C_COMMAND_INSTR(0xc9, 0x1c),
> +	ILI9881C_COMMAND_INSTR(0xca, 0x29),
> +	ILI9881C_COMMAND_INSTR(0xcb, 0x5b),
> +	ILI9881C_COMMAND_INSTR(0xcc, 0x26),
> +	ILI9881C_COMMAND_INSTR(0xcd, 0x28),
> +	ILI9881C_COMMAND_INSTR(0xce, 0x5c),
> +	ILI9881C_COMMAND_INSTR(0xcf, 0x30),
> +	ILI9881C_COMMAND_INSTR(0xd0, 0x31),
> +	ILI9881C_COMMAND_INSTR(0xd1, 0x2e),
> +	ILI9881C_COMMAND_INSTR(0xd2, 0x32),
> +	ILI9881C_COMMAND_INSTR(0xd3, 0x00),
> +	ILI9881C_SWITCH_PAGE_INSTR(0),
> +};
> +
>   static const struct ili9881c_instr w552946ab_init[] = {
>   	ILI9881C_SWITCH_PAGE_INSTR(3),
>   	ILI9881C_COMMAND_INSTR(0x01, 0x00),
> @@ -1772,6 +1970,23 @@ static const struct drm_display_mode tl050hdv35_default_mode = {
>   	.height_mm	= 110,
>   };
>   
> +static const struct drm_display_mode w552946aaa_default_mode = {
> +	.clock		= 65000,
> +
> +	.hdisplay	= 720,
> +	.hsync_start	= 720 + 52,
> +	.hsync_end	= 720 + 52 + 8,
> +	.htotal		= 720 + 52 + 8 + 48,
> +
> +	.vdisplay	= 1280,
> +	.vsync_start	= 1280 + 16,
> +	.vsync_end	= 1280 + 16 + 6,
> +	.vtotal		= 1280 + 16 + 6 + 15,
> +
> +	.width_mm	= 68,
> +	.height_mm	= 121,
> +};
> +
>   static const struct drm_display_mode w552946aba_default_mode = {
>   	.clock		= 64000,
>   
> @@ -1983,6 +2198,15 @@ static const struct ili9881c_desc tl050hdv35_desc = {
>   	.default_address_mode = 0x03,
>   };
>   
> +static const struct ili9881c_desc w552946aaa_desc = {
> +	.init = w552946aaa_init,
> +	.init_length = ARRAY_SIZE(w552946aaa_init),
> +	.mode = &w552946aaa_default_mode,
> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> +		      MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET,
> +	.lanes = 2,
> +};
> +
>   static const struct ili9881c_desc w552946aba_desc = {
>   	.init = w552946ab_init,
>   	.init_length = ARRAY_SIZE(w552946ab_init),
> @@ -2023,6 +2247,7 @@ static const struct of_device_id ili9881c_of_match[] = {
>   	{ .compatible = "feixin,k101-im2byl02", .data = &k101_im2byl02_desc },
>   	{ .compatible = "startek,kd050hdfia020", .data = &kd050hdfia020_desc },
>   	{ .compatible = "tdo,tl050hdv35", .data = &tl050hdv35_desc },
> +	{ .compatible = "wanchanglong,w552946aaa", .data = &w552946aaa_desc },
>   	{ .compatible = "wanchanglong,w552946aba", .data = &w552946aba_desc },
>   	{ .compatible = "ampire,am8001280g", .data = &am8001280g_desc },
>   	{ .compatible = "raspberrypi,dsi-7inch", &rpi_7inch_desc },

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
