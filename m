Return-Path: <SRS0=2I9J=OG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D2B7C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 20:34:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 01BC160FBF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 20:34:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 01BC160FBF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HrEt7yZRwuAquTrOhQiMc104rgegzpNrTtWFptjgrDg=; b=gjmE+5wcgLZVKT
	05QTzaP2kR8OSEB9mc/HTX2iBxTYeFSkSK+KEUXZc/CwWHKQWYGMVv1F2m8XrqUnsOtgPBQ2O5leh
	Qj98fqMLYY2Y3dFNQV+MtJfVavca+luM9ys+hFSO9050qNBQicJR2R1NH7TTchx+XtdFYVwAErK1o
	jf9fIF+d8fg9pkCuGAPsPYvI0flSobrpIDqzs5J6OJl0nAGkmAjaVLpfDgd9FsonnTktroP7q7+H9
	WyLCKMXzIw375B7xVHw5z5etwHdZTFIjuNt/bWlIvb9v+hpj7aJ9BLZ6WurcYNRhr4DJeRJvPAaRF
	gCCsU8DH9DXvAqOufhMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQy5J-00CMws-Fu; Thu, 16 Sep 2021 20:34:17 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQy5G-00CMwL-4i
 for linux-rockchip@lists.infradead.org; Thu, 16 Sep 2021 20:34:15 +0000
Received: by mail-io1-xd2c.google.com with SMTP id f6so9594201iox.0
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Sep 2021 13:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TKdGoRFVr/xOsqOTZ1eLQM7yw4i7V3khOzi95TcJgnE=;
 b=Y8WZDaV2hz12Ge0wgPOBJjF6T4Td5Az39tBFIdOpOhIVzjqm1qPE/JxsIZDXPqezXY
 vDWotK4/xR8U0uIBLb4IUlJKX1ko5gsroVuu574Vzi8v3YcLtDgBZNz/e6oV08JME6Vb
 /3wIMOUcp+AlNR7SpCdXdYMoLFlkOIDDYXNic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TKdGoRFVr/xOsqOTZ1eLQM7yw4i7V3khOzi95TcJgnE=;
 b=embKZxLq4/l5qx+b6zvFcJvozR467qSGJIB7/iTF4X/tB9wVkuR7MeK1C7gc7Pg7VZ
 b06t9zaPgboaSC/c1QsHxM1h5m03Dl1vJ+5/xB884d2pXD2QR/IoRs0+OI/42El1cBE2
 /yMJ2r9gl7N8Lml4k2IRXIxt8fBgyFUTh2wPMakKx15ZoZEbwaUR+viJE6nvWcnsVLOy
 O6DnYJRfo+rS9qYU9Ocr7jqcIywSTcB7TIAX+JE/O1yUuTS0Dz1kW4VxwvvSAQWsAy5f
 +eLFP/60Uk0bdjWkR07CfRguijKA+o3yMgXA/fX7yLIuiVUVY6f4h6lKD6fn3faUgsi3
 Z4pg==
X-Gm-Message-State: AOAM5331k4oHfyW7Awca3pBDA3ftI+KKYvpgFGi6w5idchEw/ZDPihq4
 U5YJXihDkXA5Cg9wg/R6FEOyCPV5Ci5Wog==
X-Google-Smtp-Source: ABdhPJxDy/D1acwvKP8c30m6U1ava0eH2z7uEF7XgDO3VorXK8UlnliB/oLAXepVa4q5ZEb6XPXjQA==
X-Received: by 2002:a6b:8d15:: with SMTP id p21mr5881398iod.194.1631824452247; 
 Thu, 16 Sep 2021 13:34:12 -0700 (PDT)
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com.
 [209.85.166.176])
 by smtp.gmail.com with ESMTPSA id k21sm2192993ioh.38.2021.09.16.13.34.11
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Sep 2021 13:34:12 -0700 (PDT)
Received: by mail-il1-f176.google.com with SMTP id q14so7956762ils.5
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Sep 2021 13:34:11 -0700 (PDT)
X-Received: by 2002:a05:6e02:1bad:: with SMTP id
 n13mr3106011ili.142.1631824451177; 
 Thu, 16 Sep 2021 13:34:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210916202907.18394-1-macroalpha82@gmail.com>
In-Reply-To: <20210916202907.18394-1-macroalpha82@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 Sep 2021 13:33:59 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VBNbFyiy45toCV44rJmT2ZrTbf-bbOrXVJG2ri6bnakw@mail.gmail.com>
Message-ID: <CAD=FV=VBNbFyiy45toCV44rJmT2ZrTbf-bbOrXVJG2ri6bnakw@mail.gmail.com>
Subject: Re: [PATCH v3] drm/rockchip: Update crtc fixup to account for
 fractional clk change
To: Chris Morgan <macroalpha82@gmail.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Sandy Huang <hjc@rock-chips.com>, Chris Morgan <macromorgan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_133414_229315_E5172A0B 
X-CRM114-Status: GOOD (  34.70  )
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

