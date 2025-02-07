Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0AD2C02196
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Feb 2025 10:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4S++67EFAJ2lI5bNCNmybIlo3YaBjZ485A6bwwROMBE=; b=SNORogdw61phwp
	3BqJaLTHuubajbPqRCf5MwQLZJoNo8cuUtdN9lNjpGgpxD9sCUuoI4M9fIZp2PfryZWG9W6y4qgYl
	wnxgf8cAeP0uHPSdZvhzQaNzgDSTFzSw9AV3KoNakUSGo6VJNWq/8WZgW56FY1+YvYD7QWAkebXrT
	GamUvtHpUMAiHuo+ni3wYD0UHuQjaHvT6aW8EErEbSiiSI+74kgjdu7bvT/myXL0erUoY12ldHI7A
	+X7n8Xy26GYfDNqe7K8a+v0EYwKpC9/eL2BgKXgZb9T/sdPyJWTdK5LaqEQUQbtKrMwtnwXEeAUH4
	jd0nfD11VmaIqzmRCdcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgLYh-00000009C79-3OhC;
	Fri, 07 Feb 2025 10:26:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgLXJ-00000009Btx-1lKT;
	Fri, 07 Feb 2025 10:24:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=dG6q0eUvla25R2FN1Jt5744C+rNB8H4vL7BzPhRVw7I=; b=MQxr0Ge02yi1anyweNjp+NJip3
	3nVH1uovjLmlZ/gZe3oJ2HvpBY1jQG3NNHL6LLCrsaF23RUIraLIvQQXPtioryDs6/fK3MOzX7neN
	FOSPOVYmbdDfavI867F2i56PdPt5vkrrewQnsAbquB5+BC4HQhXHLoIBh1/j5C7gcZyhTz1VoExNx
	6fh6JTajV8FU6e0CBq7D+NDZWxvx4kIcOp4lFG1LkMWD1d1h4KuDLHU49vW0WtJHOohA1S4SX82Mz
	I0AdlAS4/PHvZnuIiegSHoYyenVQuzdpeN+jtu2tMJymaWI+eC+diWxdVhoYjCL9uLHwFim3dxFs8
	vrCqjECQ==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tgLWX-0004HP-Ru; Fri, 07 Feb 2025 11:23:49 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v5 2/3] arm64: dts: rockchip: Add HDMI0 audio output for rk3588
 SoC
Date: Fri, 07 Feb 2025 11:23:48 +0100
Message-ID: <11286959.nUPlyArG6x@diego>
In-Reply-To: <2781606.mvXUDI8C0e@earth>
References: <20250203171925.126309-1-detlev.casanova@collabora.com>
 <bfe9cb98-12ba-484c-95af-e5842edaab76@cherry.de> <2781606.mvXUDI8C0e@earth>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_022437_478108_1144080A 
X-CRM114-Status: GOOD (  19.18  )
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
Cc: Algea Cao <algea.cao@rock-chips.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, Niklas Cassel <cassel@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>, FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, Jianfeng Liu <liujianfeng1994@gmail.com>, Alexey Charkov <alchark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Detlev,

Am Donnerstag, 6. Februar 2025, 18:17:51 MEZ schrieb Detlev Casanova:
> On Tuesday, 4 February 2025 05:14:37 EST Quentin Schulz wrote:
> > This is an address/bus-less device, so I believe it needs to be put
> > among other address/bus-less devices, which for Rockchip SoCs is at the
> > top of the DT? c.f.
> > https://www.kernel.org/doc/html/latest/devicetree/bindings/dts-coding-style.
> > html
> > 
> > **I** would put it between the firmware and the pmu-a55 nodes.
> 
> I wasn't sure about this. It makes sense to move it with address-less devices, 
> but the rk3399 device tree has it above the hdmi node, so I wanted to stay 
> consistent with that.

the general "rule" is to
- sort by address (the part after the @)
- if that's not present, alphabetically by node-name (not phandle)
  and have address-less things more to the top
- &phandle {} references are sorted alphabetically

And yes in the past there were more creative variants ... like keeping
hdmi-stuff together sounds really great [also to me in the past ;-) ],
but then you end up with a huge list of exceptions.  [0]

So just following the generic sorting thing causes way less confusion,
hence we go that way for new stuff.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
