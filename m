Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (unknown [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44855C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Apr 2022 16:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w+u46kevnZ3N29pbm11K850LLJ7rnsQ1FCiIqIv0R98=; b=G5cWM/8oCVcaG8
	XZrF+3YTpr2WQHktul5YJRuSboO3OO61NG4H2wfNDqbXksQD4IRXlCuzREO9eRu9hQ/gnwcicbogV
	TGtymcZb7kjw0MeiwHUhzRGJy9VUgfYkmLi5vwfD/DmM7OiE4z9trWya3GejKE+O7XG+vvFesQ0ES
	jeXQUiPRL2KihVpVGgUYBMiy84guZe2SJpQFmNx7jURlSPsGtdiUAciZ4Wcrf4Cya4UWThC/LK+Wv
	Ewj6NkkQXx67AHSxXGnoh73RKqYGiK0YjOAvJ9+YXZX9SsaMjvha70zkxseHtfDWywdU56EvM0Y9o
	GKN0G6pNLxVXlQhUZTsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndE2S-003UfQ-Q5; Sat, 09 Apr 2022 16:34:16 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndE2P-003Uej-Nk
 for linux-rockchip@lists.infradead.org; Sat, 09 Apr 2022 16:34:15 +0000
Received: by mail-ed1-x530.google.com with SMTP id 21so145060edv.1
 for <linux-rockchip@lists.infradead.org>; Sat, 09 Apr 2022 09:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=nUZdaUByUd2oyvVVkc2cTTmF9WFGS+wYx2itfPiCpyw=;
 b=LFHLmMtAp5/v+tMcaSAhOV1RQm/QFN47xz65+zvZ1U0kEfou5agMe7bnQHZbA6dnto
 EZldr8j8vgWEoYZMWxiMkkxo/1VVMk1Se9QIC4QdaX6folPseoRsGwEU3zv9Z8QyIDiZ
 xiinIbOjTrga/QcPl84IfwqsdZjtWDwQrM3LPCF0SAWoyQp2RVd4I0UGSeh0bmTGik/W
 0BTkMqYvW9Mjq2CR3rrsglfVQQkYcYuuIi3it2h1izY7+5mMID049SR8r923I5aZxZpE
 Pg2YRiI3JrbM4GLcW9tspxLm7xj6a4UhTCN5U6ltIxUAeaZBFH+Ka/iqtZl2c+hSMvKR
 6Apg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=nUZdaUByUd2oyvVVkc2cTTmF9WFGS+wYx2itfPiCpyw=;
 b=hNZ7uWDJq7oW58gEaOV/sHYKySQZ7FEetW7B/q6jWYmenZfYH8hfcoZLzbFc+OBjya
 m8Uo7+Jt45+Lj/T27+QYDhb6Wc/tqLp0991TvSBeyhYZ2Hvp34bevKe084SiLyHEmzMG
 PdLs72piHL2CrbqwV/xPNJ6irGGwQwJwz7CJAVWBOYweF6qx2imtatL2f82pxor0efVQ
 XzI+TNNXQaK7gFPw0ig1P2789oF9Dh9LnoqAFLx83dl2nTlJEjVerwzoTiLSPrB+aKAi
 ZMyquvhKUY7EfnjWgvot7iZR3ZQI6REnsQmjelCaNxa+ZQdzYrTLy6uWU1E5LF5gaepD
 NY3g==
X-Gm-Message-State: AOAM532eKwZYYA7dTd9GeNYUuwW5pirzgGEDMUfL5zfNmrvjkzBbt/Ct
 g7wTooU2BatNcqazFJbufEM9mg==
X-Google-Smtp-Source: ABdhPJx5nFYPFtenLrOC6J8muwwdyr+0iYIyt/FsLEvA+W3HK675A/7AZ+Gcr70qOjh2IrwH0u3dRg==
X-Received: by 2002:a05:6402:458:b0:418:78a4:ac3f with SMTP id
 p24-20020a056402045800b0041878a4ac3fmr24572034edw.196.1649522051814; 
 Sat, 09 Apr 2022 09:34:11 -0700 (PDT)
Received: from [192.168.0.188] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 sa19-20020a170906edb300b006e7fd5bfd51sm6156260ejb.177.2022.04.09.09.34.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 09 Apr 2022 09:34:11 -0700 (PDT)
Message-ID: <64fec9b9-d52b-b247-9575-536b3311f591@linaro.org>
Date: Sat, 9 Apr 2022 18:34:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/4 v6] dt-bindings: Add Rockchip rk817 battery charger
 support
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 zhangqing@rock-chips.com, zyw@rock-chips.com, maccraft123mc@gmail.com,
 jon.lin@rock-chips.com, sre@kernel.org, heiko@sntech.de, krzk+dt@kernel.org,
 robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20220408212121.9368-1-macroalpha82@gmail.com>
 <20220408212121.9368-2-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220408212121.9368-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_093413_990662_C6274667 
X-CRM114-Status: GOOD (  10.48  )
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

On 08/04/2022 23:21, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Create dt-binding documentation to document rk817 battery and charger
> usage. New device-tree properties have been added. Note that this
> patch requires the following commit (still pending):
> https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20220404215754.30126-2-macroalpha82@gmail.com/
> 
> - rockchip,resistor-sense-micro-ohms: The value in microohms of the
>                                       sample resistor.
> - rockchip,sleep-enter-current-microamp: The value in microamps of the
>                                          sleep enter current.
> - rockchip,sleep-filter-current: The value in microamps of the sleep
>                                  filter current.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../bindings/mfd/rockchip,rk817.yaml          | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
