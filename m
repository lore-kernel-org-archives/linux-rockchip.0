Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2D82CA0EFA
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Aug 2025 10:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lAMsY8DwMV/Gs4CbozzbYK3+ZPGJ64Ncvm/aQeLYTkQ=; b=wVNaggyRYHI6bB
	2VinINPU0DN5Xxn37gMaTUkI5m2HDDW+k35Edx99YpZqYI2TDQFzsTbu0NttCBYFTlHKPTqzfCvow
	a+mLxdDOSCQHa6Q0aOKz+sb8UhWVb6D8Ftt8ScskJT36zU2ZfFGusA5pxVGY+RCyswhgM+fMXO0ng
	GGgZY7eH8Fatc4eO9wJxBteCvX+B0HSkONSCZOGfJAKP8lfBgKiXwpYCX1fSb6m7UME++sq7mq1wz
	rU4ATSuhO+qvi5eADEZv9EjZRx7pLX2Z96l7WZBsxwKnMTLUyAWa9Q/orED6+jducvsaWAt9id9Vh
	5WN64QAAXHlgIsW36pMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uploU-00000004f1B-4Bht;
	Sat, 23 Aug 2025 10:49:35 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upT47-00000002t3J-0UK6;
	Fri, 22 Aug 2025 14:48:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2C792A588E5;
	Fri, 22 Aug 2025 14:48:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8DFBC4CEED;
	Fri, 22 Aug 2025 14:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755874105;
	bh=LkKrp7CULRzpmB7Oo+nw2+h0gNYKA+9aLRXVU8vBOEI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nEyjKluOkgPROp9org1bWv32L7DJPVEJYdQ6Ysbpp2Eby0GVIzUqNasQ2XqCHzxgP
	 EqDJ3F2OSNWoxEeRrOKHK46REihwzbojKN6bQlhw3hJYmP6Jyi+j4ATwzTQl5dM5yx
	 Kh3lkC9RI1LKITFhDQIGsapQ8X5xe30RxswppV6d9FtDF3bZ/4KaM6r7ISJCiW99Ij
	 OOGgqdJnpwnvu1wHE9feHPL7Nm5qRwACsW33jbcNjGWNC3neAZFsCJyThMq2pDb03g
	 7h4sqO7ipnzbPCAW9OWM5+uxpWG/Lwhbg2EcT0zFErkzhXfgo8YtLuvN1JTWjLjB+h
	 PfM+3grNyiFqw==
Date: Fri, 22 Aug 2025 09:48:25 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Robert Foss <rfoss@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	David Airlie <airlied@gmail.com>, dri-devel@lists.freedesktop.org,
	Simona Vetter <simona@ffwll.ch>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Arnaud Vrac <avrac@freebox.fr>, devicetree@vger.kernel.org,
	Pierre-Hugues Husson <phhusson@freebox.fr>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Maxime Ripard <mripard@kernel.org>,
	"H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: display: ti,tdp158: Add missing reg
 constraint
Message-ID: <175587410389.3790335.14225691250888377466.robh@kernel.org>
References: <20250820-dt-bindings-display-v2-0-91e2ccba3d4e@linaro.org>
 <20250820-dt-bindings-display-v2-2-91e2ccba3d4e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-dt-bindings-display-v2-2-91e2ccba3d4e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_074827_233453_AAF2F8EB 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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


On Wed, 20 Aug 2025 16:17:37 +0200, Krzysztof Kozlowski wrote:
> Device can be used over I2C bus, so it documents 'reg' property, however
> it misses to constrain it to actual I2C address.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
