Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D042CD98D4
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 09:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vpHGgxVB6vMtj3FWDcs28B8/Pvnbfr0bFGyPyodrUbo=; b=xMs7f4qyl6xiHF
	GYlZToOqSxs2PRs8fWW9c9h56umsXV3SbRiNvOcUw2XVfSARmy5SfCv6urpXTVNsLbelVPgRh2hKX
	N8W6XddmTnnhBRD0mO7Wgz9Af811za8JylIRCYF5K9HQ77dvyCSWBFdoItp/QXY+4vkGvjOgE572A
	gr5OojpHNPBa9VnX33Z9B3waaN5ttIE/glFSp+ZiK/MJ1q5vhs5PWqxlzLYrjrdoqzQuPwjGjSpLn
	hQMjUP75J3o2+o30c4QSpb2n6YwkhJv5o7TWTLQ0KbPRO2r7WZfkmnX/MUdZAHZGvfgT2qQB++gbo
	QMY1ToCbo97SGD/DO4WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXc27-000000099yb-2X0y;
	Thu, 11 Jun 2026 09:49:07 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXc26-000000099xJ-0IXG;
	Thu, 11 Jun 2026 09:49:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5031A600B0;
	Thu, 11 Jun 2026 09:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E64D1F00893;
	Thu, 11 Jun 2026 09:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781171345;
	bh=PaXoJASViySO8hQHnbvUHikzZfdUFXuii1sojc9l76Y=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=bKK0PNb8qMFF5wpH05aFy7gNeTmuLz8Qh2Vn8uE7IV5mJszGi0+fkR4phVOFV3heL
	 l0GIgNeOJSH1OCBDDOe6Eh1BqIjCGQkddosFvKxJARxVHDmJe8sFxtt40EZMko0H2D
	 0yX0GYC5MSGusLcHQR/1ElhKLPdvUTUkER7oVobqm0RczwFfrAi+SDvqS7ec6Pwv9A
	 A2+P4Ghhp9mAjgAvd9QsaPR1CNighXOr6rC9lTHsh/wiEWx743+/SIt1AoNO5Dqbmg
	 2OcJcLuvhjWb85wVG2O1YcbIQfxahdVpIzGJQsHhE/ss9uGubzKvn5kQVB9EuouNIs
	 h1Hh4CkoufSEQ==
Message-ID: <be56d8fe4fe3e7bd1c37b92c273c414d@kernel.org>
Date: Thu, 11 Jun 2026 09:49:02 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v7 01/30] drm/fb-helper: Remove unused local variable in
 hotplug_event()
In-Reply-To: <20260602-dw-hdmi-qp-scramb-v7-1-445eb54ee1ed@collabora.com>
References: <20260602-dw-hdmi-qp-scramb-v7-1-445eb54ee1ed@collabora.com>
Cc: dri-devel@lists.freedesktop.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, "Andrzej
 Hajda" <andrzej.hajda@intel.com>, "Andy Yan" <andy.yan@rock-chips.com>, "Daniel
 Stone" <daniels@collabora.com>, "Dave Stevenson" <dave.stevenson@raspberrypi.com>, "David
 Airlie" <airlied@gmail.com>, =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Jernej
 Skrabec" <jernej.skrabec@gmail.com>, "Jonas Karlman" <jonas@kwiboo.se>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Luca Ceresoli" <luca.ceresoli@bootlin.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 =?utf-8?b?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, "Neil Armstrong" <neil.armstrong@linaro.org>, "Raspberry
 Pi Kernel Maintenance" <kernel-list@raspberrypi.com>, "Robert Foss" <rfoss@kernel.org>, "Sandy
 Huang" <hjc@rock-chips.com>, "Simona Vetter" <simona@ffwll.ch>, "Thomas
 Zimmermann" <tzimmermann@suse.de>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 2 Jun 2026 01:44:01 +0300, Cristian Ciocaltea wrote:
> Remove the 'err' local variable in drm_fb_helper_hotplug_event() which
> only stores a return value that is never used beyond the immediate
> return statement.  This simplifies the code without behavior changes.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
