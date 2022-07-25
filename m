Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00911C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jul 2022 23:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKW4H7o1X8Eg/6S9f84LKQFZzxwVxCyXHsc4Ifn6F3g=; b=t1Y/raY8xSpa0w
	XBMvMrxyOQPK/Fnniv8ZYiHZiZrY2Y/xZ2xQuZd4RGq1dZ9n8w1F9bImLN9b6zNqFha/jISLCRjfq
	0VOs8sMknzSHyDKheLyl3Cg7qI3K84BlkXVkrnou6sGRBsirG4ap6LLGfL4nsraurU46Y6rL3aorS
	lNeYvDczxeOlW14EsDqDw1H+UFe/j0LwucKmPQjRsyRCZtVxATX0aVZQ3YOe4v42tSU6ORXWkEOHG
	hcrfioFYeqIyFk9LWpGA58vWFgLgNS6U85h/0lGZORe0saavGlSfxSC+etnmUX8dqJVUzdO5ZYrbj
	dFQSVe+6EvasypIKcGxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG7S9-004Dpw-BT; Mon, 25 Jul 2022 23:25:33 +0000
Received: from mail-oa1-f44.google.com ([209.85.160.44])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG7Ry-004DlC-5H; Mon, 25 Jul 2022 23:25:23 +0000
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-10d8880d055so16725368fac.8;
        Mon, 25 Jul 2022 16:25:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=dCsn9dzCh6KqkTVcJHWRZAMN2f7ONnySyxeXvQofuFk=;
        b=tPnSQ26kujyPQ6Fpnrezlv5pxhYx87MG6XWRMijIfcYrQgzugzrGPsPJ6dh6Y7+hRu
         bsqr0ez9byX6gulZBSpOTstXUQKCkGYCwhEKRD2UELO3XVMc/4TU0ppQglo01HmEdppS
         lf+gExaN54Vc89ZgAdjlTh1S8lzFNCtkWlKuqPt5iK7l5ZZaAjLA+eVvq/IBMsf/VS/Y
         rRkgbVWCw5G5UiijRm1fAotPxMVRmNkTDBPXUxwDdPTAqepowsPuXapQgMThW3Xdxcq0
         ewbmi2f5tWwEWn3NMACjlk9fFw9kQMnXhaNnQXK+eA25eivwNesTv54feleHKsgBLyoI
         2kgQ==
X-Gm-Message-State: AJIora/rKgiroWQdPZxhN5XRycS7KBVASGxjBlOzD+shqvsfD4oB3Lqg
	oKqlB8KTTYIHQ3kMt7BvQg==
X-Google-Smtp-Source: AGRyM1u6PwB1RBpooueI1Ajoq8Nis2ce7rhmBLUoV8FkFFrEgRqWytwkZpjeDnVeAFnBKbEe6ONYsw==
X-Received: by 2002:a05:6870:79d:b0:10d:8416:e59d with SMTP id en29-20020a056870079d00b0010d8416e59dmr7265810oab.85.1658791520057;
        Mon, 25 Jul 2022 16:25:20 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id n8-20020a056870240800b0010d7242b623sm6652099oap.21.2022.07.25.16.25.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 16:25:19 -0700 (PDT)
Received: (nullmailer pid 2950657 invoked by uid 1000);
	Mon, 25 Jul 2022 23:25:17 -0000
Date: Mon, 25 Jul 2022 17:25:17 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Finley Xiao <finley.xiao@rock-chips.com>
Subject: Re: [PATCH 10/22] clk: rockchip: Add RV1126 clock controller
Message-ID: <20220725232517.GA2949355-robh@kernel.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-11-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220723204335.750095-11-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220725_162522_225258_BE9FE996 
X-CRM114-Status: GOOD (  14.14  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

On Sun, Jul 24, 2022 at 02:13:23AM +0530, Jagan Teki wrote:
> Add clock controller support for RV1126 SoC.
> 
> Clock & Reset Unit (CRU) in RV1126 support clocks for CRU
> and CRU_PMU blocks.
> 
> This patch is trying to add minimal Clock-Architecture Diagram's
> inferred from [1] authored by Finley Xiao.
> 
> [1] https://github.com/rockchip-linux/kernel/blob/develop-4.19/drivers/clk/rockchip/clk-rv1126.c
> 
> Cc: linux-clk@vger.kernel.org
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  drivers/clk/rockchip/Kconfig           |    7 +
>  drivers/clk/rockchip/Makefile          |    1 +
>  drivers/clk/rockchip/clk-rv1126.c      | 1107 ++++++++++++++++++++++++
>  drivers/clk/rockchip/clk.h             |   19 +

>  include/dt-bindings/clock/rv1126-cru.h |  632 ++++++++++++++

This goes with the binding patch.

>  5 files changed, 1766 insertions(+)
>  create mode 100644 drivers/clk/rockchip/clk-rv1126.c
>  create mode 100644 include/dt-bindings/clock/rv1126-cru.h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
