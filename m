Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6C25C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 03:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tQsU8NU2tv/LV+JID8+lN5gWBxxVGRD96rNLWX54YM=; b=X7cGBlY5qwyBt3
	bC0C7EsaoZhLNGTUQuRYN1IBTvnRg0EmOsl7zOLGcf9Vh2Hw3h4OYBonZd9aTE3EXXSavpNTG8Zy0
	kdoxx4D62M765Z5w5EoGtKeOQIlHNauC7hR/b4PekcExgiDodUkuEblsYsX5LQ7Gh9zeYscegjxbk
	XK6l2Ewd4U7W5w8MM8/cHZ+UzihJscr6a5gTkAjehlWcM0Rp/+nsyLMApeM2k2IWzM32UaCeVS0eV
	Ewjw0OINVwDQJDMz0zpBzxBR3F8bA/S2DFZeIzdMlYD/VIiLCpjZLa64/cS9DQ7Dc+hUkBdvOczTs
	VdQR0y3Ap+FEb8OVsvLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHdgG-00G6m4-VZ; Wed, 09 Feb 2022 03:30:08 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHdgF-00G6l7-5L; Wed, 09 Feb 2022 03:30:08 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 g15-20020a9d6b0f000000b005a062b0dc12so666532otp.4; 
 Tue, 08 Feb 2022 19:30:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zEVQ7Rw/tzHyjS5OXKqbzOVt0A9B00mYmLifv1I8/aY=;
 b=s1KuKtrMyZ1w7pIEdlHYcuy8OaM1rrvYs+DHkX1abs8NHbdop4S/Wf25t3JDjo2l+K
 AxYk+CbmwPkpisvSnvcUwOsl5TVWZZDqqGBH4jvuEFV+8mq2XCn3u2DsBd79bUtGr6W5
 0sQFQ+3FU++8oGYqvMG11hfo4ur7W0TVc19bfHs2UZHWEnrz/NrqzMP88WllQaxnX73L
 52BICc94MCEAlk8i31JpRmsqCSep7OQPRYBD4UTX3NS3qbQox+NlWjshdTzEiFrYcFyj
 fQALtOP3FhBLGq3ohbdwFkgZwByp2g+tIn2NFcgqKHhwzn/pXYBL2wAASlvL47/3/ufT
 v+og==
X-Gm-Message-State: AOAM530R7WvQBkGHVILTQwUGLnmBFr/1TUwfplwMxpRtL1DetSmNosG7
 WT286PLZAEnmvBfLAh+aJg==
X-Google-Smtp-Source: ABdhPJz66Nmvy9lEMz85Tl+OIfWEdYgsLXBYEqdh227dri4jtALkvNMeZsjk0ExxLb3Wwdb8nzKfEQ==
X-Received: by 2002:a9d:73d8:: with SMTP id m24mr188295otk.52.1644377405869;
 Tue, 08 Feb 2022 19:30:05 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id b20sm6021320otq.20.2022.02.08.19.30.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 19:30:05 -0800 (PST)
Received: (nullmailer pid 3582173 invoked by uid 1000);
 Wed, 09 Feb 2022 03:30:04 -0000
Date: Tue, 8 Feb 2022 21:30:04 -0600
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, kernel@pengutronix.de,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 dri-devel@lists.freedesktop.org, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 14/27] dt-bindings: display: rockchip: dw-hdmi: use "ref"
 as clock name
Message-ID: <YgM1PBsETHleuSNt@robh.at.kernel.org>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-15-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220126145549.617165-15-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_193007_226040_AEAFDC0F 
X-CRM114-Status: GOOD (  13.88  )
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

On Wed, 26 Jan 2022 15:55:36 +0100, Sascha Hauer wrote:
> "vpll" is a misnomer. A clock input to a device should be named after
> the usage in the device, not after the clock that drives it. On the
> rk3568 the same clock is driven by the HPLL.
> This patch adds "ref" as a new alternative clock name for "vpll"
> 
> Changes since v3:
> - Keep old clock name for compatibility reasons
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml      | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
