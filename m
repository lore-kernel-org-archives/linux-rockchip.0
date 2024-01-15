Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1052C3DA79
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jan 2024 14:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iw3Gcme8LWEADVLu5OtD8hgiNIVEo6owroHlQ1xD7pg=; b=f8O9+fEF2ffbg7
	0MSZ5PHvLXA/HYkGbPbhfYI/AJU9/SzQO5+naKH7J7kcyiLIMNO2eh3Frps54EZw8dykUyGEilK3W
	VsDgvZYCZLmWljJQiBf2UUWzuapUmtgTj32RfLOhh1k6Dioju8T6CfnLBSoJ09v1sjSjfhEs5uiQF
	sfCC/2v3G99Np0hzqWmhFKLy17rSwkFNSV/FKmeJnJVs7i568KhoIVS30ZZC5uWqtN/4JZhkzvs3z
	0h1zL7aEDb9YdrdgnW+EgtU9FqaBbxP/9Ud52Pkn8EZ/7NyBcGK9V3qGceNGL3/MC0aBXvAkhd3Ez
	HN5+gVQIwBQcaFhckf9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPOQa-009KBI-19;
	Mon, 15 Jan 2024 14:59:04 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPOQX-009K9K-0B
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jan 2024 14:59:02 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-50eaa8b447bso9695701e87.1
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Jan 2024 06:59:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705330739; x=1705935539; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EElY+BJl6RKUQaYaAMecQraHTbTen04LJB6W0a07C8s=;
        b=DcMJAoCP7py95lU5UDQwSEJBmR0yvJ4mRcjtJEXmD4XI3xCsCZiHb4VylZpSntSIwL
         kSPsJ+k+7sUpNKj3XMpCArZxwXscpyMosaFg0AzxdZoBuQ5Yb6E/IxfUaph7LPcE5Feh
         KdZwFcXjKDSPLxxOXX6CWqAjvVjDwuHJ5f6/s7jtz2W//rxAPPENo0KU5JnucECjpqJa
         nwV3uQc90C0vs8DjVOpIPvdg2oik11PCk0D5pjDVAkVUb/FtWqO69sTh2mbHsSZA6di0
         lt9MCH/aAamTab+DeF6h6t7jtNYfMpAjhUHjuSKexb7b0y3NozJHAcY7sA3alm5KjjwA
         CyCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705330739; x=1705935539;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EElY+BJl6RKUQaYaAMecQraHTbTen04LJB6W0a07C8s=;
        b=YbA3lF1XfZ0eeQAFE6YSLDbzgxLmvyLCSfkV+IDvOgzEXhAD94BWahL5YuljxtKvWs
         FPBO1dOWW2e+CLD2qE4IZTLTrYqkr52HMSbFzjG2n//oA9lAa1580JxC69BAmGiOUATf
         GMKHroNY1OLUi8pLyw9aBlaz0A1EImVWXlfxrXzgndpSYYe6S8PEUC7XwoKtzfVV8VYN
         dXA0Of0mru5bevj/0DTpBUDfyHX24+MAqFoACYujx5/BUEy2B76J1Ie/8b9yHVIzTzRZ
         pZMesFWUb3fVa5bXruV/c/MMYEnzd4bLcvoFqjSiQEoGfkjK3hTP4UvUysBP7O2z/zUd
         VStg==
X-Gm-Message-State: AOJu0YySpTXKoepSmJ7e+UFvkqoYSrH6BWNU0/jAayQUSZiNlfcl46al
	waJZmadOhsl5j9a471eOcSgmlNZDWVum2w==
X-Google-Smtp-Source: AGHT+IFlo+ao9jgz3mGyzRiLuHFM4+YOg3HQPu7mLSIY3ZNIZ9hIHvDrrgH3UB2L/gyz96hhCWZKSA==
X-Received: by 2002:a05:6512:1310:b0:50e:7f0c:7913 with SMTP id x16-20020a056512131000b0050e7f0c7913mr1516527lfu.262.1705330738687;
        Mon, 15 Jan 2024 06:58:58 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id a23-20020a1709062b1700b00a2a67731f31sm5313145ejg.109.2024.01.15.06.58.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jan 2024 06:58:58 -0800 (PST)
Message-ID: <b4f97202-43ec-4f04-af95-b1ccd3b5d203@linaro.org>
Date: Mon, 15 Jan 2024 15:58:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: rockchip: Fix Hardkernel ODROID-M1 board
 bindings
Content-Language: en-US
To: KyuHyuk Lee <lee@kyuhyuk.kr>, Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chris Morgan <macromorgan@hotmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Ondrej Jirman <megi@xff.cz>,
 Andy Yan <andyshrk@163.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240115145142.6292-1-lee@kyuhyuk.kr>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240115145142.6292-1-lee@kyuhyuk.kr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_065901_096068_A4A7C9DF 
X-CRM114-Status: GOOD (  10.57  )
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

On 15/01/2024 15:51, KyuHyuk Lee wrote:
> The vendor in ODROID-M1 is hardkernel, but it was incorrectly written
> as rockchip. Fixed the vendor prefix correctly.
> 
> Signed-off-by: KyuHyuk Lee <lee@kyuhyuk.kr>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

You need to start testing your patches. Your last M1 fails as well in
multiple places.

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check W=1` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).

The DTS change will break the users, so would be nice to mention this in
its commit msg.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
