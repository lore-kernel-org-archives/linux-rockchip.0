Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80301E937EA
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Apr 2026 16:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLuyrShstypLfPnRHjODDZcM+Df3ajUP6/CUYbDZhGs=; b=LdfEdHoIgLI2ox
	K8wLdS846lw2ixPUT6H9ls6wQm/va98e8xhZS7bkki0j1Fc2DsfTUbf0njB+mXJYAl7qvqKSg/wnr
	OYoj4R7gF2XxW7x88M1+7AmtfZRdIyhGhUOMBWLf1LQ0tY+oXda9FRHHI9IB+bzFxOW+3ET6LRqBq
	T6G+g+publoC3THF4G53Ppkm6rRJHXraIUpvo28i5tilIb2YIlwdCijhWwFLmE3dtEG90cMYOKl+H
	yeH1G3nqyhUcuH8QbJ1UG11mtMgIbVEexeEDn9p3JJfPk3lwgo8LUFvhZkU5a2rI25swtIQT4Od51
	KYXGoH7js+U6J0vg+YxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBxnZ-0000000EUkj-3lCm;
	Sun, 12 Apr 2026 16:36:37 +0000
Received: from d218-10.smtp-out.eu-west-2.amazonses.com ([23.249.218.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBxnW-0000000EUkA-1VX8
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Apr 2026 16:36:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=xxcsvipqs5hvfd7f74n2i5bueyncqkjk; d=electricworry.net;
	t=1776011790;
	h=MIME-Version:Content-Type:Content-Transfer-Encoding:Subject:From:To:Cc:In-Reply-To:References:Date:Message-Id;
	bh=2Owhh8ay/Hkw+E9qnB8mKWylDEfKMe4CFm7D3qZvZEk=;
	b=eSbxZMgmvPACi/iZ4M6WoLQkSdDBCdcdDaTX6IuhZy9e/2PEA6m8GyxNJv7NpwL2
	Vrp04OYazCKK6uWyLlE1tklfDkH3HNO1UbH4gpUR0RbtRM991kvPvf4HctwWKHEoRJy
	HeQwsQCyDD+aKhWn48/6LyhN5k9PGAYrsO3EfixVQNuL/w+Rb1mBDwM0r0wDLm65Wl1
	xFqA5d3PtLRDR3Cr4WMK8CL50cufsQKlX48RFYx5eh+fK73YGoRv/CAVucd1fcFavx7
	6liipXY8Z6zrppkn5mLmyD5e9VtFGIv2GKqBlAcUq1timW9W0FuD3BmqRNgiu0T8qEb
	O4T7WoqrnA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=smjs5bczbyxi6u2ua6eveuxqal7joyry; d=amazonses.com; t=1776011790;
	h=MIME-Version:Content-Type:Content-Transfer-Encoding:Subject:From:To:Cc:In-Reply-To:References:Date:Message-Id:Feedback-ID;
	bh=2Owhh8ay/Hkw+E9qnB8mKWylDEfKMe4CFm7D3qZvZEk=;
	b=p4yBrzhC0XK9xgqDU65wcuMAmut7mRU8M8XYJYys5shtaoYD2J36sxA5xOMXuy7V
	ogdeWsk8QzmWftUPWHv3dBJJHeNK5NPf3H5pdFe/S+F/KH1ZwdFtllc3P+WVyQ1mjs1
	58Vj1Eq6RQXTAsC9YU9EaPrdduOwUrHJ7HiaSOxA=
MIME-Version: 1.0
Subject: Re: [PATCH v3 00/13] drm: bridge: dw_hdmi: Misc enable/disable,
 CEC and EDID cleanup
From: Bob McChesney <bob@electricworry.net>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Christian Hewitt <christianshewitt@gmail.com>, 
	Diederik de Haas <diederik@cknow-tech.com>, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
In-Reply-To: <20260403185303.80748-1-jonas@kwiboo.se>
References: <20260403185303.80748-1-jonas@kwiboo.se>
Date: Sun, 12 Apr 2026 16:36:30 +0000
Message-ID: <010b019d828d48d5-7e91ae13-5255-482b-9ab9-13ba7c658d5a-000000@eu-west-2.amazonses.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776011787; l=663;
 i=bob@electricworry.net; s=20260412; h=from:subject:message-id;
 bh=2Owhh8ay/Hkw+E9qnB8mKWylDEfKMe4CFm7D3qZvZEk=;
 b=pbhBrpuvZhNHk8mohJtNg8gIXGkmbH2kTjGWQh+JeFKVyiBJLFoKcobP/qY9jrbDm4ItxfDpZ
 juLaegbKcldAYaHKSg5wiA2ML7v1Rkkur1DdY9v0COKHvXP+RAeFPqL
X-Developer-Key: i=bob@electricworry.net; a=ed25519;
 pk=CGakLk53ReX5zp/z2XgijzXWf7g5UEJMrdaP8LNZltE=
Feedback-ID: ::1.eu-west-2.gfFyncE+PRqcG/qebM3Lg+wfopUKzk5aGDEiDVENH+o=:AmazonSES
X-SES-Outgoing: 2026.04.12-23.249.218.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260412_093634_617393_21514DC3 
X-CRM114-Status: UNSURE (   7.04  )
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

On Fri, 03 Apr 2026 18:52:46 +0000, Jonas Karlman <jonas@kwiboo.se> wrote:
> drm: bridge: dw_hdmi: Misc enable/disable, CEC and EDID cleanup
> 
> This is a revival of an old dw-hdmi series and is the first series part
> of a new effort to upstream old LibreELEC HDMI 2.0 patches for Rockchip
> RK33xx devices.
> 
> This series ensure poweron/poweroff and CEC phys addr invalidation is
> happening under drm mode_config mutex lock, and also ensure EDID is
> updated after a HPD low voltage pulse by changing to debounce hotplug
> processing.
> 
> [...]

Tested-by: Bob McChesney <bob@electricworry.net>

-- 
Bob McChesney <bob@electricworry.net>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
