Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1DAFEB64D7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 14:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWpkJKdNsOYm3T2kLz4GuPJ/gZzZ7hjScnIEGDXtDqM=; b=MsnHaS/sGYmjfW
	0vyeVQdEUBtf6NGUuVDjWMZr1y2BBt36MvfH4COFQjFKp4ZATzLt/pJS0NG5hlkDxwm61lrbojkk8
	LV3vCCGYD5b8fnUPTjVCJXLiKlRAf0ldbrE/SsE/7Uy3lbl9hZKn4yCBhFYaH0g2I2kYAjR3QGM7y
	mZLUY5/HgGWBfctEi5vaNeeAViHf5DU+LVdvIhBdScWQpzbw/cxfDTJdZ6X7zoez8n3Wyx8ksiFor
	SzIY/khXKyEN1ex2ybP7sjxUeUS+6BhLnezmc/LX7hyzseHImfECSt3m8lm1XbhmDQQ2QKamLdiTE
	plBH3mVJZPhYz2UAGhDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBcYt-00BYzP-2A;
	Tue, 20 Jun 2023 14:42:27 +0000
Received: from mail-io1-f42.google.com ([209.85.166.42])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBcYq-00BYy8-0K;
	Tue, 20 Jun 2023 14:42:25 +0000
Received: by mail-io1-f42.google.com with SMTP id ca18e2360f4ac-77e43dde8c9so68753439f.3;
        Tue, 20 Jun 2023 07:42:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687272143; x=1689864143;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0MmZ0g1HW4agS/tjTfgrP/sLuSN4tElhlwhGgoaJ3go=;
        b=ilFYd2nX7o3PmLu6RytOie6qupYN2fAtACkfpquh3GaHtTCIT6tBVmXvBUTqxNwYfr
         5xc/BMjUvzDfhe4uYHm1ly+8Yf7oQJNyhrsZKASgJmSG4HKEiVosiOVWvIleS0svD+5Z
         x1ZeEYcqGtgVstD4P1BDLzGjj5V0YRdV7lk/Fx7HUX50VG4rH51sNgfE+jrNuh2mbpj7
         /nQvGoMQkpGEX5FqzVcpWAMgoyilmKPKLjTjvCbgB6/5lQStv8FuQ4ig7IOm5A44Kj2z
         rGQQdO9JeZ8GN49IGA/dC8ZRD6ZPNpWZ1bFiPC6hYeb0ivjPv4b9GCrYBxilnQzbxQ8A
         hUjQ==
X-Gm-Message-State: AC+VfDwyuTXroaSOmoSUtZh1lrHHI4JyKrlfCfTKhMc4lsOOhcWY+o2M
	3l1z3TBqa6rKCDxXt2aFhkB6VaZbIw==
X-Google-Smtp-Source: ACHHUZ6+i1Qpe2BYZ878BybOTtRyh71NPNDpWWXT+XcPjB3Rn3VGzSz4sJVTkp0w/dkvLRDHJBTzfA==
X-Received: by 2002:a05:6602:2995:b0:76c:4ce7:e37c with SMTP id o21-20020a056602299500b0076c4ce7e37cmr10852808ior.16.1687272142793;
        Tue, 20 Jun 2023 07:42:22 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id l9-20020a5e8809000000b0077e2ae3170fsm674348ioj.55.2023.06.20.07.42.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 07:42:22 -0700 (PDT)
Received: (nullmailer pid 3564600 invoked by uid 1000);
	Tue, 20 Jun 2023 14:42:20 -0000
Date: Tue, 20 Jun 2023 08:42:20 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH] dt-bindings: rockchip: grf: drop unneeded quotes
Message-ID: <168727214023.3564537.237122680984653343.robh@kernel.org>
References: <20230609140702.64589-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230609140702.64589-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_074224_138311_E4A337EF 
X-CRM114-Status: GOOD (  10.27  )
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


On Fri, 09 Jun 2023 16:07:02 +0200, Krzysztof Kozlowski wrote:
> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/soc/rockchip/grf.yaml        | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 

Applied, thanks!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
