Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAF4AC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Apr 2022 14:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YBiuSYo4vdiQurkX/3x7ouToaA/NClIjxx253hIwzCM=; b=nEW7awrE5aYeDT
	dVHpczO0Pdsidof91L3sEe3qRIVQXSD19ZGck//1l1n2srZGy9YMaNF1YF3rYMf5DT17iITVmI7T/
	3K2wmI4Ww2Y37O8TRnoYQdTbGVnpfZLwLPv3egptkFvwa5vFr+nFeIlzwrBHG+SE0/unjL/35bdL9
	tqhIzmqfzLPjZsDmsfDfRj3UwISoEXNWr+UneCacaJ9Cq4wl8Id+n7yXXbizw5saLclsbofFEjIi0
	v0zXONx9aD2aOnsAU83nvnilhWnluvtowgzo+7QKV0LVxlszr2H+edwzqLt/6dqefB3NQpve4Oo8V
	oWd2Q8O9QUMgYqR8jY8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbjr8-001KsM-2h; Tue, 05 Apr 2022 14:08:26 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbjlO-001Hs7-4R
 for linux-rockchip@lists.infradead.org; Tue, 05 Apr 2022 14:02:31 +0000
Received: by mail-ed1-x52a.google.com with SMTP id x20so7153149edi.12
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 07:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=YlvhCz+ZwurBoa4Dacny1n1zKhjoK5WjTu0ka6Xew2M=;
 b=JaBFqrGP/LYxuwnv3xPeUZFSgFCaYAP5Cc9OnqSilE1X0S9oVVSJ6EXMxe2neL3/Nd
 UhH6K5oc0/icf2hvVcQMP+5db7MSeRmMi563yaeNeT+3++H8cmrbblbpCfE4FwTqHzFY
 fBYh0THevDP3AxNl1qULJ+90gVVY4UUnhq8zUqTqnkKltzk5/ohQCROKxreOym0ut+vH
 ZxmBxwEvfGIXQMDbxsYvxty0q/GfInzTR6SY0DenLzomyHKmwQAK4xWnvfBJTF3qBLTp
 wG55NcoLaZfESKPsmdfJq+7EdqRxzt6kdl5p53pg/g96/ZlTjA7glASSgRLOCU+Qpijr
 Ejtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=YlvhCz+ZwurBoa4Dacny1n1zKhjoK5WjTu0ka6Xew2M=;
 b=YoxZHROpZvTjnxoU5B+sSLBP6nRN+SsY6td7VT5S+/P8190EWNZuv9ph/Pj/9XHqmX
 sRj2ejKwjeUgVHmHSAAh2RKJVi5soXZIBZpFnmbZohqg6qb++Jd42dHycFgip8OX8NCj
 LJUEN+RmusXn7Lo46Cfd5bzX0WyghFLy3yi7tTp6fFtZ0KnESU+GqGbfvMXm6YcD2BTa
 BJuTVT5T/mAhZiqLObfkWqdp3Kg5dI5I0wehJnKMUlxnCdaDbB+O2tSgs5klxg+hFRgE
 /RPjHfmR7keEG6qoKgtKWQZZEpDjoArksNmCENQqnT8ooiCMqiLURt1cq7tToWDwQ2lj
 pu4g==
X-Gm-Message-State: AOAM5326zbd2tarecJDgvLfmmYzTT9myAoftStBEJGJUsrahUqaGb8rA
 0azFwiLMVLddVCDE/7Rh1RXmXYFTCUQK7obY
X-Google-Smtp-Source: ABdhPJzisQRw1uJSXOH6nUs9bMEsOFb2+0Ji2PIRWukr5+WRXSVe+El5YGq6vFp27YKEFnRXxC1ZRw==
X-Received: by 2002:a05:6402:26c7:b0:41b:7aef:bdf6 with SMTP id
 x7-20020a05640226c700b0041b7aefbdf6mr3834868edd.210.1649167344648; 
 Tue, 05 Apr 2022 07:02:24 -0700 (PDT)
Received: from [192.168.0.182] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 j12-20020a50e0cc000000b0041cd813ac01sm2630767edl.28.2022.04.05.07.02.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Apr 2022 07:02:24 -0700 (PDT)
Message-ID: <7ee4c8ab-595e-eaab-6f52-a97255ec032a@linaro.org>
Date: Tue, 5 Apr 2022 16:02:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/4 v5] dt-bindings: Add Rockchip rk817 battery charger
 support
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 zhangqing@rock-chips.com, zyw@rock-chips.com, jon.lin@rock-chips.com,
 maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20220404215754.30126-1-macroalpha82@gmail.com>
 <20220404215754.30126-2-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220404215754.30126-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_070230_251027_8E31E86B 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
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

On 04/04/2022 23:57, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Create dt-binding documentation to document rk817 battery and charger
> usage. New device-tree properties have been added.

"Add new devicetree properties." instead of mixing tenses.

> +
> +      rockchip,sleep-filter-current-microamp:
> +        description:
> +          Value in microamps of the sleep filter current for the charger.
> +          Value is used by the driver to derive the sleep sample current.
> +
> +    required:
> +      - monitored-battery
> +      - rockchip,resistor-sense-micro-ohms
> +      - rockchip,sleep-enter-current-microamp
> +      - rockchip,sleep-filter-current-microamp

additionalProperties:false (on required-level of indentation)


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
