Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9123AEB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 08:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/LgvG85KGEGgg6fz/rwoq02nBqqbPiUNYA6SLoHt4kA=; b=EHa6pm4eS9jmxZ
	dfh+zMJfpAWcirNEgn/5BLaUKEddXEFqUKFJfxsUFhDGrH1YSORe/oyUPUV9+p+qbyG+RdaHL4HS9
	gKTj/rh4C4gDWmP1+BYKiYI98G5iYtuw5WCC8b1MnPXxu9Xt0uQy+zKd4qsv6XJdFdCdSl5+uOiCr
	UAldw8AozmJZ93HLmrTj9zRAFRHAX67fQH+qTh9OWVub3GGb+FWuFkpEbR9awAH6oLisp5F8VLr52
	D0kwpwXLjCGLwMKg+EINfl2ieqVNb4jjfAKThnDzih+oA0KTvFR+714TJW+n+sJj8ahgYfPE9PpD6
	UnahGslsTAOPi49It8ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA4x2-00HHyM-0G;
	Fri, 16 Jun 2023 08:37:00 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA4wz-00HHy3-2t
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jun 2023 08:36:59 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-666779dcc8aso576631b3a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Jun 2023 01:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686904617; x=1689496617;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=nUlEB85EedtTo7OUJk0cAfjzVwwMnBPTvHZqfkQyPPQ=;
        b=VDDnrIpw3pzhevob8HGkFgTUouneIhx+sEiJKDzhrJ02OIZnMMBuWDmwfeUh9M0z3Z
         JfcMSiUuJW/htSld08DMgr1rZ+oL/rA/miIF6T3cZYs0Ut4TnEpOJbW+xmm9eMDam9bm
         Ba8rS/Q7IBwFFWjwXmCKgpAqJyLQcKuW2qwDDbLmM5EGhRhtkFwbO+X+W5cYjhWrZFA1
         jvBC6tuTv5JBnApGykloAtYOi++oajLeLIgdfYUs92GI11FNhNkbd444Zc+iSMB7K0Bs
         +ORiQEdCGZ+n2XfO7J0qCu5xaBjKtXB5f3+5OuUg1zKU8DG3+b5s2rIMEgrsIIozP7fZ
         GV5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686904617; x=1689496617;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nUlEB85EedtTo7OUJk0cAfjzVwwMnBPTvHZqfkQyPPQ=;
        b=UetnVGAdZOfGZ0pW1x/cs2bj5Uree5CTEtsDbUKjIEvpElhm+EjzL9f6kLce3WPEfi
         5KKxsY+znlD8tuCYr6mfTifZVQO2T1/eipVmZDJmsrPqXbl9HfH17D7wBxXWVMrOuqpS
         kI/TejTm99aJ1UNSQuHAfBK1g1TObKchV1LU8T3c1+2ZF+rO7GFMyYXRi9uBKvOlg2JB
         kc7blnQNQ4BxNHzDB7myGxB0bTBnNrfIDdJgHu4Ab5FPlCGdGUSM+/UN26imox+Bkh9U
         SI9Wyoe74+LlKNVXzpbMpSqEzimFU8cAP7ayWa3y0FvgE0mIfv5txONGafpUxO2qjxL2
         Ov7Q==
X-Gm-Message-State: AC+VfDyaqaVRbBgd0M4o2o2+UwenTsGiSN0Jbme5I3g074KrskzKDjx3
	Hmxux5EAG8hqWDwG5GrCPgE=
X-Google-Smtp-Source: ACHHUZ6nqK4iJUI8WPqvd41ASoWrx39rLHYtAhosJEBQ+9LNfrs4NjOhNzdcaUXV5CkIH3x0fpgH6Q==
X-Received: by 2002:a05:6a00:1515:b0:658:8eae:a8de with SMTP id q21-20020a056a00151500b006588eaea8demr2130852pfu.4.1686904616766;
        Fri, 16 Jun 2023 01:36:56 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id 26-20020a63175a000000b0053f3797fc4asm13966589pgx.0.2023.06.16.01.36.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jun 2023 01:36:56 -0700 (PDT)
Message-ID: <df28b348-28c4-a1ef-1d7e-46a60911ebc4@roeck-us.net>
Date: Fri, 16 Jun 2023 01:36:54 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [v4,2/2] usb: typec: tcpm: add get max power support
Content-Language: en-US
To: Frank Wang <frank.wang@rock-chips.com>, heikki.krogerus@linux.intel.com,
 gregkh@linuxfoundation.org, sebastian.reichel@collabora.com, heiko@sntech.de
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
 william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
 yubing.zhang@rock-chips.com, wmc@rock-chips.com
References: <20230616075241.27690-1-frank.wang@rock-chips.com>
 <20230616075241.27690-2-frank.wang@rock-chips.com>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20230616075241.27690-2-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_013657_958105_9AC42468 
X-CRM114-Status: GOOD (  19.13  )
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

On 6/16/23 00:52, Frank Wang wrote:
> Traverse fixed pdos to calculate the maximum power that the charger
> can provide, and it can be get by POWER_SUPPLY_PROP_INPUT_POWER_LIMIT
> property.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> Changelog:
> v4:
>   - No change
> 
> v3:
>   - Use Microwatts instead of Milliwatts to follow the ABI, commented by Sebastian Reichel.
> 
> v2:
>   - No change
> 
> v1:
>   - https://patchwork.kernel.org/project/linux-usb/patch/20230313025843.17162-4-frank.wang@rock-chips.com/
> 
>   drivers/usb/typec/tcpm/tcpm.c | 24 ++++++++++++++++++++++++
>   1 file changed, 24 insertions(+)
> 
> diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
> index 9f6aaa3e70ca8..829d75ebab422 100644
> --- a/drivers/usb/typec/tcpm/tcpm.c
> +++ b/drivers/usb/typec/tcpm/tcpm.c
> @@ -6340,6 +6340,27 @@ static int tcpm_psy_get_current_now(struct tcpm_port *port,
>   	return 0;
>   }
>   
> +static int tcpm_psy_get_input_power_limit(struct tcpm_port *port,
> +					  union power_supply_propval *val)
> +{
> +	unsigned int src_mv, src_ma, max_src_uw = 0;
> +	unsigned int i, tmp;
> +
> +	for (i = 0; i < port->nr_source_caps; i++) {
> +		u32 pdo = port->source_caps[i];
> +
> +		if (pdo_type(pdo) == PDO_TYPE_FIXED) {
> +			src_mv = pdo_fixed_voltage(pdo);
> +			src_ma = pdo_max_current(pdo);
> +			tmp = src_mv * src_ma;
> +			max_src_uw = tmp > max_src_uw ? tmp : max_src_uw;
> +		}
> +	}
> +
> +	val->intval = max_src_uw;
> +	return 0;
> +}
> +
>   static int tcpm_psy_get_prop(struct power_supply *psy,
>   			     enum power_supply_property psp,
>   			     union power_supply_propval *val)
> @@ -6369,6 +6390,9 @@ static int tcpm_psy_get_prop(struct power_supply *psy,
>   	case POWER_SUPPLY_PROP_CURRENT_NOW:
>   		ret = tcpm_psy_get_current_now(port, val);
>   		break;
> +	case POWER_SUPPLY_PROP_INPUT_POWER_LIMIT:
> +		tcpm_psy_get_input_power_limit(port, val);
> +		break;
>   	default:
>   		ret = -EINVAL;
>   		break;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
