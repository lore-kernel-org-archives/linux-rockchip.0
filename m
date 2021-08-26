Return-Path: <SRS0=LXKC=NR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56316C41537
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 13:26:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 289F1608FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 13:26:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 289F1608FE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mby3MdReAP7ZYbimJEWKmBm0s/ulPG6Lp3zIg/lrSUo=; b=N2NaPQs88i5657
	E4IEZVBYNcBcuCsjNmoz0jvy6t+3YDWXkp5pWz86eBfgq+VhyWHyiJlGwFaSko1vWfn9u1Yg/5C4j
	z/xO4By3zwQi+X3GIkDxMjcV6CxRt2jW7im4D33Cv3eXBfFz6CdpokFq/QeEdHfFdIlQF1Dy1aMoj
	wlD4DSt34MO26Js3VhpZjAk8LYyySRWNBKVgUXgjUJVKol/CijHuJFLQ/CjkglYISK9jGdVMvAFlp
	8b5qbo3v0yF4wwvsdunxcffXdJ179fIi/rEEV3ouWLXzRnUFoS7NskvHiil3NJOaPvMV8BM2Df6Ep
	yt77lFjfLc4kEVVw+4sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJFOf-00AEti-Ay; Thu, 26 Aug 2021 13:26:21 +0000
Received: from mail-oi1-f181.google.com ([209.85.167.181])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJFOT-00AEqo-Qf; Thu, 26 Aug 2021 13:26:13 +0000
Received: by mail-oi1-f181.google.com with SMTP id 6so4498830oiy.8;
 Thu, 26 Aug 2021 06:26:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=MVwvIDZK2/7Y4951WHMhhdQzU7LUf/3BWIAcj7PEAtg=;
 b=fykYuwSaNSOsTdE+CES+oENQRTIKPH8u4nOHIbwG9swzMmhcxyDPBAHpfhDXI4+Rxa
 JFb4jYKUYAsnMPCzlwZ6Msxz548Vdh8qFH86bf/mEk0Le2o+Dwx3KvZcGQIunbG7EK7c
 vmG6fmfUf4Zu6LmmvU2fOsXFdhC4hNplk6k+T1Dm4tfpYn4filxUSX0hFVhRKxIqMcXN
 S40fjvdv2akn7H8UoKGDQX2Qetc70GZ/Th0U907pwS8YjlEo6QMn8uRgd/Xsw5czSW34
 uKbwLysZ++27IIBH64rgHM7QHqhh43Yc+rjgAca1UFI+TScxILC7Rw4TGUGInGfyaIcP
 xJOA==
X-Gm-Message-State: AOAM531dW/maTztuDa0kvwRNBOg2WdBQAfHXA8bYgTxd6ttsqVUQkV03
 tL1XQ0jjCwhmqqOd0N/uUw==
X-Google-Smtp-Source: ABdhPJxQgh36d/Z8oPQJ2kZdPSroKU7uJI2G1etE76FJfI7pF24X/EZtJ5/N57d2bHja0Z6MHeT+MA==
X-Received: by 2002:aca:b808:: with SMTP id i8mr10141154oif.62.1629984368953; 
 Thu, 26 Aug 2021 06:26:08 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id x1sm554628otu.8.2021.08.26.06.26.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Aug 2021 06:26:07 -0700 (PDT)
Received: (nullmailer pid 1033392 invoked by uid 1000);
 Thu, 26 Aug 2021 13:26:01 -0000
From: Rob Herring <robh@kernel.org>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org, heiko@sntech.de,
 michael.riesch@wolfvision.net, kishon@ti.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, p.zabel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20210826123844.8464-2-yifeng.zhao@rock-chips.com>
References: <20210826123844.8464-1-yifeng.zhao@rock-chips.com>
 <20210826123844.8464-2-yifeng.zhao@rock-chips.com>
Subject: Re: [PATCH v1 1/3] dt-bindings: phy: rockchip: Add Naneng combo PHY
 bindings
Date: Thu, 26 Aug 2021 08:26:01 -0500
Message-Id: <1629984361.449016.1033391.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210826_062609_952166_D4E4CA98 
X-CRM114-Status: GOOD (  11.68  )
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

On Thu, 26 Aug 2021 20:38:42 +0800, Yifeng Zhao wrote:
> Add the compatible strings for the Naneng combo PHY found on rockchip SoC.
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> ---
> 
>  .../phy/phy-rockchip-naneng-combphy.yaml      | 100 ++++++++++++++++++
>  1 file changed, 100 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.example.dt.yaml:0:0: /example-0/syscon@fdc50000: failed to match any schema with compatible: ['rockchip,rk3568-pipegrf', 'syscon']
Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.example.dt.yaml:0:0: /example-0/syscon@fdc70000: failed to match any schema with compatible: ['rockchip,pipe-phy-grf', 'syscon']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1521096

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
