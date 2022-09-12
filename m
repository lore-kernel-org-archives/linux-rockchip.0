Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FE2CC6FA83
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Sep 2022 20:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WRLLGJnGG42U3fH8TrPeONXV349g7ZszQ1TYXkh5J4=; b=wbffS72G5CWI6w
	boJYNHvwxbfN9SOWVRldIBQWrGu461RjnzsrNye8LZRU3VJtgyTfHinErS0RYRRmL0X4/hBBU+Jm/
	SlPLnxCZnFxccufY4SBO2WhLXatShfdtqEcMj4K+pGnGG0OvQ7WfLZsqr8xN+FkKve3+eaXoou/Yr
	AZ363Z+jWR4SF3fKHlOY3AUWXJhDkXCEalKRMezZ1C7gkxbDFSawGDcYGa3KbyrAFpFVGq8A/Dhk5
	0PEADWBcig6vqZjbC4ZNknIhOvP2tG3rHUhIT39Ts+vRPiiD4YeQTlEzWoO37EJ6IsdNCovXGbRDV
	WJxG+YQeBIthrykGCNqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXqU2-00DrfG-An; Mon, 12 Sep 2022 20:56:46 +0000
Received: from mail-oa1-f53.google.com ([209.85.160.53])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXqTZ-00Dr94-68; Mon, 12 Sep 2022 20:56:18 +0000
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-127dca21a7dso26651804fac.12;
        Mon, 12 Sep 2022 13:56:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=1lPkr30LZ1mcA5+eRLgVHYERGTEY7A4Lxc1F1Uu2WAk=;
        b=5cr1w6wN8TS+F3SPonHTviyuRwcVx0c7B/6aguMfbGIgNmrmEIaYJtsD1BVio4KDhL
         OYytsYCG19mizg6gh5NSftFIrtIsZLlEDGhvfG2WUwX2fx4y14QHW3xyihlAeFF/RcY0
         gxaFbvzqInrKymeWKN6ycb4Q/t0fbgnliN8nDnG2zYhHja3XNl1fYO1R0WT/J1qE7EQM
         iANzuEFr9iuXYFCNJb/wGsbD3lJLwHLroS3W9Nc3o3c+WqSnL1N1rLKQncuarwBqUF2U
         2vNk9I5AY7QUFv31PTnrQUy2L2XBvxtaLZX/Lh9JXR7KEYOMaI0xPNMLLkkkzlE4QooI
         2dZQ==
X-Gm-Message-State: ACgBeo1PxU3edfJA6PhfaCg1uCALfFzYkq56v3dqG49nxLtJUxqPb4N9
	dCrm1+v3bGac8j5tY0fTsw==
X-Google-Smtp-Source: AA6agR4pHFqmvL7knPQdKK8cbWBP/woGxfzYh/nLlHDzUev48QmbswU3fZb8w1qLjEC+B9MEDbgBiA==
X-Received: by 2002:a54:4e8e:0:b0:343:fe9:9516 with SMTP id c14-20020a544e8e000000b003430fe99516mr101911oiy.198.1663016175146;
        Mon, 12 Sep 2022 13:56:15 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k6-20020a4ad106000000b00448a3ecdc9dsm4593479oor.22.2022.09.12.13.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 13:56:14 -0700 (PDT)
Received: (nullmailer pid 1818700 invoked by uid 1000);
	Mon, 12 Sep 2022 20:56:14 -0000
Date: Mon, 12 Sep 2022 15:56:14 -0500
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Kever Yang <kever.yang@rock-chips.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Finley Xiao <finley.xiao@rock-chips.com>
Subject: Re: [PATCH v4 03/13] clk: rockchip: Add dt-binding header for RV1126
Message-ID: <20220912205614.GA1818666-robh@kernel.org>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
 <20220907160207.3845791-4-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220907160207.3845791-4-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_135617_607379_5D8CE87D 
X-CRM114-Status: GOOD (  14.41  )
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

On Wed, 07 Sep 2022 21:31:57 +0530, Jagan Teki wrote:
> Add the dt-bindings header for the Rockchip RV1126, that gets shared
> between the clock controller and the clock references in the dts.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v4:
> - update dual-license
> Changes for v3:
> - update the file name
> Changes for v2:
> - exclude from clk patch
> 
>  .../dt-bindings/clock/rockchip,rv1126-cru.h   | 632 ++++++++++++++++++
>  1 file changed, 632 insertions(+)
>  create mode 100644 include/dt-bindings/clock/rockchip,rv1126-cru.h
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