Hi,

On Thu, Sep 16, 2021 at 1:29 PM Chris Morgan <macroalpha82@gmail.com> wrote:
>
> From: Chris Morgan <macromorgan@hotmail.com>
>
> After commit 928f9e268611 ("clk: fractional-divider: Hide
> clk_fractional_divider_ops from wide audience") was merged it appears
> that the DSI panel on my Odroid Go Advance stopped working. Upon closer
> examination of the problem, it looks like it was the fixup in the
> rockchip_drm_vop.c file was causing the issue. The changes made to the
> clk driver appear to change some assumptions made in the fixup.
>
> After debugging the working 5.14 kernel and the no-longer working
> 5.15 kernel, it looks like this was broken all along but still
> worked, whereas after the fractional clock change it stopped
> working despite the issue (it went from sort-of broken to very broken).
>
> In the 5.14 kernel the dclk_vopb_frac was being requested to be set to
> 17000999 on my board. The clock driver was taking the value of the
> parent clock and attempting to divide the requested value from it
> (17000000/17000999 = 0), then subtracting 1 from it (making it -1),
> and running it through fls_long to get 64. It would then subtract
> the value of fd->mwidth from it to get 48, and then bit shift
> 17000999 to the left by 48, coming up with a very large number of
> 7649082492112076800. This resulted in a numerator of 65535 and a
> denominator of 1 from the clk driver. The driver seemingly would
> try again and get a correct 1:1 value later, and then move on.
>
> Output from my 5.14 kernel (with some printfs for good measure):
> [    2.830066] rockchip-drm display-subsystem: bound ff460000.vop (ops vop_component_ops)
> [    2.839431] rockchip-drm display-subsystem: bound ff450000.dsi (ops dw_mipi_dsi_rockchip_ops)
> [    2.855980] Clock is dclk_vopb_frac
> [    2.856004] Scale 64, Rate 7649082492112076800, Oldrate 17000999, Parent Rate 17000000, Best Numerator 65535, Best Denominator 1, fd->mwidth 16
> [    2.903529] Clock is dclk_vopb_frac
> [    2.903556] Scale 0, Rate 17000000, Oldrate 17000000, Parent Rate 17000000, Best Numerator 1, Best Denominator 1, fd->mwidth 16
> [    2.903579] Clock is dclk_vopb_frac
> [    2.903583] Scale 0, Rate 17000000, Oldrate 17000000, Parent Rate 17000000, Best Numerator 1, Best Denominator 1, fd->mwidth 16
>
> Contrast this with 5.15 after the clk change where the rate of 17000999
> was getting passed and resulted in numerators/denomiators of 17001/
> 17000.
>
> Output from my 5.15 kernel (with some printfs added for good measure):
> [    2.817571] rockchip-drm display-subsystem: bound ff460000.vop (ops vop_component_ops)
> [    2.826975] rockchip-drm display-subsystem: bound ff450000.dsi (ops dw_mipi_dsi_rockchip_ops)
> [    2.843430] Rate 17000999, Parent Rate 17000000, Best Numerator 17018, Best Denominator 17017
> [    2.891073] Rate 17001000, Parent Rate 17000000, Best Numerator 17001, Best Denominator 17000
> [    2.891269] Rate 17001000, Parent Rate 17000000, Best Numerator 17001, Best Denominator 17000
> [    2.891281] Rate 17001000, Parent Rate 17000000, Best Numerator 17001, Best Denominator 17000
>
> I have tested the change extensively on my Odroid Go Advance (Rockchip
> RK3326) and it appears to work well. However, this change will affect
> all Rockchip SoCs that use this driver so I believe further testing
> is warranted. Please note that without this change I can confirm
> at least all PX30s with DSI panels will stop working with the 5.15
> kernel.
>
> Upon advice from Doug Anderson <dianders@chromium.org> it was decided
> that we would first check if the clock rate can be set exactly as
> requested, and only if it could not would we then add 999 to it and
> attempt the process again. This way we can preserve the behavior for
> clocks that still need it while resolving the specific issue for the
> PX30 and DSI panels (since it is using a fractional clock).
>
> Changes since v2:
>  - Moved fixes to correct location.
>
> Changes since v1:
>  - Made the addition of 999 conditional based on whether the clock
>    subsystem can set the actual clock rate as requested.
>  - Updated the notes in the fixup routine to reflect this new behavior.
>  - Added reference to original commit, as this has technically been
>    broken since then however only now is it an issue due to the clock
>    changes.
>
> Fixes: 287422a95fe2 ("drm/rockchip: Round up _before_ giving to the clock framework")
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Not worth making a v4 since it can be fixed when applying, but
normally there is no blank line between the "Fixes" and
"Signed-off-by" lines.

Also, for trivial small fixes like this you're expected to carry
forward reviews to the next versions. Here I'll re-add it for you,
though:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
