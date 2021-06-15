Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D83C48BDF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 16:15:14 +0000 (UTC)
Received: from bombadil.infradead.org (unknown [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 97FCE61626
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 16:15:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 97FCE61626
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WI6j051WxWvrk1We1tjy82ABKXt6id61OneyML7OtBk=; b=heRW+FsD/niKCr
	p9aYVyg2bs0+WvTP7GkQZmJ0LHcjqD8IK10BVLbaCcDNztUAUZjXDx4qa5n0Lr7htw0xSYhyKAA8x
	dmZlT3NGjE11zlR4dDzYpxd02Mw4XH1+YUyK5Bc3EnsqsmcNL/uF6uroraUrUnTgHtVyL6OaovuFX
	tiv39HkfJDoQ3nqzPiKmd2WFndk0M5AnZ2Z170S5b5B+fuPNit2XnFmcb+YS8a8Ap/dZqL9hY5VGN
	/UBjfB054CKvth5tsjl5g49mF7tKVfn/ndyI4/LZq5lOdpqXOwE9uE8xP2qcDyRqNS2oggE1KoSzF
	855cxc4LS527iMhrgfiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltBhx-001Gr4-0V; Tue, 15 Jun 2021 16:14:33 +0000
Received: from mail-il1-f170.google.com ([209.85.166.170])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9gc-000RC2-D0; Tue, 15 Jun 2021 14:05:04 +0000
Received: by mail-il1-f170.google.com with SMTP id h3so15380988ilc.9;
 Tue, 15 Jun 2021 07:04:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=P7f4PIAriLzauXRZaRCNZKSfNkQTAx55TUjfutsfWbU=;
 b=lCJY3OfMVCv3Mz+ZtlCDhGkKRRZIy2TZ4RUHgQVSpmKLlaHYaSz46/3PWHRJM+fCmz
 rIsUlXRgCHphS5Wa1FyrSHJoU4jK00jrJixjUY2JhdMQNb//9onNrqmU76FGL8i98+x/
 3X+9hdbM1kRiQ41TN9sO8bUAgDroN+kOllUpyUp07W+a0IG9NJ/OjuQsgwaUGFIRNDbu
 oEhdbVNHHOpugOo+i7toIwAzWO85qcALyZJ1EuuuHVbTYhrIHSFrcWVJUe+oj0LwwwEn
 ZkPUVO1To2oTR5ZW51a2oVF8tUKB6JPmEy8IYiSFN2bLAL4Qtaq+hnul1l+b0eaaw+xN
 JhbQ==
X-Gm-Message-State: AOAM5312c6ZV4HMkXwwOGpm87SPicsjjszNt88HqqKLaoMMuE/R8Vqrx
 OGxavl+pndcxsreiMYsFEkweZvhpGw==
X-Google-Smtp-Source: ABdhPJyfSHlrhhZrXCQVJV+wh8fp7Ii0Fv12GxhX2inTTiFj3bAb8quyDCvZ+yaqv0o9BcmPvEOz6A==
X-Received: by 2002:a92:8e04:: with SMTP id c4mr18390330ild.219.1623765897739; 
 Tue, 15 Jun 2021 07:04:57 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id u14sm4118371ilk.15.2021.06.15.07.04.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Jun 2021 07:04:57 -0700 (PDT)
Received: (nullmailer pid 487345 invoked by uid 1000);
 Tue, 15 Jun 2021 14:04:53 -0000
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: heiko@sntech.de, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kishon@ti.com, vkoul@kernel.org,
 kernel@collabora.com, linux-phy@lists.infradead.org, robh+dt@kernel.org,
 pgwipeout@gmail.com, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20210614154359.805555-2-benjamin.gaignard@collabora.com>
References: <20210614154359.805555-1-benjamin.gaignard@collabora.com>
 <20210614154359.805555-2-benjamin.gaignard@collabora.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: rockchip: USB2: remove useless
 #phy-cells property
Date: Tue, 15 Jun 2021 08:04:53 -0600
Message-Id: <1623765893.351779.487344.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_070502_523230_426C5646 
X-CRM114-Status: GOOD (  11.09  )
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

On Mon, 14 Jun 2021 17:43:56 +0200, Benjamin Gaignard wrote:
> '#phy-cells' property is needed in host-port and otg-port nodes but
> not in parent nodes. Remove it from the JSON schema.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml         | 2 --
>  1 file changed, 2 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.example.dt.yaml: usb2-phy@e450: '#phy-cells' is a required property
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/phy/phy-provider.yaml
\ndoc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1491757

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
