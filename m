Return-Path: <SRS0=o2ac=O2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 374EDC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Oct 2021 21:14:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 067BC61177
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Oct 2021 21:14:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 067BC61177
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7y6vooUyS93P4LQud3E/sjeoyLWQae5nThEYjZLeJ4=; b=XrBzy83w/vu28B
	1kEn4f8xu2e18j4rL/Y4nE6UprfHZl7Tepvay5pHBWavBfMwS4qi0gPdIYIPp0r9fwzMR5tazW1Cr
	b1l5exB5ke0I/EoJiOW09aEivrmRfDtpukyd2ZfilG+VYi7xnWsXKHw1RSyBIqlvPxaAhfwQTVKA5
	JTIS2yBgLiihSBbc4DwZFMG50pBAeC+MZWzdsJLoW0YeGWemAeE9+32h7jLMKoOL1eZA53VB3jdEq
	UBLW+/stqnLyXmmVIeLCNT4bYaZhUGm0ZjjPOAAy/HzcFHJKhAq1kYFyiwj/g9ExWBApfolYfCYKa
	PaMNojAOSnrtwm+lca2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYEEs-00Fa9W-QJ; Wed, 06 Oct 2021 21:14:10 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYEEf-00Fa6O-MJ; Wed, 06 Oct 2021 21:13:58 +0000
Received: by mail-ot1-f42.google.com with SMTP id
 x33-20020a9d37a4000000b0054733a85462so4812879otb.10; 
 Wed, 06 Oct 2021 14:13:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hhEh5kd4e+SG2xwNY07ROc2/rt5AxCtyHRuXkRz4T3k=;
 b=Og9LRnQI8/v9wVvXMsHKO80RBXpW6LS1sQQOecLL0X+TRISOoOPMCbZ4j91Y+tNPdO
 w3SZxVH5Jy+l2zdgfR6ZQTl8e/ts6bd6Q9dlOa0fI9meXTo+s4RYec7kacedX6CeGkqW
 aRAG5ZxVyLj0WJGS/xavU9uavV2IaBY/bUCDMfhWq+OhQCkuw7hbIH+cpVV7DXHU+17W
 pBRuDxy6MJ+0V5rsscyDuElh47TmjPfvYUTjO/hU1sEXXKrkfLr8b8THz9xfPhuF54VW
 Her5aypyAjnBynU33Xk5B3TQwWth2sD7WqlwetVYxqkj/3KrtEkE17eImUrdLJdp4wpp
 Ok5w==
X-Gm-Message-State: AOAM532LS/VZXAlLER91ROtPXBMxld6qKx5BrT58M6nLkQwNhvNgUr9/
 O3ipKbvNkRLhcf0UfoBAEA==
X-Google-Smtp-Source: ABdhPJzCaOetxDXjKEw1eehKByezoxHask+w4Lv2EHhMvurr3FrCIGFjv9FkOtkcIDUctkQBkf71mA==
X-Received: by 2002:a05:6830:922:: with SMTP id
 v34mr439300ott.240.1633554836780; 
 Wed, 06 Oct 2021 14:13:56 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id z24sm4135433oic.26.2021.10.06.14.13.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Oct 2021 14:13:56 -0700 (PDT)
Received: (nullmailer pid 2886228 invoked by uid 1000);
 Wed, 06 Oct 2021 21:13:54 -0000
Date: Wed, 6 Oct 2021 16:13:54 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: daniel.lezcano@linaro.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, amitk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 rui.zhang@intel.com, heiko@sntech.de, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/4] dt-bindings: thermal: allow more resets for tsadc
 node in rockchip-thermal.yaml
Message-ID: <YV4RkjIEMUKlWK4z@robh.at.kernel.org>
References: <20210930110517.14323-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210930110517.14323-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_141357_759131_7A15C416 
X-CRM114-Status: GOOD (  12.69  )
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

On Thu, 30 Sep 2021 13:05:14 +0200, Johan Jonker wrote:
> The tsadc node in rk356x.dtsi has more resets defined then currently
> allowed by rockchip-thermal.yaml, so fix that in the documentation.
> The driver now uses the devm_reset_control_array_get() function,
> so reset-names is no longer required, but keep it for legacy reasons.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V2:
>   Remove deprecated
> ---
>  .../devicetree/bindings/thermal/rockchip-thermal.yaml      | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
