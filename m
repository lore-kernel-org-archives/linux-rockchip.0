Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1E62C001B0
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Aug 2023 13:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cyDR+NdrcZZ8JjkMk9YZ/Tn/y7pVJJXKbwtfmNrfZkA=; b=o8H91YMiebFIw9
	vWGl8LBWMMwD8WTHCOwYrogtnmIVz+Gz3CeAR+F7SJ4XjNbE8L/UVTrEd9HtzR7rxSxdibh5BF/eC
	n/FBMXxfZULk9HtROB4yXcR7cbSdMVgWCRMfEstgPeOoRl4scISUvOkTC2lgH2AdmaIYCDIR2vUB+
	tFhb1lGrLYaObNI99fmQZRTYzTQbsu7alVEW7MXzBmsn3ahG5q2OrIR5Etfs8dgTv4vVpZ0+UKXSW
	t3UpcejbbzH/VtD1P8L3HtpRnSesLJX3Bksygf6PhMm0M9zc5J/38N7M3F8dQcq0DJP4Ev3Om6DCb
	uSKwVPoVdpQmXYLZBjEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVuN9-001iFD-12;
	Tue, 15 Aug 2023 13:46:11 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVuN5-001iCu-2Z
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Aug 2023 13:46:09 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3175f17a7baso4541804f8f.0
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Aug 2023 06:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692107164; x=1692711964;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PdoIoyEfFtrAGBNvXTdtRRwuLOGU26w0ux4bbqR59AM=;
        b=YAxQqHwb3prrRhvA57OrqC+R1wyYDNy8sWF1cTteK2aERqD2LIiCaKPZSMAQH0ll0H
         43sA4MZDEH3mGYXmc9LFl1im7xbuvD6gg1DDkpfZ7XjJXH/CORbS20JrIDqRZpXHlG4m
         jFu6Wi6izPoN+0BvJnGq0Gr2aCTyO/hgAoKsciKZuDF7eODIx5Tplx+J5E/4fAeBGwGF
         OOg4ncpqoUYrjN4gw9Fsj8DVhI34YHM19umCn8JhY1vdUkGdEs950L6yFUrjBxXy70Dc
         BK/mkRpEU+mPxNghDM910p2yN9FoiRKCikN6qkswlRxfaIwEOJg6mJYEVlBRqfEFhdd2
         wwSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692107164; x=1692711964;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PdoIoyEfFtrAGBNvXTdtRRwuLOGU26w0ux4bbqR59AM=;
        b=D7b8BEqv8Wcolvpho5d5qOShaUUmV8A35TGORexVG2LZXMGVtxlDBLa8jLs3FoEkz8
         z3if3UMUK+nugCL9JM20j2LbpLSKkwJYEj+LENKYF7dmK4lOYDs26pdtCgfn0BJRpW/2
         Ol4SY3QopGCBqXUu+A2zfgHZJA71U4hu0x0akKOI5OvBdEy58QTbangx0nNE9eTYyulV
         FgXKQZpS9+zFq82x/r9XjEwXFgjuxjVn6cIkQOVjf7jXwbjmxVbnR7mlYoLbdfuxR8WQ
         MFhcok4ssvLfzABSyLDnQ4DzIkTxIAwUVrcvz/rsKzcW1pUl3ALb1nDo98T0v2Ux5sDP
         vadw==
X-Gm-Message-State: AOJu0YxKdmRK74Sdws+5+E7vR+KrW1Ndzo+zRGgqZ1ycSUOJGD77YmG0
	RduoER9tFXEqlHEbT6GybBnjUA==
X-Google-Smtp-Source: AGHT+IHr4xaMAD/NMX18+TDEJgv/DkPtZYCXEMen/XWmwLrowKVUseC57g8I2H5M+OIStteWaMVGtA==
X-Received: by 2002:adf:e30b:0:b0:314:11fe:c72e with SMTP id b11-20020adfe30b000000b0031411fec72emr9500471wrj.46.1692107163664;
        Tue, 15 Aug 2023 06:46:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id a2-20020a5d4d42000000b00317ca89f6c5sm17917534wru.107.2023.08.15.06.46.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 06:46:03 -0700 (PDT)
Message-ID: <4ee6db8d-014d-7c8d-f1d8-bf5b1518d6f0@linaro.org>
Date: Tue, 15 Aug 2023 15:46:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 board
Content-Language: en-US
To: Muhammed Efe Cetin <efectn@6tel.net>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de,
 sebastian.reichel@collabora.com
References: <cover.1692102057.git.efectn@6tel.net>
 <cdb5f1d686425e7dcb953c83749153f9321f9afc.1692102057.git.efectn@6tel.net>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <cdb5f1d686425e7dcb953c83749153f9321f9afc.1692102057.git.efectn@6tel.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230815_064607_835931_68ABBBF7 
X-CRM114-Status: GOOD (  11.20  )
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

On 15/08/2023 14:58, Muhammed Efe Cetin wrote:
> Add Orange Pi 5 SBC from Xunlong.
> 
> Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


---

This is an automated instruction, just in case, because many review tags
are being ignored. If you know the process, you can skip it (please do
not feel offended by me posting it here - no bad intentions intended).
If you do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tag is "received", when
provided in a message replied to you on the mailing list. Tools like b4
can help here. However, there's no need to repost patches *only* to add
the tags. The upstream maintainer will do that for tags received on the
version they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
