Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 610E5C48285
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 11:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lc1aStivEvywBjZVi6Cqi/tvmE3ZPGjWxo9aXpO/usI=; b=EAshIDdBYF4kjz
	eMvA30/dkGP0TuYGTOWYSSPcMH5S3wEebUdVBjpPy0vOsAoH8XxH8gXYLxTgb/NO5eJcijhKECcdh
	tpT8BObDSddJITT7as1nYD+lIAe2uVJ/FM+OFUrhOAEoQp/JEoptHO8ngiZ8orj4xK63oDPW0zbaf
	P9ybRnIuoS8egTAkz97nhYRFBMAanZTKUUJf8Dzh/qSlu24h28k2mpjxNr/58271AJwrc4SQJP4en
	NjtC6vcZPndr5+D8vF9+qMYPzA8fR9u2Qvk5M0RVA0TPRASgolxnee0RH9Qgo4NhWRV9JM1PNMn2N
	maVcQJskHyxP0fhtn2Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTgzG-00000007Qzg-0jfk;
	Sat, 27 Jan 2024 11:36:38 +0000
Received: from mx1.riseup.net ([198.252.153.129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTgzC-00000007Qyp-2hpA;
	Sat, 27 Jan 2024 11:36:36 +0000
Received: from fews01-sea.riseup.net (fews01-sea-pn.riseup.net [10.0.1.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx1.riseup.net (Postfix) with ESMTPS id 4TMXZk1VqjzDqFf;
	Sat, 27 Jan 2024 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1706355391; bh=DwL4arpEzXWec++owa4mghw2Jbc0zA8jYLA9Oc9uFco=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=B1cO5iICyRmgAJiJG9CFWboHg9qYa2wTt56r24VzWxhNPvQyh3G6YLKd8ycOTZGpA
	 EXvdnQ04gJc0HuOXoK3pubBBkT9OGygapXT3To0cQTnNFzoHpdiPKCJPmoLliKPNzP
	 lrBDkjOpiPoWx/gtI3RPuqzNLSla2qC0h6IxBquU=
X-Riseup-User-ID: DEFF9060E8EA107706D83953584E1815F0490610DEB87FA764577ACB26A6E682
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews01-sea.riseup.net (Postfix) with ESMTPSA id 4TMXZF6PvXzJp9g;
	Sat, 27 Jan 2024 11:36:05 +0000 (UTC)
From: Dang Huynh <danct12@riseup.net>
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>,
 Ondrej Jirman <megi@xff.cz>, Manuel Traut <manut@mecka.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 0/4] arm64: rockchip: Pine64 PineTab2 support
Date: Sat, 27 Jan 2024 18:35:50 +0700
Message-ID: <6035442.lOV4Wx5bFT@melttower>
In-Reply-To: <20240127-pinetab2-v4-0-37aab1c39194@mecka.net>
References: <20240127-pinetab2-v4-0-37aab1c39194@mecka.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_033634_778690_DEFCB883 
X-CRM114-Status: UNSURE (   7.84  )
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

Hi Manuel,

Since the BOE patches have been accepted to next, you do not need to include 
it in this patch series.

Best regards,
Dang

On Saturday, January 27, 2024 4:48:41 PM +07 Manuel Traut wrote:
> - BOE TH101MB31IG002 LCD Panel:
>   * Picked patches from https://anongit.freedesktop.org/git/drm/drm-misc.git
> (drm-misc-next)



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
