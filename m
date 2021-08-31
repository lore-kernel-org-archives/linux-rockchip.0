Return-Path: <SRS0=VuRY=NW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D63F7C432BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 00:04:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 986C260E98
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 00:04:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 986C260E98
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Jb7h2B1UTmV+hS63aFvNIhFX5NYBAKCOn69VGgvGgA=; b=Eswaa3LKvp0EWo
	IKImPA8XrwOQ/pIjIxA+V7mqFon1UfqsY9UPU8k9mVuX0x8nhIElFjDn5k0UKanxvYLfSPVj5Esks
	7v8A7XnpGnCdf1IGqNFasJJTAwmFsm38RDIKbnCKCdHfIylqvyTEWcVSh9PG5I+stW5CIqJpNeid1
	3Zf0faD4I+xLQr7QKQ1WSRWuciDR+5Zl68o0MtD9rh5rB9ZM0Pw07WQjgRFOXq3U+iHRUmImqG+EF
	2e3Z1Fz5bapGUiSARrR7ZAIb85PDycJ0jEKl+PCmvMnWKK8CGAD6oywJAmhPVrXxdWHRf+Rh842Qg
	bqmNpppwVyHJdc6mEQyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKrG9-000r6g-Iq; Tue, 31 Aug 2021 00:04:13 +0000
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKrFt-000r3l-Ol; Tue, 31 Aug 2021 00:04:01 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 v33-20020a0568300921b0290517cd06302dso20620115ott.13; 
 Mon, 30 Aug 2021 17:03:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=X+JzFHvarIVnvQQqcBJPXmNCBKi89Vgxfb6Fxl+5bS0=;
 b=c4POQu49sgokOBjd5VTBCfwbL7qVyVRML2D8bsyo6jEOBucgevW1GqzP8m8FhVdUNR
 RPxAgzs4B6HCJjmHDqOZJbY4C65CH6XWf0ShJXtIT9Z/ZpuhQQWqbloD1sG16V3nsBgX
 Ms52Fj4PKHMYtSx8sM/n1DWmhybgn8WQkPHI9RISbWY6YW9J4JlLiEKyeArJHpUmJ4yc
 DICOnfro1lD5JRyFc1P1waJDiGKcukBOzXd7K3+dTgsqDMMcI/rv2/bQWSeWOiPCRAG6
 Hq6AoPj4emLz19qZ4WGLTZEU8pFE5i5Z0p8CwXiXtbinhFQpq2XYHt/e6KxI88G7Vl6M
 H4mA==
X-Gm-Message-State: AOAM532GyMayH1b3HxPWIdOLLHI/K5gTDFaWmyVp1uvfUBlNOid0mWIN
 H6cSrStxND74H2Gso6Gbcg==
X-Google-Smtp-Source: ABdhPJwF/IP0deTf//Ue3cOh3Y7qENVSDc0BoPLSkMEtkukSAs7/D/uJt7OhzFx2N7wm4NL5Jl+cfA==
X-Received: by 2002:a05:6830:1d59:: with SMTP id
 p25mr21366508oth.191.1630368236877; 
 Mon, 30 Aug 2021 17:03:56 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id l8sm3282905oom.19.2021.08.30.17.03.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Aug 2021 17:03:56 -0700 (PDT)
Received: (nullmailer pid 2940840 invoked by uid 1000);
 Tue, 31 Aug 2021 00:03:53 -0000
From: Rob Herring <robh@kernel.org>
To: Mikhail Rudenko <mike.rudenko@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Helen Koike <helen.koike@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Ezequiel Garcia <ezequiel@collabora.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 linux-media@vger.kernel.org
In-Reply-To: <20210830180758.251390-5-mike.rudenko@gmail.com>
References: <20210830180758.251390-1-mike.rudenko@gmail.com>
 <20210830180758.251390-5-mike.rudenko@gmail.com>
Subject: Re: [PATCH v1 4/5] dt-bindings: phy: phy-rockchip-dphy-rx0: add
 support for tx1rx1 phy
Date: Mon, 30 Aug 2021 19:03:53 -0500
Message-Id: <1630368233.493531.2940839.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_170357_844402_6107B4CA 
X-CRM114-Status: GOOD (  13.70  )
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

On Mon, 30 Aug 2021 21:07:53 +0300, Mikhail Rudenko wrote:
> RK3399 TX1RX1 D-PHY is not a child of GRF and uses reg, thus add
> corresponding properties conditionally. It also requires DSI clock to
> operate, so check for it. Since we now support both rx0 and tx1rx1,
> rename the schema to rockchip-mipi-dphy-rx.yaml.
> 
> Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
> ---
>  ...hy-rx0.yaml => rockchip-mipi-dphy-rx.yaml} | 39 +++++++++++++++++--
>  1 file changed, 35 insertions(+), 4 deletions(-)
>  rename Documentation/devicetree/bindings/phy/{rockchip-mipi-dphy-rx0.yaml => rockchip-mipi-dphy-rx.yaml} (65%)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Unknown file referenced: [Errno 2] No such file or directory: '/usr/local/lib/python3.8/dist-packages/dtschema/schemas/phy/rockchip-mipi-dphy-rx0.yaml'
xargs: dt-doc-validate: exited with status 255; aborting
make[1]: *** Deleting file 'Documentation/devicetree/bindings/soc/rockchip/grf.example.dt.yaml'
Unknown file referenced: [Errno 2] No such file or directory: '/usr/local/lib/python3.8/dist-packages/dtschema/schemas/phy/rockchip-mipi-dphy-rx0.yaml'
make[1]: *** [scripts/Makefile.lib:380: Documentation/devicetree/bindings/soc/rockchip/grf.example.dt.yaml] Error 255
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1419: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1522296

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
