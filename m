Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E347AC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Mar 2022 20:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87Y60Hq+tImWfo8H2e+ru64tYHXdVw7IQpY3GRAuLLY=; b=nuG9dVX0Kq/IiP
	remARHyLiUAILU9YIlZhN07j0T1iq+LD5oT3ppFtwFIXFNAE1hdVP5bYfaBcXrnS40+ZqZJpCrsLu
	Y2BWZ1HkQJ2N+aU8jWBI3Csf+A+KrLr8Tx0OAE+gUp5wDJn8HmBa2pVtsvaYiVswGsrJaKIHlGW3Y
	TwAQYT5Ct+AcTRisYksGDXXS1f5jSk0AWniGrYzW3sQXKMs2ovOJcbHqKYbRzrxybtfU6tVbD+wRV
	MOb44IzaRDg/eZvay+CUAKnfw1i4OOxtBxgdzxOsMhL7vv//RT9yDdnJcwd90KdKjocOuQBQJhTxL
	DZNux94y7wGrA5ZlbpYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSOyA-00DuEW-Lj; Thu, 10 Mar 2022 20:01:06 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSOy4-00DuC0-PO; Thu, 10 Mar 2022 20:01:01 +0000
Received: by mail-oi1-f175.google.com with SMTP id b188so7043150oia.13;
 Thu, 10 Mar 2022 12:01:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uLQUYwbI142mPK+bpbXClLmkKDnYrWpju591cR/ZRE0=;
 b=xDL+x+n0nOWqjgT2wcGJhe5zEcshjBLXa+t67iUJmDDZlLgY/WobkBXlt65OtMdQAM
 1teEV1Gh/tZRCFckR6aXVJiEeSAOmOUr1Flt3oxURFnfsM1Vc4EwHbxGbEjoLbqAD7Ec
 4B1OdRa62HVPXRqMH9+IhY669zhM0Hy+TKBr4QF/Wh3pbFBcEtxYQlZSeCmZrlbWGMV6
 O5aAlUFDZlmprSdeYJAMjQP23FyN5lR7wIMCkC4LZYO55t9ZorAdr+wfLZQkDciocVTj
 IJI2Znd2Gx2VRvUWS/7n9ygLNV2euPsJcNyB51T60UERH4Q4ElG8gE45z1Wxz2NrIuW2
 dmLw==
X-Gm-Message-State: AOAM5317tbGPPkL9/XlYOQM45CeWGmcIzNRsNrpxuVLeQiFdbgyDSi4J
 kNnZHtTHj5Mju6XsDrhbAw==
X-Google-Smtp-Source: ABdhPJxgtl62Rn5MfIz5PDMuxe0atN8+OKDMV0hDYPugU0yN5r01kQ03Mbod8t+beWBP1M7itVn4vg==
X-Received: by 2002:a54:438a:0:b0:2d9:a01a:4be2 with SMTP id
 u10-20020a54438a000000b002d9a01a4be2mr4360203oiv.265.1646942459469; 
 Thu, 10 Mar 2022 12:00:59 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 o2-20020a05687072c200b000d9ae3e1fabsm2643375oak.12.2022.03.10.12.00.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 12:00:58 -0800 (PST)
Received: (nullmailer pid 1965958 invoked by uid 1000);
 Thu, 10 Mar 2022 20:00:57 -0000
Date: Thu, 10 Mar 2022 14:00:57 -0600
From: Rob Herring <robh@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Levin Du <djw@t-chip.com.cn>, Peter Geis <pgwipeout@gmail.com>,
 Alex Bee <knaerzche@gmail.com>, Liang Chen <cl@rock-chips.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Tianling Shen <cnsztl@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Chen-Yu Tsai <wenst@chromium.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: add radxa rock3 model a
Message-ID: <YipY+W2HVPNyA15W@robh.at.kernel.org>
References: <20220304161130.34977-1-michael.riesch@wolfvision.net>
 <20220304161130.34977-2-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220304161130.34977-2-michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_120100_846067_EC54B81B 
X-CRM114-Status: UNSURE (   9.86  )
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

On Fri, 04 Mar 2022 17:11:28 +0100, Michael Riesch wrote:
> Add entry for the Radxa ROCK3 Model A board (with the Rockchip
> RK3568 SoC).
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
