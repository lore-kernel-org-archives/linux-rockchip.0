Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 660B7C43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 13:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBpAM6ymInU+l/mpyRzV0CdAxVHvHi2jiOu5IMqIESA=; b=mvEVK7iKN1Tcn+
	ut86NTmpqvKFbLPqcnQlX0tp6ATFgBrIUD/nmn7d1VN3XrXcqcbzBA0IgCrkFZkaN6PuUHttZiKe7
	azAHMexcVXmyeyKgO8RJu1nTdJOgMCXomzzEXF0/5S1rHIQzrRbo+QrrhNwqSh8e/PPYeLox4yqv1
	5kFlrtnKuO9faw0CUJIe4sUVtid+jWrwN8RzFCTxiZkRvOSgImwtATj3K1bHwU/3nAJEiRi01tHdt
	V1SWAHcwMR1dYAJNlE6PpLssOoXi+AODbNhP6I8kYLPUKOw76v9lFrn2EvBK37qnPvQTd+rBtBGx2
	WY8dEk4XsWXwnY59gw6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd6V6-0000000BMeN-1lzU;
	Fri, 26 Jun 2026 13:21:44 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd6V3-0000000BMdL-2uk9
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jun 2026 13:21:42 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-39ad8dbe947so388481fa.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 06:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782480099; x=1783084899; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=QIA0G/jpdUonaNek+iyuSn4PC2pWxZGQ0umU16wcyA4=;
        b=aehhzwuCaC5mf9cmaxpEoQbGzMk7ZnwckUjAy4b1Crssub2Py5g8MaC0V+/lrTsdra
         fZOs9nTolJ5og80++2/tsJxxdvWweAlCx4UKrRxw/+nq1Jk0Pj57Bl0XlfUuv3l/eYcx
         QexSOKoj/LwWx5JwLnTVw534KDV7qxn2fCJn9Ql4/xANGzeM7KuyNevtASq8EurFzIhO
         OEpOs1m8QTYQ5qZyzKFE0lvC3btSAYII6xVn+NyDyB9QohujAUpKxlWLiN0XPEOjXaqD
         ni68xSPUdoOlyUoymDpoQXKiQwkQMcjAkeRNMDUG531lKZHJqCzle9zMkiHYjDfNFi0A
         q1xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782480099; x=1783084899;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QIA0G/jpdUonaNek+iyuSn4PC2pWxZGQ0umU16wcyA4=;
        b=U3ofUNsMroIhyCuMu0iztFvibKVll7smPkeUnRX4AwC7nN1kW5cosgccMk6GwF7DrS
         YPCAVGI7WjXSHc+PrKIvxyoBw+x3ip1aEi5BFdKGjJDCaRRYC0bYju5VWEb4GcqCDKr9
         esiEHLisKhdfl3O/v7LtTkRTpKwA1j/NQhE0r2DKIa46JaiFYavDHYhr4s8BfD0JJJCS
         H8aQoz/kI+tkWOkGHrL7T+qSxK8B1FNWteGTVDjYH3xxnXY3umYxjN1YtB67fr04kTtb
         wARtkdwmVACuSyps6xmHHbx0aXZFrSfQIzTLDwuNMI6kXOFEn8FqZNrFNan32Om8SlJv
         Ow2Q==
X-Forwarded-Encrypted: i=1; AHgh+Rq6oWTK1l4c4gMzCMqVX4ZvSc4LXecc8VYLmaAyu5aHmodnLwYu1t/juTvG+lWB+LdXpD2D1csAjIlN6OdLag==@lists.infradead.org
X-Gm-Message-State: AOJu0YzTW38jEF/vOuMYcdGHgYwIl06SKbXU+vR/xTPqJFdFvFOTsjIY
	fXfPb30uInrpFvVgvd7WfW0cxY8u5vlLqEvuHwWWOiipNeF7TwBeO7IdQa7qEk/lk0CwhyCUPfu
	YGEWovAc=
