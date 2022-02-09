Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37580C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 03:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWuHW9ukithCnB34MLns/o7rzfbsEnTYpnUvFphRCpY=; b=M5vPKUtpq172Yv
	6dTFhvVsBHSbpjzqnEFaW/dnq9viT6pxj1f9oYGjSLJO1CYKMfswj1lFmvz7/v5DNUevL/zt5i/rz
	DaFTjkSY+4hm3jzo2VJXQ8Mari7x6gEzCSiaBEVcsLlV7/QRieRx4p32oUz8ae2uss9jAF7XIh5qG
	lF9cJIPl0cAZKtTSURH/rOOShofqZM92rqJd7rYq/Czg5dFtdfsRDcLMiB6Km/DrWxdk+WwdVh1p+
	nJgUbOABNwcfglBPLX5NqbBPuivZ/JagXH7nsfRH8mUdvu0jrMDgthxdP+F2ZkpNL2gy8GVhurV3I
	xevDFbZ0jt0Jz5bfyXfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHdgo-00G70C-Vt; Wed, 09 Feb 2022 03:30:43 +0000
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHdgc-00G6uw-2u; Wed, 09 Feb 2022 03:30:31 +0000
Received: by mail-oi1-f169.google.com with SMTP id x193so1291307oix.0;
 Tue, 08 Feb 2022 19:30:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=m7oHOuveJzjB7zvN+hnuLSMzifBzu2e4cvQ37V0Sy9A=;
 b=TXY1DheJ+J16r9gkfNZ744RSmMNZnawLSaenUj2epGaLK1HAmMx047sT/amQvp0bTS
 pX43uJT/7WXyqQ86j60I8LN9pQr7+8oRMytVp5KBgoCIbWye1XIa4DOvId2p9rnIEQOi
 IPNaF7VHB0N1SAklk+uHUYtHP3D7/GQIuSZZqa9bNvlnc2eDhxONgL6UNGsyCaTk05w+
 SRl61qu+LWeOl0z58g1dTBTJYazpkuZpfFhzwSxaZWKyMXyvGm82URMcol1eztCvfIoJ
 u7fKBNi3a2/Iptnq4wDy9jcI2xkv552dSs7z/8beRzYnxBV5V+SG5a8iRi3fuX8lSqlf
 F2pg==
X-Gm-Message-State: AOAM530oOr/jyePMJGRwSAlkAsoTfHUMjtxVLR1KJUCgi8vQ04ePMUrl
 Go1QABBj8jS0W7YR3kDjtQ==
X-Google-Smtp-Source: ABdhPJwQW+Z7UZFyx5cKb/tU/AIPO7Ff6qsz6P71dMzoL3waysd8bq9+j1OieOPYWxiCOUyE2Qan5A==
X-Received: by 2002:a05:6808:189f:: with SMTP id
 bi31mr117634oib.5.1644377428874; 
 Tue, 08 Feb 2022 19:30:28 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id c6sm6025419ooo.19.2022.02.08.19.30.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 19:30:28 -0800 (PST)
Received: (nullmailer pid 3582798 invoked by uid 1000);
 Wed, 09 Feb 2022 03:30:27 -0000
Date: Tue, 8 Feb 2022 21:30:27 -0600
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>, devicetree@vger.kernel.org,
 kernel@pengutronix.de
Subject: Re: [PATCH 15/27] dt-bindings: display: rockchip: dw-hdmi: Add
 regulator support
Message-ID: <YgM1U+4wqcky0KQy@robh.at.kernel.org>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-16-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220126145549.617165-16-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_193030_145303_F92AC712 
X-CRM114-Status: GOOD (  11.13  )
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

On Wed, 26 Jan 2022 15:55:37 +0100, Sascha Hauer wrote:
> The RK3568 has HDMI_TX_AVDD0V9 and HDMI_TX_AVDD_1V8 supply inputs
> needed for the HDMI port. Add the binding for these supplies.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml   | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
