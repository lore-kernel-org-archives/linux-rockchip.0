Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FAF2C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 13:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vB2hquTFZ6TX1sxhlgEMGQ3jusTRP1uHvi/hhRnrPVI=; b=t1xaiJADvbJN4d
	SQjDl2Qrj4Zr4gkFEgxYTgJrvYQc6P0arMELNSDvEoxc7Gjl3CZ0TIHwtMOF7uGAMDDy7rIYpRwcS
	JZCdzdMB5UibrKau1+qOlS4//BnGgSVSBgKO24wZc/QukXFlk2+f1tU0vMkcRhN5Un30fVx4rmqko
	YyLA3M8A1UFlPeWAymsLjOacU7IOvaV7Hf1b2VXWiUgzyQX/Z9v5h0o4mF/iGMbgFLgRDSSRoZ6Vv
	LscSBfteGNtBedGl1Ut9GFf/DHKoD9mqdp4AMCM5rp4uqVM9PGVVlaSoPiuxbzP8BXt6vZpWksMjE
	K6YVQI/h+pqAlUaD28BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIVwA-007NQn-7E; Fri, 11 Feb 2022 13:26:10 +0000
Received: from mail-io1-f48.google.com ([209.85.166.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIVvx-007NLs-2S; Fri, 11 Feb 2022 13:25:58 +0000
Received: by mail-io1-f48.google.com with SMTP id c188so11298126iof.6;
 Fri, 11 Feb 2022 05:25:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fnixB23kidaMApi1YvDjLpG7fjZRCymMdg8bS8AXKfw=;
 b=oT0+UpS1h6bNE1q3H2J2N75UJuyQwFbIzd3ySDJwyno1s9p5Ghqy1llcwP3obMsFa9
 oRog8it6zt3M7JZT+XrB66Hd4B+mKgb9slv348nxOZMCQmwJ3va7Ir14PONHeIcJbpTp
 O8eIJF7g1v+USaS1v17zrXluvH4knBp9tAJqS/1N8JVMvpyvAe6UNik5NHS2XIHoF2w4
 0Jkr0qYOkcEtX8IjaP9cKMcrZSGR6qTJCuoGhGyBu6JEJzZcOCnwbF4pMor8pQnKqag6
 W7Kra9d4AEHVPrKcEubSYb22yG3tnaqRUCszTr/Qp1DyS4YJHl0AUJH/9O2V/BvP9Xbt
 aaFw==
X-Gm-Message-State: AOAM532SEpaN5QS17+RmffXb+ve1ahtQyv+PRnvLV8JBHdixkdljHx+Q
 MuJt2Z8VxREt+ROrDIQ26g==
X-Google-Smtp-Source: ABdhPJwwHe0liHEXZ9LxT79ZvOj4LxW11MvHj7tkxAamyam2S41mClF0v6uYPFPiLnWf5Wduma2+Tw==
X-Received: by 2002:a5d:89c9:: with SMTP id a9mr857109iot.124.1644585955662;
 Fri, 11 Feb 2022 05:25:55 -0800 (PST)
Received: from robh.at.kernel.org ([172.58.139.71])
 by smtp.gmail.com with ESMTPSA id ay35sm13534693iob.3.2022.02.11.05.25.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Feb 2022 05:25:54 -0800 (PST)
Received: (nullmailer pid 252738 invoked by uid 1000);
 Fri, 11 Feb 2022 13:25:51 -0000
Date: Fri, 11 Feb 2022 07:25:51 -0600
From: Rob Herring <robh@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Levin Du <djw@t-chip.com.cn>, Peter Geis <pgwipeout@gmail.com>,
 Liang Chen <cl@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 linux-rockchip@lists.infradead.org, Tianling Shen <cnsztl@gmail.com>,
 Chen-Yu Tsai <wenst@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Alex Bee <knaerzche@gmail.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add Pine64 PineNote board
Message-ID: <YgZj3xeLvO1vA5+f@robh.at.kernel.org>
References: <20220130053803.43660-1-samuel@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220130053803.43660-1-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_052557_134696_35A7A69F 
X-CRM114-Status: GOOD (  11.65  )
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

On Sat, 29 Jan 2022 23:38:01 -0600, Samuel Holland wrote:
> The PineNote is a tablet from Pine64 based on the RK3566 SoC. There are
> two existing variants of the board. v1.1 was contained in some early
> samples, and v1.2 was sold as the "PineNote Developer Edition".
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
