Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 732FACCF9E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 19:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LF+vkYrgOlCwCWAMyhV79rKE85QF2sRXt5Wogbjh5qE=; b=sawT2FVJoEtfuU
	DZRk8w+tRrk2CsivXPLouSHEJiedGmZ5XKXGSKkGgcb8n+e5a0pIVUK7qwl0/oQ7tx2uL568W1QY1
	KedM8N+XBG57VKg836rf/BL8xPDUkSm0AMNrtYVjTgQpgYyv5eYPJjTc/sFnE5sX9XSdc0aJE97LV
	+yR7K7T8zYszdUOecBn2FrvzWa0lYSOb/YeMtaUpXMwNovrFy2VVrhU8HIxlD7rBVtSlwb3bd4iRx
	U/Gd2WMXlMJPjf2P/+vyNd8GvCSRX/AxV6GUzl5y6crqbJ3hzIkc4Z/0Kv85ynriocsROS9m7HXap
	51uKDvOXFSzahE3oCPoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDpae-0000000GZ9C-0q5S;
	Tue, 28 Oct 2025 19:42:44 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDpaa-0000000GZ8D-2cdJ
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Oct 2025 19:42:42 +0000
Received: by mail-ej1-x644.google.com with SMTP id a640c23a62f3a-b5b823b4f3dso872581466b.3
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Oct 2025 12:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761680559; x=1762285359; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=62vvDBBB/rOaWpDgtEM9Rt/abCOhovCwo7YMTy41U/A=;
        b=C/QCUoveBmwpmT4jWH1cV4Xgua6B4zEWONvmyN6hoO6VdWCCRTjNgOHkfmDiUQnNre
         L0ZtENtHu57JvrloITuXPDtc2GxEmXLFPslccr0R1obidIFH6LyQ/iZlHY01AAwARupL
         yyFiQuRIuobUQdbe+nQOx0rPcN5D7eSVf5daxdO9hptCCxoVQueld0Xtkpqe/SEYC5Gm
         /tUFKtdq2+h30dDvU91PwtcD4tGr0lYpfdSYPiIEtXldlH33yCxA6P5Bsf248cJFZLYW
         alg+3aLrTJzATjnw61MC+zPp7q8zdcBoZCr2hMDFV2eyRnIvkKy5729GcSJpe+t/gRMm
         19wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761680559; x=1762285359;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=62vvDBBB/rOaWpDgtEM9Rt/abCOhovCwo7YMTy41U/A=;
        b=mFOAui0VmsXOQAgOO2m5omKPCZbpBpOhQtAs2+BE0iuT82SYFzIZjhB2KgVToC/CPY
         jGlfL+mk1qQJZx/b0zfl+xmGOF4Dz33ZbhvJfHKTsClshcbLDeGin8ZiJj4iYb7L4jgT
         YIeMm6aOj3gGCBOCxwrROIE9b+xiiTzcaq1qiT4sZyxNOVoMXpWwClM/FD/Ishg9cEd9
         cZnqQWrhsrRtCwFl2p0lNN/ln4bvvKWIjBk6sIaKvrx8DEIfi16/zgfW65JEe7FJI2L8
         ymMsza5MPBSnHqVj1CivCKlgRiGCMdhfexpkfcv/rN8Od5texCWy1DDngEdd3feOl3HB
         59yA==
X-Forwarded-Encrypted: i=1; AJvYcCW7xNi4R74G2uYmIHCGk9uQNqiG5gYN8jHmc3vsGJIvZQplMxuD05F5AJvDfY8MiszzPd5IXg1Z7nTxFY6WkQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxAl76DIzO2j6jrUn1zdsDbTc8qekFupC3riiqoLkzR6ULeKCV9
	wdLY6jT9ZB+CwbtphQjJwyoxX1vPjc0TwkPWDOirJb+dWfinkmFoH7aJ8MKJkaplLX3IlcQtsN/
	kam9G8rurmvb5UAmIwZExnvnpnH62r4DE/wEM
X-Gm-Gg: ASbGncvpJ5uTe1OtLQYPblwMkjM7+1YuTVwZFXtST762FCNcW5G1TKlv2W4S/3zdtHX
	GKj3xenM+uvECWfWFeb9szFk9KjPwNDr+vrYjFPCwG9uXjRKF5UsddPNnaSFneqrlAsToCYZKgA
	6gd/QmCBvCMv9Ju7Ym4rCM8+7UUENUD/jAHyZmZhPG0GONGbn2jiBeIiloelTwptvLKrdzC4k2R
	X7HCtYiiWXB1q6EolW5oWr8R2WCT8E6bFT/sh42TDKASGJCXIX9SAMvhJ0=
X-Google-Smtp-Source: AGHT+IGuyzMZMoSUBcdluhWJ8z2U2NKreqWEsNAWWKSsPdZyGxxSF7LB6m8ffRoMaRK71OGRlbTX0MthE+/GR0ExXdY=
X-Received: by 2002:a17:907:9448:b0:b6d:4cdd:e375 with SMTP id
 a640c23a62f3a-b703d2dac74mr22693866b.11.1761680558394; Tue, 28 Oct 2025
 12:42:38 -0700 (PDT)
Received: from 724652696919 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 28 Oct 2025 12:42:36 -0700
Received: from 724652696919 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 28 Oct 2025 12:42:35 -0700
Mime-Version: 1.0
In-Reply-To: <20251028-haste-amusing-78c28e834b5b@spud>
References: <20251028-haste-amusing-78c28e834b5b@spud>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 28 Oct 2025 12:42:36 -0700
X-Gm-Features: AWmQ_blTfxgti-krwDFdX4C-MNUtu-qJWXUIoxjGku4ymfFwik-GWE6bubjvmIA
Message-ID: <CALj3r0haeTdNt7=cMqRa0i3j29P8e2oQ-TzsgZfCCG6cB0q=3A@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add NineTripod
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_124240_690592_0D66B28D 
X-CRM114-Status: GOOD (  12.56  )
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

One more thing:
I sent the v4 series of patches.
v3 is now outdated, although [1/3] of the patches are the same as v4 (

https://lore.kernel.org/all/20251026150358.1078453-1-coiaprant@gmail.com/

Thanks :)

2025-10-28 19:35 (GMT+00:00), Conor Dooley <conor@kernel.org> said:
> On Sun, Oct 26, 2025 at 10:36:44PM +0800, Coia Prant wrote:
> Add NineTripod to the vendor prefixes.
>
> Signed-off-by: Coia Prant
> ---
> Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> 1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index f1d188200..37687737e 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1124,6 +1124,8 @@ patternProperties:
> description: National Instruments
> "^nicera,.*":
> description: Nippon Ceramic Co., Ltd.
> +  "^ninetripod,.*":
> Why ninetripod instead of 9tripod? That's what the company uses and in
> the marketing fluff for the boards.
> +    description: Shenzhen 9Tripod Innovation and Development CO., LTD.
> "^nintendo,.*":
> description: Nintendo
> "^nlt,.*":
> --
> 2.47.3
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
