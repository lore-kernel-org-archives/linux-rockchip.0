Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C834C61D97
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Jan 2023 11:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B9QPBnD3Y8ZvcZqgE4vX4TOv/CrdfumG8HD9hV8L+iE=; b=G94t67N9w9Ywpm
	ROLaATMDk1wo5thwCiw4t/fIWNYHsc1BTcoSswYl+hztlR51SyAdDN83voSvTX7Ba9la8WBkuZeXK
	WMaz0HXpCzGc9CWn9OmfISP6SrR7AE1gDf9nMFI753kys5wjkWCkWvbrSFMKoT8xOjC+JkGZj1P/w
	ag4R9j/RSFLI6Liw6reGtSMqV6YTo+cov2fAiPDVaxg0PSoEnGyPAZGSrxMY5zMMlxN6JuckM8qRk
	FwEy5TzfQ8/mN4JiXe0Fdtfs3Xl3sztIy28+jRZpf0oY1d6Ys3tztPBQuSuaq1UbjYk3F/oM1wj0u
	lrW6y3cAkckc3BtZERZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM5ZE-001MUH-Py; Sun, 29 Jan 2023 11:09:48 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM5ZC-001MTK-OO
	for linux-rockchip@lists.infradead.org; Sun, 29 Jan 2023 11:09:47 +0000
Received: by mail-wm1-x331.google.com with SMTP id l41-20020a05600c1d2900b003daf986faaeso6327217wms.3
        for <linux-rockchip@lists.infradead.org>; Sun, 29 Jan 2023 03:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gc8SDGto0OzJBEGuEb9CULJeiUF5CRN2IIi0l9n2zpQ=;
        b=e82j+RSP9A4XtrP/ZnOWynWBRLU+tKjFj4UJMV/j3iOswAr8UkgQVYUBpfyllONkam
         Xd/IiJmPqZY0U3Brhz9BzU7OQGn2IZpvxdmjbjQ9Cfp95grnCrlU76gkhgrH8fe3ivX0
         1smLCC+Ka9SlvLSudqxdwGCQEBJvKyy1Nv+E3ieHpy+4ZG073/Kf8+SjbUPqoO2ickQC
         egucudgchGf1jnajBbBZRryu/63mLJk8gFxQcIfXAHBBQ8DATZ03DGzhG8TBbXimgGQm
         Oh/Vt1XGQLTmQFlBqnspF0QlvbrBp8VRZDxBNIHNn2t8UQK12jYA8lNx1+GuG0mV1NAR
         88gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gc8SDGto0OzJBEGuEb9CULJeiUF5CRN2IIi0l9n2zpQ=;
        b=pWUqLRRbfOiim33SJpadf63pxLJVvkw8x8dfzMhUi/TkpY+cj4JKrufuhRfE2GuIjN
         k6ZiF9vimMwFtCuJylqbgGAMq0gM1OJuhWL3DyPWCSIpIcnh6ihDrUD+AQ0MwpWXGtUW
         XXsKOej+5IyCQHcSboqTQMAe6Hz2KlXAmjstVUUlr3xoGQMjui1Bz8QETzmMt69cbMAF
         EBXwtXNlO3nU4YsPVAbqsSeue8xFvdnOAzCRPDn9KMFE/nzKDwn/3uhtLcXU1R7+fHoI
         B8xsWKBmvwZeCV+44g7eCw1ayCj1y2pL+2/Ub6NzHWDv9vcf9ljTAFtdt6m5fTsfHhMW
         59HQ==
X-Gm-Message-State: AO0yUKWIQ/IZQmLNGEbj7ZNgCPu8CpSD7kWrvfQrStYmrk3yNRKS6SW4
	ssUmDk4C4KWMZxcCAFerXCmQ4w==
X-Google-Smtp-Source: AK7set8/AsBKCYFzmR/S5fISt5iR0GjEJFsa734bylubU21q4y8z51HpBj0/zG/eRBCyBX1B3tr5Pg==
X-Received: by 2002:a05:600c:34d0:b0:3dc:4313:fd1e with SMTP id d16-20020a05600c34d000b003dc4313fd1emr6498435wmq.34.1674990584773;
        Sun, 29 Jan 2023 03:09:44 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id b48-20020a05600c4ab000b003db1ca20170sm597349wmp.37.2023.01.29.03.09.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Jan 2023 03:09:42 -0800 (PST)
Message-ID: <062325ab-348b-6186-7979-5076c338cd95@linaro.org>
Date: Sun, 29 Jan 2023 12:09:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] arm64: dts: rockchip: set sdmmc0 speed to sd-uhs-sdr50
Content-Language: en-US
To: Dan Johansen <strit@manjaro.org>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20230128112432.132302-1-strit@manjaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230128112432.132302-1-strit@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_030946_824809_F8982ACE 
X-CRM114-Status: UNSURE (   8.35  )
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

On 28/01/2023 12:24, Dan Johansen wrote:
> As other rk336x based devices, the Rock 3 Model A has issues with high
> speed SD cards, so lower the speed to 50 instead of 104 in the same
> manor has the Quartz64 Model B has.
> 
> Fixes: 22a442e6 ("arm64: dts: rockchip: add basic dts for the radxa
> rock3 model a")

Don't break the tags, one line please.

> 

And drop the blank line between tags.

Thanks.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
