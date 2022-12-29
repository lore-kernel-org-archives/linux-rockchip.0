Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE4A6C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Dec 2022 19:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFdqRrkrZvlSbjdA7cW6sYKGxZkc7EZ3JcxDE9J0ONE=; b=T3Vj2eOBklHwY1
	/bAN/OTibMXqMWkHPx7xm53t7OrSmNd/CG8j+A0CxEfe+8tpEibyJrDRHfZZClNs6tFwu1SjwF6R9
	/NnC5rv/ff0kKH6GBJ4dSRinh/KUt8lBnfRaIZ38y3eINgWgIqZVLLcVodZR56te3+9aNedINQxGf
	cfgx5hnk+0g/DZvkVgR5+OZ5kejlmGJNbhmGemY0TMxp0c2cmQ7jua/cLs7mJAHNw2G0lXmXIUF/g
	ChHz4TU+5xSg4VqzsijXLrKXs9De2hs1ALBhHYXm1hmqsgcyPzIC+HYju2iywsE9POzDPs+krwfqK
	yunickWMktSQnB3CEs8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAyAZ-0011jy-Ue; Thu, 29 Dec 2022 19:02:24 +0000
Received: from us-smtp-delivery-124.mimecast.com ([216.145.221.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAxcm-000m7h-Ue
	for linux-rockchip@lists.infradead.org; Thu, 29 Dec 2022 18:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672338444;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ncz/JzRiNhIzkJdS+Qxx5N7DoIcWvm3kfeKHRY93eqg=;
	b=Z7VHiCaqsesVwB+oXV58/FuIz66fJiYbOPok+KccpFE6WC9mFMbGNdpTCd/1o9yzRMMUhR
	vOe5JSrLBHkIn7i3gEHUOsURXtHZ75yKKYkt672eSvC+ZGbzLfLaDonm21pompgOelTfku
	H3JflRIVx+MWUUF7qNmb3Qr3Cu8LMKM=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-2-Bs1HfTSxMYGSCKhFaakdGg-1; Thu, 29 Dec 2022 13:27:22 -0500
X-MC-Unique: Bs1HfTSxMYGSCKhFaakdGg-1
Received: by mail-wm1-f71.google.com with SMTP id m38-20020a05600c3b2600b003d1fc5f1f80so13036566wms.1
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Dec 2022 10:27:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ncz/JzRiNhIzkJdS+Qxx5N7DoIcWvm3kfeKHRY93eqg=;
        b=JRVDqkmBD13OD+vLgDd2Fm6YgtlcT7fXZRhK6fM6sHIIkd6kFz7Np6iQ72NHle7rkn
         KR4kp3Kyd6KruyHCX9zJa1YVpOZKmEz/pJVgcqmUCMEjWrBq/wzuw0stDlb986JyCYQR
         S/QOWP+WnmVmcWNPjKYqMh+EMX3YE2ksOnGJNTDI2j5YRiJwC4Fxv5kel/4EbaYFR1WW
         btBmYv6KOdBeJ8HMV0W9g3zABbVJXblJW+xmkjpgiwDObutN/M4vj76cpqp6RNmZjcT3
         AqeMun6YfrqipwrK31O5ptDGVYbL9osPPbkIxcFcTsGDgQnEorq0EBiMRSBKTrR2ltDb
         9orQ==
X-Gm-Message-State: AFqh2koDPlQSsv1mfTkReZpQvjP5GeEgQ8Prtw9v/rBjhVBXmZHHrrBZ
	Rdw32WFugLCv6VUqKgqsuHQM6WFGSevOSGYPm2Stp98W1nuel5xXuzyEtkh7UA0q295YqAqhsWQ
	rpQ2C/zMjqHAX0Htg7cOlib0Z1BAhhbEA
X-Received: by 2002:a05:600c:34c2:b0:3cf:7397:c768 with SMTP id d2-20020a05600c34c200b003cf7397c768mr20815948wmq.30.1672338441682;
        Thu, 29 Dec 2022 10:27:21 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsCc4gewdGeIbLXPGQ/OrYxNRihTGtBQpf+uuO+YOr1Ab2iTKmz/boWaAqV5T2Mf4PPK2R80w==
X-Received: by 2002:a05:600c:34c2:b0:3cf:7397:c768 with SMTP id d2-20020a05600c34c200b003cf7397c768mr20815935wmq.30.1672338441496;
        Thu, 29 Dec 2022 10:27:21 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id g7-20020a05600c4ec700b003d978f8f255sm22278897wmq.27.2022.12.29.10.27.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 10:27:21 -0800 (PST)
Message-ID: <257b19f7-89ce-39cd-a403-b5a03d92c7bf@redhat.com>
Date: Thu, 29 Dec 2022 19:27:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] mfd: rk808: re-add rk808-clkout to RK818
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, Lee Jones <lee@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Ondrej Jirman <megi@xff.cz>, Martijn Braam <martijn@brixit.nl>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221228140708.26431-1-tom@tom-fitzhenry.me.uk>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221228140708.26431-1-tom@tom-fitzhenry.me.uk>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_102729_140576_C40C2979 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
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

Hello Tom,

On 12/28/22 15:07, Tom Fitzhenry wrote:
> Fixes RK818 (e.g. on Pinephone Pro) to register its clock, without which
> dependent devices (e.g. wifi/BT, via sdio-wifi-pwrseq) fail to probe.
> 
> This line was removed in commit 3633daacea2e
> ("mfd: rk808: Permit having multiple PMIC instances"), but only from RK818.
> 

Maybe add a Fixes: 3633daacea2e ("mfd: rk808: Permit having multiple PMIC instances") ?

> Signed-off-by: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
> ---

The patch looks good to me.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
