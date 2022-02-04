Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F4F7C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Feb 2022 23:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2W4Di3uUQvUZMKc3bUnTupZNYzI/eVOtoTNW7lDOU4=; b=jruEybTJ1HqVje
	+r6cpA2by4YOUZk/LnlR8UHUY1JgptcuF5hSYWTxXDhKGH8T4BYnudairMreB1Ys9MOv5CR2GrFnm
	3V1GEMibdr0n8lmgxlGUiAsXlX9umb/skkGXawkA/E7P9CpxcKnqoIMURItMaueG+9OpqokxmnDtF
	gyvGk1ZGhc/pKu3T8WCc0enGWLPgg3gqZF33m43Sj4b4b1WAVzRoBjcV6q5AD88trg/P8FYF033ia
	iB0hrZcJEGOIq8oWUtY3Mr8057sNRkmX75Foq7qzz3bFoea+rP68P8IZAuu0lELQlM9/yi72UtFOV
	NfySsB4Dnunr5KmFlwvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nG7oo-005kWj-FY; Fri, 04 Feb 2022 23:16:42 +0000
Received: from mail-oo1-f49.google.com ([209.85.161.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nG7om-005kUd-Ct; Fri, 04 Feb 2022 23:16:41 +0000
Received: by mail-oo1-f49.google.com with SMTP id
 b15-20020a4a878f000000b002dccc412166so6337713ooi.11; 
 Fri, 04 Feb 2022 15:16:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Noz2S1R2/8Z3d7zvAFyG3K4LlMUyG1rJ009mn97U+i8=;
 b=ZWG1bLP+uojutXSnT0Xg9XNdkXvBfPH5Mm0tJV3ch0V5Tmn7RMUJ+vYVza0khp5DMx
 uirWw7mB9Gmf+dKXiS1ZsYJHb3LM9YeZOJq4EioFiWCaSCfjA2an0cp/eqSJc6SABpUg
 9CBOy9Mm1WftKWTua/ueBsc7z4HmLrJMvFCos0+oIDp2mBZoOGUhN0oIMK+C598g7gQ+
 cjgrt1MCok4iy0w9+zcs4OXdnZ1LUUk/5m4uAY5De4+vdvcuHwgV4LAaUCPdBZFueYMH
 x1KEa0PLkshB6LBif68PG0lUNVOx5F0Ziyvsc+TVdstOBzt9Sy6u1YJ62OFyTKHrkwfL
 HGIg==
X-Gm-Message-State: AOAM532SzUKeVeOUmWDST+GXukuFZ4SU1/AsYt2HD4170fqTS9H2qPAt
 5snkoTytIIw004S44jI1Fw==
X-Google-Smtp-Source: ABdhPJwHobYCqQ9RVCiAPVCUiGgX7dW2gc1hUD+YsotlyWKPy4uONG+pwbHb8zZ+M6FyRw/WrPeW6w==
X-Received: by 2002:a05:6870:87c1:: with SMTP id
 s1mr328429oam.347.1644016597248; 
 Fri, 04 Feb 2022 15:16:37 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id bj8sm1520290oib.20.2022.02.04.15.16.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Feb 2022 15:16:36 -0800 (PST)
Received: (nullmailer pid 3365859 invoked by uid 1000);
 Fri, 04 Feb 2022 23:16:35 -0000
Date: Fri, 4 Feb 2022 17:16:35 -0600
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, aford@beaconembedded.com,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Lucas Stach <l.stach@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org,
 cphealy@gmail.com, linux-media@vger.kernel.org
Subject: Re: [PATCH V4 09/11] dt-bindings: media: nxp, imx8mq-vpu: Add
 support for G1 on imx8mm
Message-ID: <Yf2z0wF2KJKmQ4IS@robh.at.kernel.org>
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-10-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220125171129.472775-10-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220204_151640_443163_D27D0C8A 
X-CRM114-Status: GOOD (  10.42  )
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

On Tue, 25 Jan 2022 11:11:26 -0600, Adam Ford wrote:
> The i.MX8M mini appears to have a similar G1 decoder but the
> post-processing isn't present, so different compatible flag is required.
> Since all the other parameters are the same with imx8mq, just add
> the new compatible flag to nxp,imx8mq-vpu.yaml.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
