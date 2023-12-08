Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ADEDC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 15:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yF796FuJ/W4JIjUjWozilMu871PF3tmStJjMHTw03+0=; b=pP/CIgi6IJJQbD
	J87J0jhnBV60FWvrzD/eaZFWEKWgpfCgjFp8CPta26c/4qHtxzHFjBRfyr5JF3DSbSg6ItIhQIgao
	+JSHLjNC6SvZl+zdmX0FGORFgXuuujjuhhyXIxt6NQC6QKu+Aoh17vhv2bBUCIjwQ9y3mMaQcl7N6
	D35Mu//QkGB15nEF6JKbZchulIg/fvgzw/jlU42exu+bBL4JeC6AlaU7qOu+bxwVtVOfbRT73g1p1
	w3GHTA2Z1d17l/cvJwIqmbIp9JR2MczbOLMcON8xFrRJE6eBiFOAFVMAuMYQmBoVsLkMGWk9M2pfG
	wwyr+3J2Gz8+oyW5sP+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBcmx-00FtNZ-17;
	Fri, 08 Dec 2023 15:29:15 +0000
Received: from mail-oa1-f44.google.com ([209.85.160.44])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBcmt-00FtMi-36;
	Fri, 08 Dec 2023 15:29:13 +0000
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-1fadb9ac169so1258478fac.0;
        Fri, 08 Dec 2023 07:29:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702049350; x=1702654150;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B2To1yV3sBlyUIXX2dRxgZLUw8e5tQCWslY62gbS5zc=;
        b=k8gYCjT6WEId42l4AVqwAw9xDmCiuSJVgPVHnpDIkHEryKG6OZLUK8U0DvHWllsTsd
         neKeZXUYZtcAx2mi0+TRvqlcQdk9xdMbiSpZZalvTv9mT7Uf1lle+1m95mYA3hYy8kV+
         sNsOo/RgzGqPAjcg9wNb+6cp0kDsZCazEHhPmcVQ3PAPcp5sT86+4bt9Hih8he2DxkfT
         fMYwIvcvf0Y+gb4137PKwczQKca3SIn3N+FQpXI6js1Bl88U6Jch27Tl4hpqcldPWETF
         UYjPGgzcMGFLvjxSOgn4Hd966SzCDZ3kGS/AmawecxeHojJGZU52phmLcaZqajH08Z4N
         7IRw==
X-Gm-Message-State: AOJu0YwUzcXN02iv8HA03cldUjwMjPtF9RBcSjofPTfMaCmjKfJG9iCx
	FeEmuZTWHk0l/eMY1Q2oJA==
X-Google-Smtp-Source: AGHT+IHyKKjladIMN927leaaMAXflSx/bGCGRS95D1nFq54QptT3Wo+QdUF8jxOs29jg+9zj+WWbgg==
X-Received: by 2002:a05:6870:b69d:b0:1fb:75a:6d47 with SMTP id cy29-20020a056870b69d00b001fb075a6d47mr273275oab.110.1702049349884;
        Fri, 08 Dec 2023 07:29:09 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id lv18-20020a056871439200b001fb24a0c23csm434995oab.35.2023.12.08.07.29.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 07:29:09 -0800 (PST)
Received: (nullmailer pid 1380806 invoked by uid 1000);
	Fri, 08 Dec 2023 15:29:08 -0000
Date: Fri, 8 Dec 2023 09:29:08 -0600
From: Rob Herring <robh@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v2 1/5] pmdomain: rockchip: Add missing powerdomains for
 RK3128
Message-ID: <20231208152908.GA1378274-robh@kernel.org>
References: <20231202125144.66052-1-knaerzche@gmail.com>
 <20231202125144.66052-2-knaerzche@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231202125144.66052-2-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_072912_019526_883AFCA2 
X-CRM114-Status: UNSURE (   9.97  )
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

On Sat, Dec 02, 2023 at 01:51:40PM +0100, Alex Bee wrote:
> For RK3128 the powerdomains PD_PERI, PD_SYS and PD_CRYPTO are currently
> missing.
> Add them.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  drivers/pmdomain/rockchip/pm-domains.c   | 13 ++++++++-----
>  include/dt-bindings/power/rk3128-power.h |  3 +++

Bindings (and DT headers are bindings) should be separate patch.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
