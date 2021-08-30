Return-Path: <SRS0=TPHQ=NV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39760C432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 11:49:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 031DA61151
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 11:49:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 031DA61151
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=klsoPKfbQB9uCaSebXIyctG7Osv1fb2AGVVg2Xq74Ns=; b=NmdWQxa6ZpGAM7
	cqIUPCtndX8o1UlLF6HyTXZzMN3/xVe6p2NOQC0zOdml/nVXeK5yp3/MMQaxx3m1oyq31Zzm4YhPC
	fqv9JVy2bE9l3aXhi64VhOW4O2YPfavTFOvDBVjMGJl1EECn5oVBl2k6rv1f8g2MSY9zgwy/8A2vE
	qcG/YrQewpXFXT5938MYUMDIltvTLV7q4IG2Fa5XXer51GFE/62/u5QmarMhXutKfV+LBsq53rLZy
	FA25HXqRcIZx0uvjWnYw2RZQA1W1bYKYOrhLyyxHlX2eM3kBJukgmzCffhA793hqjYXqut7ZAs9KC
	HMxFjHOqk0QHDkGnsaSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKfmz-00H7n5-5M; Mon, 30 Aug 2021 11:49:21 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKfmt-00H7kE-Su
 for linux-rockchip@lists.infradead.org; Mon, 30 Aug 2021 11:49:19 +0000
Received: by mail-oi1-f182.google.com with SMTP id s20so19486883oiw.3
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Aug 2021 04:49:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=JTWNeOzPya3nNu0WFhWPDsxrKp/zSguxB/tKydwWrag=;
 b=UL+XP+KkPqfu0f0eEeCYlCiOJu3v/Ft2g7XcDk6dXoRioWA3G9xHtd/tLUY3ReK8Ds
 j5YMxqGHil7+LDktdyBEklSjF1QkVM6BjJR1zaCow/X2jrOcdEla847r9qdy/mVulnNW
 h7w49YFXRAtIAM7RK+CcE2eeiFjqjbaQPmmSqTJnWpm7tFRjrqOCt+G5JD4dITpLtR6m
 pbYZvK8XY5/iXxeuUF/qZEFGsoH56b56FyC2I7tMBy1M4ITxSsB5tTOysAk13cgchRgy
 Lkl75AV+vWtG3Bvgu814iF/rpNn8uL404XBxAiqccy1iojlF2ivoIwaGDVANdpY0jqfS
 T8sg==
X-Gm-Message-State: AOAM5314Ra4SH0zNJUoLrF+VGoxgy6FL95+AAyl87ORUUYaWpgWF5vhI
 JFcHsIAmnZ794fDCbauWoAZe3pxZIw==
X-Google-Smtp-Source: ABdhPJwwEkgsS1GB6OQSTyCZgYSxrcjUoCWW5L8KMurAZMwyuCTgAYQQ+h3D86cTz7mDgrBVz2E8uQ==
X-Received: by 2002:aca:6541:: with SMTP id j1mr14958919oiw.146.1630324153939; 
 Mon, 30 Aug 2021 04:49:13 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id 97sm3214312otv.26.2021.08.30.04.49.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Aug 2021 04:49:13 -0700 (PDT)
Received: (nullmailer pid 1731755 invoked by uid 1000);
 Mon, 30 Aug 2021 11:49:10 -0000
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, broonie@kernel.org
In-Reply-To: <1630285861-28147-2-git-send-email-sugar.zhang@rock-chips.com>
References: <1630285788-28002-1-git-send-email-sugar.zhang@rock-chips.com>
 <1630285861-28147-2-git-send-email-sugar.zhang@rock-chips.com>
Subject: Re: [PATCH v2 7/7] ASoC: dt-bindings: rockchip: Convert pdm bindings
 to yaml
Date: Mon, 30 Aug 2021 06:49:10 -0500
Message-Id: <1630324150.931479.1731754.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_044915_975534_E4D1DEC6 
X-CRM114-Status: GOOD (  12.22  )
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

On Mon, 30 Aug 2021 09:11:01 +0800, Sugar Zhang wrote:
> This patch converts pdm bindings to yaml.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v2:
> - Fix yamllint errors.
> 
>  .../devicetree/bindings/sound/rockchip,pdm.txt     |  64 ------------
>  .../devicetree/bindings/sound/rockchip,pdm.yaml    | 115 +++++++++++++++++++++
>  2 files changed, 115 insertions(+), 64 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/rockchip,pdm.example.dt.yaml: example-0: pdm@ff040000:reg:0: [0, 4278452224, 0, 4096] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1522032

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
