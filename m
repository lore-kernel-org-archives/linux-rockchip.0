Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E19DD64079
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 19:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/HtdAyLCB7VAisHY3QdCicLscNIXgMzM/fiM36BpKc=; b=oMyTpNZ92+Sk2h
	rKU2ktqTMOvxv5AExiwAtgVA2Z1J+r1NJAFxUreiOVDSzz2rYwXJwMllloBQ074v0colAk4Ez96Tc
	x8U/t1XSe/9xYumNJzZYy95ZXmvz0aqglhQVSctTMVHaWggTfX0V6TQUv2giYrLOvO4DgwRNc6GpQ
	p0hAJ5l4+mowQ1u4QATs0cqDbifYy+oHY1oSPfQtCll8cZ1g42EFOU4QgeEtvn76qJ/N+ie/yX4eU
	J24HRfvmGyu0VuYN/K/GaI9fFvdmrJu1XAHaGCPuqwazz4p7oh7eYnWpQSeDDCxxbzoYyAHO6EK09
	EnQ4bf5XuFvYVibO0cAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9UEc-0000000BgME-1Pm3;
	Fri, 08 Nov 2024 19:01:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9U9v-0000000Bfbm-1xce;
	Fri, 08 Nov 2024 18:56:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5ZyQm5LHQ7qaqkJe4rbzzejbyBxQj/F4IZoyO1Km+6Y=; b=ug4AraFizxch/gjn7NGcYmmfn6
	DAFUoHbNK05VP75BwTUGGyzf2EMoNndnP8sbJiEPNjDtVavUfiQqUzfn3hMAFNwB9olI9l2KEq7C4
	vKoLl+a/ICGem4ZG5nnpqkX790t86ndfUiQQ/LPVJvaB+bsqgsCrG40KbLNd4zQqmFhgGzxn4rRN+
	ksvnQeXygwP2VKxfeDMtr7Y9pxRNCly+PkQvHudTqZvtO8zhnOpCM20gqgUnX3a1dcKDqdu8mBemZ
	OdCU3CHBbnTrbh1Ie36SzRh78ckJ5zwatlEnsx9XL2vj6mwqpgsvvsB53WdeyROwmNG75AU5bvlEQ
	VeOxX+gQ==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t9U9a-0008D2-Ds; Fri, 08 Nov 2024 19:56:18 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko.stuebner@cherry.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Alexey Charkov <alchark@gmail.com>,
 Jianfeng Liu <liujianfeng1994@gmail.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v3 0/3] drm: rockchip: vop2: Add VP clock resets support
Date: Fri, 08 Nov 2024 19:56:17 +0100
Message-ID: <1808477.VLH7GnMWUR@diego>
In-Reply-To: <20241108185212.198603-1-detlev.casanova@collabora.com>
References: <20241108185212.198603-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_105639_515140_7F987931 
X-CRM114-Status: GOOD (  11.08  )
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

Hi Detlev,

Am Freitag, 8. November 2024, 19:50:38 CET schrieb Detlev Casanova:
> Detlev Casanova (3):
>   vop2: Add clock resets support
>   arm64: dts: rockchip: Add VOP clock resets for rk3588s
>   dt-bindings: display: vop2: Add VP clock resets

while it isn't that important for this short series, please try to
order things like:
- dt-binding-change
- driver implementing that binding
- dts-file change

because generally, dt-binding + driver changes go through one tree
while the dts-file changes go through another.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
