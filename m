Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D01A9C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 20:46:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4535C61428
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 20:46:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4535C61428
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z7QiPr7RBgesGVLI1eUrEiU1SfclQGs43pB0hEQ20T4=; b=X+R5mbD9rwGOeq30ubwvg8EtF
	jdE/4ocCULzytkYRXjKVSzg0Uk4Cvxz2EZlnXtystLdO0uFnivg5gEzGe4gPlF/WdyxQXn/YPAkIY
	wMaaTuJdI0ZYxBFHfxMg0uDhaTLg5XmxhtcrvH7MA8SjWqKW8lp1KPaT39sxDhuGCPJuGQmEDWehX
	33YZp0y2Hv3XJdR93IruCS+leCQPjOvk5buG5kixs9b6W0IuXTYS0yuAnLEzeIlemneb08XVFAS/l
	l1+uxOhNbZHCB4JnCPvruEx0ydgFltMjpLSPCphhYhMTVzTFrfv/SEPjv7dHJ6BiX7uY0VpIhl0xL
	BlA5UMrXg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZJkF-00FAoW-Vw; Wed, 21 Apr 2021 20:46:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZJkE-00FAoI-2G
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 20:46:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=mwA7U89lJEzuVYY4NBj5/0Sac5QuTUrv3frbg9+Ss50=; b=rUEJe/Al7b4y8te+CKLSu+So9k
 tjwllFJvmcz+uUqR6nGD6W4DyEYjfQDFNG6CFAn1++U9hO7gLY8zBdZJMP2OW4HKz7Jy10qivUhj3
 R5UUW2/WekMehQ+ursKeOxx2wcKUEjM6RDjvyRsVxaw8bdDSiG0bpbZ9da78XSu705L4JebuLagRg
 0Bm89nfEIYgWupb9Iog7Id8uL6QPTwD/jcg1R+GkyD8PF04SiCNijSl2Gd4aO2sbx5CujuN7bL63V
 CafYW/BLotLPRU7LFVGSmgZOa+pbS8at+mgbgPJafT6fC/fqce5SiwDGNv3NfHIWwHhswPvPQ4xkL
 YCFhBUFQ==;
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZJkB-00DBG7-HZ
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 20:46:44 +0000
Received: by mail-ej1-x62e.google.com with SMTP id r9so65441526ejj.3
 for <linux-rockchip@lists.infradead.org>; Wed, 21 Apr 2021 13:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mwA7U89lJEzuVYY4NBj5/0Sac5QuTUrv3frbg9+Ss50=;
 b=OBdZKXQhp6amdUxwDMrxUdDnZ7bFWYnCq2bMTS6vayg38qNR1gjv8QT6w8R/PTcJt7
 5NoFXo74BTSXQ/HVO+54leZVuZY5JT634Kct3cFcm7REIQ9zjDZO4PcNIerT1rqn4nLr
 r4kmaGe54BKlwGItBnrNLAoloTr1kAMy8vRgeiOHrMMWJHouwQ5gw4361lgONTEMPPRt
 Kw6XbuMuFH1Nje755UDVxxmTVqwTzaYyFh3PEHsTsGFtVIp+jn9ah7OY4HpRf4DJ0+Gy
 IIvMoljLhMLuc69Ns6ga4Jyteu5UtwKWk50JL6EsFM3LuGJ+4eEpjIvTKWkMr+3tsKi8
 e70A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mwA7U89lJEzuVYY4NBj5/0Sac5QuTUrv3frbg9+Ss50=;
 b=DUus1v3upH0WlCpn6rvslYHNQhsP5d/g3sIO639Rf4n7JBvpFzLx8k7IwdrQpwLNsN
 iq6hZ34zdURF3aSWw6fCoZBoj/udzDEW+2OYmcS2UUoqX0cYBmT4RTqIXpF72tkbyyMX
 rpuvCFOFmUsb3ilrDm6PLNeCxdXWXSIKzVintQs8HG8KWfPhdMgz1LpnOWAVoIBmpdOt
 mUWe+izunhWcxi5Ytk05djlLQq2/SigiewWsNij5DE51mHJwbGoBtfs/EBcpZoDlROgK
 p+kLyMh5vm8Lm86phTReBmdl0TGi7PHegUkgpBHrbuKpb61mmEbYGTvMwLCtrV1OwTwZ
 kLIA==
X-Gm-Message-State: AOAM53229hNe5NFMRpH4CQlWmnQxEwbUV281Hd4sKCmXioTirG/mGa8m
 +M37pa3o2/gxXa/bIWdIoVY=
X-Google-Smtp-Source: ABdhPJxBFLPcjQTNrrm43tdjwZtx7hu0uaeW/3GTquaWi1R+THhzYJKKVuAn5Ie/9hGb9gUTWfgY/w==
X-Received: by 2002:a17:906:724b:: with SMTP id
 n11mr35008439ejk.338.1619038001132; 
 Wed, 21 Apr 2021 13:46:41 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 ck29sm397680edb.47.2021.04.21.13.46.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 21 Apr 2021 13:46:40 -0700 (PDT)
Subject: Re: [PATCH 1/2] dt-bindings: rockchip-thermal: Support the RK3568 SoC
 compatible
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Zhang Rui <rui.zhang@intel.com>,
 Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com
References: <20210421200445.32977-1-ezequiel@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <557ae27c-1d62-69e0-7ae6-921571059f9f@gmail.com>
Date: Wed, 21 Apr 2021 22:46:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210421200445.32977-1-ezequiel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_134643_631191_603834E6 
X-CRM114-Status: GOOD (  17.06  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 4/21/21 10:04 PM, Ezequiel Garcia wrote:
> Add a new compatible for the thermal sensor device on RK3568 SoCs.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  Documentation/devicetree/bindings/thermal/rockchip-thermal.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt b/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
> index 7f94669e9ebe..346e466c2006 100644
> --- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
> +++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
> @@ -9,6 +9,7 @@ Required properties:
>     "rockchip,rk3328-tsadc": found on RK3328 SoCs
>     "rockchip,rk3368-tsadc": found on RK3368 SoCs
>     "rockchip,rk3399-tsadc": found on RK3399 SoCs

> +   "rockchip,rk3568-tsadc": found on RK3568 SoCs

This is still a text document.
rob+dt has now scripts that check for undocumented compatibility
strings, so first convert rockchip-thermal.txt to YAML and then add this
in a separated patch.

Johan

>  - reg : physical base address of the controller and length of memory mapped
>  	region.
>  - interrupts : The interrupt number to the cpu. The interrupt specifier format
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
