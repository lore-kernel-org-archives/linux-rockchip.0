Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D821BC48286
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 22:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZh1quH32yH2uKRNDfeLfWgmkBzc6R0kDxrbWvettmc=; b=UDk8gPboBAqaTe
	ndsUoTwah55GFPeN+vkaQCdTFQ1rcuqEvEPbNg2ZevtFr5TmxsLCsb7D5Nl0ddUsQz2Zw1E6FfG5U
	T7Zc8AYgCG+H86SQdQCDhiyVAaUsa57rGbOm41SCw+QzdOs4zDxEA/9ifjOxVazoqIzJ4lmL8Jx1F
	1Gf0eKOPiqDoMoFlm3qlgfHEps9+DFLu/MByrlZCZNksWcofkjHkEcJyCvRN1ntEmjkNvUFOO92yj
	WgYXL/ydbfusR7reBRxGRZ3g5Bu9OyVOY4YmDaex/7xq+t02eFXO6KMpIOMGsV3rkNo8NTIxX/ZIX
	kTlaVaLgTsjjw9AB5I/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVg17-00000009bTA-0ohU;
	Thu, 01 Feb 2024 22:58:45 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVg14-00000009bSC-1G1D;
	Thu, 01 Feb 2024 22:58:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A22F8CE25AB;
	Thu,  1 Feb 2024 22:58:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFAACC433F1;
	Thu,  1 Feb 2024 22:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706828319;
	bh=J6+XAazfq8OI3ywEXe3H0Aa1Rt570MhNrUUKWp85JHQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aejgf9iVT8l88D/qVvwS4KS5hF/AXyC5GpnMO7K2KmMw2d/www5MgUpHyjpYfkakN
	 QFVnBJgy3N9j4zGIlp8Cdk0ykzGmPOjq7TzqjtCVwj+FzKqM4mx1mFDb19Okj15b+O
	 fInXLvNmEoPHYEbmXvvxI7sYOQ9SwEIkrhm2VVrRXDFMrH4yqrI0VqGbMAFkrM014z
	 T9zxu38dFBwVdzusB7pJzhcvNnP6xshY0HY/oVn9nEPG0NcXH5KHQCOrGkfQCs3N6y
	 Zjx+pcjzzrvtHJ/zFps7ej6C9ke46aGOD19xi58QPEZZslwFHx0o1Dh0z1BGJMLjwp
	 olYJeAuesGZdg==
Date: Thu, 1 Feb 2024 16:58:37 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: tzimmermann@suse.de, markyao0591@gmail.com, andy.yan@rock-chips.com,
	dri-devel@lists.freedesktop.org, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, mripard@kernel.org,
	devicetree@vger.kernel.org, airlied@gmail.com, heiko@sntech.de,
	maarten.lankhorst@linux.intel.com, daniel@ffwll.ch,
	hjc@rock-chips.com, linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/6] dt-bindings: display: rockchip: rockchip,dw-hdmi:
 remove port property
Message-ID: <170682831660.1899746.18090191904658752173.robh@kernel.org>
References: <a493c65e-7cf9-455f-95d5-8c98cad35710@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a493c65e-7cf9-455f-95d5-8c98cad35710@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_145842_532629_C7D1DC1A 
X-CRM114-Status: GOOD (  13.90  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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


On Wed, 31 Jan 2024 22:14:29 +0100, Johan Jonker wrote:
> The hdmi-connector nodes are now functional and the new way to model
> hdmi ports nodes with both in and output port subnodes. Unfortunately
> with the conversion to YAML the old method with only an input port node
> was used. Later the new method was also added to the binding.
> A binding must be unambiguously, so remove the old port property
> entirely and make port@0 and port@1 a requirement as all
> upstream dts files are updated as well and because checking
> deprecated stuff is a bit pointless.
> Update the example to avoid use of the removed property.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V2:
>   rename title from deprecate to remove
>   reword
> ---
>  .../display/rockchip/rockchip,dw-hdmi.yaml    | 24 +++++++++++++++----
>  1 file changed, 20 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
