Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63D5FEB64D9
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 02:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfMDzqQLa8OftsBIHvF1RXXELybclncE2MBE5hueKzE=; b=ZGTVe8nexzGGbq
	ogmE16BoPsf3c9ff2D5UTe1I/X6QeM79GmCGFjqiD5gGZ5M4vt4gGH0VWEkmEE5gyX+s+/Buc35tC
	DEsA43OA/eD8uinekmFuTCoLTmnAJQx8mXOqbkc5+Vbm6qdmAbZ6qv5GhbUd6jNrlvTSwNWNEV0k0
	UR9tRaaq4woJViYSxw6pduIfs4rBhLfs1iX83RAB5EkcEo0a1TytxDaYlVfF9Dv9cae9bz2NFxwd/
	nnTzqxUmlAxIXikuPjsC/JJBpKoLkfuean0Yz4TY3vv8Xh6N07ZPnVtp722XA1yO/ZkmlWCMIXWSV
	2gfhvVBBD7+V9R4cB8sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9zAx-00GcqR-27;
	Fri, 16 Jun 2023 02:26:59 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9zAu-00Gcoi-2S
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jun 2023 02:26:58 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-3f9df7eb837so2448901cf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Jun 2023 19:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686882405; x=1689474405;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=1Nh6xty6fyMPcSsjBexapcrYm/c9xHnV2ffbthcEhTg=;
        b=W/LprF5zXfuQ1SQs577NgdEulVne7D+XEEwW+SxswFQwmyeZsqcz6fMsp0wtxMNhD+
         t/KIxNr64FVz63BCxKP6JpIyTEz1+F6mkEbw0CNZ2aJ09utikVsVrqUW+O/oMMZgdPEu
         sN+UHU/16vEF4LXCN+csfI78o71N2biicfy3Fb3WH1ciSOBj9MDrvZdkcCuvnlFX7FzZ
         rnuF+rrOagSNInCZMCdjhkPclH8ZdzuNJwShSEalN47XKXtXXo+TzxPBCxWIC7B3nxj7
         Y6HaDk6B8RPP/nQcEPFFONxQ3nyYL6XNtyn3LHyIZmLeIKAKBzG39WzW63gMYw93q/9y
         PQyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686882405; x=1689474405;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Nh6xty6fyMPcSsjBexapcrYm/c9xHnV2ffbthcEhTg=;
        b=SvbpiHSyp6Ehb7WiFQo9v5ffJOu+6oY0XBZp81gl24tuQMwK0MQrD9EmIfT7VhWgYF
         fmEJR56ncilqAYCGTCUbMKlXQcwQfHZCRD7FS57TQozaryJOgpvQ5BaM1xz5sUbVIIUv
         tt0g7Xzbx2koGOqIxvO0EJTzXrKSG6MioY9dRDTf+eMGah1MVxBHZLJSVWMLIgGb/plg
         I0Rnitew6COXrOumkc3VcFLlc9T0yPE5l8m/mkdkZfK8RrVJjEBETuSHpLk49rSf7pCS
         eczYDeXpqzQdhHPf7MHf8IdX7B8UPbfpUGpedszqdbOCbgsqwKob5f0VsZP/60dhXF7f
         Z+xA==
X-Gm-Message-State: AC+VfDznKzGCkoFoQYjioe+5ociTP9YsxuLqsGpYADI9cZlUM+w8VvQm
	1mZnPkOQDeNT5g0zXzSrtDU=
X-Google-Smtp-Source: ACHHUZ4mITQ2WmBWhHdrscjaSh5CQidTZ22DVfEWY7rSvH/H2Waf4uDjtBkNO6M4cRRAFVgsnJcuiQ==
X-Received: by 2002:a05:622a:19a0:b0:3f6:a92e:7f47 with SMTP id u32-20020a05622a19a000b003f6a92e7f47mr1341480qtc.13.1686882405146;
        Thu, 15 Jun 2023 19:26:45 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id k15-20020aa7820f000000b0065e279c5c2csm12550757pfi.181.2023.06.15.19.26.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jun 2023 19:26:44 -0700 (PDT)
Message-ID: <f6c9fc11-df51-5ff8-c744-3325c20643b0@roeck-us.net>
Date: Thu, 15 Jun 2023 19:26:42 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: usb: typec: tcpm: add get max power support
Content-Language: en-US
To: Frank Wang <frank.wang@rock-chips.com>, heikki.krogerus@linux.intel.com,
 gregkh@linuxfoundation.org, sebastian.reichel@collabora.com, heiko@sntech.de
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
 william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
 yubing.zhang@rock-chips.com, wmc@rock-chips.com
References: <20230616022157.25877-1-frank.wang@rock-chips.com>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20230616022157.25877-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_192656_825721_03232788 
X-CRM114-Status: GOOD (  19.82  )
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

On 6/15/23 19:21, Frank Wang wrote:
> Traverse fixed pdos to calculate the maximum power that the charger
> can provide, and it can be got by POWER_SUPPLY_PROP_INPUT_POWER_LIMIT
> property.
> 

Wasn't this already v3 before ? What happened to the version, and the change log ?
Or is this a completely different/new patch ?

Guenter

> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
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
