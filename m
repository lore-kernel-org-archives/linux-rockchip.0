Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B892C10F1B
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 12:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l50iEycslfMSqNEJwYpAr3Z0+PZ4bRDTumm5akbAfIM=; b=L/hOf8277TZs0m
	EAe4k9r/T3nkBENqUCIQS1nS0Mk8eYZCtk1py/Cw9vBDXdjK3xc3U5T0HDf7pcX+ERKTWMEztnKnn
	TjBx8OTN8nZpkwsc7EdrzZYCdN+ZQVgbL1m6RpvPvLSadErG3aB5+AnZN3jgANlhgcAnSoCvnw4JX
	rzyCGMlkqYqmyAqR6Xlq2jpVThq6PXvr/+iSSjObfzjCpHJH/+hjSztJwugAgQYuQGTPRm48nAwYS
	Olhr388FzLjwuhobjJLNGkKN4hFpcDAtFZQsKEX8EiJ8atpPcq7PpKdY5RnRz2oc+WHd6qizBcFWe
	eZvBL1hYQKmN7JFNHPgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7FN0-00DD78-AB; Mon, 19 Dec 2022 12:35:50 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7FMU-00DCnX-8Y
	for linux-rockchip@lists.infradead.org; Mon, 19 Dec 2022 12:35:22 +0000
Received: by mail-ej1-x62e.google.com with SMTP id fc4so21020483ejc.12
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Dec 2022 04:35:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rCYG7t1izN/gOyqR3UaPefTWs3YwGVtAE/HZuYn9Rfc=;
        b=ZKtkG+FX5U20S1M6EMAO9s5DcYzxSPb3NQCBOLLNZKUq1ijR3Q2uoYri0UIzTgvgB0
         BuFxphDmBbwcllU3Gq/LcNYSqtuoFmVbWfxHoWpZbb485QqVZreK8NBdka6pJ9kqxEfi
         b6g2VtgxtP/YluAJZKnBbJAR0WCcpqKp7HjTA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rCYG7t1izN/gOyqR3UaPefTWs3YwGVtAE/HZuYn9Rfc=;
        b=aTqs81ZKd/M7si3TQ6vx/ve71G/xcUuvkvsOfyz37ny0BMAx7pzeptlOraPRc4jzHs
         e0YAIKD/kb2+hd9aCdAqnqO9iqdNtEynIW1oY6yy9uFxLXC+0cfGQT2ljh+mEjJrMNSK
         chRgp55tHzKF76Rh3gyK5lb7hC1+VEZfaAsSXqCADbA+/rpf1CwJE4h+F+4Af9MBQ3wB
         CjoU+QlaCmnuMiedw0rNbOvrWF0hqtZnl1Ys15gHoH6nChDxRPOVkL4O/NcStlKNsDaQ
         OWjYcE+VMnfaL+JZ4PCgDn0sUOvreI47qPhnLTUNG0PJsCdkRTHDILFq+p0HXK6ADKf9
         vjtg==
X-Gm-Message-State: ANoB5pl0BB2kAgzuajvDm+gyBXMjKbprSFicPdLwY6u1qfcfxeJ4zySv
	oaVyQOd3ny5szpTv6vHs37Ps5xVHrk1IjPndMiq4cA==
X-Google-Smtp-Source: AA0mqf7MRvG+Qj2JseT+Qj2IY04GU3ehuu2j+6yoRs/z0TWbsGNO6utzwcWxYija4unhyYJGQ57ZKqf8K83fjcrrTnQ=
X-Received: by 2002:a17:906:8383:b0:7c1:19ea:dda with SMTP id
 p3-20020a170906838300b007c119ea0ddamr8979778ejx.31.1671453314287; Mon, 19 Dec
 2022 04:35:14 -0800 (PST)
MIME-Version: 1.0
References: <20221002064540.2500257-1-michael@amarulasolutions.com>
In-Reply-To: <20221002064540.2500257-1-michael@amarulasolutions.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Mon, 19 Dec 2022 13:35:02 +0100
Message-ID: <CAOf5uw=2zjki8DEkgvDTKrj6V=FS44Z1WN3AvFZvzuN-MU_y4Q@mail.gmail.com>
Subject: Re: [RFC PATCH 0/4] Add RGB ttl connection on rockchip phy
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-amarula@amarulasolutions.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_043518_386565_E1AA07DC 
X-CRM114-Status: GOOD (  19.72  )
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

Hi all

On Sun, Oct 2, 2022 at 8:45 AM Michael Trimarchi
<michael@amarulasolutions.com> wrote:
>
> The rockchip phy can be convigured in ttl mode. The phy is shared
> between lvds, dsi, ttl. The configuration that now I'm able to support
> has the display output on some set of pins on standard vop output
> and a set of pins using the ttl phy. The solution is not clean as I
> would like to have because some register that are used to enable
> the TTL, are in the same register area of the dsi controller.
> In order to test I must add the following
>
> dsi_dphy: phy@ff2e0000 {
>
>         reg = <0x0 0xff2e0000 0x0 0x10000>,
>                 <0x0 0xff450000 0x0 0x10000>;
>         ...
> }
>
> The problem here is the second region I have added is the same of
> dsi logic. Only one register is needed by the the phy driver
>

Is there anyone who has time to review it?

Michael

> Michael Trimarchi (4):
>   phy: add PHY_MODE_TTL
>   phy: rockchip: Add inno_is_valid_phy_mode
>   phy: rockchip: Implement TTY phy mode
>   drm/rockchip: rgb: Add dphy connection to rgb output
>
>  drivers/gpu/drm/rockchip/rockchip_rgb.c       | 18 +++++
>  .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 72 +++++++++++++++++++
>  include/linux/phy/phy.h                       |  3 +-
>  3 files changed, 92 insertions(+), 1 deletion(-)
>
> --
> 2.34.1
>


-- 
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
