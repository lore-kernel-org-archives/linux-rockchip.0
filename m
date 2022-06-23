Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CB48C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 23:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WzEWEtoA8+1FDttyyw3nezRNxnKaxY2KcQ+LlI/XXDs=; b=FXZj+ovEqOI6Dk
	gdGjFTu1cvYgJ3qGxp4OrDcBtlN2Cv3uGYgCTLN78h9oW6Y/si3m58QNt8h/Ca2Mfua4vRByGjzYg
	HLcRxR9gQ22wEpJnVcy+toYiwBMOVU7LIyMDyv5Yc06LOG1qbc8+RU1HR6GCgIEsLZHi/L7wOHz4a
	3V/MrAridhR1fBe/kUgSl7FiE2IWaYzLIULkP+h/P7joti9WRPN9QAzFeeSmOV4cKz/A8JCtDWITk
	fpFGNt2GUUmn31lvRDO1T/bSMl5mikC76cizEyMaOvp/hZxexks6QmR+EC1UtvmyyMtVNkpTrchfM
	w/oJqlFpCZtsK/iwuYvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4WVf-00H82z-NN; Thu, 23 Jun 2022 23:45:15 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4WVd-00H81U-2A
	for linux-rockchip@lists.infradead.org; Thu, 23 Jun 2022 23:45:14 +0000
Received: by mail-ed1-x52e.google.com with SMTP id cf14so1125107edb.8
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jun 2022 16:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4ikmHtD58shD6bwBLVpbuZjlxH1kCE1s2bn5lg6TI84=;
        b=Idb+m4MmDg0qMd2DH6fEfYzuuttvLSeFBYJHLxEIpsJQi14s4A53HQuCSN5EPUcDlu
         cHZr8bJG8h/PTgfMQpO0HbbedR/xKjdcHTojqasgMK1W7NG1vLAyJp2ONOWhpxRkyeua
         SwHT1Aus7rtxzv/TDgM3Hsx5fXimanh7yIQWU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4ikmHtD58shD6bwBLVpbuZjlxH1kCE1s2bn5lg6TI84=;
        b=Hc42ch3/CWYjnIbf4IRzWOw7GD0enNk4MwudulSMPo7ephYPQOOz2dCUVbOZOSgBvf
         l5iH0oFX/zw9SB2dlzvLIek7ZRciQPq3xdqdvFscr0iMg+ftwMPp1aPuriQYMzqt1l94
         ZvV8hhCVt/l4RjFIOZqQMNdON9G3oqK8+4fh+HCzkcqpyItTCVwnsxGqk+ZRsULpJUKh
         7J8bpMcxlGFJdKKSc2qfAA3IlkKFxUPtge5xUFr2aj+IEd+UdD5tOzxV1k2Bb9GF+xah
         T91haZK65ZyyXOeovj3ZrGZ6wOno2ccmS9A6QLPqskZ0ZXRtGNjsZArhikNA/bVgkGWi
         jCYQ==
X-Gm-Message-State: AJIora9JGRrdNH/eQlVIBDBwB0UiJM3ZJ72WPSZDAffzfAGwy3a5b1J9
	ovSy0AI9GyYObnNoi+jvnH98nTZZgUqcqsyQ
X-Google-Smtp-Source: AGRyM1uF/a3RPFnnh0wksOQmwdJd92WwLkGv6d7Do/7/gF7C9l9WxloTnQ/JWIUfJkJ+F2RKRK6TdQ==
X-Received: by 2002:aa7:d5c9:0:b0:435:8099:30e6 with SMTP id d9-20020aa7d5c9000000b00435809930e6mr13963877eds.384.1656027906808;
        Thu, 23 Jun 2022 16:45:06 -0700 (PDT)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com. [209.85.128.54])
        by smtp.gmail.com with ESMTPSA id kl2-20020a170907994200b00722d5b26ecesm199291ejc.205.2022.06.23.16.45.05
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jun 2022 16:45:06 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id z9so349678wmf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jun 2022 16:45:05 -0700 (PDT)
X-Received: by 2002:a05:600c:22d9:b0:39c:4b1b:5f99 with SMTP id
 25-20020a05600c22d900b0039c4b1b5f99mr469227wmg.151.1656027905540; Thu, 23 Jun
 2022 16:45:05 -0700 (PDT)
MIME-Version: 1.0
References: <20220617172623.1.I62db228170b1559ada60b8d3e1637e1688424926@changeid>
In-Reply-To: <20220617172623.1.I62db228170b1559ada60b8d3e1637e1688424926@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 23 Jun 2022 16:44:52 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wsp6GA=L4GsEVjMqazgtw4qG40gtLq1HT++5e9eRrvTw@mail.gmail.com>
Message-ID: <CAD=FV=Wsp6GA=L4GsEVjMqazgtw4qG40gtLq1HT++5e9eRrvTw@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: vop: Don't crash for invalid duplicate_state()
To: Brian Norris <briannorris@chromium.org>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	dri-devel <dri-devel@lists.freedesktop.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	Sandy Huang <hjc@rock-chips.com>, Sean Paul <seanpaul@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_164513_128900_0D052839 
X-CRM114-Status: GOOD (  13.11  )
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

Hi,

On Fri, Jun 17, 2022 at 5:27 PM Brian Norris <briannorris@chromium.org> wrote:
>
> It's possible for users to try to duplicate the CRTC state even when the
> state doesn't exist. drm_atomic_helper_crtc_duplicate_state() (and other
> users of __drm_atomic_helper_crtc_duplicate_state()) already guard this
> with a WARN_ON() instead of crashing, so let's do that here too.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 3 +++
>  1 file changed, 3 insertions(+)

I'm not an expert in this area, but it makes sense to me to match
drm_atomic_helper_crtc_duplicate_state() in this way. Thus:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

I would tend to assume that this would be landed in drm-misc by Heiko
if he's good with it. After several weeks of silence, however, I'll
commit it myself.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
