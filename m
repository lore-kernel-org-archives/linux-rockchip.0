Return-Path: <SRS0=fMZx=HL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E63CDC433DB
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 21:03:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 948F964E6B
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 21:03:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 948F964E6B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XkOeWRm3GdDzLzhJthxiN5M7P98xVdIuimU0claJrTk=; b=nFtq586/zOEGxDRPFW+MZN8pz
	15vXH0yLvtag7FT24uuQjKHq/nvBFryK8vsDqOfDNzAMw/49cXpyB3+HdaQdpmVjCQhotSPnXsN5E
	P9w2ekTDzaR2xUyQ9oL0O6SpPbleao4MlA1dugKnz6p/fSoesPOi8qcPyjUL0XzEkhsCc5jZfSIX+
	ubIqzNbvRhGdFtpcpF7aVWfDkZ+cNXJmXtXjt3htmSJ6QDaQ34cqNJWxtSYTDzy+M/7gKe6i19Yaa
	XKxyja8/zSBei3dkCXAzVh/2bNUdK2ANBQ5toY+BnWqVFa8jR/nhNbJ6JkuSie0vzslP7TF4XoZV5
	Lea82c15Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9aA8-0008P1-5E; Tue, 09 Feb 2021 21:03:08 +0000
Received: from mail-oo1-f49.google.com ([209.85.161.49])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9aA5-0008OX-VR; Tue, 09 Feb 2021 21:03:06 +0000
Received: by mail-oo1-f49.google.com with SMTP id f26so18614oog.5;
 Tue, 09 Feb 2021 13:03:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VOtt3prjmqypaQTJ4pYSOiaPQHntAWw3Q/krYTfHSSk=;
 b=XKmqmh1kEogXVy/KSXKiYNH3YI+WRuV6QNWlmf00l4zTn9pgf+UfaDWUm4Ae4qAkOA
 dYkq/WESRAKSQs/q6IGVAcKCmVH+fBDu+sqZFa0z510wqoCC3L2Pdu/C+pmMiV4YhC0V
 7n9NqNk975ycAa7oqAqK5USUYOfYVvnPeZPhbsT29wNp3MiKXHq4hh+41HlVd6PPDfo3
 I/ggM39IKDi45jAEenYtkrApgxJdSNFnzO8N+YV+BerTFVD1YJzKm8jxdmQrm543rnVG
 83OsA3D/IPzEygKbGzCOn2Bx7KnG4x7esGdhhjV+zH+4W8mHfnwrtT2IvAOAI1mzIRgY
 brYQ==
X-Gm-Message-State: AOAM532TKq/KP8H3QNm7K0eobkv5Cbm0HalDWi5V9vlvW4HDq41tJLlL
 1vWy8q5hYf8qdeUQwO6pzACfiFxOUg==
X-Google-Smtp-Source: ABdhPJxZR0I7iOxekYCbNXoQvdkurgLtI6UNYp7oKlGrjOT91AqHiylCg2zCTplwkzqaYRmDj/mP3g==
X-Received: by 2002:a4a:b987:: with SMTP id e7mr17130855oop.92.1612904584869; 
 Tue, 09 Feb 2021 13:03:04 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v17sm4510401ott.7.2021.02.09.13.03.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 13:03:03 -0800 (PST)
Received: (nullmailer pid 178168 invoked by uid 1000);
 Tue, 09 Feb 2021 21:03:02 -0000
Date: Tue, 9 Feb 2021 15:03:02 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 2/6] dt-bindings: display: rockchip-dsi: add optional
 #phy-cells property
Message-ID: <20210209210302.GA178138@robh.at.kernel.org>
References: <20210202145632.1263136-1-heiko@sntech.de>
 <20210202145632.1263136-3-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210202145632.1263136-3-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210209_160306_036491_C65D4344 
X-CRM114-Status: GOOD (  13.71  )
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
Cc: devicetree@vger.kernel.org, dafna.hirschfeld@collabora.com,
 cmuellner@linux.com, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, robh+dt@kernel.org, sebastian.fricke@posteo.net,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 02 Feb 2021 15:56:28 +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The Rockchip DSI controller on some SoCs also controls a bidrectional
> dphy, which would be connected to an Image Signal Processor as a phy
> in the rx configuration.
> 
> So allow a #phy-cells property for the dsi controller.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../bindings/display/rockchip/dw_mipi_dsi_rockchip.txt           | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
