Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7352AC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Nov 2023 13:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0IKaFie/Ec1Q7/JN5w45VEFA5e/oNpzLCFZ5GTqTD8A=; b=szd4Zehuas8ghj
	RpiRTgMcZTqOicrzzQc++CHX7L/jI5VdCOBESPsEVLyo0Vcyv7TwxP6GWpUl2FCv3ok6mtJjvTBCV
	kkvtaxgFwsfS8/1M+TbbAQ327bii0v2aHeFv9QhgB9cQtzPzgIduy+P6MCr3f2OqBLVlr63W9PvFL
	QVlP050leJSERAy2AvqFIAm9wWeopUO+Y5756Y0HjN6fppsa+WbpVo56hvFfu40WZdL7ivbakQPTO
	9/JBMmw/lEBvwF736T9Y4jWzITXfvSBNZpo8LzQLJd2oj3sUnYGMkpwWt9EIb+kYU5e+a9GPF1OLv
	TmPjhkhBC+IabRTPyB1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RIw-008oWo-2F;
	Fri, 10 Nov 2023 13:12:10 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RIu-008oVW-0M
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Nov 2023 13:12:09 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9c53e8b7cf4so336110466b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Nov 2023 05:12:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699621921; x=1700226721; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oOOIgBuLD76SRMXtscbLmnBWjjTZy61Y8xnxf0Pthzg=;
        b=Tqf9hl2UaBqqcUMBZ0BVFXFqTaiWvrUo7kvyQd3LlEWr1C5GhgM1+R9MsdX6q8rtwJ
         uOC8uf+HPx9ENMl2+ysAT5fGCAgKuB86mhoWgPmN1y363m92cQXPjfwynwSvQKRIJC8e
         4aIfTWQ/FgOcSRQvqQcfQ7me3a22GffGkcG3uJDeGGp7WzexJJT+ElsJF2A//fzY1cSm
         hapNaKemoRT2LCaWFvz2tUu/eev94OcDiyXMRV4JBa2xDyQeoz1XX2MbguCnqY1LBYk8
         3Qrv7Eg4L2+qGUT1NTFxyRqWF4J1pUf0VVWAx3NlNChk9+cozWogO+B8GQcMV0tjozbK
         gLPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699621921; x=1700226721;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oOOIgBuLD76SRMXtscbLmnBWjjTZy61Y8xnxf0Pthzg=;
        b=M+jUm0ZeVbi2dO7AIvh3Dzd73cy88Z7TndP2FGzBpzSP3G4LJ1Yu++OIF4hj4U6F6C
         J+z4gwqxiAWVhVvPKqMn3BwfYd3rebwV3cCk2Bi0vSnh0S27o2m0KT+FKSdvxZKuiII3
         dr8ANu7RuqWmWcIspT+OtQH0qGJ1dHf7BkYlBYgv1z7FZ7HM1b7ZGiNQhTTIdv/0LjBy
         WdTUli9Uo/s79mppNTvrjronPCUAa68+hcXmQR19M5wLF5m3tYjAIC5ptM2cHODDHtxn
         MtlFzYzA3cqHn7uUHf9GiOEhjbaWCQWJYvQfzcxb/3/Kux6xIsKsutwgjQj37y8LPS3A
         3vaA==
X-Gm-Message-State: AOJu0YwNTUnAwgalLVnAcuBIgG+TZwg2oBrexpfh8hd0VN+1DdzQoDVX
	C2oN4lzyr1J3/BAnmohT/fUxMyxec8J68enzcRI=
X-Google-Smtp-Source: AGHT+IEEIi+ieS8L2KzBKeL0uO7ZQVAsj01ruKfHUinIc9RCASRJCRjWriWUSNdeLpp2AWnOGM6TWQ==
X-Received: by 2002:a17:907:3e81:b0:9c3:1d7e:f5b5 with SMTP id hs1-20020a1709073e8100b009c31d7ef5b5mr6652693ejc.20.1699621920783;
        Fri, 10 Nov 2023 05:12:00 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id n22-20020a170906841600b009b27d4153c0sm3938708ejx.178.2023.11.10.05.11.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 05:12:00 -0800 (PST)
Message-ID: <c012c0b3-d6ca-4291-aa0c-05a192f30dcb@linaro.org>
Date: Fri, 10 Nov 2023 14:11:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 1/4] dt-bindings: display: panel: Update NewVision
 NV3051D compatibles
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, daniel@ffwll.ch, airlied@gmail.com,
 sam@ravnborg.org, neil.armstrong@linaro.org, heiko@sntech.de,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20231109215007.66826-1-macroalpha82@gmail.com>
 <20231109215007.66826-2-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231109215007.66826-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_051208_155097_D3AAC6CC 
X-CRM114-Status: GOOD (  15.57  )
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

On 09/11/2023 22:50, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Update the NewVision NV3051D compatible strings by adding a new panel,
> the powkiddy,rk2023-panel, and removing another entry, the
> anbernic,rg353v-panel. The rg353v-panel is exactly identical to the
> rg353p-panel and is not currently in use by any existing device tree.
> The rk2023-panel is similar to the rg353p-panel but has slightly
> different timings.
> 
> I originally wrote the driver checking for the newvision,nv3051d
> compatible string which worked fine when there was only 1 panel type.
> When I added support for the 351v-panel I *should* have changed how the
> compatible string was handled, but instead I simply added a check in the
> probe function to look for the secondary string of
> "anbernic,rg351v-panel". Now that I am adding the 3rd panel type of
> "powkiddy,rk2023-panel" I am correcting the driver to do it the right
> way by checking for the specific compatibles.

I don't understand how any of this driver behavior is a reason to drop
rg353v. You wrote two paragraphs to justify this removal, but I feel the
only reason is that rg353v is just not needed, because it is duplicating
rg353p? Is this right? You actually did not write it explicitly...

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
