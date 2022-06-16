Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46CA7C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 00:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HM5CCUkuE+cr+JXm6Pyd06NLgAuc/NvuwX0J8NjJMO8=; b=KpK3AQtV9gDe4I
	7ta53nS+axPDjlmcqi0WTe/MBFmA26qvO1uQfe3g5qUca7I8Cu64wS2ph6yAAFamEXygHFhbcFR0V
	oG+VBHu2cqS9GgoPOd+puuq/MxBGl6wLFF2kKQUozaVaWrWQCrANOz6aAfXxqPYnbSf6k1D12M93P
	iVWIuh9DpfIMHEZyyiJilFhefdT3ThedajOfB935UBrPddBmaD24f9vdzw2Im0/FqeY1eNTezCfup
	O1em8Yugb6oK5jGLbFr9W4Utmz7hflR8+FHCBJY92TsFSbp8Wxo3Qe5XR0hZwYIoyEiqC/wmF9zda
	r9kwefHOF4NKfSHd/PEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1d6G-00H3w0-FW; Thu, 16 Jun 2022 00:11:04 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1d5x-00H3qF-Em
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 00:10:46 +0000
Received: by mail-pg1-x536.google.com with SMTP id 129so12854931pgc.2
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jun 2022 17:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=smnI5/KZqn4T0Y3acDrDNmBdZdDmzLTUeEP1PHT9fv8=;
        b=CVH3RAAQOIA6kzUiBlfSmaNCh9ufVONPcY13uY0Am43u8ecNsTqxBlYpa192bLQgzr
         xhsvTR8Acc/42MtTzLoajZL/QHfUivV063RDMYiNFQmklgBQ0jTgzI73DkQLZoatDCgy
         f7LEhcgp+mOYHR19ttNbLNACGvsEfVK31nq757OxgrxU6SeSIRCpUqm+WNp/QdTASa9t
         K303mUBVpWjjJ61rM671VR6NbTnLYDdko0RiACe1T39px7k9Vozk5Eg+4FfKIvmDptQu
         aBs8aDVuq8doVS2CMsm4Q9j4gWCFXgfX9+E+yuxvuIlnlszRnZ8UX7uL25S40/2+4/U3
         KZKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=smnI5/KZqn4T0Y3acDrDNmBdZdDmzLTUeEP1PHT9fv8=;
        b=vMp+lCVkGKakkNplLmvHLUouTWSSYODs4pARYOFKD+N1njhzKNYs1WoyLweDltgFpj
         4DKXUgK8H7w9imWEaTc8AwjItzmIlo+8sMAX8YhWme11zeowGs1anO1Cht6aSVfthkyR
         2esc9jTqgt1D/1M+HfLCbpnLnhELZlUhOENO8LpFumaVyLq2hgYBmH9wmiqdBQ75iXDw
         HnReKrAYhQ/nP8gPaxAtWBXnEWWHGTivPt88zntiq+llPffcaUjwH4YYIHz+EypOsLr4
         h61ZtYP8Q9sUOzCynMMdMDPrfVYnsm+eDxXRrisXnuxbImUPc9uuGM7La0BOYUxtfOuZ
         e5lA==
X-Gm-Message-State: AJIora/Gy/GCc5Yg/RfuECUdzrCjWtSDZNAiH8tOGV2jXdlOU+/buit4
	ayY2nvh5H/VMpd282d77rQrlNQ==
X-Google-Smtp-Source: AGRyM1vipDuzSEy2Gjkm1q4yLpq8N5RIlLCuk0RCGjNdr9B65OgpnHP5mq4ZOzmR5jDBis6XpUtkXQ==
X-Received: by 2002:a05:6a00:10d3:b0:4fe:5d:75c8 with SMTP id d19-20020a056a0010d300b004fe005d75c8mr2004836pfu.6.1655338240227;
        Wed, 15 Jun 2022 17:10:40 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id o10-20020a170902d4ca00b0015e8d4eb242sm209308plg.140.2022.06.15.17.10.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 17:10:39 -0700 (PDT)
Message-ID: <693d4263-680e-5332-6374-3edf35c69fd0@linaro.org>
Date: Wed, 15 Jun 2022 17:10:38 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi S
Content-Language: en-US
To: Sjoerd Simons <sjoerd@collabora.com>, linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com, Alex Bee <knaerzche@gmail.com>,
 Chen-Yu Tsai <wenst@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Levin Du <djw@t-chip.com.cn>, Michael Riesch
 <michael.riesch@wolfvision.net>, Peter Geis <pgwipeout@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Samuel Holland <samuel@sholland.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220614064858.1445817-1-sjoerd@collabora.com>
 <20220614064858.1445817-2-sjoerd@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220614064858.1445817-2-sjoerd@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_171045_559993_DF1C9C19 
X-CRM114-Status: UNSURE (   7.77  )
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

On 13/06/2022 23:48, Sjoerd Simons wrote:
> Add entry for the Radxa ROCK Pi S board
> 
> Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
