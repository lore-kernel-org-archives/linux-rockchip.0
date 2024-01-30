Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C4E1C47DA9
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jan 2024 19:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHEvBXyGQzXATWjuv6N9u070j41sjn0jCFTwZe6jCP4=; b=gS1xtdCOOUJa75
	PK/alOzUxFFRp3VTSMZa9UeJj3puvitU6K5mXqncjNVaU7QoIIB7JbSTV5iHKPQAHOexSDCVqVgpD
	/tpwKJP7GNNc5fqLgYvonhj/oft4wAlyGhY7d1kdPIXN3gs/NMCF4xMhBh5TmCIIFlZ1wjNXFWpxk
	mgbGJn1y0bx4gy9mDGm1xLHTo/2PpMKknzAkH2VYiA5PyBELyEcHbKkFQ/kb7s+8lY5+I0uLC4hB2
	+NzrYHukx30Tm8JkRf7sMZTyH5pntufMm/w2hV3YEClzqMV1S5QBOlo/hdNuIZfnvhxcwjE5DWXbo
	4i+hnxrjbTvuHuT+Hmzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUtuM-00000000M3l-16Ai;
	Tue, 30 Jan 2024 19:36:34 +0000
Received: from [2a01:4f8:1c1c:934f::1] (helo=mecka.net)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUtuH-00000000LzA-3jKz;
	Tue, 30 Jan 2024 19:36:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1706643384; bh=BEEx4gwRs1iKnUvPL+DNQPwugqIAQBhuDJjeH0AXavw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XkCZL0T1Ic9+FBUE62JW+/ktECjWhYSnNULt00KRgvzUoIrXAcpADfmW2G9+W4Srk
	 4D3l9Xu95fkdHbhQNl/DxRUEvwEMwedKXEY4vQkGlPXcdHsaJYxjLi6wH0BRmNqWuL
	 7/nJmkipBcqeQyB6Zv2F+xyk3h1i9LrS3ndskK580O5zoqJx8D+OMzvtJqVkbBDiRr
	 M/4Km9TP6Rqy4rjBQqTonDiFps3H1vfIE1qzpLTBjQrQ540UtL0qNpSkwwUjJmdSYf
	 gU1qrmdmuT7YeK8Cr8mjU1b/KSnNOV4hRlSAzG3eZ1kGPymFmLwcYLjPPljMTkKoJu
	 +bi7WjpjCrcrw==
Received: from mecka.net (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id 8F8BC3C95A9;
	Tue, 30 Jan 2024 20:36:23 +0100 (CET)
Date: Tue, 30 Jan 2024 20:36:22 +0100
From: Manuel Traut <manut@mecka.net>
To: Dang Huynh <danct12@riseup.net>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	Mark Yao <markyao0591@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Segfault <awarnecke002@hotmail.com>,
	Arnaud Ferraris <aferraris@debian.org>, Ondrej Jirman <megi@xff.cz>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 0/4] arm64: rockchip: Pine64 PineTab2 support
Message-ID: <ZblPtrW7suT3RRXc@mecka.net>
References: <20240127-pinetab2-v4-0-37aab1c39194@mecka.net>
 <6035442.lOV4Wx5bFT@melttower>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6035442.lOV4Wx5bFT@melttower>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_113630_572707_64F0B487 
X-CRM114-Status: GOOD (  12.02  )
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

Hi Dang,

On Sat, Jan 27, 2024 at 06:35:50PM +0700, Dang Huynh wrote:
> Hi Manuel,
> 
> Since the BOE patches have been accepted to next, you do not need to include 
> it in this patch series.

sorry, I thought patches to LKML shall be against Linux master since the
patches are still only in drm-next I considered to keep them in the queue.

Regards
Manuel

> On Saturday, January 27, 2024 4:48:41 PM +07 Manuel Traut wrote:
> > - BOE TH101MB31IG002 LCD Panel:
> >   * Picked patches from https://anongit.freedesktop.org/git/drm/drm-misc.git
> > (drm-misc-next)
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
