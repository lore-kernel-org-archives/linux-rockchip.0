Return-Path: <SRS0=8ktI=LE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA48EC47094
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 16:07:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9A148613E3
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 16:07:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9A148613E3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tfay5fSyc0SuTO2dkY5x8Z/KG1jwNDmSI0koquHAb2k=; b=xSp9u5QdzTWhMm
	/l9V8VIH6Kpc24Jg/6wTqbp0kzo8spgzltp1oLA2JmVFjZp6IndZJVIbYkn9M5+CZMet9vioO8jIP
	koHacFxHF3CUbhAuVmMCmwF7DuJ5eHT4sQyVHs3JPyCp3Ae0rGRFfMJcZx/p33VyZJpb14n5p1jDO
	I2jzCWVNc08ZWpUPBa0K2W89KrxbtPLtq0MgCTgQNs477xy2bC95PShTk/xWaYl/spaeS/Y/PuNQ1
	kYrXyJilLS9EpriqZF9Cqhkv0XV7mHeX4X+s2k16ZuKFcXX8lxcrGz2NHHmERl6WwqF8ETC5bXJv0
	r+/m2g1Qx63E71ongHqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrNDK-001ZlI-DV; Thu, 10 Jun 2021 16:07:26 +0000
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrNCY-001ZWQ-LR; Thu, 10 Jun 2021 16:06:39 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 v27-20020a056830091bb02903cd67d40070so221527ott.1; 
 Thu, 10 Jun 2021 09:06:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rxqQk5aKXfH8UaE4CFyDXn1vUL+w5pv/lwdq0F6kEMY=;
 b=K/uSATypa57p5EMirKPARlwC0f+dlxiMh4bQY/+ZhJ+vFg/533T8VWhQzUv9EqvTP3
 Hsq1A02rBSMF0JNO5rhDw+h+eW3g+ya7qvXDKcWAW4mRh6d7ffhszxe83xK35uEnQdB2
 3tsVp8nxfFGO/ggIz+/rzTsvVUIeIe9YTLJy3bfO7OF08OltIlejadC2zx/yhYSpqKxZ
 ysoG2FaN/J5EZ28OrrINQtNew+PuxKiihd8RctUjOL7yITVN6KhIUOeCko05sVjHnRnI
 VD5UP1a5dH6snMA9blICpDEzTqkcHZ42+H5RAK1/UHq2qFdovdE73u13UhsTk8KomCUK
 77Fg==
X-Gm-Message-State: AOAM532nMwRuED92T4vP9z4tLp8/aagZtKYD3js0DFOOk2bWDL3LGZil
 d0KTFHsVYVX0FV5jnlkG4w==
X-Google-Smtp-Source: ABdhPJwov5RI4si9eQhd6XsEeuC32d2dIO1xtzkVyC0dJGyD0zJfZ6epsAiDIboK1+FgpVibfS0Llw==
X-Received: by 2002:a9d:5ccd:: with SMTP id r13mr3027731oti.13.1623341197323; 
 Thu, 10 Jun 2021 09:06:37 -0700 (PDT)
Received: from robh.at.kernel.org ([172.58.99.113])
 by smtp.gmail.com with ESMTPSA id e29sm622376oiy.53.2021.06.10.09.06.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Jun 2021 09:06:36 -0700 (PDT)
Received: (nullmailer pid 1894616 invoked by uid 1000);
 Thu, 10 Jun 2021 16:06:34 -0000
Date: Thu, 10 Jun 2021 11:06:34 -0500
From: Rob Herring <robh@kernel.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, broonie@kernel.org,
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org
Subject: Re: [PATCH v6 1/6] dt-bindings: spi: spi-rockchip: add description
 for rv1126
Message-ID: <20210610160634.GA1894512@robh.at.kernel.org>
References: <20210607111837.31074-1-jon.lin@rock-chips.com>
 <20210607111837.31074-2-jon.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210607111837.31074-2-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_090638_747571_1E4FF1C0 
X-CRM114-Status: GOOD (  14.19  )
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

On Mon, 07 Jun 2021 19:18:32 +0800, Jon Lin wrote:
> The description below will be used for rv1126.dtsi or compatible one in
> the future
> 
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> ---
> 
> Changes in v6:
> - Consider to compatibility, the "rockchip,rk3568-spi" is removed in
>   Series-changes v5, so the commit massage should also remove the
>   corresponding information
> 
> Changes in v5:
> - Change to leave one compatible id rv1126, and rk3568 is compatible
>   with rv1126
> 
> Changes in v4:
> - Adjust the order patches
> - Simply commit massage like redundancy "application" content
> 
> Changes in v3:
> - Fix compile error which is find by Sascha in [v2,2/8]
> 
>  Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
