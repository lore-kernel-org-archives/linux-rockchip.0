Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56090C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jan 2022 07:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKnXoiaJKkWmJF2IkinqjLAbTBqJu6JvP1JTzxLR/ts=; b=lihpfMrfO3z8C9
	jNv3wGXZMLwbLL/Hi+wsr0nSDHWN+MARtlSq6wdQLhQqI1KLsoo/7C7MKV6NyTvMqbRjgY/iIh1Vi
	p/EeJYxQHQOo518yvctv7SXiy5bu/KbUY+xRnOt2NWDh2a+sW4Hm7LZqqjIo/r2oFdyh/JHo7hg6Q
	hhcx15FmEiV3WsrNUZlZ2X0G2iZ0FEzXkm0j7Dv/Q3FqfDNTioiDqY108/q0JQJd5MsXeWafkttC6
	O4l37ZdmB2xMHn6oTJJy6p/ibmQ10a7yDRo3tT9H4vTAlJ8Y0c2/+Jy9vl5O6Wef9hQnCDNjWbeHQ
	KNJcAaGVvkeeR4TmsfjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9MhP-00DxXx-4C; Mon, 17 Jan 2022 07:45:07 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9MhA-00DxSg-NW
 for linux-rockchip@lists.infradead.org; Mon, 17 Jan 2022 07:44:54 +0000
Received: by mail-lf1-x130.google.com with SMTP id x22so54202620lfd.10
 for <linux-rockchip@lists.infradead.org>; Sun, 16 Jan 2022 23:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6QF777/sKyHmB6kHdk8pAKes+SVv1gG+ocuwj9sgpRQ=;
 b=KOLLcV/F7XHmTeu4hItqu7+3uEtWlS6N+dsCP614S1MOSzmMSxoYjGpur5i1Y0f5of
 6R0ZuL1Gz5Mg1jiAkXKtDUZCFLosWZiLjo9xhfp6ovoAfvs4Cl/WPuvWvhJW5K/UOhW4
 ++Fvm3jtJK8eWY40Gfmu6WzYuye6hLY8yTocY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6QF777/sKyHmB6kHdk8pAKes+SVv1gG+ocuwj9sgpRQ=;
 b=5gC1iMg4HuewpLFRQJjioBjJWZdZviiaEKAs78KSJ2AoMqpWzC/AjVXpqxjqM1t9Ku
 npxaVcM6cEoJwBd4KiFJC7skos/GEAQkFfn94V5xGhR3f0XJLSnAR74wXLj8dfMYZJzU
 Rn/Wl0pvsz3hYUiFNIjOCzk0ugONMflFrGOMCpIfh/zI4ZETtfo27OACStFIIS6ZXJlO
 szt8Vsp5IvsMt9xNO4AQur3LfCoPGhyQzH/uhlxBPxNJBxszfo9h2hP4F3xhGjZYO3XC
 3OYBMBc7BkIcNOIV6ahr2TNnZvCGVir3Qt2xNUkxOrYLW5JEO/pJQBodi+p8mxmLAjOC
 8EdQ==
X-Gm-Message-State: AOAM533DWD+Rw9xXndlR5SBGpzdtOM2ZoM7zRk+PCnITEoff6UP+8PiV
 TadZE5eVlJizPalNOpcXeqMd+qcVhYX+5fR30+a6mw==
X-Google-Smtp-Source: ABdhPJy2y5w2Mgw1aXOAzh5xS6yKz737iKCVZw+kmTNKVPku08/RsSvDn73bBL7Kehh87ZNxsL8F9iFaH25KR8AyLpk=
X-Received: by 2002:a2e:b8d5:: with SMTP id s21mr3530683ljp.201.1642405488740; 
 Sun, 16 Jan 2022 23:44:48 -0800 (PST)
MIME-Version: 1.0
References: <20220114230209.4091727-1-briannorris@chromium.org>
 <20220114150129.v2.1.I46f64b00508d9dff34abe1c3e8d2defdab4ea1e5@changeid>
In-Reply-To: <20220114150129.v2.1.I46f64b00508d9dff34abe1c3e8d2defdab4ea1e5@changeid>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 17 Jan 2022 15:44:37 +0800
Message-ID: <CAGXv+5H0-dM28YQj_orS1_14NLcJve8VtO6oLcBiRpJFjaf5KA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: rockchip: Switch RK3399-Gru DP to
 SPDIF output
To: Brian Norris <briannorris@chromium.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-rockchip@lists.infradead.org, 
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org, 
 dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>, 
 Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org, 
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220116_234452_784919_8D04A2B5 
X-CRM114-Status: GOOD (  11.79  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Sat, Jan 15, 2022 at 7:03 AM Brian Norris <briannorris@chromium.org> wrote:
>
> Commit b18c6c3c7768 ("ASoC: rockchip: cdn-dp sound output use spdif")
> switched the platform to SPDIF, but we didn't fix up the device tree.
>
> Drop the pinctrl settings, because the 'spdif_bus' pins are either:
>  * unused (on kevin, bob), so the settings is ~harmless
>  * used by a different function (on scarlet), which causes probe
>    failures (!!)

I suppose that means the default pinctrl should be dropped? Or maybe this
use case is the outlier. Up to Heiko?

> Fixes: b18c6c3c7768 ("ASoC: rockchip: cdn-dp sound output use spdif")
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
