Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A8C9C32793
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 15:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGv5nw9V2Td0VGTJMD5rIqiV8DqHatxTQTecxQF7zcw=; b=Me6WaqXsX8i8ua
	rA1d2pnfLcwRcieDbe1WsIIoGn6dLiNT1ba4CPDdGtKlQfOce4GwQYCjlvmxbm9RDmSDTG89vgoVg
	QRLlzcIKXrlUExDw+5RrqctB6IL/C5Iyd8bycDzZ76L3VKKdyM9Hy+WfChGDo7tRPJnjV5MuO+UBO
	7NitiiEKBOb7L9IQggE31OK4he48Od4hujSibzGMYzjSQPZmVx/mPo8XYF2pSO08OM9jUGdgOFek2
	ILn2XiOY4Tpiputao9V5919xnbAUWSgHrJ6BBuZ5Z5gv8rnoFnb8iesLIj+/FSBsaz9Qyx5PzyUjg
	7lZwpvswDvTw3D86eT0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIAQn-001ZhO-Cj; Wed, 18 Jan 2023 15:32:53 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIAQc-001Zdq-3s; Wed, 18 Jan 2023 15:32:43 +0000
Received: by mail-ot1-f50.google.com with SMTP id f88-20020a9d03e1000000b00684c4041ff1so10151129otf.8;
        Wed, 18 Jan 2023 07:32:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V0kLGC9r5lgXWTZfqO2aD1AR94agoSKCVwl2XarWV5Y=;
        b=UdEmp9XC1MrmXNrrVLC2hyjshqOo3nrn/JCBq8FrjfUVlsupFamlWKf8wNxlvd3vpR
         rdWRIqlKqSH90BwyKLffHANV9P/6eRyo7wtzI0z4kRCi5t9pAcUjWK1Zl8ToSePteiej
         3syxeBfhJ+94+oFN3w54y8mm27j3e75exFrn7KRGipeNJl53HL7c15mOyPf3MerK8zn/
         wAcsLMl3Gb5ORF/eWVwNJzJ/miLiRo5N1uYjjJA8snZ8zSDzSyCPCxflFs/5ugB26A81
         ZRvdRAHlnvxmreyclM2iqsroOaGs8zyRDgxLXJ74VwF9L8V5EnSkmfrfgnCgTHe4uIBd
         j35Q==
X-Gm-Message-State: AFqh2krPJRB1ZIq4VqDLI/bfxyhgQDRR4J0oGFvncLfVSLN/Z5jTHuFc
	D5hr7m6ugqkDWYHzF5+FOA==
X-Google-Smtp-Source: AMrXdXsBh/ovlvd71FQVIia7N0KbCDgpDylT7dGK+3iWXmyziKmrr6DxPup4FeuQxM1HvJM5X9s8pg==
X-Received: by 2002:a9d:4d8c:0:b0:686:413f:a934 with SMTP id u12-20020a9d4d8c000000b00686413fa934mr3756396otk.38.1674055958013;
        Wed, 18 Jan 2023 07:32:38 -0800 (PST)
Received: from robh_at_kernel.org ([4.31.143.193])
        by smtp.gmail.com with ESMTPSA id ce6-20020a056830628600b00670679748f9sm18944681otb.49.2023.01.18.07.32.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 07:32:37 -0800 (PST)
Received: (nullmailer pid 39617 invoked by uid 1000);
	Wed, 18 Jan 2023 15:32:36 -0000
Date: Wed, 18 Jan 2023 09:32:36 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org, philipp.tomsich@vrull.eu
Subject: Re: [PATCH v1 1/4] dt-bindings: gpio: rockchip,gpio-bank: add
 compatible string per SoC
Message-ID: <20230118153236.GA33699-robh@kernel.org>
References: <08de3f4b-e33f-95c8-3297-814ea107272a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08de3f4b-e33f-95c8-3297-814ea107272a@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_073242_179361_B9261BF8 
X-CRM114-Status: GOOD (  10.85  )
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

On Wed, Jan 18, 2023 at 01:13:23PM +0100, Johan Jonker wrote:
> Currently all Rockchip gpio nodes have the same compatible.
> Replace all the compatibles in gpio nodes to be able to
> give them a consistent ID independent from probe order or alias.

I fail to see how the compatible change affects probe order or aliases. 
It is also an ABI break if there is not the existing compatible as a 
fallback. State the problem you are trying to solve with this change, 
not just what your solution is.

GPIO shouldn't really have an alias either IMO.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
