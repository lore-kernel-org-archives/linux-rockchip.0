Return-Path: <SRS0=VpfD=G4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA71FC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 14:51:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 68CB6208CA
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 14:51:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 68CB6208CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:References:In-Reply-To:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G+OwvTQpyB/5eIi7Ji66v7yZ3QKJ4hlF5XeKH/X06y0=; b=Fe5/85eqUGsyBXzOxv73q11BpI
	aAS8vRL8OvMKpGDhLlpWvvFbhgpwuJp1G+sm1xkuU2cujsfmc6w9Sbl6rSfinrEMYtRNUhzkifqij
	POoXRXQKFu+D9eu6T/75TNlAuWZybmdG9BPUSxVqaBnvm5uU19UtmMsXgsxsBJQgXWOxypnKk5A2z
	6r66hmEnGBxzGD1KgxQGNYw83AcVcjXrJoYqJErX+HYH/apOUtirjNfDJgOymfQxUTL2WEKEI48+C
	z7CfiY9Y6+GSUrEd/G2h3sFVsBpQNDSc18F9JoGakOCKA5gALmUFxCzUDxI5LcGOEV2gK4E/r/q4G
	KRWAY8DA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l43DV-0006vP-C4; Mon, 25 Jan 2021 14:51:45 +0000
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l43DS-0006uG-SD
 for linux-rockchip@lists.infradead.org; Mon, 25 Jan 2021 14:51:43 +0000
Received: by mail-ot1-f43.google.com with SMTP id k8so12949213otr.8
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Jan 2021 06:51:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=t6AjeOuEVABHdAQoH+abbWUN78XuGNp/FJaAukBK/cE=;
 b=CFh+mSlDk9X3bMvDbUQwuSeMsMY0FhTIltblLsgbGANhJzsEs7DA+MehDHqH0snAOv
 lDDGiV7DIo1sSqII5Fb3uX4nBRkNx1voqgb3wUduhjGHTsOkfgcLBSfenfZgFm/2d6hM
 16HHOMo6jrGouEk/1IM6MIM13dV8KTMW40qffj6Qp+xKCpha+jcgkfGM80V+0LT2uL3U
 oYY4lKKE8DtLj4w7xwRj753OqaSQO2cS+gapZUowd+BaRtRAeytlH4w+wJTwyZ5A72Rs
 FtJMe0nzuSUGz/9D26fkAHZYevGeIMRsy6xNCVuTdktq/kf0xsNTq1qhnb12RUsmSj5Q
 3b+Q==
X-Gm-Message-State: AOAM5324rr2PVMhHNXEuP+3+pot8Ya5994gs82p2wcFHFjNX+mAkkBFf
 5pWccRLZZYoMrbShomizjg==
X-Google-Smtp-Source: ABdhPJyh75is8MUYkM1d0LK6XFWMdy79UP8Cp982xu3Hn3yFCOuUkWG0Yo23WM7csu9NmZ36m1oMzw==
X-Received: by 2002:a9d:5544:: with SMTP id h4mr732610oti.104.1611586301690;
 Mon, 25 Jan 2021 06:51:41 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z8sm3258726oon.10.2021.01.25.06.51.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Jan 2021 06:51:40 -0800 (PST)
Received: (nullmailer pid 327906 invoked by uid 1000);
 Mon, 25 Jan 2021 14:51:35 -0000
From: Rob Herring <robh@kernel.org>
To: Simon Xue <xxm@rock-chips.com>
In-Reply-To: <20210125024824.634583-1-xxm@rock-chips.com>
References: <20210125024824.634583-1-xxm@rock-chips.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Date: Mon, 25 Jan 2021 08:51:35 -0600
Message-Id: <1611586295.665555.327905.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210125_095142_915903_99165D19 
X-CRM114-Status: GOOD (  10.56  )
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 25 Jan 2021 10:48:24 +0800, Simon Xue wrote:
> Document DT bindings for PCIe controller found on Rockchip SoC.
> 
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml        | 133 ++++++++++++++++++
>  1 file changed, 133 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dt.yaml: pcie@fe280000: ranges: 'oneOf' conditional failed, one must be fixed:
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dt.yaml: pcie@fe280000: ranges: 'oneOf' conditional failed, one must be fixed:
		[[2048, 0, 2147483648, 3, 2147483648, 0, 8388608], [2164260864, 0, 2155872256, 3, 2155872256, 0, 1048576], [2197815296, 0, 2156920832, 3, 2156920832, 0, 1064304640]] is not of type 'boolean'
		True was expected
		[[2048, 0, 2147483648, 3, 2147483648, 0, 8388608], [2164260864, 0, 2155872256, 3, 2155872256, 0, 1048576], [2197815296, 0, 2156920832, 3, 2156920832, 0, 1064304640]] is not of type 'null'
	2048 is not one of [16777216, 33554432, 50331648, 1107296256, 1124073472, 2164260864, 2181038080, 2197815296, 3254779904, 3271557120]
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dt.yaml: pcie@fe280000: ranges: 'oneOf' conditional failed, one must be fixed:
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dt.yaml: pcie@fe280000: ranges: 'oneOf' conditional failed, one must be fixed:
		[[2048, 0, 2147483648, 3, 2147483648, 0, 8388608], [2164260864, 0, 2155872256, 3, 2155872256, 0, 1048576], [2197815296, 0, 2156920832, 3, 2156920832, 0, 1064304640]] is not of type 'boolean'
		True was expected
		[[2048, 0, 2147483648, 3, 2147483648, 0, 8388608], [2164260864, 0, 2155872256, 3, 2155872256, 0, 1048576], [2197815296, 0, 2156920832, 3, 2156920832, 0, 1064304640]] is not of type 'null'
	2048 is not one of [16777216, 33554432, 50331648, 1107296256, 1124073472, 2164260864, 2181038080, 2197815296, 3254779904, 3271557120]
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/pci/pci-bus.yaml

See https://patchwork.ozlabs.org/patch/1431082

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
