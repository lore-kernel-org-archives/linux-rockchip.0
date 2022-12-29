Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90880C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Dec 2022 10:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbnzMfwN3lPyGdiVeTCugthKFvhE9OYZmUFccPuauMM=; b=Kmnm6FARARv87t
	XNqV+B5erHWzNqxD5tsbSlNIQ1VRkt7vpbG3JNyXxIn9eLkT39DvrCCQIbzqcvNHCz1pubSq9qDK3
	ef2xG2fZUD2zswehwqij8NxOnFBEMEAa1yhyj8dxfvOmg3heQpmOe2Qxglw2pdnmY6QY7E3bPccHX
	7wzpPdZHzlvgnVse+ZGLM/wDO+7NtMmcBkQ9YiK8U21O/PjDznqrF+/0Di9u/jQW74xunKJDuXuhc
	UW2Vpt3Ff+JhvT1rGAlv9syZM7tEjpfIOhTzmJ5MW1ZYhCHahR6DLMH9/BeOmP704R9hoy7kQdKZd
	StWyaPSvTi0sTnwjXwYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAqBo-00EhyA-AO; Thu, 29 Dec 2022 10:31:08 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAqBc-00Ehss-5n
	for linux-rockchip@lists.infradead.org; Thu, 29 Dec 2022 10:30:58 +0000
Received: by mail-lf1-x131.google.com with SMTP id bt23so10307476lfb.5
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Dec 2022 02:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iAox9jZdEvifzmLQL+c6tUgFpF++A9pWe7sG2ptRj0I=;
        b=vW6WcxQf2oA57xpF12GrMN5nxO7C+GTBWRcwy6OFCaQ1xipbnG2BJ3uqema3wdK+df
         2x/+KN367tqENjlU619vns3XOhuW+19APzRsdN7o6SX2WrIRHAYFAoPKlXMbJH+ME1Gd
         eC2mihlLh2q+JUxZvFvcTE0wIk7Ye7MbIZ3H4Z4h/kL3FMUJJdY0uu9D5DdYs2xB7ebR
         wDsFP6ownoJPAxDyIlGLDQK2qFhcKuHZ7Ydv+hhzGyj+/w4WvEYdiwAtCDn/mayPKvya
         plVvgsNoqiJC/agaS3LXF+CQQdl9yngkvMS9NzbUftg+6EBOP45InBgxPS+p9SnA8qHo
         iiBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iAox9jZdEvifzmLQL+c6tUgFpF++A9pWe7sG2ptRj0I=;
        b=5sr8OXDq/0iK2odIB9lrTv08W9hoAw3KjoR0Uod9Qy1KJGpQzlp9glM5e54jV9SH9M
         DHBjNdCUtW+WCFG6UpCzaxYKCr2EImsv8C5dqgDoXfNTvLdAPrPljvl7Q4YXPATaIuOq
         ChqCfOGZnBeWqSNnmXh9BY8cWEY/HDftxAlDGwoYOEyXhVihDaUEfGP/KdqA5eIjtnyW
         tt4KN1rKNykAs1iBtj1h01PH4iuAwi8s56Xx0edgTRtaIdFDrddmVgV9JqvBNkr7t7X2
         Lcqx7iRfrOMl+o7EhuRrvjopOyXvNKosBryOHs4nZxHh2sDmMfdzMebR02XXK/wewBSS
         u+mQ==
X-Gm-Message-State: AFqh2ko7SjOQB0swnSiF5WmSmrEC0jOGfqFPX4bQsKQ5aNWZ+0IdLNGL
	R3pNhdt4b4LVCoAFARZJadX9TA==
X-Google-Smtp-Source: AMrXdXsUMVEakLd8I9Ld+9cvNnWvLibPZXo9wxW/3r/FhHxjIMmijyS3NwrUfhTgMxmGNghGO4E02Q==
X-Received: by 2002:a19:f70b:0:b0:4ca:cb4a:1875 with SMTP id z11-20020a19f70b000000b004cacb4a1875mr7178275lfe.45.1672309852903;
        Thu, 29 Dec 2022 02:30:52 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bu16-20020a056512169000b004b5ab5e904esm3027993lfb.306.2022.12.29.02.30.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 02:30:52 -0800 (PST)
Message-ID: <a606f91c-1a68-09c7-2081-03484fd0d513@linaro.org>
Date: Thu, 29 Dec 2022 11:30:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip: convert
 rockchip-dp-phy.txt to yaml
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org
References: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_023056_292665_6816929D 
X-CRM114-Status: UNSURE (   6.82  )
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

On 29/12/2022 10:44, Johan Jonker wrote:
> Convert rockchip-dp-phy.txt to yaml.
> 
> Changed:
>   rename file name
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
