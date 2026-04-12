Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D326E937E9
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Apr 2026 15:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLuyrShstypLfPnRHjODDZcM+Df3ajUP6/CUYbDZhGs=; b=nbQ7LbnonJhVwV
	RbNP0rW0KLjDU1CImPwp8tMQcdHyxS++KoMJgUT1VsMim6zY8ii6Q5w+57OVi/HWNiKHr2nNNtRpW
	LN+cVyHHPjMbRAFxLhTenP6Otc8nbOGK1pkiA/+QHzsqDdAKOF/zz8YOW9ap+Fz0YJI4+hd9f9q+h
	zNXBYaC4OMa7TGwrPYZydd5Wa6HmkHUhP5Q5rNMD+qDNEF93y2+PS9KwGzmCJvAzgK4+hAlxW+OnE
	DBmDh1/8VZke8QbclNntow82j92i+01yLwg/3VK7ydxqcNLhyDGvEsi9HjRiOh6KqblcdG4r2nsKb
	Le54V70gQDhYqvoLZeIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBxDK-0000000ESin-13qa;
	Sun, 12 Apr 2026 15:59:10 +0000
Received: from 188.29.72.98.threembb.co.uk ([188.29.72.98] helo=BOB1.lan)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBxDI-0000000ESiS-31If
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Apr 2026 15:59:09 +0000
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by BOB1.lan (Postfix) with ESMTP id BE188100C0E;
	Sun, 12 Apr 2026 16:52:09 +0100 (BST)
MIME-Version: 1.0
Subject: Re: [PATCH v3 00/13] drm: bridge: dw_hdmi: Misc enable/disable,
 CEC and EDID cleanup
From: Bob McChesney <bob@electricworry.net>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Christian Hewitt <christianshewitt@gmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>, dri-devel@lists.freedesktop.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260403185303.80748-1-jonas@kwiboo.se>
References: <20260403185303.80748-1-jonas@kwiboo.se>
Date: Sun, 12 Apr 2026 16:52:06 +0100
Message-Id: <177600912694.3120199.15225713967699569703.b4-review@b4>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776009129; l=663;
 i=bob@electricworry.net; s=20260412; h=from:subject:message-id;
 bh=2Owhh8ay/Hkw+E9qnB8mKWylDEfKMe4CFm7D3qZvZEk=;
 b=fxZ0sQM1T8Ch7QrbBSQ/8IKfTW6Jwj4F1HRiiyta18G9aqDm3TRSBXDKWUuZFlHrE9tyj6zzz
 fmUls/DWENUBXcLaSrdHAGBDr0ixp4tnciXFm1zIY+jgWTV9sI3hq1g
X-Developer-Key: i=bob@electricworry.net; a=ed25519;
 pk=CGakLk53ReX5zp/z2XgijzXWf7g5UEJMrdaP8LNZltE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260412_085908_976456_9525535A 
X-CRM114-Status: UNSURE (   7.70  )
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
