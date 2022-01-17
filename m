Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BD26C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jan 2022 07:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lAMf4oMeqL2x0pxwu52klPPrhHzODKIlmVEUo69d+Nc=; b=y2J3KvcUmBnncx
	jw3JKucUdM6wg8rAfh0eL852S08yzOhQOlUC8PqkAcWANOplV24x8+TzQ3LvidAU8ltbqMkbVzclC
	AO+uotdVxdzUJDtfe+AxeROZhE1gL6i77nBBmBlU82R5iZHVIdniF1u2lMeV6ebCXdW9TvD5F4Vp8
	8r0+An8+JBXVHkC+Gl3P+R4OfiTN84Q0owveJDX7UKLyBpEiAzVCdYZt/Rm8Z/K1/vs+lfNzR0kCr
	MUrHKVJtWh3CptknFnWws0PxJ6k4t9XNYhRm4McU1IL01La8TMKnGBCHyJtQdZGWoQFa6ALXkKZUt
	4WlZXnobeTSsZiuoyWXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9Mhu-00Dxlj-I8; Mon, 17 Jan 2022 07:45:38 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9Mhe-00DxeR-Kz
 for linux-rockchip@lists.infradead.org; Mon, 17 Jan 2022 07:45:23 +0000
Received: by mail-lf1-x132.google.com with SMTP id s30so54311774lfo.7
 for <linux-rockchip@lists.infradead.org>; Sun, 16 Jan 2022 23:45:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nVojK749fmbikJ8Ylv61w+rfH9eMOuHdf6x9SWu9cSY=;
 b=SUwsxZsxjvlQaEwoE7XT7C+KHZ9jGQQayZYDeXg5DlUCjdR5AwuUOSqu5Vnxhj5hfU
 cZct8MLYPqEIXtyX72Hymgmw/UKBQ1+Skmdl8fCeXQDsuDDeIpc+chJKRuX7BUddxkgp
 I/CiGnBzl6R++Z3e4nfaDlKGmOZMTWnoQWeYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nVojK749fmbikJ8Ylv61w+rfH9eMOuHdf6x9SWu9cSY=;
 b=XBaz2lMvR3MB3Dzd2asE+Ubl3Lua4/HY6VTOhSbSZU6fntcWRBJ6Qghjs5XFkDnV5x
 QLU3+N992km3vJNqUYAYn6/fEFc9ABni/RmsJYAAzWr0BDL9YgM1RUaeJ+x/zymXB/qM
 qDzGulTP3kb4BfnTgsBK0yifa8JoMCBkJ3RfIkzJdBtGfGBQxXnTxeFR6EyFowEsygiT
 0QptLgQoiY+S9B/l5ZCiuDnjA4StzkEpYmI2lax3vMu7JzsZI5TKvylUQgyLC61THToS
 0ht3Fgci+42EMt7zlCnX4nWcO4R0lBfaw0vGNojUIcr/IuQkT5jqfh+ag1Bvk5Sm0rdu
 sIsw==
X-Gm-Message-State: AOAM5313/TPYQMawgCgTD46uBKIMRd6ta4Mt5D7jid7MEvtzjBBOXHdE
 Mc2uXseC5Mm2k5hcp6eH26x8woi8UVFiJNeGJ8AyCg==
X-Google-Smtp-Source: ABdhPJwG9NvWR9p35lcYW0jwX/k5v4481qRKalDO5NxJSEYxWGLzootcvrIELTsY/GzSoLCDQfiA7L3OWsPgQKfrGNM=
X-Received: by 2002:a2e:2285:: with SMTP id i127mr4064849lji.414.1642405520722; 
 Sun, 16 Jan 2022 23:45:20 -0800 (PST)
MIME-Version: 1.0
References: <20220114230209.4091727-1-briannorris@chromium.org>
 <20220114150129.v2.2.I20d754a1228aa5c51a18c8eb15a2c60dec25b639@changeid>
In-Reply-To: <20220114150129.v2.2.I20d754a1228aa5c51a18c8eb15a2c60dec25b639@changeid>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 17 Jan 2022 15:45:09 +0800
Message-ID: <CAGXv+5Gm4ru8m5bZV_zm10U+FQRBSw7qq1eiL+hh+Z=5pZ7pYQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] drm/rockchip: cdn-dp: Support HDMI codec
 plug-change callback
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, 
 linux-rockchip@lists.infradead.org, Lin Huang <hl@rock-chips.com>, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 Rob Herring <robh+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, 
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220116_234522_712603_417AAC51 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
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
> Some audio servers like to monitor a jack device (perhaps combined with
> EDID, for audio-presence info) to determine DP/HDMI audio presence.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
