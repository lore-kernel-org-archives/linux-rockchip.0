Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAAEFC77B7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 May 2023 16:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lHY1QkyjG6fPF3tMQ4jOaI0q1x2j3jK0FavQYExd92k=; b=Dm+Z9XJyjvr4IX
	5ST380NMqJcaREF6K66eNZcRt1JXYfjF7oPxYJUDPKLGuWFLUceYLq+2Z/W+JhpLzyeKcBtTzHBfj
	V/fJ32l5bX4xj2WyHDUkrIOLYqElK/N/CS/uwTgG18qcf+afcN30P37d4Oli1yEPCRXzitVQsx+Aw
	HO8OOYE32HFK8oA3c27Cw2/jbZDJySkqI3QyQ+QZU7ahpWBZ1T8vP3JY/xPTD/xlu9z5TlfE6cx+n
	HYqj1bTUAqyE0k5Vngc42wcRFdd2BVd5H+JxP8pY6JCFOeAZAssJYL0hZaPr8DPD6O2wCDAcMra+A
	4YipMff/IMqVvjKPZD/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pw3oW-000yUI-32;
	Mon, 08 May 2023 16:34:16 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pw3oU-000yT9-1V
	for linux-rockchip@lists.infradead.org;
	Mon, 08 May 2023 16:34:15 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-50b37f3e664so8666046a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 08 May 2023 09:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683563648; x=1686155648;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zNrcNKI3kICArS7t8GClBlVXIXiQxlkex2o1RaeVkAM=;
        b=ifgS1KzRjg+dYaia/i2Ma75A3+9IOa6M0ANa5UCEgJZ3yW4zFHspD6zYfcremJT6TW
         GEgBTn9LLcDRu2nsBP6jEY5zvEN1AFMPgbXM53mdCKB9Qbiy0HG2JPSjJbW231RrlLd2
         gOXK7eltK3L0VeY6ViODOnOEB7CLnVioyw6rGuZbNRX9GIeVLXeIjXFf/mplQnockM3Q
         aRkDCqv7tqzEacSTstt/T95A10AdmFDqWzyVBJuYqfJrfbmWzZ65e2z91vM+B6YYMkoI
         oFeUa1BdvdbpITj9zIE6XOMfBbgpt14jKqjiWtbttsFA0DRm1iG6pr8OLt8QQ5JYMQlS
         8r5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683563648; x=1686155648;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zNrcNKI3kICArS7t8GClBlVXIXiQxlkex2o1RaeVkAM=;
        b=Lt4FAuMicvGX0aNngPx2zPUxgejKqEuYj+o5W/MEQZCRvzGc4qE0GqsDatY88CG+54
         bC4vVuPHZmv56a1cJgd5A59JrPVG1cyNz//AbdkF9TSXi9hVxsXUJChfwMO4OB2sdZl6
         RzjvYq0joTR/RL64a08WLZV4mfV+uqvNXFJthorUmsYoiYI2nIMV9LLiZsZ1P4gkuU2/
         PED5gUmrQJg6QSRcnUqeLiz/K63b5nOpEXTUYiixk67/NWdmp1QMOo5azM9HuvRMlfxg
         mF1k4r9XBJ0/PWqTYK5Vce4FppSoPF3HFHn0sHEm3I3Sw0AWjWeKLPYZNomNXzIH6MsL
         chvg==
X-Gm-Message-State: AC+VfDwARuT6jyW8aHgOH2pul5M48N8M1WSbCZULtIv2qG+n4SXOZAy3
	NHCjc1FpEJxcSAQsZaaimbA5mQ==
X-Google-Smtp-Source: ACHHUZ4CdoPU10LEgoyuRPnokuJ9LTkNvbjtjTNSFZc3CjQpZHZZxhybyE1BPFPskERmKA9wItcwug==
X-Received: by 2002:a17:907:9308:b0:965:b2c3:9575 with SMTP id bu8-20020a170907930800b00965b2c39575mr8598586ejc.57.1683563647903;
        Mon, 08 May 2023 09:34:07 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:50e0:ebdf:b755:b300? ([2a02:810d:15c0:828:50e0:ebdf:b755:b300])
        by smtp.gmail.com with ESMTPSA id ka11-20020a170907990b00b0096602a5ab25sm169419ejc.92.2023.05.08.09.34.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 09:34:07 -0700 (PDT)
Message-ID: <e25760bd-1de0-5ac1-868b-50299e83d70b@linaro.org>
Date: Mon, 8 May 2023 18:34:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: net: realtek-bluetooth: Fix RTL8821CS
 binding
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, netdev@vger.kernel.org,
 anarsoul@gmail.com, alistair@alistair23.me, heiko@sntech.de,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 pabeni@redhat.com, kuba@kernel.org, edumazet@google.com,
 davem@davemloft.net, Chris Morgan <macromorgan@hotmail.com>
References: <20230508160811.3568213-1-macroalpha82@gmail.com>
 <20230508160811.3568213-2-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230508160811.3568213-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_093414_507900_E472ABAD 
X-CRM114-Status: GOOD (  10.56  )
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

On 08/05/2023 18:08, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Update the fallback string for the RTL8821CS from realtek,rtl8822cs-bt
> to realtek,rtl8723bs-bt. The difference between these two strings is
> that the 8822cs enables power saving features that the 8723bs does not,
> and in testing the 8821cs seems to have issues with these power saving
> modes enabled.
> 
> Fixes: 95ee3a93239e ("dt-bindings: net: realtek-bluetooth: Add RTL8821CS")
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
