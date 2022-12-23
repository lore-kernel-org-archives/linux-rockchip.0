Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8331DC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 10:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDurWJopczYEPPPTdReMHdc4kGXqIuD/Z0tkttg0Jl8=; b=ur+avSfuR3Eq8l
	DW8k9echxPgt9iuCxhT1huXw3Mpi2NndTvFoG9/VjlPu9C2qQONEU/JcMkJuDF2z9WyTmf1CyvsuW
	ZVqwXI7svOnj86Pp60+M8ocCIuwpZcL3Onm+VZqurme6g3LYzK5a1Bw5Itwvi6tIjK2m8aSSJBMgj
	vp8oiCd5kki92jlF1dOEY9msAMsp6+vXHI9eptXYRDFrB7LlvNmmSMB7B7woG8w98t34q+2KI/6rX
	eeeApf4ie3OhsIx3zYEu4a+kvFc6DLTSLCkuvDbBy3kj+jbxgUDD70OlLJtpDOW4y+H13vL2xmbjR
	mmPk1H09+EGzDmaKbzzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8fOH-006TKo-Qi; Fri, 23 Dec 2022 10:35:02 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8f8W-006IYl-NW
	for linux-rockchip@lists.infradead.org; Fri, 23 Dec 2022 10:18:46 +0000
Received: by mail-lf1-x12a.google.com with SMTP id cf42so6575344lfb.1
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Dec 2022 02:18:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YRC804NMX4Ft7zElwiwbqtFM7vLNhKQd0+x9jqgtXVU=;
        b=etA0VGxOKwiDf0ID/nnsO2FOPTdemnS1pE1whMCSq3ZCeGBmgstZGp2VgEfy/qi6ar
         T0feRKhj7r19A1bkJjaGbRr/Li0H1iuxCaPYJ++DnJIOxVubTxanaVlcUOnxaa2Jyq+O
         BoQO+zctjPVflzH4a6aeDk5IRItyUbW7/NYOKzECzethsDhdEqmyvxtMIw9lJZou8N3t
         oBwlGlDieqZ53Qkirxz7jaSRJXMz7cWVpey485IAzHCEE9hIQc/e8KOED5rHH0R4lVtC
         JIg+TU9s8BECXDuwT8qFR0xU91hE/uRXs4A+Jkz7+C/4Ajx2OvXePJWtbEqZ6rKgn4vj
         7fbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YRC804NMX4Ft7zElwiwbqtFM7vLNhKQd0+x9jqgtXVU=;
        b=Z9C9jHMY+fAhKdiZ4mQxErVXGMVhmoweHob6Y3vpDaS6FIfXhL4qJ7Nom5mvBwIqv7
         t6TVLJ6u/PUkscEGIrEAuMwqaWHI4EKqCGx2EZDRYbpX168FCUTx86NEIg4N/SambuGR
         tsAjPOkzDLeJRJb6QO11VJaSnUdIZFCvcD0wRrvKyPuh4e3fycSv7Xm27CtIrowjScFI
         rZa94QBE3r247jMpSFqe3BusewyXX3012mU7PH92qSMXYNeC+jwzH3G3VEqTqGgFGXKg
         Em3gYWBXUXjWTidleL3rfOUrWiRtkNEz5wQG/PWMfskhV5ut+THHjN9qX7KZ7cNJ2/L6
         aCUA==
X-Gm-Message-State: AFqh2krVelaXMUBxrJhG9jSy2IDTxUDP9RoVTOsgplXd0kXl3HZLwkfB
	Df7jm11Ze8W3/ZSeDUVIO6gtCg==
X-Google-Smtp-Source: AMrXdXtymcn25ZBG/zJxhmOxOPKCJ0TJ5CVw1wGAsbh0Dg1p4XoieT9sdgtZe5B+ULnpKGF4hzZGOA==
X-Received: by 2002:a05:6512:507:b0:4a4:68b7:e719 with SMTP id o7-20020a056512050700b004a468b7e719mr2260436lfb.3.1671790719194;
        Fri, 23 Dec 2022 02:18:39 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q21-20020a19a415000000b004a46f92a15bsm473828lfc.41.2022.12.23.02.18.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 02:18:38 -0800 (PST)
Message-ID: <62e62d16-aa18-4487-db98-d767f1f9d438@linaro.org>
Date: Fri, 23 Dec 2022 11:18:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v9 2/3] dt-bindings: arm: rockchip: Add EmbedFire LubanCat
 1
Content-Language: en-US
To: ty <zonyitoo@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Wenhao Cui <lasstp5011@gmail.com>
References: <Y6UdvrhLjS0/8Oic@VM-66-53-centos>
 <9a73d8fb-8a73-f8db-2ca7-51bf67cbf659@linaro.org>
 <CAMmci2UkBVaBgYMF8JaZkL==b9-0AB90VPGK7SNdNV5w5Zyzhg@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMmci2UkBVaBgYMF8JaZkL==b9-0AB90VPGK7SNdNV5w5Zyzhg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_021845_029745_0F1CBABE 
X-CRM114-Status: UNSURE (   8.22  )
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

On 23/12/2022 10:42, ty wrote:
> Hi, Krzysztof,
> 
> Sorry, we do not know the process, this is our first contribution to
> the Linux Kernel. There is no change since the last review of this
> file.

So I linked you the process and explain it.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
