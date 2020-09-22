Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 300A2C4363D
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 19:10:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5D8A42311C
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 19:10:28 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="II68N1ql";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K07PcxAN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5D8A42311C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2yHl6+xC4gGZakGYoFfzTdtrnHyOTmRYMkcFQp+X+B8=; b=II68N1ql5vf8B6qeLbCLVt+DN
	KC9aq+XGQcM+vHR7rRZCaz/lkvkY5Z+GJNwL6xDnOQ0zDvq8m/DTorF4kdwFMdcQ32Pug/FVRoRTI
	I0D6pqUKOICZjAEuQYXKxShlhUEiqSxPP4cHkt51wjTfVrXE/P3v2PgahzZpMAypUotxsb8cY/XoN
	0Cr49WRX+vS5XLj4jKsFmLMaw2jApS6cGAy+IHLWUl65kCAUyMqg1EQfhh7BuJDEahTTg5BAuJssC
	taxbqSNX195ZhHRtxtDRFyAC/zxxl9E6dA7jLJv/J5qTurbWt8uGwlW89hOobt5Q/LtUOPgEL0QG5
	GyeHcHweg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKng9-0000Yi-3x; Tue, 22 Sep 2020 19:10:17 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKng5-0000YI-Jm
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 19:10:14 +0000
Received: by mail-wm1-x341.google.com with SMTP id d4so4496773wmd.5
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2020 12:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=BCfT5peibKcEc4ONnM5Xp9tYYHE/inek1beNGLpIHBU=;
 b=K07PcxANtHsYhBN8KOmGnD92cSLZOMptWzQOEU6KI9EWD+/fQsUI44uV7OGYg4mvq6
 +SVLXJQqhmk8bMIUJQxzJT+QCd/M3alRugXkPjeSCfoKQCpcBeLynfuwzcsrVuRf1lUx
 GVG0VjZRzS1d/EyNjTRE5l5cGiY8hiJwHJa14ItH4ON6OEXb7cwKKXnDNqKWJIcxUZEv
 kHQz+ZelJMaIOrNyJYe2PDabjHEulDiU/5G5SBrCGPvZ43ez+v3MkmYLsF0jIfQipd8D
 0nUn5xfmQIuYJt0hbjodugwAd6K0JtDNIGfzFbIPlRbesW53iD3OZJoEfedOJSmC8AOl
 H3lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=BCfT5peibKcEc4ONnM5Xp9tYYHE/inek1beNGLpIHBU=;
 b=VBJ2Tpi6GaN67ht9olEeK7OydaExHhKIQDs03FAm1y7rzQfO7nZHRD21jQHVnrUkV/
 NYSvZPFdY0yvsje7rJUdCxg0geWdngRI3l7v/9I6crgI321EDw8uYgdUK8kB7ifyXKtv
 7pIReV6vb/TsJIzavN5Vz6tQseTWrojBWD1QqwdW0rqNVAyxtMJtd0LJJ0T0U/+9FM2d
 AjVLOM5y1ABzdUTKUL9GlnI6j+QXfqLRZ2yUeY7B1uKGY7Iix+Ai5JCrypGSC1FLr/1k
 C/czG0g848wSM/VS0ZsI41BcNpn8Ztr19kDPyrsA1GmEbGEf9F4JVxMV3Br9puauOzqo
 Cr4Q==
X-Gm-Message-State: AOAM530d0d6RKLJS7ne5bZ3yV6jJaOLYT+UVJJMMQSYCwaf80XkLidvf
 RWhBCGZ/rh9OQy9ja1T61Uw=
X-Google-Smtp-Source: ABdhPJyH4AtgyLBjMWyiuVND4eO/wx9+NS4vqioqipO6uwuuFSfiL63Eb8iQ84cYBGkr7RKL9i5GsA==
X-Received: by 2002:a1c:32c6:: with SMTP id y189mr2648732wmy.51.1600801810970; 
 Tue, 22 Sep 2020 12:10:10 -0700 (PDT)
Received: from localhost ([170.253.46.69])
 by smtp.gmail.com with ESMTPSA id c4sm6014814wme.27.2020.09.22.12.10.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 12:10:09 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/3] drm: rockchip: hdmi: remove
 =?iso-8859-1?Q?vop=5Fcrtc=5Fmode=5Ffixup_to_fix_clock_handling?=
