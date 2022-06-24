Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0686EC43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 17:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jwhqxR4sr8vyYYMZ6ZwoZFZnjgfsq63creRlnm0r/9I=; b=1T6lW0ikz5bSOZ
	to9vBieNAgn7Ae2IXuMmwxQp9JDOROZtXKOsGjYClWE9Wha8WSqO8nskKawHGgl247/RyPIB9Bau7
	NKFDj1C2rbGA2XUpc1p9cx8DaiqeSor3llm+KHePZNan5crkgCBoTUppuISKpg7yQjP8EfJu0Okjh
	aIEUcWzvEYIxs6Ld79yjEWa+9PmCb1jQwD1vBzBVRzQw2a3F+bTl0lMzeXWgy7xhgZhIc2e6FDayu
	tQfQ+ojFHSfgofFSZ3Am3O4k7ri+D//Lw9S/wcX1eNn+TLN5mYnLMvCcZ2GTYV5NArUoH8Mq5bdXz
	k3jKLyHA6c9VNxJfacXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4nZL-003NWv-LF; Fri, 24 Jun 2022 17:58:11 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4nZJ-003NWL-1M
	for linux-rockchip@lists.infradead.org; Fri, 24 Jun 2022 17:58:10 +0000
Received: by mail-oi1-x234.google.com with SMTP id u9so4467479oiv.12
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Jun 2022 10:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gqe2BcnXvHPlqIWzjEeLMU7FqAv/n1XXHRJeEUKzlKg=;
        b=Kwt9moQUmYxkfufWsGqYBe5lp3LxFQbCnc0bamVdgN/b93sQhP6MEbkSTB7dkyROlE
         EyqGapHYCUabHsQjh7Hx6PJftkV7ojjZ4a5esOjA/2X0G5Xr6i0M/y2yRW98HfqLoNgG
         Tx/vQZXQDex2uzamvTdL9PY543Zsz0xr9Ggx4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gqe2BcnXvHPlqIWzjEeLMU7FqAv/n1XXHRJeEUKzlKg=;
        b=3Cs+g9iikJweLzW9hT0vwhDRQ0yTjFYXTLm4qN0XU1/C69HdefexOrNnjcHSO4W8Jo
         D/lr2soatsslz8s+CGcKeEBJ12ZMCKRDrUIFd1z7BlkRCCtZu74FNtbafOLSeeZVmw7W
         DJoTlTKOOCcf3xagUk05w1jH9rESmDb5RO/PpQ4QHoqNxZNDuiNEGndeh0M3f3PT41N5
         bskUjQQ1P6wZNyZmpokpKuFl8zJv8cPGi8KFWs+LgSQAc9Xoi3MxU8lHaf3oLnFeuM+m
         e9e8ElWdGU4OfuPCOwdAqdUi0MS/Lh4zzZt17MjdNwi+U0sHn0Z4QjwxOTWg37OxZc3N
         i80A==
X-Gm-Message-State: AJIora+Ywu7uqbwNUFLdsfzxYHP+C9nEnyLW3NbwqsSLxXoQUHvZwuba
	HnbNwiLbgnGAzPJ4/vxr05IHXRBkY03uIg==
X-Google-Smtp-Source: AGRyM1tR6xmtUKxKcQNfTQFLX4EZYN+ph1bZIvtENwCzb7lDyXzqhCtsHEa+2VgWAq5HjlNN+vsUUQ==
X-Received: by 2002:a05:6808:148d:b0:32e:cdbf:6e29 with SMTP id e13-20020a056808148d00b0032ecdbf6e29mr2599046oiw.60.1656093486634;
        Fri, 24 Jun 2022 10:58:06 -0700 (PDT)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com. [209.85.160.47])
        by smtp.gmail.com with ESMTPSA id j71-20020a9d17cd000000b0060603221236sm1837716otj.6.2022.06.24.10.58.05
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jun 2022 10:58:05 -0700 (PDT)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-f2a4c51c45so4744444fac.9
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Jun 2022 10:58:05 -0700 (PDT)
X-Received: by 2002:a05:6870:f71d:b0:f2:a4c5:191a with SMTP id
 ej29-20020a056870f71d00b000f2a4c5191amr2897379oab.257.1656093484616; Fri, 24
 Jun 2022 10:58:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220617172623.1.I62db228170b1559ada60b8d3e1637e1688424926@changeid>
 <CAD=FV=Wsp6GA=L4GsEVjMqazgtw4qG40gtLq1HT++5e9eRrvTw@mail.gmail.com> <4196825.8hzESeGDPO@phil>
In-Reply-To: <4196825.8hzESeGDPO@phil>
From: Brian Norris <briannorris@chromium.org>
Date: Fri, 24 Jun 2022 10:57:53 -0700
X-Gmail-Original-Message-ID: <CA+ASDXOzhoooDDJUWV7rKpz-7GkMR5v=3gKQt4XazTSgnY51WQ@mail.gmail.com>
Message-ID: <CA+ASDXOzhoooDDJUWV7rKpz-7GkMR5v=3gKQt4XazTSgnY51WQ@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: vop: Don't crash for invalid duplicate_state()
To: Heiko Stuebner <heiko@sntech.de>
Cc: Doug Anderson <dianders@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, 
	David Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	Sandy Huang <hjc@rock-chips.com>, Sean Paul <seanpaul@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_105809_133100_F9795B99 
X-CRM114-Status: GOOD (  10.63  )
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

On Fri, Jun 24, 2022 at 12:23 AM Heiko Stuebner <heiko@sntech.de> wrote:
> The interesting question would be, do we want some fixes tag for it?

I'm not aware of any currently-upstream code that will hit this [1].
I've hit it in out-of-tree code (or, code that I submitted to
dri-devel, but wasn't accepted as-is), and this is the "belt and
braces" part -- the primary fix is that we should avoid calling things
like drm_atomic_get_crtc_state() at inappropriate times.

So, is the "extra safety" check really something that should go to
-stable? (Because let's be honest, everything with a Fixes tag goes
there.) Maybe?

Anyway, if you want to "blame" anything, this commit actually dropped
the safety check:

4e257d9eee23 drm/rockchip: get rid of rockchip_drm_crtc_mode_config

Brian

[1] But I'm not omniscient. So maybe it's good to have anyway.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
