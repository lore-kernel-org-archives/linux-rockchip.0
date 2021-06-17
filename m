Return-Path: <SRS0=O9sg=LL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B293C48BE5
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jun 2021 21:26:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F1AA660E0B
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jun 2021 21:26:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F1AA660E0B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f026iVwaCw2PKFCfRPWy3018wQ7eZCCSLPZNGpNi/1U=; b=gitNWwGyutDlb6
	v9Fa56Squdmd5w903xRj07rU70MdZ2UVsVkPRCPIDzKRmhonlELtPT8k0hyMZdpnrcnTsA387yetp
	OGGemLa851AlTjOS0AQea8vkAoss7LNL+kWbXbmEGS0dD10lrJT2naZeEmcTrASVznREE1za+yG5M
	t93+nEEpj8cph9RWRjMnC3MTMZUPJGuAJ/HwaqNE7Pvdg5tKWHW70KJ4s1L4HfjhqXeeEf/yaJcHZ
	vYW+a6ffCCA1Da3uJd0gMliVesw6gXahbPhjgLzSl2OtQFGlw22lsiQyjuXak6WDORSw7uPM3Awi3
	0ZqFvGSLohTSsiFy2DUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltzXA-00BnJF-6K; Thu, 17 Jun 2021 21:26:44 +0000
Received: from mail-io1-f54.google.com ([209.85.166.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltzWz-00BnFj-OQ
 for linux-rockchip@lists.infradead.org; Thu, 17 Jun 2021 21:26:35 +0000
Received: by mail-io1-f54.google.com with SMTP id o5so2962883iob.4
 for <linux-rockchip@lists.infradead.org>; Thu, 17 Jun 2021 14:26:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=BK4/yKFERPq5Q5JT9ah7IGyXargZYodEJ6e9CzGiy3M=;
 b=EgRbwrRdEqQJIwlPJvmSzaDZ/2DF7J6xYprXbvbMK1Mb1Jkb2ELQIXk02/A0sqm55V
 0o0qGbdbiqfr8bnx4fwMoIyA/KoUZiCY8svadtTajlIh0itOtmO7GwBFQ7/0o3KA9sJE
 TXTRC0K/76EfEGg0+ukBAa/lGawcdvsSXmrbV2DUn7nEQdwHr5Yu7VJHiLiTCxW0bdJK
 /XcrOdcjqOFEQ6unYveUZD2C+y3zrEmi2grt31WGeLhESfOs3f/W59YVb9wx8A2TjPEk
 EeCd9usokpgfNhIxoCJAA2bkd0GLjU8VNNuwXRt6v7rHUNCXN2JbMZuUS181MrXlwC9W
 aEYw==
X-Gm-Message-State: AOAM530jNDkbTt5SkySPN8HVIcEVtivrTmhmViV1A8sJbUBiptnnwQFI
 niuClmgHa3GMz7xiB/zg9DCwRZR+tg==
X-Google-Smtp-Source: ABdhPJyJjIjZ7icIf3FV7WOoRfpkfxMCTq875Gptr5kBUuCdwKnKUEr+eYj/VVIB+lEYT3uweNNoOg==
X-Received: by 2002:a5e:940a:: with SMTP id q10mr5487243ioj.19.1623965192578; 
 Thu, 17 Jun 2021 14:26:32 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id x18sm84588ilm.86.2021.06.17.14.26.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 14:26:31 -0700 (PDT)
Received: (nullmailer pid 3336123 invoked by uid 1000);
 Thu, 17 Jun 2021 21:26:24 -0000
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, linux-media@vger.kernel.org,
 mchehab@kernel.org, ezequiel@collabora.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Laurent.pinchart@ideasonboard.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, linux-rockchip@lists.infradead.org
In-Reply-To: <20210617162745.4080975-10-heiko@sntech.de>
References: <20210617162745.4080975-1-heiko@sntech.de>
 <20210617162745.4080975-10-heiko@sntech.de>
Subject: Re: [PATCH v5 09/10] dt-bindings: media: rkisp1: document px30 isp
 compatible
Date: Thu, 17 Jun 2021 15:26:24 -0600
Message-Id: <1623965184.614652.3336122.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210617_142633_823686_1251ED5A 
X-CRM114-Status: GOOD (  11.31  )
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

On Thu, 17 Jun 2021 18:27:44 +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Add the compatible for the px30-variant of the rkisp
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../bindings/media/rockchip-isp1.yaml         | 66 ++++++++++++++++++-
>  1 file changed, 65 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/media/rockchip-isp1.example.dt.yaml:0:0: /example-1/parent/i2c/camera@36: failed to match any schema with compatible: ['ovti,ov5695']
\ndoc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1493733

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
