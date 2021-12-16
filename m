Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62EB1C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 21:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NH8+uAYbthVmF3p32TqHiq+CeigoD6qqbTFH2Idiezg=; b=IdmdmAtjdWyqT6
	ENoX77Lr/Aoowa2WhpfCzdcbmZI5YejLHzuEnQgZAvq+WBcwEZeqlvMno0Yph2+9Ag2UOsrWnu/YJ
	0ypeobhS9pHH5PLVmptstyiSRgRNCUOkt5PYAfnM4xHNz+r6tbgjNuv8ENk2hzccoWGgDjNb1BHWI
	PkAqAzxqMGzP4WzmJCB9MN4Q4MqZeJtzipHMIQhc7JKZcM0+e6crmQUen8xc+XkG+j42kpQedJ8Po
	VFarl/MAeBxop6fez56Piq9R04TQyDWrg4wTmlu6XAljKSZVsdav4yL495wOlZfM2U7qCMRJiqvCU
	pQYhZR/a5SVW47oIMNrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxxvj-007aVu-2D; Thu, 16 Dec 2021 21:04:47 +0000
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxxvh-007aUh-1N; Thu, 16 Dec 2021 21:04:46 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 w6-20020a9d77c6000000b0055e804fa524so434107otl.3; 
 Thu, 16 Dec 2021 13:04:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8/HB4TUr3nuRo2TCTqrXve1tRaQ/uHPqILDzAsNvksk=;
 b=04y0ioSiMT/BYLLqG1M/CxtonMG6VMFwPMOD4t0jhzCQGCOgXwxWjPIyPOZuyat6HN
 mmS3CnI2zDvvEYJ725Yava76sOCHUa2hhqTo0tQH0TB1/78bzghinBz/Ddqgq9LvaMvx
 cUGJ5PxtvxtPSloDWK9wD7eXjctoml55ICjb/8vOgn/AO0lNTfz+RAfnFInM0IQLo8ma
 1ZAUt7AJYtFMY5budU+Jhqsb8NO+F6AJ8pjl3ayYZ2tPsrsxFYlTLxSPhpoQPnJMmMBG
 njhrLnYrORVdQ8JO14N/61u5GxsY6AdUUIMdfLw+hvOk5SrgKyQHiDUWXRu+9hDCXr1V
 lLcQ==
X-Gm-Message-State: AOAM531UfugaurthQw5Z04QxG2lBfFC60oWw/YW30LlEINwEnBj3U3uk
 rvQ5/c9Dypje4Pso36eE5g==
X-Google-Smtp-Source: ABdhPJwaw+XBfHtnkt8e4rQRnSXbJ/pQ1FTRtrA5QLx0viKeJhfPqUxOb6a1KcwopQu6edmYrwZCMw==
X-Received: by 2002:a05:6830:25d4:: with SMTP id
 d20mr14093835otu.143.1639688684195; 
 Thu, 16 Dec 2021 13:04:44 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id l39sm1312887otv.63.2021.12.16.13.04.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 13:04:43 -0800 (PST)
Received: (nullmailer pid 753209 invoked by uid 1000);
 Thu, 16 Dec 2021 21:04:42 -0000
Date: Thu, 16 Dec 2021 15:04:42 -0600
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, abel.vesa@nxp.com,
 linux-media@vger.kernel.org, Lucas Stach <l.stach@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, benjamin.gaignard@collabora.com,
 linux-kernel@vger.kernel.org, aford@beaconembedded.com,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 hverkuil-cisco@xs4all.nl, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH V2 01/10] dt-bindings: power: imx8mq: add defines for VPU
 blk-ctrl domains
Message-ID: <Ybup6sUyFCCNH9hp@robh.at.kernel.org>
References: <20211216111256.2362683-1-aford173@gmail.com>
 <20211216111256.2362683-2-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211216111256.2362683-2-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_130445_102907_18661AFB 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
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

On Thu, 16 Dec 2021 05:12:46 -0600, Adam Ford wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> This adds the defines for the power domains provided by the VPU
> blk-ctrl on the i.MX8MQ.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
