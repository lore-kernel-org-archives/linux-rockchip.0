Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9BCCC98318
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 04:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XvxNBuB9gZLznEtjEh2dUd5VZezzfhaUiLR7DWvzyd0=; b=lVwm+QjMytVPCp
	mE85NKDVtTbxaMusq1Nb3UN8OubEXnvOshiro9llhOAn2lnj6qKGPixFeDPze+SN98xr5unVSiPyd
	cwlGce0hb5pTxkeicmPU77fKZShylYuOC16lHOF20RNF6EKdF1eopczdAF6Pyz0XQA31or6Emwtaq
	80xPhl59Lu640A7aLKcEUu9oC5pjCCvypiTcpF1N3X7Gg8JDk7EY+bz/MHWACcjcG0ETW76VMlWUb
	w3F/Vx8S+taDJvF8GlDuOPHYWcpRmx6UN3p8ILCxX4RNErmO86i6nVUVA67Qx1K+2vhCyxLOY+h2t
	L9dmFFo9rr17yupOHzdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJkH-0000000EwQ0-3PWM;
	Sat, 26 Sep 2026 04:10:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJkG-0000000EwP7-0a9V;
	Sat, 26 Sep 2026 04:10:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 420BE60136;
	Sat, 26 Sep 2026 04:10:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43FC21F000FF;
	Sat, 26 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790395839;
	bh=zHnANxNG9dMQBtJ/mshlG1MygeNIbtgRmVltQ972YrI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bb1X/hiOxHw1uvCg6ghPzXAKXXqXViNCBG+FEqhewcJhb74QmTQEU0YNRa8RgV1ah
	 IUVtjL/neZNwFvZPDuHoPd3ZL+aMBpiYv+fFK61nn/gdw7pZOfsyqT6wmA4mI0p8dN
	 e7jNUQMd9PzAohJqClAiCqolfhBouqKktYCDSwmo6j3NaVpVZfh+j3fFyXI8NsB7+B
	 bxFdaWD+j4sitQwHumZ7JigiKJP+TXMlVs1J1Ci5hLC8EpI9p41MSNG8g94nyoF8VD
	 uGx1V/l0TLwPfJjImOMTBG2peB6CbjuDoL1C/CorOpWEkbqqo7AsA4ew6R1r0xaZbL
	 9JWGpmMVI/c9A==
Date: Sat, 26 Sep 2026 06:10:19 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Alexey Charkov <alchark@flipper.net>, Igor Paunovic <royalnet026@gmail.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v15 14/16] phy: rockchip: usbdp: Use FIELD_PREP_WM16_CONST
Message-ID: <d3smhq5cy4tqigiwwnyc2o2phgqzfthlq3og2642s7axdt25v4@oawozf76va37>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-14-80e2c11d1ce8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-14-80e2c11d1ce8@collabora.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDM6NTA6MDFQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gQ2xlYW51cCBjb2RlIGJ5IHJlcGxhY2luZyBvcGVuLWNvZGVkIHZlcnNpb24g
b2YgRklFTERfUFJFUF9XTTE2X0NPTlNUCj4gd2l0aCB0aGUgZXhpc3RpbmcgaGVscGVyIG1hY3Jv
Lgo+IAo+IFJldmlld2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJv
Lm9yZz4KPiBUZXN0ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4g
IyBPcmFuZ2UgUGkgNSBQbHVzCj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNl
YmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBT
YWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFu
aQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7g
r40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
