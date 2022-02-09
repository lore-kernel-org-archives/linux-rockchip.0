Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB6E2C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 15:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLdJo6kPvv0EyInm7bZUdf8r7bX+6H6IPnJznosMyWY=; b=h7qXmqY5uUyYLO
	RXZFRT5zo4V2NPFE1onWBomlygQjioPGgnIlyGFnR4VPUmH4bTBPdNLk4pQSnWEL1vH+d1omVBCjq
	nTSZiyAiRQv3uFagVtYNmFWliEZfQTpuo5vsueyzaF4p3WPNA+r5/y5Rig9nm4D3yp5KD335cdsPf
	jrPNnOIIJtsNselUacx931O5DIemyDErt32+/lVUTMo9GRnXfX1u+aFw0JZodbpwkpWIA0VKRrs/E
	iaUpFPCCGcfzLWqRqmZCccX9fzk0Y3wzbRfSbsPNNr7C/5rZjL8SQulX5WYmwHgmn9ybMCuYVaLk1
	Gqhtd8KTucJGOYUQ6BWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHp15-000c2Z-Ts; Wed, 09 Feb 2022 15:36:23 +0000
Received: from mail-oi1-f181.google.com ([209.85.167.181])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHozv-000bYm-Tp; Wed, 09 Feb 2022 15:35:13 +0000
Received: by mail-oi1-f181.google.com with SMTP id x193so2905431oix.0;
 Wed, 09 Feb 2022 07:35:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=rue2p+rxxRzTcpzXBjAx6Nrna1JsJ4CzugHpoyHjtrM=;
 b=NAMF8D7je3vpP2LCu0PEYEFhWrabc9Brzn/rxmUQOreA25R4V51GUCFbpgkxO3fZbn
 pezAMCaTPL3UFPF3RP+qQoKAgg3ly1qkS6Pdm6Jgn8jpmuf74WRtIIqo1bpy1vggCEKt
 mLzlfISwSWKcaH+MCDi90smrJ2spWeJhm0CkRIK41p9e39hcDPtcaVRyEQUtauF8sqMP
 Gog5Y79/cztuO8fWJx3aRmP+gzK6fRbHmoWTpZMMLZCRUAU5nrC+HF8CO72E1K5j+A2Q
 r/8xvYz60L3O6bGn6uhdvN58aMmT9Rtv5qULHlMIKIkzsbde2q2t+Kxvw61u5qkRj+5k
 OqzQ==
X-Gm-Message-State: AOAM531G+MU4wsxEPGu+a62gdHm4mKNr98fmtzQh2O2TeFRT15hqvU3p
 7yoPMoR/5N4u9Ohc5qh9GQ==
X-Google-Smtp-Source: ABdhPJxWKdE43poQgnWFP4/5cT7wgQczeGULboq8vh/fIH2TWeERikdANfIAYgAS4jESe/UbnkGqnw==
X-Received: by 2002:aca:1a0f:: with SMTP id a15mr1226523oia.61.1644420910248; 
 Wed, 09 Feb 2022 07:35:10 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id m26sm6845473ooa.36.2022.02.09.07.35.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 07:35:09 -0800 (PST)
Received: (nullmailer pid 391812 invoked by uid 1000);
 Wed, 09 Feb 2022 15:35:08 -0000
From: Rob Herring <robh@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Peter Geis <pgwipeout@gmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, linux-kernel@vger.kernel.org,
 Liang Chen <cl@rock-chips.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Alex Bee <knaerzche@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
In-Reply-To: <20220209085110.3588035-2-michael.riesch@wolfvision.net>
References: <20220209085110.3588035-1-michael.riesch@wolfvision.net>
 <20220209085110.3588035-2-michael.riesch@wolfvision.net>
Subject: Re: [PATCH v5 1/5] dt-bindings: gpu: mali-bifrost: describe clocks
 for the rk356x gpu
Date: Wed, 09 Feb 2022 09:35:08 -0600
Message-Id: <1644420908.380944.391811.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_073512_002545_E3C5D7A3 
X-CRM114-Status: GOOD (  14.41  )
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

On Wed, 09 Feb 2022 09:51:06 +0100, Michael Riesch wrote:
> From: Alex Bee <knaerzche@gmail.com>
> 
> The Bifrost GPU in Rockchip RK356x SoCs has a core and a bus clock.
> Reflect this in the SoC specific part of the binding.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> [move the changes to the SoC section]
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  .../devicetree/bindings/gpu/arm,mali-bifrost.yaml | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml:173:12: [warning] wrong indentation: expected 12 but found 11 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1590238

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
