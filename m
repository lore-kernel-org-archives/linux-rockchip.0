Return-Path: <SRS0=faov=GK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA1FDC433DB
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 15:47:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 62BDF23406
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 15:47:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 62BDF23406
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:References:In-Reply-To:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sK4yBt/AoUCG4bf8mmfhnttfPnAsm+WZyXnsj3KVrI4=; b=edEf2EuUcbFjaVeQxhxVJKRRvm
	ieNAqjXA9y0ni66RClqAmIplrZbTCy45ZA1g+jHI5QsoLQt8LdPhXwiIltxLQNozQ0IOfklyHeZj2
	Ln3DTL0RTqO5MiTJSArdiLAhNCwp2ehngADZHmtAAit3Ic0vznRX/wWnNs4Pz2f5YlejWLvoqAg5L
	7TWcHRjQQ6UAN6v1eDWxqqqdUdbjpntM9D2YU3ZQVZSqAlhhdxwyiei/rsp0dl0jB8NEAhlB7t2Gh
	b9GmOFaVbIQgQvrvo8c968tuuohhx0piWXOBV7GRNFxTZXSU3A1Szy000+ftYRJljeqNeqhNKizBg
	TlUFxcSw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxXVO-0002lU-Qe; Thu, 07 Jan 2021 15:47:18 +0000
Received: from mail-il1-f174.google.com ([209.85.166.174])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxXVJ-0002k5-Ok; Thu, 07 Jan 2021 15:47:14 +0000
Received: by mail-il1-f174.google.com with SMTP id r17so7100522ilo.11;
 Thu, 07 Jan 2021 07:47:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=EFvubgNg2DnmOPkDfoaERPy8UEjZfnIKtkw4s3eQ4y8=;
 b=nyJGD9cQZrcTEpoQT+6xIeNpcHh+gs8t9s8zksu31xMi7fX972odwsGtdZHaw8ldyq
 a0hFf2rS7lWUkz140fgjG4iHPLKZE5yc6YXbHmBzGqSz7ed8v8X7uBuY23X5qEFrTECn
 vSgYg9nw39Mj/s94ymV6g+1TrQ0MA2JniBYXbFuwgNHNsDyLVXLwfo+JsVc5KI2APVa6
 bOEuISwA7lFMiVuwnKbcjO2p5UeqYBjNm20G86FrjIDrCScwnfCzwgcIhhJjUnXseReh
 w1MEyOiIB7ZPNjrupcE7qVIeWQSer+4bmaPUilAeRYYZoEFbzEWlfVgeVQkqhdqMMwy0
 M9wg==
X-Gm-Message-State: AOAM5338g760brSzn6dVmwDr7B7M1U+sD3EdKRXg43mSiokfjwAMQ1/u
 tO3DokGZEb4t8ZmNGL1icg==
X-Google-Smtp-Source: ABdhPJzWIw7GRMQcaSe+m/tRZb/B+liDGhOIlES2tHNkuZBjMlXU4n/TvVLDxcrPd++qzPI4GJCjSw==
X-Received: by 2002:a92:cccb:: with SMTP id u11mr9488057ilq.44.1610034432686; 
 Thu, 07 Jan 2021 07:47:12 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id x3sm3510521ila.29.2021.01.07.07.47.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jan 2021 07:47:11 -0800 (PST)
Received: (nullmailer pid 907945 invoked by uid 1000);
 Thu, 07 Jan 2021 15:47:05 -0000
From: Rob Herring <robh@kernel.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
In-Reply-To: <20210107134101.195426-4-paul.kocialkowski@bootlin.com>
References: <20210107134101.195426-1-paul.kocialkowski@bootlin.com>
 <20210107134101.195426-4-paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 3/5] dt-bindings: media: rockchip-vpu: Add PX30 compatible
Date: Thu, 07 Jan 2021 08:47:05 -0700
Message-Id: <1610034425.207068.907944.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210107_104713_842238_46F0AABE 
X-CRM114-Status: GOOD (  12.84  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 07 Jan 2021 14:40:59 +0100, Paul Kocialkowski wrote:
> The Rockchip PX30 SoC has a Hantro VPU that features a decoder (VDPU2)
> and an encoder (VEPU2). It is similar to the RK3399's VPU but takes an
> extra clock (SCLK).
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../bindings/media/rockchip-vpu.yaml          | 25 +++++++++++++------
>  1 file changed, 17 insertions(+), 8 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/media/rockchip-vpu.yaml:23:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
./Documentation/devicetree/bindings/media/rockchip-vpu.yaml:47:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
./Documentation/devicetree/bindings/media/rockchip-vpu.yaml:50:9: [warning] wrong indentation: expected 10 but found 8 (indentation)

dtschema/dtc warnings/errors:

See https://patchwork.ozlabs.org/patch/1423300

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
