Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16606C47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 08:16:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CD76960FF1
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 08:16:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CD76960FF1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uEX3kdyLbVRD8pnOEhx6xc3eaGa1I2vCEwcgCvvg9kA=; b=rZZLcJBh48j2ftzF4BNh/g5Fg8
	t7mijgtAD3mjltKubmI4Xc7770Kyk30EcBtDvVOXAg+rF4dYQ+mNA9G6qgvLz13Cd6buAzAF2scES
	FTCGMSBMLGKpFjd0XQczMoT2CHGgO3Rwg3Bu3TcTH7W5NCK1110+de1Df5yYTTO0IViJv10GQLln9
	p1Cx9zCHNNUwbKt+edz76EUtXaPTa7y6DfyH7g144vXLvPuh2ZAu9N3A/ITtFvrxVrowUUNxsduNi
	TLeBWyg5MIfz7NLlLQKTB/FFvE0VhzpklbF4D4XV7h8+O3a0kmEFTgoRV1kmBXtfKAXyyPXxpj3KK
	I90UgL1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqARJ-002F6z-OD; Mon, 07 Jun 2021 08:16:53 +0000
Received: from mail-ed1-f53.google.com ([209.85.208.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqAR3-002F02-Aa; Mon, 07 Jun 2021 08:16:40 +0000
Received: by mail-ed1-f53.google.com with SMTP id d13so5706328edt.5;
 Mon, 07 Jun 2021 01:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=K89JEvr85cNLVGSNruqsSq3SJC58qTPUfjZOJypE398=;
 b=eCJfDnUWsGlw5Enrdk3Jns3FXgd6MMJQpD3UOt8lHyRMIu98184qLWZkiRLljwqJxY
 5OcWiejI3nEYcgYhlnsOrllVQH3cE02D/gkfrDK1+lwK6jTjAMLbwpFOp3CKyB/j0AnL
 xPOMjbC2NfV9eSBhhbKGOV3NN7xQ8/n9qXd3Mnvixwmt4UPMxgNcK3dVviOXbrMhoq1u
 tJrJkdgzM6SUwfTcyCvrHaHOQKhpmeOAixxRVBXQZFpE7Fd2s6bZZ2RDTPFz24ZzkVLO
 NpXifHVREn/tJ1BEZZe6V6RolRTnvv9zvyxjMh1ogLwdq3n7mKcE/rrrwrd/JPei0IbB
 D9DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=K89JEvr85cNLVGSNruqsSq3SJC58qTPUfjZOJypE398=;
 b=Poizs4PCQVDbi42QswjpFuy3OFB37/SjAflcHDe8fVUGdKUXxSiQuLgpbfkq0DwhjC
 sg9vAj9IsOaTdH853Fuu6q2WCfbjNe7ReIKqXScYVuVN2T5DUpiQCBEaO6jJxhgYERMm
 ImIrRtHvABuOT+W6NFaDIGXtd2pxleDyjBDzPHSSKN5gspaGi/MYFDT+IH7Fbc0r7/AA
 UDwLxBr0HN7DFvgjSw8qZUJrj9rhpzYwuuaYYIGcggWKx3Hfz81ZQNVzRpvqWbRqBTaB
 xWraGPb7gXa6MZ+7oNDium1+lsnCHehQsNaew5SJgq/0iRoE8t2i1xj0fc9c5w/JYNJ+
 KVNw==
X-Gm-Message-State: AOAM531kd3KhpKrZUKhbUqAG8FwcZWkGjW1xX84u/TYxilYTMSrKqol/
 azXN3yQGSd/zLkySe1LqgEf90D89eIbsMA==
X-Google-Smtp-Source: ABdhPJx9aAufKoe/BlIe2Lu+49fT2xA4KIvgNKER4pcSOqtT/92ok2Sr4TA6thgdE7uipk5OwvgncQ==
X-Received: by 2002:a50:fb8f:: with SMTP id e15mr18105598edq.46.1623053733932; 
 Mon, 07 Jun 2021 01:15:33 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 z22sm5766732ejm.71.2021.06.07.01.15.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Jun 2021 01:15:33 -0700 (PDT)
Subject: Re: [PATCH v4 1/6] dt-bindings: spi: spi-rockchip: add description
 for rv1126 and rk3568
To: Jon Lin <jon.lin@rock-chips.com>, broonie@kernel.org
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
References: <20210607063448.29589-1-jon.lin@rock-chips.com>
 <20210607063448.29589-2-jon.lin@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <ef90ae6d-40bb-8389-f4f8-536a7b610fb7@gmail.com>
Date: Mon, 7 Jun 2021 10:15:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210607063448.29589-2-jon.lin@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_011637_430596_92690CB5 
X-CRM114-Status: GOOD (  21.84  )
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

Hi Jon,

On 6/7/21 8:34 AM, Jon Lin wrote:
> The description below will be used for rv1126.dtsi or rk3568.dtsi in
> the future
> 
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> ---
> 
> Changes in v4:
> - Adjust the order patches
> - Simply commit massage like redundancy "application" content
> 
> Changes in v3:
> - Fix compile error which is find by Sascha in [v2,2/8]
> 
>  Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> index 1e6cf29e6388..2d7957f9ae0a 100644
> --- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> +++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> @@ -27,12 +27,14 @@ properties:
>        - items:
>            - enum:
>                - rockchip,px30-spi

> +              - rockchip,rv1126-spi

This list is sort alphabetically.
Move "rockchip,rv1126-spi" below "rockchip,rk3568-spi"

>                - rockchip,rk3188-spi
>                - rockchip,rk3288-spi
>                - rockchip,rk3308-spi
>                - rockchip,rk3328-spi
>                - rockchip,rk3368-spi
>                - rockchip,rk3399-spi
> +              - rockchip,rk3568-spi


>            - const: rockchip,rk3066-spi
>  
>    reg:
> 

===

Your comment in [PATCH v3 3/8]:
>> Adding "rockchip,rv1126-spi" to rockchip_spi_dt_match[] is strictly not
>> needed when using "rockchip,rk3066-spi" as fall back string.
>> Could a maintainer advise?
>>
>> Maybe this bug of mine should revert too?? Or is it legacy?
>> spi: rockchip: add compatible string for px30 rk3308 rk3328
>> https://lore.kernel.org/r/20200309151004.7780-1-jbx6244@gmail.com

> I agree with you. If the maintainer doesn't have any comments, I will use
> "rockchip,spi" as compatible names for the subsequent rk platform.

Compatibility strings are supposed to be SoC orientated.
So generic ones like in the manufacturer tree can't be used here.

===

Johan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
