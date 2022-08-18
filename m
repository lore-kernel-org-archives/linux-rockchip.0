Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38118C00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 08:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TFYmKwtco75xRES8NkEANWFpG2xDmwx/u3K5Fx4ZJx4=; b=Iy/ph4eKlwK10O
	oENWKHVpOTZnh+sXFjImEddjPjTSpYHRIdz/WG0Ma7CWS+O5Am00y30wngRSP+gpgT7xqHgNEhvEi
	iQiPgvWwa+GhDLVHaYq90vMDqCdZfh+UgT4SH+oiEusmrMd54JHPfN+4eLLrc/iexSYerdidJbWDb
	GDSaR3PWny+Fpy9zZz9GrGajtD+OHZuGWJlk2k1m9T8ArTA9zzUhZy2hDywRCKTR+ljUKM9unU5yc
	4+a33QOMdnzk0WQB5pMmKUY2K9375mYaqMRh4NDy2s7xIfQdOXaS1F13F6EPe+JMpZED6rDl+fBTM
	BN0aOyE2ibyBnS5+vuXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOadS-000dVs-Mx; Thu, 18 Aug 2022 08:12:14 +0000
Received: from mail-lj1-f173.google.com ([209.85.208.173])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOadQ-000dQz-AF
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 08:12:13 +0000
Received: by mail-lj1-f173.google.com with SMTP id z20so997976ljq.3
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 01:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=AboNbUA5orKwbSGaM9WWSnNF9mCynQkAwPXdxiENkFI=;
        b=fC7/j+q1emErpcDOQR10xxAraE5HNC0PbpyysPTjGm5x9Oei8H4CaPWkbq2lKvy87+
         wLaxJv/o7kvDg8VPuqPqWZOviN+N3Zfiuoffw2uKsTECFuP8Knea2+s+CqKmVw/ode5v
         1B131DcIl1PSXuO3F8mL4i1J23M0aesUR+EvWNFJJtBnaqGGNUt78pB6tcxzfetWodJK
         VUmaPo/5Ndzs54jBiwXgKS6jWsxMMhPGmbcynF5z19Np5Fxm9/6jYR5n6IpP1q3IV1NY
         5OA3whqVksGFhCVEVwJGk/NDb9QwyPDoc009jApVItWKedC67XyKZQwii3TqsYFQ7JS6
         Fqug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=AboNbUA5orKwbSGaM9WWSnNF9mCynQkAwPXdxiENkFI=;
        b=NFeQQ0EwnO0TVu61fLPKRMXv585ESUlpcoHNtIyZkZcG8gxTMSU4jO28kMg17T6hg1
         GJivpC9FIdATHrpJuLiJLrV/rz/3cBwc4C4jXwUFQpU7xASog3Eu0YfczPixW31oKGZO
         3F+4vzkHzwSYeF82mi5B9H/N/qdXxvTbZwcctFao3qBTZ0Qmg3y0LsteYcWPi8p/5nzX
         OeRP3Ca2/eTFpx9hHVxBl8j+dZpjh02Y83ixBQnseNXJ+CQ9WJZ5eKYrTycvNlJLOAqo
         +WVrUyucbVPzzsKmind0yshfyct9UbUnkhPqdp1ZeyM1ICzH0jwAuUT+Q39UchY3WvSS
         78mg==
X-Gm-Message-State: ACgBeo3W4ITiit0CxZk+Jdk2db1ji40f8UvhVlKeYvxRQaxkDKMcKpmX
	1O+ytRLM8c7O1oKfpxEegToU2Q==
X-Google-Smtp-Source: AA6agR43Ep2yeZI47P9SMh2HYt5XApKY0lW4goWQD/qh2ZtQD6y8mObdPsPDSX2nTNTvevIS/lxAtA==
X-Received: by 2002:a05:651c:1507:b0:25e:739c:d9bd with SMTP id e7-20020a05651c150700b0025e739cd9bdmr526398ljf.178.1660810269734;
        Thu, 18 Aug 2022 01:11:09 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:53ab:2635:d4f2:d6d5? (d15l54z9nf469l8226z-4.rev.dnainternet.fi. [2001:14bb:ae:539c:53ab:2635:d4f2:d6d5])
        by smtp.gmail.com with ESMTPSA id e13-20020a05651236cd00b0048b0062a14fsm128339lfs.144.2022.08.18.01.11.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 01:11:09 -0700 (PDT)
Message-ID: <7038777d-0424-27ab-1aa7-d002e1353ff6@linaro.org>
Date: Thu, 18 Aug 2022 11:11:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add Anbernic RG353 and
 RG503
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, pgwipeout@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
References: <20220817204954.28135-1-macroalpha82@gmail.com>
 <20220817204954.28135-3-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220817204954.28135-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_011212_400751_7B707E2B 
X-CRM114-Status: UNSURE (   7.94  )
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

On 17/08/2022 23:49, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add entry for the Anbernic RG353 and RG503 handheld devices.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
