Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 440C9C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Feb 2022 15:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QXsAqTPSs/+0/kCO9NH5hOZyzZPuPsLNiucmXOnp8Mk=; b=BqukepG8Jq/tVJ
	T/pcbtN38+xBRnHLEIm1/dFe1HUyir+Ld/5gy/SlZlVUnfP9HQEbXtfRz8PR6VQP+9vyavsyd48jo
	zqS3Miin67RwTZudGFqf8XnfxDNPtXPMMhl89T0vR4Bc/Y81hhj3M8Yt4mW6oC94pNZ+FF8oKASJG
	5p0gK3J2B9hm4kIYWUKUUooFv+3bbUxao66ulEwaMD5aLbfBd2FW7U1qPsPeKRcySEa46DPwphAJM
	PlTpzvaXKJ/5W+OaZYDCUkaUDajwrydaMc/iEbnq3Z5+OnFBxtvYjw4t5hd0VVkKm5Y8Z+KsUqgEC
	ioAmiMfErBgcJ4R3Qc2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMtz5-00FBfX-9z; Wed, 23 Feb 2022 15:55:19 +0000
Received: from mail-oo1-f47.google.com ([209.85.161.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMtz0-00FBb3-L9; Wed, 23 Feb 2022 15:55:16 +0000
Received: by mail-oo1-f47.google.com with SMTP id
 r41-20020a4a966c000000b0031bf85a4124so22862527ooi.0; 
 Wed, 23 Feb 2022 07:55:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AY9Rst+R0XJdUuRWhEYpgduaPwSTvm033nlzuhQ6N64=;
 b=RLsR7YMpzyuBlzHuwKTq8u21ew+Xg+cyLuFNUrx65w78CsnWYmtFxN4Evm5eRYp5EA
 VIU0nQvr5p/ZiLhXhxGpt+UNVDvfQgS9oYEbZTET9FQz8WSwBAcsYj761ty+xokCwYva
 uucv+DSfsxkRQk0yf4uMHCb6SvG+pOAkLV/sF0mbTLwfL+DkIPT8rsztO+sFGiAE63fu
 4pDSF9hXvmXPYyHMbmojNMtzJFty3YMhuuquk+CVLKZSIq9F0SjWS4D/jjqDyz/K7tZx
 8EgafBCvjXN7bfW18133WgpohS8zo9bY2Vg/Xn8eWC190uyS3o8EhWaY9MNozr/E+B0C
 45wg==
X-Gm-Message-State: AOAM532/CGdyB6SSPqPhzadmHYy937/GmjwfjBg6cF/wo/d/I8crAR8+
 5qLkElA6WUQeX71SGVsgQA==
X-Google-Smtp-Source: ABdhPJx3cqGQBNB+wBd73wt4IykRtWY7bNDjTg6vOPJPvXlyPhl5eAy07J3mvRkLnak1pIURW1OOWQ==
X-Received: by 2002:a05:6870:2b16:b0:c2:8be1:8b0f with SMTP id
 ld22-20020a0568702b1600b000c28be18b0fmr129502oab.2.1645631710861; 
 Wed, 23 Feb 2022 07:55:10 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id f40sm37321oaq.34.2022.02.23.07.55.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 07:55:09 -0800 (PST)
Received: (nullmailer pid 1001324 invoked by uid 1000);
 Wed, 23 Feb 2022 15:55:08 -0000
Date: Wed, 23 Feb 2022 09:55:08 -0600
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v6 23/23] dt-bindings: display: rockchip: dw-hdmi: fix
 ports description
Message-ID: <YhZY3BV6WE2+XgnT@robh.at.kernel.org>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-24-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220217082954.2967889-24-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_075514_739233_D89AF840 
X-CRM114-Status: GOOD (  17.82  )
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

On Thu, 17 Feb 2022 09:29:54 +0100, Sascha Hauer wrote:
> Current port description doesn't cover all possible cases. It currently
> expects one single port with two endpoints.
> 
> When the HDMI connector is described in the device tree there can be two
> ports, first one going to the VOP and the second one going to the connector.
> 
> Also on SoCs which only have a single VOP there will be only one
> endpoint instead of two.
> 
> This patch addresses both issues. With this there can either be a single
> port ("port") , or two of them ("port@0", "port@1") when the connector
> is also in the device tree. Also the first or only port can either have
> one endpoint ("endpoint") for single VOP SoCs or two ("endpoint@0",
> "endpoint@1") for dual VOP SoCs.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v5:
>     - new patch
> 
>  .../display/rockchip/rockchip,dw-hdmi.yaml    | 24 +++++++------------
>  1 file changed, 9 insertions(+), 15 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