X-Gm-Gg: AfdE7ckp10oPqxSERLWk2JYUjgUxfUutUovg4PgI3PdpK9Rzt9uuzksW1jA3dILBQYl
	w9qwpvIY8T9YWuPs7TbQwTl4ShsvwaSki4Q4sAQlNfXINVROa8HVGvHqeswOUI85tvMIAc8pXJz
	GKrdt49PjvqWbHOoMKMOBgMDBdR1aNcSZePvW0yi5hXRVVHul6uP9BFL0fNjJ193HfvlqC1Tr0s
	/1Eqey/GM5fxY46vtXi6uWUE9npf3K9ehIJQbTNx3NJlEA2K9XcG2tsiaPvxUQYalg+fqJuKWbg
	dD95bP/q88QOKWWXbMrjVXhlALP2TVjoTuM3DGXG/XbXXutRcitlfKM5FuXfvvv9asuB9W2RhLL
	/69+4yFU8K3aaZqKEWgIWdjudQmnDoqQJU2ZYjeLvY97Pxhg3jOUGrzwjZv272aGDycngV7z9rG
	Znhd1nq5vjyoxW0u1P0AJBLJNgWNykdL21WH3NMo8KE5fhJd4mT0QVCtyN2pzES2lmLdIQ3alJF
	ChiOQ==
X-Received: by 2002:a05:651c:1511:b0:39a:c9d5:3c65 with SMTP id 38308e7fff4ca-39acb97be3emr7979051fa.8.1782480099479;
        Fri, 26 Jun 2026 06:21:39 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39ae2613f76sm460481fa.30.2026.06.26.06.21.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2026 06:21:38 -0700 (PDT)
Message-ID: <2f238823-d340-4cad-b6f0-24ff86ff969b@linaro.org>
Date: Fri, 26 Jun 2026 16:21:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/8] media: dt-bindings: video-interface-devices: add
 video-interface-devices.h references
To: Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jacopo Mondi <jacopo@jmondi.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Jimmy Su <jimmy.su@intel.com>,
 Matthias Fend <matthias.fend@emfend.at>,
 Mikhail Rudenko <mike.rudenko@gmail.com>,
 Daniel Scally <dan.scally@ideasonboard.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Michael Riesch <michael.riesch@collabora.com>,
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
 Sylvain Petinot <sylvain.petinot@foss.st.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Martin Kepplinger <martin.kepplinger@puri.sm>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Tommaso Merciai <tomm.merciai@gmail.com>,
 Svyatoslav Ryhel <clamor95@gmail.com>,
 Richard Acayan <mailingradian@gmail.com>,
 Thierry Reding <thierry.reding@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux@ew.tq-group.com, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20260626-kbingham-orientation-v2-0-47178be927b4@ideasonboard.com>
 <20260626-kbingham-orientation-v2-2-47178be927b4@ideasonboard.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260626-kbingham-orientation-v2-2-47178be927b4@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_062141_772401_606DCB64 
X-CRM114-Status: GOOD (  19.99  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 6/26/26 15:07, Kieran Bingham wrote:
> Expand the documentation of the video-interface-devices orientation to
> reference the include/dt-bindings/media/video-interface-devices.h header
> which provides human readable defines for the orientation enum, to help
> avoid hardcoding values in dts.
> 
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> ---
>   .../bindings/media/video-interface-devices.yaml         | 17 +++++++++++------
>   1 file changed, 11 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/video-interface-devices.yaml b/Documentation/devicetree/bindings/media/video-interface-devices.yaml
> index a81d2a155fe6..c9c3f4f16719 100644
> --- a/Documentation/devicetree/bindings/media/video-interface-devices.yaml
> +++ b/Documentation/devicetree/bindings/media/video-interface-devices.yaml
> @@ -392,17 +392,22 @@ properties:
>         The orientation of a device (typically an image sensor or a flash LED)
>         describing its mounting position relative to the usage orientation of the
>         system where the device is installed on.
> +      See include/dt-bindings/media/video-interface-devices.h.
> +
>       $ref: /schemas/types.yaml#/definitions/uint32
>       enum:
> -        # Front. The device is mounted on the front facing side of the system. For
> -        # mobile devices such as smartphones, tablets and laptops the front side
> -        # is the user facing side.
> +        # MEDIA_ORIENTATION_FRONT
> +        # The device is mounted on the front facing side of the system. For
> +        # mobile devices such as smartphones, tablets and laptops the front
> +        # side is the user facing side.
>         - 0
> -        # Back. The device is mounted on the back side of the system, which is
> +        # MEDIA_ORIENTATION_BACK
> +        # The device is mounted on the back side of the system, which is
>           # defined as the opposite side of the front facing one.
>         - 1
> -        # External. The device is not attached directly to the system but is
> -        # attached in a way that allows it to move freely.
> +        # MEDIA_ORIENTATION_EXTERNAL
> +        # The device is not attached directly to the system but is attached in
> +        # a way that allows it to move freely.
>         - 2
>   
>   additionalProperties: true
> 

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
