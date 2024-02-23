Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C533C54798
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Feb 2024 00:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/9ZXJw1iWqBVygeMqPcomo79v2WLdRiZ1VH6RiAVXo=; b=LUzcjQX7nYZWRf
	RyErT0QBWvLtApsqmnAeYVL9i22H7HcQG4ProzihyYZ56QWBoyT7eTKuiAzjy63Y2eGoR5ZUO6Jtk
	D/tCvqA8yuI+EVy22obacoWq/MWihNod+pUI9ona77pzNzihog94hhc5W7WjfCjKVgaT+CAbFvm7Z
	5c7/Xj4StwtbWaXPb4PSavtMjNtCANDpbnXKT/IkWYELu/OFsr1/6+49IkqG6rc3FRQcQ1x9vgA+d
	PTtHBHBk7ti/xco+9+sA2FbFsyL33TBeRPgy3tnyR86h5gLNoGVQUQjOsK7xSf2SfPlrec5EbQ07p
	lMEvyDlLZwYqp219o54A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdJQn-00000007AXa-2bCz;
	Fri, 23 Feb 2024 00:28:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdJQd-00000007AV7-1RWl;
	Fri, 23 Feb 2024 00:28:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BEC226339E;
	Fri, 23 Feb 2024 00:28:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B646C433F1;
	Fri, 23 Feb 2024 00:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708648118;
	bh=BIOShrfId+PvEScAHDccqecR5fsM4CjTGwPiQXwonvc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M5QhEg8lYLfgHGOKjgLHo6tSne8/LTwZ5azFG7lFyilAjxip/d6iBXu9+fJFWMqPL
	 PFm581Emk9QWzSse2+F+vpiBeTjnFnf3S8kntyM7axnA48cnU5Uiw2rJeNwBuWDt+v
	 nmBlbkU39Nz9rGE56HCClBQK81Tf1vjWXdDGdd0beRo/vdyfDoySSz+UXgj6RjfY5u
	 Z1TsM8MfdZSEJV7FG2mwW320NplpUd3IcUIfSExX/O4ra9NziqUxe+qKVhf3WwAK4Y
	 pH/KmJ8SaVDY2F+bDagNIPjNc365gBAAwPYN9cN5b23Xv6qVN68QIUuPPKknu3F9d/
	 4mbjfL/DJs1LA==
Date: Thu, 22 Feb 2024 17:28:34 -0700
From: Rob Herring <robh@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Mehdi Djait <mehdi.djait.k@gmail.com>,
	=?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 02/14] media: dt-bindings: media: rockchip-cif: add port
 definitions
Message-ID: <20240223002834.GA3933946-robh@kernel.org>
References: <20240220-v6-8-topic-rk3568-vicap-v1-0-2680a1fa640b@wolfvision.net>
 <20240220-v6-8-topic-rk3568-vicap-v1-2-2680a1fa640b@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240220-v6-8-topic-rk3568-vicap-v1-2-2680a1fa640b@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_162846_278540_C8E7D950 
X-CRM114-Status: GOOD (  17.43  )
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

On Tue, Feb 20, 2024 at 10:39:12AM +0100, Michael Riesch wrote:
> The different variants of the Rockchip Camera Interface may feature
> various ports. Add a new header file with port definitions to avoid
> hardcoded constants in device tree sources.

We generally don't do defines for 'port' numbering. I don't see a reason 
to start.

> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  include/dt-bindings/media/rockchip-cif.h | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/include/dt-bindings/media/rockchip-cif.h b/include/dt-bindings/media/rockchip-cif.h
> new file mode 100644
> index 000000000000..37364ee1f7bc
> --- /dev/null
> +++ b/include/dt-bindings/media/rockchip-cif.h
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
> +/*
> + * Copyright (C) 2023 Michael Riesch <michael.riesch@wolfvision.net>
> + */
> +
> +#ifndef __DT_BINDINGS_MEDIA_ROCKCHIP_CIF_H__
> +#define __DT_BINDINGS_MEDIA_ROCKCHIP_CIF_H__
> +
> +#define MEDIA_ROCKCHIP_CIF_DVP		0
> +#define MEDIA_ROCKCHIP_CIF_MIPI		1
> +
> +#endif /* __DT_BINDINGS_MEDIA_ROCKCHIP_CIF_H__ */
> 
> -- 
> 2.30.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
