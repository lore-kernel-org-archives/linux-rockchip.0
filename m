Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B280C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Apr 2022 17:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yhbo1wDtKWx0hhDiXaeM5Ju3jBwDyEx0ltnpN51oByM=; b=jzXOkf6KeTEEC7
	USXli1seVbwKJA5vhq2G1xLIXoyL60O3XYHYg5TKC6P89724/IrM1jV9utRV0ZyGJSiK2x3PB4N6D
	KwDGi4LgDbwh8UUDZA6nqkED1ufPBTbdTz/U/RvudZo2O2wJCCUGF+WZz9zU6oYdaW6Lw7Pw9NHAt
	fSXQzz55T/MhdCPEuuNfomshJaTn6Rh09vbDATjjRB0n1ICSs6eSsHDs4zWdeQEqbe7yvy68o+XpV
	3VBFmoKkEpKBAMcerixYYH+wP9DtTRzQNgnxwfDUILQGLykpzNGoCrYUb7u6uNU7oeaMDokQOI0IS
	jPs2L7UlIAERPUTilLaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niJbw-004jyv-BX; Sat, 23 Apr 2022 17:31:56 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niJbl-004jwY-LG
 for linux-rockchip@lists.infradead.org; Sat, 23 Apr 2022 17:31:47 +0000
Received: by mail-ej1-x62e.google.com with SMTP id s18so22121151ejr.0
 for <linux-rockchip@lists.infradead.org>; Sat, 23 Apr 2022 10:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language
 :from:to:cc:references:in-reply-to:content-transfer-encoding;
 bh=bKsmqXRYpqUwhmofQJ981p6h75uLhrlYANKDZeRH3Yw=;
 b=AsyhZT5G7Rn1USmiBSUJqjC54KlsVFEdM+LUYDHVCYDWT2uMibekpBmYtuUoUApjvC
 li+cxCy+MjPt4k5Ly6BP1nKgLPiYO92qskFvBmO/yu01Q9G6ftIaVnxSI1NJZITAr5SZ
 RVmU6IQltV8QyJEf99e1IAw3H725Z4goBXgzN6F//2aTelMEMiC4hlyJ9b5+PRpt+rhq
 hzHeDco0ztmw+YZQO/dST6kcgF+EMNWwq/5zp1DsdcD9h5zdr6ETU1d4hnygyqKBNVuU
 wI1XEl9420F6q7aTcQLGUsmajZha053Y5YikkHxdDHh97bARDumge1nYnfW/hWHkBefk
 4bqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:from:to:cc:references:in-reply-to
 :content-transfer-encoding;
 bh=bKsmqXRYpqUwhmofQJ981p6h75uLhrlYANKDZeRH3Yw=;
 b=F44vW301V8SJI9bRa4ujf4h72rnIovaxIYu8uUYNsjxaIrUSanhuVE8UVj65NCMSxF
 tZXEubdXlX4JnUoZPRt8/mtTWjY8vNlFcXJOv4FLttMpyJJ19WZ+D5aAGGWMaM87a8zF
 LNVJlEwwryMN9SrC+iwbt2K9Xx4HYL0fL8YcxPcVqU65R/bE/FcwVoyoZhte2bpvAkjv
 Lu3LFFm28FQfEpktNetP4CZJdnKg4pH09Nj0tWLf/jl1iF7IzbgGcMR6iwltUZq+mILn
 T1AZJlcQX0Eapu2vITDm9sNgiMmeRqsCDLmJFgbabcQJNKEfEP+auF+LzmoGhjvmN/Y8
 SvDQ==
X-Gm-Message-State: AOAM532+mXVylQ9tRJS0T7mG0Zh+9Q363Od2UlO57XMZL3Mu5v2/s+kZ
 O/TttH2huvV0eRZT2J6Q5Y17LQ==
X-Google-Smtp-Source: ABdhPJxUIwgdy6uOQIKxuP9OG0OknA6P6MQwfXJgUv6/3CSZgK3CreXhlN5R95v7e9nLbVweqm/4xA==
X-Received: by 2002:a17:906:6a0f:b0:6f0:1d08:3640 with SMTP id
 qw15-20020a1709066a0f00b006f01d083640mr9294977ejc.264.1650735103121; 
 Sat, 23 Apr 2022 10:31:43 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 r16-20020a056402019000b00418ed60c332sm2422395edv.65.2022.04.23.10.31.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Apr 2022 10:31:42 -0700 (PDT)
Message-ID: <34819690-5cb7-bbce-a2f5-3f6e66661049@linaro.org>
Date: Sat, 23 Apr 2022 19:31:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/3] media: dt-bindings: media: rockchip-vdec: Add RK3328
 compatible
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Christopher Obbard <chris.obbard@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Alex Bee <knaerzche@gmail.com>,
 Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20220422133803.989256-1-chris.obbard@collabora.com>
 <20220422133803.989256-2-chris.obbard@collabora.com>
 <ff87d5cb-b0d4-95a2-90b0-7827a2a34d05@linaro.org>
In-Reply-To: <ff87d5cb-b0d4-95a2-90b0-7827a2a34d05@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_103145_721766_5EFDDF33 
X-CRM114-Status: UNSURE (   9.66  )
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

On 23/04/2022 13:10, Krzysztof Kozlowski wrote:
> On 22/04/2022 15:38, Christopher Obbard wrote:
>> Document the RK3328 compatible for rockchip-vdec.
>>
>> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
>> ---
>>  Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 1 +
>>  1 file changed, 1 insertion(+)
> 
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

I acked this but Johan pointed out that your intention was different and
missing patch context is quite important here. Please explain what
exactly you wanted in the patch? Now it looks actually wrong, so my ack
is not correct.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
