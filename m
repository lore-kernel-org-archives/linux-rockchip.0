Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1ABDC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 13:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/W0EEAtMbYPUSe74EFd87PYDO0zk1ExzMc7HerO1Efw=; b=mU2wZF1L58oQnt
	G4XG3Vi5KD0zJ9bwArEEBVZ6ZyYLFovRSFWSChqhiWY5PrWyk0NgAk1p0ucQ0I0Tr4W1yb8EXnSo3
	pGDqyFsToEY+jiUgYY3B/s54JE53BcT0jbbI/XlMTfVuxizZKUiVyAMr55HKbnsHMm3wNGZwDZfas
	ORgZc+PnVyxu1yDzTPB3YwUvVlTlEqErKJ9I9DUGB30cEF9jHczipCO4OUyMuROSxXVRfglf2iPzp
	/LgMCh/Y3Eb1AcvrJCvmL2SEoZ090fcPgkGiu2+1Ed6wK0RUi1akQw9H7ouO9IzvxU5FY1Gg+VPhy
	Eb8TRkpAUjbCvf7Jb/PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPljg-006WjM-Kt; Thu, 03 Mar 2022 13:43:16 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPljU-006Wgq-OP; Thu, 03 Mar 2022 13:43:05 +0000
Received: by mail-oi1-f174.google.com with SMTP id q5so4814855oij.6;
 Thu, 03 Mar 2022 05:43:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uVjIFvRGxmCNMTbSrBbokaQaBUIKi3VHJCUkgaVuEhc=;
 b=zVqD24sQZNJ6PtW3eZhTmOr04zmrG6aTrKQxaTYfKFC+MFvgxyVWgj4ZEiqkMEmqP1
 qBF0h3UTAqRNsr5+E2zHxNL7N2hs13SLGI7F7rsH2T6VHIdl+c17eGNAQYTq/8nTvwAq
 ndjKSnvr8HbiVNuy5L2ui7Fi4KtpwoHd0/Ikk9Gm8aUXHU+DbxLtB6KwbbD3mmKSencd
 9eF10H+xKw+Pjc2fOJzDBaO6LvmgrCFvTElny4CGll9J/Nmh3m1SMkgzNTF8Aca88U1v
 OI37Uij+LaD8cHxnyIK2GTO6ucnFDIOiZDBvK6/U6giL2BOihfkdS1HBi+v4IxsJ50NN
 94UA==
X-Gm-Message-State: AOAM533ulsWAPBCMCK8SmMHzH98IOiKabGlXbLN6VLT3821/5LiiOjaY
 6kUI4Kb4sIFBTVj8LXxcLQ==
X-Google-Smtp-Source: ABdhPJyerRkHKmBETO/iPjPoX2HnozFhTqwx0qSfhqj4YNiGOkshnbjByp8JMzHFIJUHKbBPBFFypA==
X-Received: by 2002:a54:4e9a:0:b0:2d5:3e7c:7ff6 with SMTP id
 c26-20020a544e9a000000b002d53e7c7ff6mr4594562oiy.24.1646314983421; 
 Thu, 03 Mar 2022 05:43:03 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213]) by smtp.gmail.com with ESMTPSA id
 n23-20020a056870559700b000d47e9dabf0sm1166362oao.0.2022.03.03.05.43.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 05:43:02 -0800 (PST)
Received: (nullmailer pid 1492131 invoked by uid 1000);
 Thu, 03 Mar 2022 13:43:01 -0000
Date: Thu, 3 Mar 2022 07:43:01 -0600
From: Rob Herring <robh@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Frank Wunderlich <frank-w@public-files.de>, Peter Geis <pgwipeout@gmail.com>,
 Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org,
 Liang Chen <cl@rock-chips.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 2/4] dt-bindings: usb: add rk3568 compatible to
 rockchip,dwc3
Message-ID: <YiDF5WVoR3c0Eevt@robh.at.kernel.org>
References: <20220225131602.2283499-1-michael.riesch@wolfvision.net>
 <20220225131602.2283499-3-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220225131602.2283499-3-michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_054304_815407_7AC5BB05 
X-CRM114-Status: GOOD (  10.11  )
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

On Fri, 25 Feb 2022 14:16:00 +0100, Michael Riesch wrote:
> Add the compatible for the Rockchip RK3568 variant.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
