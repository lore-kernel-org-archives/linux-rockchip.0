Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B1C9FED9EA
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 16:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Subject:
	Message-Id:Date:Mime-Version:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vrRjVR7boAlTDa+/1NwlsZ+dJz8YgwQNqxj2E0mGcqY=; b=AVwkDoq8hSDTqi
	vE7iymItKt5szS0CnCjJHh1oZGhlGnYD5iBP9jAPAEpKwsSnUGpqFAl1q9UVPRXdIoKTjGCOOPrt3
	TBc0ihrX+SNpZWAhQessyMFT/gEt5C9YpyOJrZtcfv2+X9la95wdZrkL4i8ZOaMDQkEoYKotXT9iK
	CZ/txIXcdWXppBIRELHMJXJ7TnewmLVONO7HkjB7R1xAU7/1G9+G2ztn0o7bv5nujYDBZyTxYK9GB
	Kl6HqXiNoH80VjTUz6n1qn59nWyogyvLWjigx9FaWrJ5i1qHrAM3JrqEo8vik/m2zJSrmyq726uqV
	rrez/hvC0kTl8cJZr9uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2X5r-00000006np2-1c6R;
	Tue, 17 Mar 2026 16:16:31 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2X5n-00000006nnt-3G4u
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Mar 2026 16:16:29 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 7151E1A2E05;
	Tue, 17 Mar 2026 16:16:23 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 3F07A5FC9A;
	Tue, 17 Mar 2026 16:16:23 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 609F11045063F;
	Tue, 17 Mar 2026 17:16:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773764181; h=from:subject:date:message-id:to:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=s4qSyYHl1wcr5KNT4MVUGisOp5HFLKoqkr7jcvtKlyU=;
	b=nTJI506afqiFlLXgatgefe0YsP8Hc/2YEM1eHvyL5qUoe7OEtPw0Z3AB1SgLUJHO3HD/0Z
	Uxf6dbXXiz7nzI2Gb1UFgl8YO1KDVY6vddAl8eryJPENTSIQk6gqZVxjthPFbT22exYImF
	pGuhTyH7dpAFEgjzCSX90+icrsBQBFOeIG1NsCTdRGYG6wfuR8h4FI+cWs52mJwrNvRQgf
	cdxgTPJivgW2m4WV0tzvpOyTDI3niSyowPMJGEHNgnv4v0PBXk+C8zdkuRVwHWtyBY5Hp1
	dQam8tn6+OINwIcZbzf9nw+V+UOEBzzjffGO+CH9Cy7E2Fg5gq2X9SyZN1M1fg==
Mime-Version: 1.0
Date: Tue, 17 Mar 2026 17:16:11 +0100
Message-Id: <DH56X74P9GC9.1O123S92J60RG@bootlin.com>
Subject: Re: [PATCH v2] drm/bridge: dw-hdmi-qp: fix multi-channel audio
 output
To: "Christian Hewitt" <christianshewitt@gmail.com>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>, "Cristian Ciocaltea"
 <cristian.ciocaltea@collabora.com>, "Detlev Casanova"
 <detlev.casanova@collabora.com>, "Douglas Anderson"
 <dianders@chromium.org>, "Andy Yan" <andy.yan@rock-chips.com>, "Sugar
 Zhang" <sugar.zhang@rock-chips.com>, "Heiko Stuebner" <heiko@sntech.de>,
 <dri-devel@lists.freedesktop.org>, <linux-rockchip@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260228112822.4056354-1-christianshewitt@gmail.com>
In-Reply-To: <20260228112822.4056354-1-christianshewitt@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_091627_965578_8B4EF330 
X-CRM114-Status: UNSURE (   8.56  )
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

Hello Christian,

On Sat Feb 28, 2026 at 12:28 PM CET, Christian Hewitt wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
>
> Channel Allocation (PB4) and Level Shift Information (PB5) are
> configured with values from PB1 and PB2 due to the wrong offset
> being used. This results in missing audio channels or incorrect
> speaker placement when playing multi-channel audio.
>
> Use the correct offset to fix multi-channel audio output.
>
> Fixes: fd0141d1a8a2 ("drm/bridge: synopsys: Add audio support for dw-hdmi-qp")
> Reported-by: Christian Hewitt <christianshewitt@gmail.com>
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

While applying this patch to drm-mics-fixes, checkpatch complains:

  -:14: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report

You can send v3 with the link, or just reply with the link and I'll take
care of adding it to the commit message.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
