Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 808EECCD1BF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 19:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:In-Reply-To:From:Mime-Version:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GcSqoobixmIw5ClDWIBQbmnmYmL6NW/3NYivU+EO58c=; b=fPYNPwScsOjPO8BW+cFF8yTU+E
	znuOX2nNYklmbRGppbqhuz8vIcI5/AUZ82N/FQxENmkKok62jN4Ru6Q/SUjW1/JNPWV+Pc5MzkORf
	N2PsfS2iycMhB79RI2tHNdlI5PcC+XNHNaUdh6AoMoc1IlXjTJv4HhUlrS3g4sjZyCmVh/kX2IKNJ
	9cIRXMlAwOps1vMfuj658nWJhzaXS+qpc8kUbppCiyobH05MyXireWcBPdZoRm4Zalghrhf6KBVzI
	ZSk2NydohS+y7a56bDkga06kKRNWH3kbaeoif+kq9JPgNLLTIEnDHf7qsY6zAIgvnmm6k4NqstFq/
	TxRYaM+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDpWK-0000000GYkh-1nmv;
	Tue, 28 Oct 2025 19:38:16 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDpWH-0000000GYjv-1dFt
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Oct 2025 19:38:15 +0000
Received: by mail-ej1-x643.google.com with SMTP id a640c23a62f3a-b6d3340dc2aso73632066b.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Oct 2025 12:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761680291; x=1762285091; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:references:in-reply-to:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/d1nVDJ7emVNTsvQ68M7pKA7Zb5SHnnPUqNukDQj+RA=;
        b=dGQeH8jk1Efp5+Kyk9ZXpFMWxtrrnNf9yK3t7/wynV4un9yCc6ib0zfisJMialfSV4
         Vo+wkxLpbhWbUpbZwnVoMnogh+aYq2bABODT2fuDeBGngG8n0qxZRWZyWoaOIcVD0yVu
         NvCUFX3yECVsgb//wScPCDzBmmzvreurcBNddBNqCW1f1TUcUnQ6bjudickJZbqQMLHf
         dx5l8n0k5XlFSHHbZHBfTimKuCU5DW3Ad7238lzGhw7vfVcSG2PAFdhw21mf4V45vY8/
         xPqfng74e40Fp/4IrgokRx9mzDs12D/JXIvOLLoS8huswFnP+OndubsE2CdsJKfjb93H
         7tkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761680291; x=1762285091;
        h=cc:to:subject:message-id:date:references:in-reply-to:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/d1nVDJ7emVNTsvQ68M7pKA7Zb5SHnnPUqNukDQj+RA=;
        b=Ey6gjQ5vT62PouQtL0AESkSN4wOl3SYRW5ZSrIs7W5l1Fkjlxm+UIcL6vg5yDlED7/
         +ydo5NqmDoZxr7MBIEnvmd1LhL+xkIj0ZIAzLHpCES/tPfxlmeW3hZy8c+0PED9szOHh
         wnqesM8L1sV43kY37wb2mXLz4/lLglT2BfhNXPWy9micgBUIBC+tGeKdO2joqH3Jf5YH
         8+CaT3uFUA8GXopyyefU6RZ5EnKtZzv6N8n4/COPJnqy7929/CJWITr2LqbuzE1BrT9M
         RM17f1uIVc7e6pli7/N6jpe6JChjvacvl95pZhSoWsoPMYlmj3QdLgkCCNYdy4GEY52f
         jdHA==
X-Forwarded-Encrypted: i=1; AJvYcCUybXva5yu/eWYHDCsgj8KbejNVwMfisjpY2g35GANoELa91fAttwVWeJPzudEMMkVE1TFbv/zkESknhyM88g==@lists.infradead.org
X-Gm-Message-State: AOJu0YzMJDFITz3L9w3Bu8MsPkmNROXP/Ozyz0QHZDfuHeZwmWmMbIXf
	VlHiCRN3LxMx6QLHlwgkrFSJx0quoG0I1LtDedXW7H3FhbrEbRyXZRxKppetd1cdeJApue80RaK
	DzT6h510WdvqnjwJ/+vL6k6NbJv6gv7k=
X-Gm-Gg: ASbGnctgiuvElEk3f9HQMl2w2+xKPbMfWlBlXOhdLPOkBvTw6knnoNNXCUDh0XFkUfG
	629S0m2wdht2kH7YdgSJecXOZOviTdLQb4u8RLsR7MbUK9OBMG22p5v4DCL85VV0chFS5WwHyoY
	Dr4xNmFCn5N24gO8PQYd8fAU0e5Y9nzeYEV9+80RmFo743ut1RB965yaSiStqbVoOHqAeMFHGSL
	Q6uRimKipNIh3DQsFbnFNYAyG00SCmun5CSq/R0TREeoax8NsRhhia43NzMYbWDAAYlOg==
X-Google-Smtp-Source: AGHT+IFXCv3NLTqCfuR85Tev/aBDdsf4JrxkYAhURFZZFkUVV5Guf6SWg8m7dcZhUo+L4eIXn4zfs5S9vSsND2tSgig=
X-Received: by 2002:a17:907:3d10:b0:afa:1d2c:bbd1 with SMTP id
 a640c23a62f3a-b703c1f1e89mr42748766b.30.1761680291324; Tue, 28 Oct 2025
 12:38:11 -0700 (PDT)
Received: from 724652696919 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 28 Oct 2025 12:38:10 -0700
Received: from 724652696919 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 28 Oct 2025 15:38:08 -0400
Mime-Version: 1.0
From: Coia Prant <coiaprant@gmail.com>
In-Reply-To: <20251028-haste-amusing-78c28e834b5b@spud>
References: <20251028-haste-amusing-78c28e834b5b@spud>
Date: Tue, 28 Oct 2025 12:38:10 -0700
X-Gm-Features: AWmQ_bn7Qe26tzowtppaIPQCwjocMKpUT9bEG-eaS4l2nl7sB4xnwDMEoMgE1XA
Message-ID: <CALj3r0jQ-Y3wt=iyykrFVWDXyA+2feCtYy+budYzqOaVY6WqnQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add NineTripod
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_123813_456988_98316FA3 
X-CRM114-Status: GOOD (  12.65  )
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

At first, it was to avoid problems with the beginning of numbers.

Given that it is already used by downstream projects, we have retained
this to ensure that users can seamlessly migrate to the mainline
version.

Thanks.

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
