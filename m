Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42E2BCD11DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 17:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nt1D4ckWOjbHW+K/Fs+bp+UXyTdvpaSChv22cyutVgA=; b=t10D5hEWRKKsLs
	XN7nRbXT1ShIbREkoRqouAJgXXA2KDSDb8znc4akRNjGO8yKNKJ5wVazvt6hSR62iawWyIsy/8q5X
	4eK4TXvPActUcCuklw6eRPGQCLaOKPRr5w5u0zTbN1p4/mpNRnjCygy+Cncs/me4CB2aBSY0P5mPN
	dz+qQzE33CNinlr4FLBi/4b9eURzSvyS42tJ49LozeBSpL3UToJkx7TXdxH01hcKaJTCpfFmKv2IX
	hCJNvEyuQxFgiLp010dOlq+Y9zh2tmpu9pnuBXCUYKNbmWzGDWksBJhqmlMaSqbyve6GxrNY9j27x
	TKjEmJg41f5ApxryShJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpAws-00000005oVU-2Le9;
	Tue, 26 Mar 2024 17:50:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpAwp-00000005oUP-1DrP
	for linux-rockchip@bombadil.infradead.org;
	Tue, 26 Mar 2024 17:50:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=N1d4VruYCFWZM4T5uYHpWSgV6rWwaEi0uyd3VLge4Tk=; b=DA4wlSMuYjAop38jUjBN4JinOQ
	fhlIwOdr8W4vt250ZqcTkDjuQwOWSC+8EJG9OSf0iwOOQ5NcMTbRPSIdzAq0jyijM8fsl3y81kQJy
	L+mI6GsmcQd65yuIZKk9fnIV6lceP+HoW9Xkz5pnxz+xDZC0BnrCKbLCmAxYWcp2TjEOK0n6+tnEQ
	mBVFbWBuQ0tnFAQy4hcHeSJVunbqThUiPpGhfSuU7L7WAD/n25SeG1obPhzQDrCTCr6K03GJNFNjW
	0evwVoCQ1jX9gf7jd6fD5NV3gr2Tohob04KZ9FiXzATG2AU9zYxS4rvoaVyr64ljTKrdjFBieMd+t
	IlspYVkQ==;
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpAwm-0000000HLQb-0Jpz
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Mar 2024 17:50:53 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a4715991c32so706765066b.1
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Mar 2024 10:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711475439; x=1712080239; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=N1d4VruYCFWZM4T5uYHpWSgV6rWwaEi0uyd3VLge4Tk=;
        b=MWT3/pGWLJ3YTsSss20HPmzNHNQiIirAG6w/e78RPXMbs3J1RbUmf5Dl06esxuBXRT
         IRuLPKrH6dWCFIaYsi/Ddu735DJSwEl3Y0aCb4wDF/7S3Vw1mLsLieSLP0FYXEbGkda4
         85LlS31rPmmx+iqPBgN1ldIm7vFlcPDs7HZYsQmvrSw2eMbTJFIucWl70baVYLh7gGN7
         TvCs9vZvk2oOWpeFr8nfUGG+vdnML0W79Z3KUqOiSATQCQaIepLS1AH92H6WLwrjS5Xs
         pUnNw1eIBnXtZ6aDPK1F8cHZ3Mf+crOK5bNjtuaE5p4PvN1CL5MtTnVAxyj+9tfO1ZNk
         Xk1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711475439; x=1712080239;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N1d4VruYCFWZM4T5uYHpWSgV6rWwaEi0uyd3VLge4Tk=;
        b=pP8K1VziYWl0/pnbDQthAdUMquZFQB/A4OyOJ9X8WHnGDs2rrFskXsObV3/fjoy+mC
         JRvh6v1ANYFj15Vw8lm4fHTpx1L5Dq7JujCBsY4+KPxrUqoqNIqYgUv3qNzsTp6ZGsaU
         lrY24rysDCPqtSmgbmsGHJl+H3R3ruZRTHcZn7pV2Hl3X+9Ktau/X6/O99GGgaeDmEdc
         KhNWcrP1aQJWViAc1kKT5R1UQMkneduHBAWwmNWNvhrvG0eDybQKKalFA6YHNBohz70d
         Xyd0stRJE9fAZO/N7l0cJlxUwj3MsJq4obBMXE5wG3UQ6hwHA9MLBaDCNH2Hc4032haP
         FG3A==
X-Forwarded-Encrypted: i=1; AJvYcCVAGiZQy9ACPwXaRzDMUOjNJ938zXKG4kbfknC20UeWd6WjnswZMgATp0Z3DQbs5aRvzWpDfUBP+xYWBQLuYdFKTI1NbDhr0ayuG7ZKJF+w/U43
X-Gm-Message-State: AOJu0YwxbQUfpYnMX8ZnMPIUSf/O3kMvIvUIWtEOa+DM8xRuhAxYzXI2
	uCIMz92c+TKJAoXlUsdJZ/4z1nalkGN3PGq1t8amANeDGpa1ik8m0o/yyqPekIU=
X-Google-Smtp-Source: AGHT+IELWqHQbZ+fH0diXz/AcE9JrxvloE+lldn1qR/v72ZClVly6EhcqVcwCmZheGpIAWUSIs0RWA==
X-Received: by 2002:a17:906:3085:b0:a46:d041:28e0 with SMTP id 5-20020a170906308500b00a46d04128e0mr292717ejv.59.1711475439043;
        Tue, 26 Mar 2024 10:50:39 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id bw2-20020a170906c1c200b00a471b5b25b9sm4438451ejb.127.2024.03.26.10.50.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Mar 2024 10:50:38 -0700 (PDT)
Message-ID: <5fb55234-4afd-4e6a-9763-4d2e344e0ce6@linaro.org>
Date: Tue, 26 Mar 2024 18:50:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: display: rockchip: add missing
 #sound-dai-cells to dw-hdmi
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>, hjc@rock-chips.com,
 andy.yan@rock-chips.com, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240326172801.1163200-1-heiko@sntech.de>
 <edc0bfa2-7984-4d9d-ba25-4805ee0be679@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <edc0bfa2-7984-4d9d-ba25-4805ee0be679@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_175052_223539_890C93C8 
X-CRM114-Status: GOOD (  11.52  )
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

On 26/03/2024 18:50, Krzysztof Kozlowski wrote:
> On 26/03/2024 18:28, Heiko Stuebner wrote:
>> The #sound-dai-cells DT property is required to describe link between
>> the HDMI IP block and the SoC's audio subsystem.
>>
>> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
>> ---
>>  .../devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
>> index af638b6c0d21..3768df80ca7a 100644
>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
>> @@ -124,6 +124,9 @@ properties:
>>      description:
>>        phandle to the GRF to mux vopl/vopb.
>>  
>> +  "#sound-dai-cells":
>> +    const: 0
>> +
> 
> Then you miss $ref in allOf to /schemas/sound/dai-common.yaml

I meant, except your change you should add also above $ref.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
