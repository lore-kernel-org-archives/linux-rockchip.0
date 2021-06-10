Return-Path: <SRS0=8ktI=LE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F70C48BD1
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 19:39:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0F13061376
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 19:39:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0F13061376
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SThnUqQ83bhiOGH74tJE+w7l4DmGzwDdS0BKNN7YOpI=; b=Yn3i6pAepRMD0s/Uq21KhUDbWi
	g67ARz4OR73I7mx1hLe/bPWGiDIF/WzH5BKVZun9MMFOIT5FTiI2X6a2SHbTVQGR0MA+Nnc3IsVwY
	l6ws3RAZsuTvH6uCv9OrqqM7tMbS9aU7upYLLCuOgFesONyXmvZ8koZ00JVxulULa8RzAgndJPwU7
	v7bxEEpXHpOOtPw9U59wR8XgDIx2MNa5j7vIPFIg9Zd291TxOmdpbpYhQgtFrOfeCl7Rd5BRWHwd7
	V1NRZO0AQ8bqMvJ6GMxKiiAX4EuCjE5aP4EHcijm/Pb14wJ6gGnkK5OHNsM7I4fYCvzYIE+q8y8Kx
	zAlMd7mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrQWS-002Fpy-RR; Thu, 10 Jun 2021 19:39:24 +0000
Received: from mail-ej1-f53.google.com ([209.85.218.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrQWG-002Foy-0s; Thu, 10 Jun 2021 19:39:13 +0000
Received: by mail-ej1-f53.google.com with SMTP id k25so900946eja.9;
 Thu, 10 Jun 2021 12:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CxZFPPf8/Af3IJZUxSvuHpUIlLCprby35hrQY11nLk0=;
 b=BWtEQUN8nf/6VjFK7uhX1RcY5asvzB2UiEbS72Lz0vJtWPA30K4QVKDr6Poc2pDDRe
 sRdWYwKF8HsBo6gKk3HT6GgCsVSXYDKywKq3m02x93ockwiewh/qXh/4UtQAm8fzeCxf
 aMHpeKdJkB431MW04XPNfStFauvgt7cL2szhZCIrWpPmFOpeYHWqtNutYewQnZpWXVe4
 j2CvPpeKXMkT4K2rWmBh0FreOG/A/EX83YXlvalPdxTRUEjX5QrjrcifbA6KRDeBn/zF
 4suCR09L32ROUOHYS7A8X5VizRrJ5ULkzqV5YxpLTU0Be2MMvmrjn+EVOrTwAV4gMnNb
 M+yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CxZFPPf8/Af3IJZUxSvuHpUIlLCprby35hrQY11nLk0=;
 b=TOJ8o5eFpyiy3sdPbvq8cjImv+aGBYJP+8z6TlE0THaZawujLShF1cS/6SZqzEHSzT
 zSd3CO9RH7ruSnfA4hVFeLCRW7RKwhbABDPeH32MWHjvZN4BtLkrLN8ZP1V2XrwBikaS
 Iuoc6zgp9IjnOh/rbL3AiTRZIRjHlrU03e5D+wD416mRHVzW+RxISjf27Nd0AxFb1Lvk
 lC1gVb1S+5NfhCkhGbafBQmiOrqv7RC3uwguHNV1eTGtWe3Bpqjan5d8ljSTEFm7G+Zz
 Fs1KKCGhIhKxzDcojnH7czdBsIv13bwF5d1PxKmmcLousL653nLkgET1O3RCyFckbZwJ
 IH8w==
X-Gm-Message-State: AOAM53240CyeZleoINkdQZt+lUXF2T6jOcvH/HREMWIuZYPZ3eIuZ6/p
 /oeJ3a6p8kQfGvZ+ubMKMj8=
X-Google-Smtp-Source: ABdhPJyV9fK6I1s/3kbZNh9kRn5B7l5/zIUTRIqKYyA4U8+9QjxZxRwR6ZMJACtn2u8d3uufYfUE3A==
X-Received: by 2002:a17:906:2f91:: with SMTP id
 w17mr193983eji.443.1623353889221; 
 Thu, 10 Jun 2021 12:38:09 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 d2sm1105423ejo.13.2021.06.10.12.38.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Jun 2021 12:38:08 -0700 (PDT)
Subject: Re: [PATCH v6 1/6] dt-bindings: spi: spi-rockchip: add description
 for rv1126
To: Rob Herring <robh@kernel.org>, Jon Lin <jon.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, broonie@kernel.org,
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org
References: <20210607111837.31074-1-jon.lin@rock-chips.com>
 <20210607111837.31074-2-jon.lin@rock-chips.com>
 <20210610160634.GA1894512@robh.at.kernel.org>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <e71e9bca-4c30-d155-2beb-cb85a7b3106a@gmail.com>
Date: Thu, 10 Jun 2021 21:38:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210610160634.GA1894512@robh.at.kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_123912_105417_59AD136C 
X-CRM114-Status: GOOD (  18.44  )
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

Hi Rob,

Similar to the Rockchip SFC discussion this compatible does currently
not add any data or difference to the driver. Therefore a simple
fallback string will do for now. That in the past that was not strictly
enforced, so be it.
Could you have a look at it?

Kind regards,

Johan Jonker

https://lore.kernel.org/linux-rockchip/20210607063448.29589-1-jon.lin@rock-chips.com/T/#e202225dbe50829069becd2915267124f379bf2fe

               - rockchip,rk3368-spi
               - rockchip,rk3399-spi

               - rockchip,rv1126-spi

           - const: rockchip,rk3066-spi


On 6/10/21 6:06 PM, Rob Herring wrote:
> On Mon, 07 Jun 2021 19:18:32 +0800, Jon Lin wrote:
>> The description below will be used for rv1126.dtsi or compatible one in
>> the future
>>
>> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
>> ---
>>
>> Changes in v6:
>> - Consider to compatibility, the "rockchip,rk3568-spi" is removed in
>>   Series-changes v5, so the commit massage should also remove the
>>   corresponding information
>>
>> Changes in v5:
>> - Change to leave one compatible id rv1126, and rk3568 is compatible
>>   with rv1126
>>
>> Changes in v4:
>> - Adjust the order patches
>> - Simply commit massage like redundancy "application" content
>>
>> Changes in v3:
>> - Fix compile error which is find by Sascha in [v2,2/8]
>>
>>  Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
> 
> Acked-by: Rob Herring <robh@kernel.org>
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
