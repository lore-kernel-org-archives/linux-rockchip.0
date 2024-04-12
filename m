Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74E6DC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 12:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZ5LVybOYb5TpiMEjJTH+/qyk5SC6j+NC+8hYBoCXX0=; b=Hex5l2XePcqLR+
	T5cNd7iFwTAqai/jb73ZVJ4O13Agb86iR0hQ5pDDYwPWuS56nMFdvNSMn90weIBvnDDzRpkwZ+4o0
	bjeW0D3cgeKkZ88VdGfYoqel4tBAcsNKAibQQzS66I6fjgrNGL0tKxuaZb64ZMu8rHqVHZ47heJGQ
	JpqlsfnoA8hRv6zuzI67yi/mqYFRt9hAMCGYogdRk28B9hmL65LaQhEApPEIP99IatD26vRQckX7d
	EOirs7gOMzv0SkENa+A8bwH6FNWXqBb+6GUjxTvwci9dHW8dmaZOntRbaYGuoMZ3Wp4S8lCXDK+Lk
	jx+N+72mnL776V5Y0LAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvGF4-0000000H9pi-0Ojo;
	Fri, 12 Apr 2024 12:42:54 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvGF0-0000000H9o4-0ZYm;
	Fri, 12 Apr 2024 12:42:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E057ACE38AB;
	Fri, 12 Apr 2024 12:42:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19F31C113CC;
	Fri, 12 Apr 2024 12:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712925767;
	bh=RFZZ+mGFrMvvzGP+Wwx3ZJjWKuRdZUpn09zEfdGc7P0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f4nYe/em6FK0f+oAwuh0E1rMXQ1OyU4HGcc0d3wGEkQs8c01qL+qYZXK7o533Ysy4
	 12FEaeYNYxLWiGTQZbgfQMmJRnPAIosXSS6Zww3JQkROF0SrSm9b1ggXg6zLAYYwKO
	 odOnXedPol5+Z1ADVvnwDXI7aPmAXVzsYC7lgNGgKqiSH+rgcBS7HfOj6+CsmkRYZw
	 DRCJo2Rlk4oN1rmCBnunXTTJfaA9Nl+2iXXwuyCohy8+z6igI07gVChSGzHOp3wIZa
	 JaY092JRKQkFik2TB+OLe0WFl/4PQtSCz8HtXg7oFHfb6dT/JeAcwQkYR72H3Olyk3
	 ns6WGTbpiZsiA==
Date: Fri, 12 Apr 2024 14:42:41 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Michal Tomek <mtdev79b@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/2] rockchip pcie3-phy separate refclk support
Message-ID: <ZhksQc1kNDWHAfWw@ryzen>
References: <20240411130150.128107-1-cassel@kernel.org>
 <ZhkAB6goB4TmcmWu@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZhkAB6goB4TmcmWu@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_054250_380450_47895976 
X-CRM114-Status: GOOD (  14.98  )
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

On Fri, Apr 12, 2024 at 03:03:59PM +0530, Vinod Koul wrote:
> Hi Niklas,
> 
> On 11-04-24, 15:01, Niklas Cassel wrote:
> > This series is based on: linux-phy phy/fixes
> > (Since there are other rockchip,pcie3-phy changes there that have not
> > yet reached mainline and which would otherwise have caused conflicts.)
> 
> I merged the fixes into next and tried to apply this patch but second
> one fails for me. I guess it needs to be rebased.
> 
> Always based these changes on phy/next or phy/fixes+next (which is what
> I will end up with to resolve)

I based it on phy/fixes since there were commits for this driver in phy/fixes
that were not in phy/next, so I did it for you to not get conflicts :)

Since this still gave you conflicts, there must have been other changes in
phy/next for this driver. I must have missed that, sorry.

I see that you have now merged phy/fixes into phy/next, that will make things
easier, thank you. I will send out a V2 based on phy/next shortly.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
