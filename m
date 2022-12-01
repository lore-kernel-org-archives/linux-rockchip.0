Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BDC0C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Dec 2022 23:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vLo2r7KE1ieFHImEZYhvuWxN+cyZJoBUIrlWV9/c8jc=; b=wRg5i0BYjIOtTe
	s7seoP6WMC/efqy2/At1Ow/0+FGPlay/sbTACxSmy4NMWLm+5Y0EH5IK4LLaeNiUJKlXFT/ZccUC7
	t8YIQo0pMUyMygVrcMqdFsESwYYISEKl3knW8DfnQTaZi8/D7SvoGF8eDPZ/QbyGADyHBMMAElL3N
	KTBwvEGEYhojKXhzEND+S5f3mkKVa22Iur0IExW8wILxdB5bEffwuQtxtjNdOeCcbU3JlvW63U/eN
	zof+H03JtS+NsfFOxyjHuQzM74kSaiB9fzPy9SrnT38f2YmmQsIN0Sk07uQJuivxdXnn+swrx0rJT
	FzucJTGaElOJou1PYNug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0tJd-00BrIx-DY; Thu, 01 Dec 2022 23:50:05 +0000
Received: from mail-oi1-f181.google.com ([209.85.167.181])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0t4s-00BjLB-Om
	for linux-rockchip@lists.infradead.org; Thu, 01 Dec 2022 23:34:51 +0000
Received: by mail-oi1-f181.google.com with SMTP id n186so3721701oih.7
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Dec 2022 15:34:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AHPzwPPmVpEqjanwr4jgFBm+n/uWlEBRqCWBwP5Ob4o=;
        b=bK20xIJGxvPmh/Jt6uioOrON/Z/bqPQ6DUQqqdgAJbo/Cia+HKujZu+mgT92tNRsRP
         PtYQiZr97CYQb/fJI83hr2hplBaw9VKZAYQ8auTmO1tFr+cwCpz/eK49PXrkcxnTRwYv
         1gzMCIre86JRGQhEGjLVr/FYrCLJ0qgy9e+NmYlSjtEihfnic0ZNfueAgU7AMH8EHJ7B
         Nqrvdzxxw7mKPm6PgUojWPqvuEbYPiJfn99vu0uumGo1eBbWQ9JYjp6jbCOxbt1RAf1Z
         pnroxKpOpasEcKr8O4jANc3J3E+76ADktCFeIyZO4F0iDyuM0dJsztpyrU2INF/R1OSJ
         BKOQ==
X-Gm-Message-State: ANoB5pntg7dHc06INOt5xg1AAPPTQ1TGsK0YIf5v53zvxdLGIFfm0gWg
	+jWvCsXEdDHlXUNfw2fvMw==
X-Google-Smtp-Source: AA0mqf6lSjgPUF0IN9rm8Ml0Vg8feDJ4KS/+1+Grxk2A70CmEtbn+Bvn667l56WuIeDPVHWrTy/A5w==
X-Received: by 2002:a05:6808:3a8:b0:354:7a3c:6984 with SMTP id n8-20020a05680803a800b003547a3c6984mr22728704oie.269.1669937689212;
        Thu, 01 Dec 2022 15:34:49 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id f9-20020a4ace89000000b0049fd6bfde95sm2308409oos.26.2022.12.01.15.34.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 15:34:48 -0800 (PST)
Received: (nullmailer pid 1688407 invoked by uid 1000);
	Thu, 01 Dec 2022 23:34:48 -0000
Date: Thu, 1 Dec 2022 17:34:48 -0600
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, daniel@ffwll.ch, linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com, robh+dt@kernel.org, thierry.reding@gmail.com, linus.walleij@linaro.org, heiko@sntech.de, sam@ravnborg.org, Chris Morgan <macromorgan@hotmail.com>, krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH V4 1/3] dt-bindings: display: panel: Add Samsung
 AMS495QA01
Message-ID: <166993768688.1688353.12388291303431485909.robh@kernel.org>
References: <20221129172912.9576-1-macroalpha82@gmail.com>
 <20221129172912.9576-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221129172912.9576-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_153450_836995_AB2BEEBA 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
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


On Tue, 29 Nov 2022 11:29:10 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add documentation for the Samsung AMS495QA01 panel.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../display/panel/samsung,ams495qa01.yaml     | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
