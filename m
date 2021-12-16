Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB50CC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 21:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ykax/QSU+U0dVDvXF7FEpxfGERIXh+0QgLm2qBZ2KAo=; b=Praq1PMfXNvq+C
	DjsUD24K3QYKWlF+IV9HsiIhs+wWc7XDEAf3MdhTNDYD3a20wGYfanG6KCcm5ej51H6dxfCG+S81g
	ZKCvWay43rKhjXjZ9v9EXTUYrmQyBLnQfVx3OZP7B+uS+3n+J4fq13rcQ5T8sd5/Tx0dLwGWaMr0g
	pa/DQtZDcKd6EzECtHLsdgGy4l9Szdp9MJOz03cLAqnQkBk5w+e9s9jYNVQM6i+DbT/ytuRssvuif
	89K7KA2IP8lweB61AAgeoqJBDPgUpFzeyPX9+mBy5jeWSSmEN2SBH4V9UHxHEPw1YatyaZPNZ+HYk
	H+q6DpOp9Q0Q/e/sHpag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxxwJ-007acJ-6V; Thu, 16 Dec 2021 21:05:23 +0000
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxxwH-007abW-0E; Thu, 16 Dec 2021 21:05:22 +0000
Received: by mail-oi1-f179.google.com with SMTP id bf8so699934oib.6;
 Thu, 16 Dec 2021 13:05:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wBWBDIKDtMNMEZft+TTE9DeJ68Ulb1CH0US1EWQAqhM=;
 b=gl70ZlesnQWPdqIrDPHLZuaVY6ts2pzbNZk494R4YBNnoLKAKZG2kKPz2T05TgTIvb
 0kOowY3U3esD67QaoNWMbXRMkuZbPZ8LkOT5b6tPAJgozsydzL8u1JuoqlIy9n/PZqUS
 PM1zDmSdLoBoU5vzCCQigA7EYhbTytjn05svjf42LFpA2CYNElKDyr30lvIDqbvGMf5I
 6bbWJNfaj4GfP+9NYElGRhATb32g7pk5FdgJhvM5EKr8eUvahOlQuK5hVvJwfKWjkwna
 N5U1Bgb7PXrJeSSjytZOXcTu8AGp0sQNIAQrllPVvxoy0I7UfWRipW0fj0Vv4gSnFU8/
 WgDA==
X-Gm-Message-State: AOAM532EaVluByqoVB72/hO+auepUbb5X8bNUwo0rkSl5+fB5Eowq9k/
 jJsHXHeZ0FdJyoYd1CPQIZRie8QMJQ==
X-Google-Smtp-Source: ABdhPJzigkqlrgFC4xd4dqm3MxexTeJm4Cz8GKPJf8U5cXT5Ywt3kr4LVr/xc4M6lxP9YQ3P/LxMjg==
X-Received: by 2002:a54:480a:: with SMTP id j10mr5605512oij.34.1639688720371; 
 Thu, 16 Dec 2021 13:05:20 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id o10sm1220978oom.32.2021.12.16.13.05.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 13:05:19 -0800 (PST)
Received: (nullmailer pid 754215 invoked by uid 1000);
 Thu, 16 Dec 2021 21:05:18 -0000
Date: Thu, 16 Dec 2021 15:05:18 -0600
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: benjamin.gaignard@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, abel.vesa@nxp.com,
 linux-media@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, aford@beaconembedded.com,
 Shawn Guo <shawnguo@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, hverkuil-cisco@xs4all.nl,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V2 02/10] dt-bindings: soc: add binding for i.MX8MQ VPU
 blk-ctrl
Message-ID: <YbuqDr0dRNsfMglV@robh.at.kernel.org>
References: <20211216111256.2362683-1-aford173@gmail.com>
 <20211216111256.2362683-3-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211216111256.2362683-3-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_130521_070467_3EE15984 
X-CRM114-Status: UNSURE (   8.42  )
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

On Thu, 16 Dec 2021 05:12:47 -0600, Adam Ford wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> This adds the DT binding for the i.MX8MQ VPU blk-ctrl.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
