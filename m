Return-Path: <SRS0=3kgl=KH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.4 required=3.0 tests=BAYES_00,DATE_IN_PAST_24_48,
	DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07456C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 20:09:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6082761408
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 20:09:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6082761408
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mnHMVG4mcwJ+R+r60viy/5IRQEa9XdWx9P64b2+om1c=; b=S8jaSIN0YUTIfaJBpVHh88lr4
	Iq90AfYUigCDsNfxX7UOzohZ22ig9OESPZNTzAF7sb7DVa/f6WdHpxZx0dPT6o5Zw/A/dTsvc9HkW
	uStaFh9QKk0QlDBZTDLVRHFS/7/MySJLvdvcbuyShaNHQzckPlT6y6JNEr9XHfRobcT6SkIt+bHFt
	ddb7WfNNaBW6muEcL1acTAWrY9S/xhhzG6kMJIYaivutAOlGCOVSuJQOgpnyzVwXvq10IEOgLPl/A
	3yeJVFhH1Kubz6AgZkP613or/Vot8gWyQIloeRNS1yK3AIal/CtheFmSBrmZmmyIts0P5jmGZoFfU
	9ZczYqzNA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgvA7-003rXC-MY; Wed, 12 May 2021 20:08:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgv82-003qt6-3O; Wed, 12 May 2021 20:06:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=G314866YQpgK6Og9SPK+7F1yLW6LxWxUdwMljvXz8GA=; b=uYqWbMT9UW4MSIHmu1DByj2fB/
 dFK6/mAZKXVEOMyVnwS11AsTchiJFwV21BfuNpm8JhcIGWRWYf60YDbulfagfnfWz9rxvQQXc5zzA
 U7q1ded9jTRd6p91Kh+6Gnfeb6vGL9eoK+YUxUuvA7Tarv2pG34Im0bPNNw5BAAiD6qp5qAcyJbWN
 DIYy+c7BMz1R6sDeIFOUaihYK6Lomt+3p1Pz/EO4A7aE6qjvovzpclQQZQxyX4VOiduk2JhQKvbAW
 W8KB/r83Wmg/TXIxLMUksCwT6k4J57Dykyp3NkVCkgBnmWTbUNr1Q0MqmMD+pHiztm6lG2428LVDK
 X2dUnY6w==;
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgv7z-00AmmQ-Jz; Wed, 12 May 2021 20:06:44 +0000
Received: by mail-oi1-f180.google.com with SMTP id d21so23366230oic.11;
 Wed, 12 May 2021 13:06:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=G314866YQpgK6Og9SPK+7F1yLW6LxWxUdwMljvXz8GA=;
 b=UqOVMWZKQG4N/EFGtAHTbMnbnZJ/buGJIX9WVycQmnAzlwwlwKGfM966ypGxsTkhZE
 LeeTMJ30FSQdhG/7Z3oXhqzDjbjUN836zvm+BJaHCveqb/RaYpXCKt6kNegktGV9+SCA
 1fVw6miDj+V8mUhfUA9mp9R7OhMPV2fpr/E7BEA2MABydJk/Lh30l8HIbMzwpnJfL4+o
 7hBPcMHL5eL+VmG/EdFJY1GB5LU2NxLOj70RLsofF6hb9d+AQpjLds1b9hFNvDSRnclc
 FEf5ctLjdd+XynozS+eUokZYO/+8KO/PXdKBwGyiaEiYg3SXZt4OhopX1MraG6++p3Zj
 q6vQ==
X-Gm-Message-State: AOAM530cz9Ypve/PBZ9zKcRXhnnzouiphtcOZNgh4anz3GUdjPYj9Dnq
 +32Y2rel1ul6gcDdd8bcIw==
X-Google-Smtp-Source: ABdhPJwxNouj8PhjvD5RQRalpsF56HCQ4sFcehx28dXWzUBDKpftaaS5YowOQ3Pe+GG7+R6Wi5KHlw==
X-Received: by 2002:aca:b8d4:: with SMTP id i203mr155393oif.61.1620850002606; 
 Wed, 12 May 2021 13:06:42 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x141sm195890oif.13.2021.05.12.13.06.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 May 2021 13:06:41 -0700 (PDT)
Received: (nullmailer pid 2232127 invoked by uid 1000);
 Tue, 11 May 2021 16:28:02 -0000
Date: Tue, 11 May 2021 11:28:02 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linus.walleij@linaro.org, huangtao@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 robh+dt@kernel.org, bgolaszewski@baylibre.com, shawn.lin@rock-chips.com,
 linux-gpio@vger.kernel.org, zhangqing@rock-chips.com, heiko@sntech.de,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 jay.xu@rock-chips.com, cl@rock-chips.com, david.wu@rock-chips.com
Subject: Re: [PATCH v4 2/4] dt-bindings: soc: rockchip: convert grf.txt to YAML
Message-ID: <20210511162802.GA2232097@robh.at.kernel.org>
References: <20210511050511.5973-1-jbx6244@gmail.com>
 <20210511050511.5973-3-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210511050511.5973-3-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_130643_683493_514A041F 
X-CRM114-Status: GOOD (  12.96  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 11 May 2021 07:05:09 +0200, Johan Jonker wrote:
> Current dts files with 'grf' nodes are manually verified.
> In order to automate this process grf.txt has to be
> converted to YAML.
> 
> Most compatibility strings are in use with "simple-mfd" added.
> 
> Add description already in use:
> "rockchip,rv1108-pmugrf", "syscon"
> 
> Add new descriptions for:
> "rockchip,rk3568-grf", "syscon", "simple-mfd"
> "rockchip,rk3568-pmugrf", "syscon", "simple-mfd"
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V4:
>   revert separate schemas for each 'if' subset
>   add additionalProperties
>   move properties to top level
> 
> Changed V3:
>   remove select
>   change unevaluatedProperties
>   add separate schemas for each 'if' subset
> 
> Changed V2:
>   add rockchip,rk3328-grf-gpio.yaml
>   rename grf-gpio nodename
> ---
>  .../devicetree/bindings/soc/rockchip/grf.txt       |  61 -----
>  .../devicetree/bindings/soc/rockchip/grf.yaml      | 246 +++++++++++++++++++++
>  2 files changed, 246 insertions(+), 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
