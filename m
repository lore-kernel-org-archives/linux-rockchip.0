Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2986CC46467
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Jan 2023 10:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uk/gHZmaHwAfrQz1cLLDu6hH7QkACv8jh+JxEtQzwAU=; b=LDGG7lWgV1y/5LlinXeWtLwFSk
	gGFM/KjYYE7QpWOt9hhQu1ODLcX5Sq11oFR4UY29eltNmGywZTtvToHJr8p0HUl117omTpf1tHjzX
	eKHr0j6YAzXF6QH4KnnF20U7tOXn/uS43WEWOByqX8Rtw3qkSh9tKdiN8cmh4gAkIllH9URsObPtl
	BbcKxkW1zrxJEFikhx+icN24w79PCR4qE4qpJpotCLYWnmgKFJejRAxrKnD0lJJs3oiH1rk0ZjSwv
	1ra+Mw0blv0EUF7VhLGD/JeI8NWGEX8gvmXR4WHj12X2HgQ0GZ+E7jy2QkA77YLIyjgazukunVZxN
	qTSE/8BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCHiZ-00AEeQ-1W; Mon, 02 Jan 2023 10:06:55 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCHhv-00AEI1-F9
	for linux-rockchip@lists.infradead.org; Mon, 02 Jan 2023 10:06:16 +0000
Received: by mail-wm1-x333.google.com with SMTP id k26-20020a05600c1c9a00b003d972646a7dso17254424wms.5
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Jan 2023 02:06:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=F1RL6LflIG8Mw7UlknL1u+EpOcbFN6xIFh4jzQAsTkA=;
        b=nxyBhliPiMemarZoDV3u8Mwu+5EB4RlTq20rm2hG34ycFDjLE/LzFRAfg4xxCcK/qi
         995TJhcNh9A+kioKUMJMkg2wAQQ1GbQQy2w10Uucncx7gVrcJ1beY+QkpGNg0/90P+Zd
         L4a6olXJ7D7O5Sh4LTg72EE+dPTkd1umQDSqE6Hi4/j9hWTuAtqlb+u0gVRX4e13yONp
         m9trj97VWd70g2NeMOhx3r7DnqR1tlX1QHpZfZtRRYxiTlDJl3jDPPdbU1ZQlubiboU5
         StUq4gZyYQpo0D/882+2uK5izZ/sICUiEZ/sOYmN4h6rs16jnZgR68++1wzkfrUVBMhH
         H58A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F1RL6LflIG8Mw7UlknL1u+EpOcbFN6xIFh4jzQAsTkA=;
        b=uE2vty6gZovI9ArGkdCOerg8PwkZVo0/pjxsoodojhsvmzL9xcILG+akitzmbmmS/E
         wq/wm1gTEHQI2SRMFaPAkMUe9ewz/tz5d7Kl3AyBbqn0JtMJ9TkkOmYAlmAI3VgHz2Cx
         bNx7yVuFMQ8GLCIRDPjq5h56iibceFZrsD46HXFKg1zqPiMRTsrPMp4yxc1Xbo+QHF2q
         EhPX5po1ot17TdLnMPU/L1l2T8jnR/db7krp3J+RItPvl2JcaGHu8biKfHRCcVsyjX5C
         kHwJGn7qhxs0clvt+fQGiRbQ9Z4VJHf29tLCRUs9uLUaK/NkIRsBd6tl2qa+SwvR5lQP
         UQMg==
X-Gm-Message-State: AFqh2krl6jZchOHBXqGGx7K6yQMitNTXsN/lC6hr0Kx1pgY/iLOtVX4B
	6OcTXGNtoUj2j/1mwl8DwCHFkw==
X-Google-Smtp-Source: AMrXdXv4JA4tlRg9gobOljg3u3b3xyCoqMnyrpZqgffOFiHxr55dZw9X/PXLh6neNwbEAaaR4q2SZg==
X-Received: by 2002:a1c:2bc1:0:b0:3d2:fbab:3609 with SMTP id r184-20020a1c2bc1000000b003d2fbab3609mr28458725wmr.27.1672653974222;
        Mon, 02 Jan 2023 02:06:14 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:4f32:f70:35be:acf9? ([2a01:e0a:982:cbb0:4f32:f70:35be:acf9])
        by smtp.gmail.com with ESMTPSA id n36-20020a05600c3ba400b003b49bd61b19sm44890446wms.15.2023.01.02.02.06.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jan 2023 02:06:13 -0800 (PST)
Message-ID: <3f40e58a-dcd2-7c9a-1a9d-cae36719352f@linaro.org>
Date: Mon, 2 Jan 2023 11:06:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] mfd: rk808: re-add rk808-clkout to RK818
Content-Language: en-US
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, Lee Jones <lee@kernel.org>
Cc: Ondrej Jirman <megi@xff.cz>, Javier Martinez Canillas
 <javierm@redhat.com>, Martijn Braam <martijn@brixit.nl>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221228140708.26431-1-tom@tom-fitzhenry.me.uk>
Organization: Linaro Developer Services
In-Reply-To: <20221228140708.26431-1-tom@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230102_020615_607226_0A496387 
X-CRM114-Status: GOOD (  15.19  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 28/12/2022 15:07, Tom Fitzhenry wrote:
> Fixes RK818 (e.g. on Pinephone Pro) to register its clock, without which
> dependent devices (e.g. wifi/BT, via sdio-wifi-pwrseq) fail to probe.
> 
> This line was removed in commit 3633daacea2e
> ("mfd: rk808: Permit having multiple PMIC instances"), but only from RK818.
> 
> Signed-off-by: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
> ---
>   drivers/mfd/rk808.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index f44fc3f080a8..0f22ef61e817 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -189,6 +189,7 @@ static const struct mfd_cell rk817s[] = {
>   };
>   
>   static const struct mfd_cell rk818s[] = {
> +	{ .name = "rk808-clkout", .id = PLATFORM_DEVID_NONE, },
>   	{ .name = "rk808-regulator", .id = PLATFORM_DEVID_NONE, },
>   	{
>   		.name = "rk808-rtc",
> 
> base-commit: c76083fac3bae1a87ae3d005b5cb1cbc761e31d5

Sorry, my bad...


Acked-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
