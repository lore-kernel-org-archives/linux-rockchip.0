Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B1D8C1B08C
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 23:18:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F170A613C9
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 23:18:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F170A613C9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3X4ecIdMUqguKvKXLTYrL1hPpjptWNX9CsmpZu2FJNw=; b=H6C/mJ7+7kJxxr
	tv3ymyuPvpiMlqzLKvlP3vZJNjc9Eh+Ba0TKdkurrSwveSa+/9uQJfOs0AzPN/fsaR95BmIkNxzZ4
	5x46c31vbEOHZp/N8G8Rr6d61jtmyp5J7ivCGY0qkyV3g8HgI7nACN/8FyISMo5QMGnHtESNNWEsy
	qYVkJm6i401i0R4h1FgL/hF0mp8C3aL2oMgM0TQQSLOJsqm9gY3nhZ12UvT7BK+NSwfyAUvk/9OG1
	A1gr5LkpFGVGBrtjixlFIPo/Wj8CsPPewUzZ/6XjgjYvbkNE+46o4cOjdu+0OhSwQjKozTuhd3X4q
	wSXDwSkxAbIemv+2nM2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3o9A-00GDKs-VY; Wed, 14 Jul 2021 23:18:33 +0000
Received: from mail-il1-f175.google.com ([209.85.166.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3kt2-00Ehwc-NA; Wed, 14 Jul 2021 19:49:45 +0000
Received: by mail-il1-f175.google.com with SMTP id h3so2754916ilc.9;
 Wed, 14 Jul 2021 12:49:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IMbohv2IVExOXkTG/AjJ+c4zhRP07MFGASU5a/RAwQw=;
 b=DWKt1gzf0nT09/AHD//FSlquxK3b4SEuSjBKoy7qeJ3ZjwEFLTn28wXbQCJOWvuEv2
 T41Mj5dy5vZ6+JSP2Iq81gKC70ISxudfjH57US/zbDA2llgnaCC+xpyWB/j+tfJtjSv9
 p8uFih1PVqUxowm5XUC3OmmqxpnUdngcHOPJqCA+wpQDl9LlKoPDPkKas5ExHG2C74Ih
 eM0Mr/JFncXgMrTqnRCMkjXYeU1/w0LFYyPbAioSfIPpkuJYEuWn/nvzR3ZIBBbN2Tu6
 VGi9w4JUgFc6BOx5DK0TgB5E8T47rR1ErGpFtbFpAEMm/V/ge9mSRP9h3HzZ0C5vPcsh
 4GDQ==
X-Gm-Message-State: AOAM531CRxh/4RHA//Z3rjaJwhvJuRoLL/WRVKttV2HpnSikD+dPsqIJ
 6BjHxX4DyAQHiL9MOz1IZA==
X-Google-Smtp-Source: ABdhPJy9I4yrqo70ker5u/Rx9afOG+/tlSZLFXkTDlPFZfAApgPsrw4sGDCDPT4ZvbpejxyCb4avzA==
X-Received: by 2002:a92:2e08:: with SMTP id v8mr7281669ile.50.1626292180120;
 Wed, 14 Jul 2021 12:49:40 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id z7sm1834958iox.4.2021.07.14.12.49.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 12:49:39 -0700 (PDT)
Received: (nullmailer pid 3278259 invoked by uid 1000);
 Wed, 14 Jul 2021 19:49:38 -0000
Date: Wed, 14 Jul 2021 13:49:38 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: devicetree@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: power: convert
 rockchip-io-domain.txt to YAML
Message-ID: <20210714194938.GA3278225@robh.at.kernel.org>
References: <20210625111746.6269-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210625111746.6269-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_124940_846539_37161866 
X-CRM114-Status: GOOD (  14.07  )
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

On Fri, 25 Jun 2021 13:17:43 +0200, Johan Jonker wrote:
> Current dts files with 'io-domains' nodes are manually verified.
> In order to automate this process rockchip-io-domain.txt has to be
> converted to YAML.
> 
> Changed:
>   Add supply properties for:
>     rockchip,rk3328-io-voltage-domain
>     rockchip,rv1108-io-voltage-domain
>     rockchip,rv1108-pmu-io-voltage-domain
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V2:
>   move grf part in separate patch
>   modify pin description
> 
> ---
> 
> note for rob+dt:
> unevaluatedProperties and
> allOf:
>   -if:
> doesn't seem to work.
> Changed to
> allOf:
>   - $ref:
> ---
>  .../bindings/power/rockchip-io-domain.txt          | 135 ---------
>  .../bindings/power/rockchip-io-domain.yaml         | 330 +++++++++++++++++++++
>  2 files changed, 330 insertions(+), 135 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/power/rockchip-io-domain.txt
>  create mode 100644 Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
