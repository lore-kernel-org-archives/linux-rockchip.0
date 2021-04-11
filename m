Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF35AC433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 17:52:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2973A6108B
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 17:52:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2973A6108B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rISe4RrOQ7uwCq+yD0H7RGXKD3ycfk4/DDxFeFPmhLw=; b=fcMRV1e84u0yEAVP59UBp1tBK
	Cx/vw3yvW/bDwOWoydKm+EmGcVF4xCleei14fJKFfCg3CrbGwKadfrFDeAP2hBfTq6jeUgxeQPSse
	FDiiK5gUDkjKD7qXt+iIb/4jVQeKQioKGjbt4x7J951uhl9XyGYpViSJg1fPcoH+QEoHmqXZYWGyS
	VBg19IgsOmFbuL0XkjbWOXBylNcy6F6R2vzWZimeYpO0PatCUq3CVB3R17pCMbkjNNkt7l7GYP3nX
	kGJy9jr9YpaEsv+/5UPpSIOeGxL3o63kEFERhsCd4yl756sK1hI/EsR6dbvDq34r6IF3XVU+WBpJ3
	Tw4Hn7OKg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVeFj-004r6r-Iu; Sun, 11 Apr 2021 17:52:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVeFc-004r5q-0y
 for linux-rockchip@desiato.infradead.org; Sun, 11 Apr 2021 17:52:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=oNOTBqeY9jtjLSAON3lVQ6MLW31wXxn5D9F9gYPVVu4=; b=ExFiQp3g++r1JEtfK72YXCoPwq
 JN8k5CldyT9Rc5L8g2aJeSZkf/JVEKUzk7yuyqGsy/PrDiXVuJcSRoxqogqxq2ObLLORM96VQPQjK
 7RJkT6wGyXQt9WXH4xrww2csbNOOS7KCfnPtMqiODYV//Yajcz1sd+yRT0SJ7qQKrSDy7ubdSKuJL
 mBpqEWqDC/PhV45dxtj4xfUVXh6HULjtsbrHzrozY4wgVD6uZYX7hNbGQn61SNZlh2BSSutjBwUti
 stDotmDCS8o2aunCG3Qpo5gEyfE0lbhmLTdek8sxkQM8iucrJkmri/xGnjueGpmVcq00M/CVxlpL+
 SCsWwaLQ==;
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVeFZ-005cvT-En
 for linux-rockchip@lists.infradead.org; Sun, 11 Apr 2021 17:51:58 +0000
Received: by mail-ej1-x62d.google.com with SMTP id r12so16509345ejr.5
 for <linux-rockchip@lists.infradead.org>; Sun, 11 Apr 2021 10:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=oNOTBqeY9jtjLSAON3lVQ6MLW31wXxn5D9F9gYPVVu4=;
 b=XHkxF3IQa/hR8xLpG2YUvfZc8NOXCs1YKaI9qeXyRLrQbwabZW+AeoRcZzMeik7Uha
 b1xoSzpM9bRFnRsVfEIV1wRWBZBzOyQ7rpX1tjdmfiNFFe9ikeB60lQfxD7I0UBopWRJ
 3hRC5dN1aNZOZ+Jn1jP+r5h5fRIzgarYNn7TAccS7d/ELSZBr+zUZfYYxq0vmrUV2DKh
 k8sU4l1KATHkG6wI9BU9djA5cVd5LpW2dxYG60z8XUcdchTzbhzniF2dDh2akL8+clAB
 w2PtuyxrDPNUI2yTXo3cBcT/r2smPtVC4R/QcE6tIlZ+gGiFxxmM/gl2FZ5IXcJiwLEL
 xPEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oNOTBqeY9jtjLSAON3lVQ6MLW31wXxn5D9F9gYPVVu4=;
 b=AJDKxvQt5FNnLchT7aVge/+GRu1pickgG1lSGiNtBbnaevk/j3MCmdBXp00EbdyefW
 C9erUj40GHccPk+YDqPNwUsj6iYyzmvAFSwHS0lz1uCZCO+iSIwrtub9XMa8+4g60Y7l
 WfVIruqw9BAlc9iHl94hFgKYp2S1LCK7PTole7rkKOdL5s/Mjs5zK4KCVEBwFSQK1XwZ
 5OUyz56JODTY0NUfRV52ZmwNQPq8RaCQxYUw4J4nTEI/MlF1rDtlifIFqD5fJpIijhMs
 FpdjaEc7fQEoTA+qCvVSPXK8BcMJKvQpQQA5fZmu6tIDBrXH5KswoVRvybQTb+Ie9BGY
 wZUQ==
X-Gm-Message-State: AOAM530TN8a6IWIvutbN74/WeCUcI84yZsRRTivjQmkX3dNZCKw9N+EF
 boZkDRbywpO2cKCiKwaFMaE=
X-Google-Smtp-Source: ABdhPJz+72LDgeAexpDAcDks/cfETt22UrJuQG/bU2n3vf+A/D03Pw3IZkiQ5GXMql63ZZZJyuHLDQ==
X-Received: by 2002:a17:906:4407:: with SMTP id
 x7mr23873759ejo.546.1618163515532; 
 Sun, 11 Apr 2021 10:51:55 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 n5sm4351187ejj.73.2021.04.11.10.51.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Apr 2021 10:51:55 -0700 (PDT)
Subject: Re: [PATCH v2 3/7] gpio: separate gpio driver from pinctrl-rockchip
 driver
To: Peter Geis <pgwipeout@gmail.com>, Jianqun Xu <jay.xu@rock-chips.com>,
 huangtao@rock-chips.com, kever.yang@rock-chips.com,
 linus.walleij@linaro.org, heiko@sntech.de
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210411133030.1663936-1-pgwipeout@gmail.com>
 <20210411133030.1663936-4-pgwipeout@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <5308a59c-29e9-75a4-2c9a-4aeb3d37bf6e@gmail.com>
Date: Sun, 11 Apr 2021 19:51:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210411133030.1663936-4-pgwipeout@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_105157_546824_8FA81911 
X-CRM114-Status: GOOD (  11.78  )
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

Hi,

When I check "rockchip,gpio-bank" with YAML it turns out that
rk3288-veyron-XXX has 'gpio-line-names' as 'extra' property.
It is not defined in the "rockchip,pinctrl.txt" document, but in
~/.local/lib/python3.5/site-packages/dtschema/schemas/gpio/gpio.yaml

Where is that in use?
In this driver or external?
Can it be removed from mainline dts?

Johan

/arch/arm/boot/dts/rk3288-veyron-fievel.dt.yaml: gpio7@ff7e0000:
'gpio-line-names' does not match any of the regexes: 'pinctrl-[0-9]+'
	From schema:
/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml

On 4/11/21 3:30 PM, Peter Geis wrote:
> From: Jianqun Xu <jay.xu@rock-chips.com>
> 
> Separate the gpio driver from the pinctrl driver.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
