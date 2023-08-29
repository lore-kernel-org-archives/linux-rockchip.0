Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF9B5C6FA8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QR11KzjZXM8QPr4BUDumfW9k5DThSMyxQpf9sRy0ODE=; b=Zxmz+c/Sd88Irg
	+6Ss60cEEitwthLFLEHOLUOBq0cT5CjjCyaULgpg4l5SxAIT4KMqlRjoRKUbR4aX7Drr3m862vqos
	o4Sjv3aHziLJ8FOjUwXNgIAT/L5WPl3Yy2wX8VesD7YaCcBongW20gmamcQ9lu1X+cBLVQ/sGnfMD
	cW1ANoyV1EIfSeqDqP8DS68oz+1RYXag8S0+gkpVRItZIhz3C/5dxaJm9Z4vCx+5FM8R7EyPaKZZm
	CzOnzEapOb5VnXMWwx4SDNWSILg6jkNy+WTq6pPKAXys4g6TVMnhS3OEnWceg/TmcSt5rN5zWYyUs
	X366WXUuKaGkNdd7CayQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2PV-00Byg2-1v;
	Tue, 29 Aug 2023 17:21:49 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2PS-00Bye8-0f
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Aug 2023 17:21:47 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9a2a4a5472dso988120166b.1
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Aug 2023 10:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693329705; x=1693934505; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ONMdNT0qe15nFMdXWcs/Q8c5HCoTBwiBJLGrnRV1nw0=;
        b=PlyRQZ7/JrlmMXKygshjH51Nx1Dz8BfxGdlKBC/VKDZ9saVM5F4JFjKAM+tTRmTa3E
         WTHXHhCQGY+bU+q+zkyVJebx2D/Ll1Ls4ZNvvLl4EhZMlnpwHdQoub6iGpwcpPms96kP
         PikB7c+GCG1i/14hdFGctePD8/dO82jNzaH17WjsahTX1bbEUuxFSrj5NWxBNuooz0gQ
         cxUiCu/SRcnD6zYCD8h71CuC9qxR8KasSSYy04jDuHc8NDIWFeU2+HJd/qK9sFq6Bqn6
         OfcJQh2rpFlTB1MkQBAqcZoLXJCKtuBZlyvA/0eh/nMvCcpT0LGa1SI11qmhNOYnRn6m
         XxJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329705; x=1693934505;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ONMdNT0qe15nFMdXWcs/Q8c5HCoTBwiBJLGrnRV1nw0=;
        b=SnmLfCDr+tUe4sJmNmGOVozCN1E92upjBqehN7D5v4twOuOnuZf717KGvhjnTbM/8j
         1vX4SJR6pVEA1q6tGXVmboe+1Qxm+QePmK8IydZPDTQvFgB1YzEfdFoneDYT913ox0cS
         JV0YRi7b+PiRE5AY2TQoYVCkhCepHgo3ZUNHLpB9AkOISvp1woIE10+VZthVVL2PYTQ4
         jZMN+OZ1KgBSzYAjplfLRz6Lz4dONzgfji123htzyxESWtd/3XHlhTRW0Bu+7OK/6PBV
         ZRh50E9JUBV2syZ9okYTYg6//YWnNNoxHXUhFQumDTQpcRmp3RNfpMFtj0F3JMfE5Q/T
         jrPA==
X-Gm-Message-State: AOJu0YwED2HU2c5zSbDLP0AfZ/H2yZk6nDUPD1VXxTpHHuzGovCobJLU
	/Z47TuDidSwM+kh+XOYFnGAbGQ==
X-Google-Smtp-Source: AGHT+IEC28zmPiIgJmKgcQJmlnUeRmPValFdXqSMVRYqh4YR7AT6QaS02hhHQPZGW4brxIj/NspEyA==
X-Received: by 2002:a17:907:1614:b0:9a5:c2c0:1d0f with SMTP id hb20-20020a170907161400b009a5c2c01d0fmr3407559ejc.12.1693329704763;
        Tue, 29 Aug 2023 10:21:44 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id x18-20020a170906805200b0097073f1ed84sm6161481ejw.4.2023.08.29.10.21.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 10:21:44 -0700 (PDT)
Message-ID: <ea386a28-841d-0e76-cb1b-735b630001ba@linaro.org>
Date: Tue, 29 Aug 2023 19:21:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 03/31] dt-bindings: ASoC: rockchip: Add compatible for
 RK3128 spdif
Content-Language: en-US
To: Alex Bee <knaerzche@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Johan Jonker
 <jbx6244@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 alsa-devel@alsa-project.org, linux-clk@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20230829171647.187787-1-knaerzche@gmail.com>
 <20230829171647.187787-4-knaerzche@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829171647.187787-4-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_102146_294044_43DA2BF8 
X-CRM114-Status: GOOD (  12.36  )
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

On 29/08/2023 19:16, Alex Bee wrote:
> Add compatible for RK3128's S/PDIF.
> 

Subject: ASoC: dt-bindings: rockchip,spdif:

> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---

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
