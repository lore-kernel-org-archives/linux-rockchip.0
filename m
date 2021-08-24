Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE01C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 12:30:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 796BA61265
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 12:30:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 796BA61265
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ljh77L72HBL2Kboz/ZyTAV3gY3cS44IaFSmAbCIL7Bo=; b=AmIfIY0pYwW0nJ
	wbSpYyXtBOnDSuMZs0WzMGc8zXJEgqTH4XrPC6Z37HZiP5xKQB8fy76adKHQKcH91BOybLot3VpS4
	+ZKxYlnXPia461yQJzNN7h79bsO0Nbm4nC+EP6hxjuC2dLRQzYdxQCM7XexO/3majc3Klhbpi0+5L
	w4ZBPReO8Y7yEZgQsajKoJiM3Qxod0nv6TbgH2YORvsk0vEMS15uAuQSdOGkKghgTIurKju4Tbt8t
	NHRX3atuLLBsr5E35jckw5e0ITqWK3TLyN8KI15VLuqVboqSVROyoTOsThzyisNRAdxWoOQ2uvb70
	8qSuJsAwCxFrntSzg7IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIVZ1-0032hO-3s; Tue, 24 Aug 2021 12:29:59 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIVYm-0032Zp-Ml
 for linux-rockchip@lists.infradead.org; Tue, 24 Aug 2021 12:29:49 +0000
Received: by mail-ot1-f54.google.com with SMTP id
 l7-20020a0568302b0700b0051c0181deebso13784708otv.12
 for <linux-rockchip@lists.infradead.org>; Tue, 24 Aug 2021 05:29:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=wCddbBkBFsbpc3gLzGC+afVI1xhhkM3RxpwaNW7mQMQ=;
 b=WZLZPRZzI6DoYq01pOJh1EnW9x8zxGOSX4aLMMEQNLOmhimScXxl2FYwrAcxgWb/8L
 teFCByd+sZdSxt9cETOtRqCWzVhfKaa/YKVMbuMvXHHV7rB+ffEzQuYsVs8A3PjVUcQw
 +6gEs6haBUWVGDSJiOV0oDRVIPmt0qCfVrf5BTOi+FIjxZOZhYKC7HVxT3bLgTrQ54uT
 5rw5t0ntBWr4cMERV17xHRdNS1cEi8jtEwg2f/LQozxd50OEN4DjBKi6FwTHneAGrmzy
 hcIUbuyKRjXA/7BfQCUKCiZRaGDivW0rY9f+de5LK364dvuC3HhiacMVf3lnTMS0LmDQ
 S8ag==
X-Gm-Message-State: AOAM533iFcjW5Cnd8z3ukwWyk90ZkDJaMuVsTgZ6GZUCRIZ3EQwAKReR
 haB1JzszCFwDq1xIXY8PVw==
X-Google-Smtp-Source: ABdhPJwyL2/AOUZUc091A0XC9ihGhEYxxo6IDHFdYPz6/N3UNb8LYue1N6moEAb+PoXZ9uK0U/oNlg==
X-Received: by 2002:a54:4791:: with SMTP id o17mr2641977oic.133.1629808182653; 
 Tue, 24 Aug 2021 05:29:42 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id s24sm1487318oic.34.2021.08.24.05.29.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 05:29:42 -0700 (PDT)
Received: (nullmailer pid 61433 invoked by uid 1000);
 Tue, 24 Aug 2021 12:29:41 -0000
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: broonie@kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <1629791656-13698-2-git-send-email-sugar.zhang@rock-chips.com>
References: <1629791446-13528-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629791656-13698-2-git-send-email-sugar.zhang@rock-chips.com>
Subject: Re: [PATCH v1 7/7] ASoC: dt-bindings: rockchip: Convert pdm bindings
 to yaml
Date: Tue, 24 Aug 2021 07:29:41 -0500
Message-Id: <1629808181.201442.61430.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_052944_812243_884CC373 
X-CRM114-Status: GOOD (  10.97  )
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

On Tue, 24 Aug 2021 15:54:16 +0800, Sugar Zhang wrote:
> This patch converts pdm bindings to yaml.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
>  .../devicetree/bindings/sound/rockchip,pdm.txt     |  64 ------------
>  .../devicetree/bindings/sound/rockchip,pdm.yaml    | 114 +++++++++++++++++++++
>  2 files changed, 114 insertions(+), 64 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/rockchip,pdm.example.dt.yaml: example-0: pdm@ff040000:reg:0: [0, 4278452224, 0, 4096] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/rockchip,pdm.example.dt.yaml: pdm@ff040000: 'oneOf' conditional failed, one must be fixed:
	'interrupts' is a required property
	'interrupts-extended' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/rockchip,pdm.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1520109

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
