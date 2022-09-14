Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFBF3C54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Sep 2022 00:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ap7erX6wcm0oExfokVv3moG8IjdC2AB9q7TyntN80s=; b=f5vS4UZsGuww0Y
	7BKg4szoXwzpYlCDmqIGmsLe666DAKV/TMyGtlJcRXE97YiosYa5aiP8VHT8ywRXnnnK9Nmc1KENY
	6KY3J3mmfXxMSn8lpFRar6J2A1Ifk0wUkkkJng7W6vEcLw8GrZPFiWTZaWgg+EKXgUlm5lJT9YcdP
	UCKCMjAjo8NkofftF1Wmp7Dbl/ImMu6NHTqw5ITXsensE64YqHwv5uCOOHv+TJ2LPi3NitFcTOouv
	4tS65UC7/6jy8vKj2TnRNoYUK4BrYhR/Jhu/0M3BQzjtuzjUmcnlHkkg84rsXqfOll+qkR5ZaRVe5
	kroxiiV0yBG9LyMv3ORA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYGWL-002crX-Ko; Wed, 14 Sep 2022 00:44:53 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYGW5-002cOB-GG
	for linux-rockchip@lists.infradead.org; Wed, 14 Sep 2022 00:44:39 +0000
Received: by mail-pg1-x52e.google.com with SMTP id bh13so12876309pgb.4
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Sep 2022 17:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=JXX2yS5w/1K++xKOiGHpDn/FwBROGsdDBxX7sv52/PA=;
        b=QaZWAqqjlNSnM9eoLwGlfdcvS5Nm3ykDJiGkepiKjoJDuzOmgk+LeqWTuJlwQ2hnrN
         8RdxOL9ObiMEmA6sPW8bi2Iq/ETi05CQIn5QvWwuchqlHThXGXJWIPupmIWIdEzmbqqI
         FV9XsXAZ5+surbB9bBKoTYDFfdxjtW8Rx1wpQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=JXX2yS5w/1K++xKOiGHpDn/FwBROGsdDBxX7sv52/PA=;
        b=OgBkvhWnwMeyCf6m0dF5ImBjL80ASS6PzsfBL/UUPr17mzsrSbYNi2orRXpYTIun3y
         LWa9RFFUid3bKXzzwWiYN0rowELfgba0qCzoQvMhul0y2nkPn+Og2lqmT9sTZDmDvgEz
         J7JMqS4z5GRmKj2e8IX740537Q8tK/hhydMFRna0lh0rU6e8UwpLvVQIYYPDKndvRh/m
         cRlo29F1RyB/CPSTebIxEn8CMkRwAykfnPY0UF+B7+NnxDj/KzHDs6Mkvm/LUcCPJr9h
         JYIH1g+52c9pnPOn6VZqXgasW2hBtAAXhhHm0xRm27HvEz9AHlI/zQyQzn0jj7JTZvXk
         aonQ==
X-Gm-Message-State: ACgBeo1GSQbr0KMdC8aRXz7Qf+R7hhxmFvMAvPU/V6dffF/JEQs2dmL+
	+pbJ/oZ9sprM1SvmjJQmenvweA==
X-Google-Smtp-Source: AA6agR6ajxSwu4MvfAwZmD5yw6opa0TwZ5rTZVuxPSBg77ll7+TMZQhGr2Z2ZdDujviVh4x3iCUFeg==
X-Received: by 2002:a63:698a:0:b0:41c:8dfa:e622 with SMTP id e132-20020a63698a000000b0041c8dfae622mr29387714pgc.465.1663116275332;
        Tue, 13 Sep 2022 17:44:35 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:c6e2:a019:5c54:fb4c])
        by smtp.gmail.com with ESMTPSA id 21-20020a621515000000b0053e5ebafd5csm8462402pfv.189.2022.09.13.17.44.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Sep 2022 17:44:34 -0700 (PDT)
Date: Tue, 13 Sep 2022 17:44:32 -0700
From: Brian Norris <briannorris@chromium.org>
To: Judy Hsiao <judyhsiao@chromium.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Chen-Yu Tsai <wenst@chromium.org>, alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] ASoC: rockchip: i2s: use regmap_read_poll_timeout to
 poll I2S_CLR
Message-ID: <YyEj8FC9YtnCScWW@google.com>
References: <20220908151142.1479810-1-judyhsiao@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220908151142.1479810-1-judyhsiao@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_174437_576396_96F832C8 
X-CRM114-Status: GOOD (  23.16  )
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

Hi Judy,

On Thu, Sep 08, 2022 at 03:11:42PM +0000, Judy Hsiao wrote:
> Use regmap_read_poll_timeout to poll I2S_CLR.
> It also fixes the 'rockchip-i2s ff070000.i2s; fail to clear' and
> return -EBUSY when the read of I2S_CLR exceeds the retry limit.
> 
> Fixes: 0ff9f8b9f592 ("ASoC: rockchip: i2s: Fix error code when fail
> to read I2S_CLR")
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>

Thanks for the patch!

> ---
>  sound/soc/rockchip/rockchip_i2s.c | 39 +++++++++++++------------------
>  1 file changed, 16 insertions(+), 23 deletions(-)
> 
> diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
> index f5f3540a9e18..02905eec615e 100644
> --- a/sound/soc/rockchip/rockchip_i2s.c
> +++ b/sound/soc/rockchip/rockchip_i2s.c
> @@ -163,18 +163,14 @@ static int rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
>  						 I2S_CLR_TXC | I2S_CLR_RXC);
>  			if (ret < 0)
>  				goto end;
> -			regmap_read(i2s->regmap, I2S_CLR, &val);
> -
> -			/* Should wait for clear operation to finish */
> -			while (val) {
> -				regmap_read(i2s->regmap, I2S_CLR, &val);
> -				retry--;

I think you're leaving |retry| as a "set but unused" variable now.
Presumably some compile-testing bots will eventually complain at you
about that.

> -				if (!retry) {
> -					dev_warn(i2s->dev, "fail to clear\n");
> -					ret = -EBUSY;
> -					break;
> -				}
> -			}
> +			ret = regmap_read_poll_timeout(i2s->regmap,
> +						       I2S_CLR,
> +						       val,
> +						       val != 0,
> +						       20,
> +						       200);
> +			if (ret < 0)
> +				dev_warn(i2s->dev, "fail to clear\n");

Now would be a good time to print the return code, I think:

				dev_warn(i2s->dev, "fail to clear: %d\n", ret);

>  		}
>  	}
>  end:
> @@ -226,17 +222,14 @@ static int rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
>  						 I2S_CLR_TXC | I2S_CLR_RXC);
>  			if (ret < 0)
>  				goto end;
> -			regmap_read(i2s->regmap, I2S_CLR, &val);
> -			/* Should wait for clear operation to finish */
> -			while (val) {
> -				regmap_read(i2s->regmap, I2S_CLR, &val);
> -				retry--;
> -				if (!retry) {

Same.

> -					dev_warn(i2s->dev, "fail to clear\n");
> -					ret = -EBUSY;
> -					break;
> -				}
> -			}
> +			ret = regmap_read_poll_timeout(i2s->regmap,
> +						       I2S_CLR,
> +						       val,
> +						       val != 0,
> +						       20,
> +						       200);
> +			if (ret < 0)
> +				dev_warn(i2s->dev, "fail to clear\n");

Same.

>  		}
>  	}
>  end:

Otherwise, this is definitely a good change, since we have no timing
guarantee on the existing retry loop, which will surely make it flaky.
So, with those fixups:

Reviewed-by: Brian Norris <briannorris@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
