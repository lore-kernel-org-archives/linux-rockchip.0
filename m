Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDED7C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 14:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvNG42Wtt8ekGO5rOyBN42rOGDPrz874PZOIze+iAPg=; b=r/ej/YGh0ztMl3
	gfVdGJlmaj4n0dp0siRELwulrCwpovJq/hKmNzUj7vjVapj5wrR2ZKOLCdKEjTLzECQlmRQ85h5sc
	bNQ7CWrgPGA9QUsCLn2EVSVmj+9J+6UiMPmzA2jVM8JNBHrpbNomtuThbV5Vb5mWZNZWylbOrmLko
	Nye42PvG75qCC3oHDF8Dd3Kl4Re0bRSteNZ8h8ZWzL7/07VpRIHN0T6QXp8xt0AH4pTqsyhT7qK4m
	ZciFNbqFrDdcLwE5Vsdi56G6Dz0mTssGBFwoYlBI2J4Mkbczc9KVlBsSnSgNPhzSITEO+EiMl2mDK
	F3LeFpcnrTdhvHQUCx8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzJfh-002nT4-5M; Mon, 20 Dec 2021 14:29:49 +0000
Received: from mail-oo1-f51.google.com ([209.85.161.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzJdk-002mui-5x; Mon, 20 Dec 2021 14:27:52 +0000
Received: by mail-oo1-f51.google.com with SMTP id
 x1-20020a4aea01000000b002c296d82604so3110537ood.9; 
 Mon, 20 Dec 2021 06:27:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=Y1Fcs4t+UtdLO20EaOlKh13hRPU6qA8it6kK1OWCPEY=;
 b=WLc2QNKXmc0IN1UA0ejHCWoo50mIUefHxZFZZlfnHLHB6GYNKxtL2g4NJMyBZUCFOh
 /gKCVMsVWytIXA2SeF1gom9W18z3eQjCS+QurxljpdH/1GeB68UIb3LTTo57+uyM82Lu
 OnVC6dI3n+6JRpnhxXiJtu839aSiw4uqKn9G/NDjqMnBBa2M0uPaFzgDri/dbBY9057t
 bgINnbG0CLp8dm0eU4W97ct0yibJbFFChqrslXNLW1lJtQho/m8eg5PgzkyyTu77zkvE
 BJPKfdi3zwMaMAMMudg7kA6Fq16iudTujTkFYIM8QuPdAdF249hvpzZnkBGtldlgu0ed
 Urog==
X-Gm-Message-State: AOAM531mschRh2XqCNxQug0zfqZBGEjAX8y4FvXL7hgoTc+P/Il+wTVM
 XRnAMleVCQY0tHkSlK4QzE8HOSKcuA==
X-Google-Smtp-Source: ABdhPJyOpmklZ25MWSq9fd1Qj1gymdAdTprfXup4FhgZ3KkOBjlSDYRAuJTWwm2JMIlitSZ80VgO3g==
X-Received: by 2002:a4a:e288:: with SMTP id k8mr10224338oot.23.1640010465884; 
 Mon, 20 Dec 2021 06:27:45 -0800 (PST)
Received: from robh.at.kernel.org ([12.252.7.226])
 by smtp.gmail.com with ESMTPSA id bq5sm3544930oib.55.2021.12.20.06.27.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Dec 2021 06:27:45 -0800 (PST)
Received: (nullmailer pid 3388819 invoked by uid 1000);
 Mon, 20 Dec 2021 14:27:43 -0000
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>, kernel@pengutronix.de,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 devicetree@vger.kernel.org, Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>
In-Reply-To: <20211220110630.3521121-9-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <20211220110630.3521121-9-s.hauer@pengutronix.de>
Subject: Re: [PATCH 08/22] dt-bindings: display: rockchip: dw-hdmi: use "ref"
 as clock name
Date: Mon, 20 Dec 2021 08:27:43 -0600
Message-Id: <1640010463.847707.3388818.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_062748_337502_AFD2F845 
X-CRM114-Status: GOOD (  14.76  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 20 Dec 2021 12:06:16 +0100, Sascha Hauer wrote:
> "vpll" is a misnomer. A clock input to a device should be named after
> the usage in the device, not after the clock that drives it. On the
> rk3568 the same clock is driven by the HPLL.
> To fix that, this patch renames the vpll clock to ref clock.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml        | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml: properties:clock-names:items: 'oneOf' conditional failed, one must be fixed:
	[{}, {}, {'enum': ['cec', 'grf', 'ref']}, {'enum': ['grf', 'ref']}, {'const': ['ref']}] is not of type 'object'
	['ref'] is not of type 'string'
	from schema $id: http://devicetree.org/meta-schemas/string-array.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml: ignoring, error in schema: properties: clock-names: items
warning: no schema found in file: ./Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.example.dt.yaml:0:0: /example-0/hdmi@ff980000: failed to match any schema with compatible: ['rockchip,rk3288-dw-hdmi']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1570972

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
