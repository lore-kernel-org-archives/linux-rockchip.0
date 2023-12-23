Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35BD4C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Dec 2023 11:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GMRIHLlnDkuIL69xAGPTUj6hZBUnYteSmekoPXHdDrw=; b=vzgAGwaa5H5/FU
	hVKIkyDisSqeIVSiQrFX3xp3IM+4F2MW9LmkH/5CbmsVnT2XBFfoy5xnNqsKYmm8Wk80G8Xb7qOHo
	qP3NnnfPKqL6L7Qs3DSWkrRqr23euLxSw9lq6GS2OPoZS24ji7fuMpmxFetfTMqjPmfhBqObfLIIX
	PsCk37oyh5X+HUNlpzQFliZKvGYubO9829Suhci2BiET+XjO5uoWwW5zO+g0e/+VTL8tgON0tSmtW
	SFgVvsDvsVv6EENhWzar+flGqdFPdT8KUZleiLQ4e/Ek3vSKoXtwpbhsQHJwT4pzdi+N7MaXECNLF
	GL68HwDhl6OQLsXxo97Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGzlF-007iQM-0l;
	Sat, 23 Dec 2023 11:01:41 +0000
Received: from mecka.net ([159.69.159.214])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGzlB-007iP6-1V;
	Sat, 23 Dec 2023 11:01:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1703329289; bh=ex4+oWyKh7OTgVh1dHGylYv3zVuujQIpgzSgPmA8rfY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NztlpVQN2fpI8YW67tmpz6vcufmN/GzaPIF2pkDoMhIUzWsfBxC20hKV5vY79Sg+A
	 wNaDBAyLtT0psl4Ko3SMyoZFSup0sI3f1X06A+SC/mckPbIV0rXwg/AQw/X6PQMOjh
	 dthFnRk8ICjm0b+CSv3lWJBifXoyOCurhpyHKlkIk3jJyYUDTYnOD6rsb0Vog4RbyL
	 8m7MUFnLoTYhxAcW7CVAJTkdhY1m/DhdzEgE0rlZRWZU3L/DCNF8oQHsCiAFRjSf1s
	 6mXh0ParwarIfgUQDv2k15Zmd7PoL2qC2tx3eil11gbTBCZYIXyehbHSMKqwwL4kdb
	 wpdW9WucK8wcg==
Received: from mecka.net (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id D9896371740;
	Sat, 23 Dec 2023 12:01:28 +0100 (CET)
Date: Sat, 23 Dec 2023 12:01:27 +0100
From: Manuel Traut <manut@mecka.net>
To: Diederik de Haas <didi.debian@cknow.org>
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
	Segfault <awarnecke002@hotmail.com>,
	Arnaud Ferraris <aferraris@debian.org>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/6] arm64: rockchip: Pine64 pinetab2 support
Message-ID: <ZYa-Bw61x-BPaGsi@mecka.net>
References: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
 <2631715.l0DajZZ3Y3@bagend>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2631715.l0DajZZ3Y3@bagend>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231223_030137_661684_EBB5A1AF 
X-CRM114-Status: UNSURE (   8.18  )
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

On Fri, Dec 22, 2023 at 05:51:41PM +0100, Diederik de Haas wrote:
> On Friday, 22 December 2023 12:05:40 CET Manuel Traut wrote:
> > [3]
> > https://salsa.debian.org/Mobian-team/devices/kernels/rockchip-linux/-/blob/
> > mobian-6.6/debian/patches/display/0018-drm-panel-add-BOE-TH101MB31IG002-28A-
> > driver.patch?ref_type=heads 
> > [4]
> > https://salsa.debian.org/Mobian-team/devices/kernels/rockchip-linux/-/blob/
> > mobian-6.6/debian/patches/device-tree/0134-arch-arm64-add-Pine64-PineTab2-de
> > vice-trees.patch?ref_type=heads
> 
> FWIW I believe the actual sources are from
> https://github.com/TuxThePenguin0/linux/commits/device/pine64-pinetab2_stable

Thanks for pointing this out, there are also some other relevant changes.
I will take care on this and Krzysztofs review and post a v2 later.

Thanks
Manuel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
