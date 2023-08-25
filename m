Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E184C3DA66
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Aug 2023 06:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IMSPvAczhBvCqjh8gFY9CWJZZBYNXwFf83uTX7FtRU=; b=MiT+5XHM4YvCPo
	ncddktUxdcS9ZS7mTmw1z4GHxGMOJ0Q3ckDdwVOsJkD0Jx76cMngZI9+qRturyTIqAEIT40F+67wg
	/c0K7MtzSratIs4nt5JmahDjpCvlz+r6R64SeEu2wk9oTKKjNBeIFqmc4LCZPH+Npsk+Grj8EN2vZ
	Z3kNwxNJwR4nfnT3UaYiON53cCGZXoaFA4e8y+3vKST+B2tnvN4SAn6cd0HuR4yc+eaLgQUoV3z3V
	jFidROIMLQO9wISUxpGXfvYuEDHoNmFr3CMq3Qk1S3vC/KdQhdaZOrmgvJa9ghQgnsf/fi2PCA+EZ
	qnPKDUoNh1/hpXrmVbHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZQdN-004Ue9-2g;
	Fri, 25 Aug 2023 06:49:29 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZQdK-004UdP-2I
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Aug 2023 06:49:27 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-523b066d7ceso869366a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Aug 2023 23:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692946163; x=1693550963;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lajo7OqjOl8rNN2v6USsxhYYBHIrPlabiPvdvBF4vXE=;
        b=dzoDs5/lDF0GjQ5kZXZxk2yOa49Piy22tw3skoTulieeCRGnP9Mv7HnYX3IjPFh6pd
         HaMBy4bbjmA1xChFTcs48EyjUlsf/NSu9R7NZ35h62lrUIvy5+OF8AMYHvJiLekM29H2
         2OlSutBxRTPj8yFiU13mUUVjYea3zoKx/QoEngtqssASp87p9OfWagBMgvGIlsnTBL7/
         Z4nfbas0owDAM+427A5QSq5CL9gGS3cUkz8q52amlSw9lr+rFitpIZgeZ2+zSMLpeyI9
         G0W598lKD1Rn2uPD+sB1l4NkpFzsaEfza0/hBHfTMhZ70GfizXngR8miIj/C7nsTSM54
         pHjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692946163; x=1693550963;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lajo7OqjOl8rNN2v6USsxhYYBHIrPlabiPvdvBF4vXE=;
        b=NfMknOGr1nclPkyjFcC5CXxOhM3QJxklnafVbJL3eDuLiXLSe61m/VBqupOlAPyM3h
         w9ju2hJHfx+eg6TgiSzC0B2NMWSWK99twPtluVsOusm4kSLY2WU48mzVqpooTPkWFG90
         50EwivbfROHMmBbysX2y1CMs9aMJia6er9C5wpiv9lenDu7+y+BjHcMZgdmaufVHspdD
         lclKa4fcmEZuKonWV9Ubvv/zBXON1rQZDECbKLq1RIpB9M3NHt51ZCl8620n/I7cnpTu
         WnxTP0OQZPSh/0OBekH8gc8m8hSQHmSWwH95NOw2bNAn2GCTLtc5A4AgZ/q0+i3yRjWG
         XzGQ==
X-Gm-Message-State: AOJu0YxBv/G2UdKTGp8ACKq1YdZzDhQK82yHhr6X9RTxW8q05H4e2MjC
	yuvkqnhYaf1spo4O1TE0W8fwJIF7dP7l6cyJme4=
X-Google-Smtp-Source: AGHT+IHM0u5TqZw/AW+78y+hWyLMRR4dUmiJS290WiUMgNgRrW7spqkKVWWxp/6asczYj3lW/GZuRw==
X-Received: by 2002:a17:906:2d0:b0:9a1:d0bb:d215 with SMTP id 16-20020a17090602d000b009a1d0bbd215mr5444386ejk.5.1692946162757;
        Thu, 24 Aug 2023 23:49:22 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id h1-20020a1709062dc100b00992b1c93279sm595709eji.110.2023.08.24.23.49.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 23:49:22 -0700 (PDT)
Message-ID: <2eda319d-bdd9-bfeb-005a-5989cf674501@linaro.org>
Date: Fri, 25 Aug 2023 08:49:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/2] TSD: arm64: dts: rockchip: use codec as clock master
Content-Language: en-US
To: Jakob Unterwurzacher <jakobunt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: jakob.unterwurzacher@theobroma-systems.com,
 Ermin Sunj <ermin.sunj@theobroma-systems.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230823122000.585787-1-jakob.unterwurzacher@theobroma-systems.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230823122000.585787-1-jakob.unterwurzacher@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_234926_752800_3EA7E644 
X-CRM114-Status: GOOD (  11.97  )
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

On 23/08/2023 14:19, Jakob Unterwurzacher wrote:
> From: Ermin Sunj <ermin.sunj@theobroma-systems.com>
> 
> If the codec is not the clock master, the MCLK needs to be
> synchronous to both I2S_SCL ans I2S_LRCLK. We do not have that
> on Haikou, causing distorted audio.
> 
> Before:
> 
>  Running audioloopback.py script on Ringneck, 1kHz
>  output sine wave is not stable and shows distortion.
> 
> After:
> 
>  10h stress tests audioloopback.py failed only one time.
>  That is 0.00014% failure rate.

What is TSD? Why it is in the subject prefix?

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