Date: Tue, 22 Sep 2020 21:10:07 +0200
MIME-Version: 1.0
Message-ID: <1af700b8-c4fb-4f3f-b56b-2602cb620aca@gmail.com>
In-Reply-To: <CAD=FV=WfJJ4Tr4WZnFuUtz=XS1jHAUDfgnwy6qjyJ6iektTGDA@mail.gmail.com>
References: <20200921181803.1160-1-vicencb@gmail.com>
 <20200921181803.1160-2-vicencb@gmail.com>
 <76b8f420-2afb-eba9-5c98-6f10762c4b37@rock-chips.com>
 <1ada2daf-16f3-191f-ccc1-d3d7d0c319fc@rock-chips.com>
 <CAAMcf8Az5AVWNzMHuxXda5WUm4_E5QCwpgb2fVtaT0w2+cQELw@mail.gmail.com>
 <bd2d67ee-4023-ccde-3b2a-e88c3e076d12@rock-chips.com>
 <CAD=FV=Xv+CZhvXc583VTR2HpSEtkpho3aV5qG5_1-tKFgw_vaQ@mail.gmail.com>
 <CAAMcf8Btd4iTAVXXKd6knJdBcufTrKiX5UPas9ugV01p1ffHpg@mail.gmail.com>
 <CAD=FV=WfJJ4Tr4WZnFuUtz=XS1jHAUDfgnwy6qjyJ6iektTGDA@mail.gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_151013_708769_51C23D66 
X-CRM114-Status: GOOD (  24.08  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: crj <algea.cao@rock-chips.com>,
 =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Andy Yan <andy.yan@rock-chips.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tuesday, September 22, 2020 5:26:17 PM CEST, Doug Anderson wrote:
> Hi,
>
> On Tue, Sep 22, 2020 at 7:52 AM Vicente Bergas <vicencb@gmail.com> wrote:
>> On Tue, Sep 22, 2020 at 4:28 PM Doug Anderson 
>> <dianders@chromium.org> wrote: ...
>
> Here's the code:
>
>   rate = clk_round_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
>   adjusted_mode->clock = DIV_ROUND_UP(rate, 1000);
>
> Input clock is in kHz and DRM always rounds down (last I checked--I
> guess you could confirm if this is still true).
>
> Imagine that you want an input clock of 999999 kHz and the PLL can
> actually make this.
>
> DRM will request a clock of 999 kHz because it always rounds down.
>
> First:
>   rate = 999 * 1000 + 999 = 999999 Hz
>
> Now we'll ask the clock framework if it can make this.  It can, so
> clk_round_rate() will return 999999 kHz.  Note that, at least on all
> Rockchip platforms I looked at in the past, clk_round_rate() and
> clk_set_rate() always round down.  Thus, if we _hadn't_ added the 999
> here we would not have gotten back 999999 Hz.
>
> We have to return a rate in terms of kHz.  While we could round down
> like DRM does, it seemed better at the time to do the rounding here.
> Thus, I now rounded up.  We should end up storing
>
>   (999999 + 999) / 1000 = 1000 kHz
>
> Then, when we use it in vop_crtc_atomic_enable() we don't have to do
> any more rounding.
>
> I guess it's possible that the problem is that the function is
> starting with an input where it knows that "adjusted_mode->clock" was
> rounded down and it ends with it rounded up.  That shouldn't cause
> problems unless somehow the function is being called twice or someone
> else is making assumptions about the rounding.  You could,
> potentially, change this to:
>
>   adjusted_mode->clock = rate / 1000;
>
> ...and then in vop_crtc_atomic_enable() you add the "999" back in, like:
>
>   clk_set_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
>
> That would make it more consistent / stable.  Does it work for you?

Hi Douglas,

i've tested this as suggested:
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1181,7 +1181,7 @@
 	 *    this in the actual clk_set_rate().
 	 */
 	rate = clk_round_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
-	adjusted_mode->clock = DIV_ROUND_UP(rate, 1000);
+	adjusted_mode->clock = rate / 1000;
 
 	return true;
 }
@@ -1380,7 +1380,7 @@
 
 	VOP_REG_SET(vop, intr, line_flag_num[0], vact_end);
 
-	clk_set_rate(vop->dclk, adjusted_mode->clock * 1000);
+	clk_set_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
 
 	VOP_REG_SET(vop, common, standby, 0);
 	mutex_unlock(&vop->vop_lock);
and it also works fine.
Should i sent a V2 of this patch series including your approach?

For completeness i've added some printks to the original code to show the
clock values:
1.- Provided adjusted_mode->clock
adjusted_mode->clock (before) = 148500KHz
rate = 148500998Hz
adjusted_mode->clock (after) = 148501KHz <= this is the problematic clock

2.- Overwrite adjusted_mode->clock with the comment's value of 60000.001KHz
adjusted_mode->clock (before) = 60000KHz
rate = 60000998Hz
adjusted_mode->clock (after) = 60001KHz

3.- Overwrite adjusted_mode->clock with your mentioned value of 999.999KHz
adjusted_mode->clock (before) = 999KHz
rate = 999999Hz
adjusted_mode->clock (after) = 1000KHz

Regards,
  Vicente.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
