Return-Path: <SRS0=giEr=IV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1060DC433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Mar 2021 20:17:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9309361864
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Mar 2021 20:17:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9309361864
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:References:In-Reply-To:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ocRRdT+nBvDUgd7U5UUYyIvA5flB8f/UlPCzjSjt8xY=; b=KvnL1K5nAydCM3kufwFr2N2Wl8
	YYaGsce6geGI/t2HXYJ0FurSX3/t5NSuqc8e8P0sUPVEvDhKwqb9J4jxUTVAWFtz4SYv/OqLlTdpW
	qCWDaM1eNst6Ho2zkdTF6t2X26PzYO+ahxA60nkR6Q+MPDrGmw5Ct6AXuSzfXBI/tX1IO5r//zRuD
	1q7LvCrCeSGXrsts2ykitCXJmoI7lcfXJ/qTzUM0xlV5TOsI0eOucWziaPYLKPA6pMeKTCIfIwh9R
	E8MtfIUapYReJ2+w+H6V4mA6UJ51r4tD3zCxmpGgLjUOoHTR4Kt7PaR/boxrA3/nXI8iOprxJBsbg
	Y7fK4Z3g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOnSc-00Fdoi-Hf; Tue, 23 Mar 2021 20:17:06 +0000
Received: from mail-io1-f52.google.com ([209.85.166.52])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOnSQ-00Fdms-Sl; Tue, 23 Mar 2021 20:16:57 +0000
Received: by mail-io1-f52.google.com with SMTP id k25so6979337iob.6;
 Tue, 23 Mar 2021 13:16:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=D9YiSRrs2fw2afTTENd+WaQd259uaLT3vYO3ElQUi/o=;
 b=CaEbZjHGhY/246ipYxYsMigqNTbXgNlSh8ux4mEfsxa3YZxu/2DO6B7UdWZje63VVj
 NBpaxjnI7zzVcrz8WqalFP9DQoZvLcTKiqPFpufSFwaGXwux8GY+aeRRHxdE/FeKNwY/
 tH4Ngl2cQTxuXKmJRw87Dsh/VFeca/wvf5ci5q0E/KTqlLI1puduJVNEG2tRCORHsqbf
 dIXyehwPZE47c1XtOlMZ1H1aOo7MPKNpxEB1esmUDozjn5LYgj40Yz6Jl8WI4UlSjPTp
 EHw+uUUJ6+t+KpRvNzkEqTN1P77gyz3ylCjZ+1cpZVq9PWLWRvbCNG9Cgj3wzbj17L0S
 933A==
X-Gm-Message-State: AOAM531LNdR3IJt2IAZ+gYTRqWpkG5LTu5d3ac7YDCUVVUlm4/UjtPVz
 4w1rkEMIAN96JHdo5LylUA==
X-Google-Smtp-Source: ABdhPJzYfWvKVsiIzkecMWnD+0zHO4VuZZq2JJwNcfzKfx/OWaPuu2kWkkJaoJm/v/G2sBf3SkCcqA==
X-Received: by 2002:a05:6638:2209:: with SMTP id
 l9mr6114752jas.13.1616530613847; 
 Tue, 23 Mar 2021 13:16:53 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id g14sm9384335ioc.38.2021.03.23.13.16.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 13:16:53 -0700 (PDT)
Received: (nullmailer pid 1244767 invoked by uid 1000);
 Tue, 23 Mar 2021 20:16:47 -0000
From: Rob Herring <robh@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: tony.xie@rock-chips.com, huangtao@rock-chips.com, heiko@sntech.de,
 linux-kernel@vger.kernel.org, finley.xiao@rock-chips.com,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, cl@rock-chips.com,
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20210323082410.22818-3-zhangqing@rock-chips.com>
References: <20210323082410.22818-1-zhangqing@rock-chips.com>
 <20210323082410.22818-3-zhangqing@rock-chips.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: Convert the rockchip power_domain to
 YAML and extend
Date: Tue, 23 Mar 2021 14:16:47 -0600
Message-Id: <1616530607.412616.1244766.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210323_201655_044489_18E91684 
X-CRM114-Status: GOOD (  13.23  )
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

On Tue, 23 Mar 2021 16:24:09 +0800, Elaine Zhang wrote:
> This converts the rockchip power domain family bindings to YAML schema,
> and add binding documentation for the power domains found on Rockchip
> RK3568 SoCs.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  .../bindings/soc/rockchip/power_domain.txt    | 136 ---------
>  .../rockchip/rockchip,power-controller.yaml   | 259 ++++++++++++++++++
>  2 files changed, 259 insertions(+), 136 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/rockchip/rockchip,power-controller.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/soc/rockchip/rockchip,power-controller.example.dts:19:18: fatal error: dt-bindings/clock/rk3568-cru.h: No such file or directory
   19 |         #include <dt-bindings/clock/rk3568-cru.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:349: Documentation/devicetree/bindings/soc/rockchip/rockchip,power-controller.example.dt.yaml] Error 1
make: *** [Makefile:1380: dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1457096

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
