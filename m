Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27715C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Dec 2021 17:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iK56vT0ahaZJC8+Abu/JmsCFO6/MxgIEXCRLD3IecEk=; b=3IbV3qpwlfO6Mu
	fcaivCYGwOxsAxq8yWyx9DB4kNIXTydcSO92QHcanU50olYvRH5xfJ6T4hmv7ZyusK+i3RvRi75qV
	2Dq4gQoTbSY3vutqTOX7Yqd6rRJw6IlnKbRJpeHVW+9uLHh6/fJDxh9WLrz3MZh9W75ip2Ri7Po+Q
	/MSglJ2VaAAVZvO5sqzNUWP3/EJKQKmGwX1YjTUzqryjMZsHAIYEDX9BPY9lu7gZg3sVmk7LId6Dg
	cthvc09NT1W7+mKOFAizRGEe9zMjn3m0PeI/tcf3xMM/i6XbExurlM4h3e6ZjIPOve6PcENsfDXji
	yMJpgH/xHneM0bs8cBmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mziyv-007rZJ-KX; Tue, 21 Dec 2021 17:31:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mziyi-007rVw-Nt; Tue, 21 Dec 2021 17:31:09 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mziyd-0007s8-DU; Tue, 21 Dec 2021 18:31:03 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 20/22] drm/encoder: Add of_graph port to struct drm_encoder
Date: Tue, 21 Dec 2021 18:31:02 +0100
Message-ID: <5748237.0N3Lptk4b8@diego>
In-Reply-To: <20211220110630.3521121-21-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <20211220110630.3521121-21-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211221_093108_814342_5C5D7261 
X-CRM114-Status: GOOD (  19.84  )
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

Am Montag, 20. Dezember 2021, 12:06:28 CET schrieb Sascha Hauer:
> Add a device node to drm_encoder which corresponds with the port node
> in the DT description of the encoder. This allows drivers to find the
> of_graph link between a crtc and an encoder.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  include/drm/drm_encoder.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/drm/drm_encoder.h b/include/drm/drm_encoder.h
> index 6e91a0280f31b..3acd054b1eb3e 100644
> --- a/include/drm/drm_encoder.h
> +++ b/include/drm/drm_encoder.h
> @@ -99,6 +99,8 @@ struct drm_encoder {
>  	struct drm_device *dev;
>  	struct list_head head;
>  
> +	struct device_node *port;
> +
>  	struct drm_mode_object base;
>  	char *name;
>  	/**
> 

Is this the port that gets used in patch 3/22?
It looks like it.

So this would break bisectability. Can we order patches
sequentially so that git bisect keeps working.

Thanks
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
