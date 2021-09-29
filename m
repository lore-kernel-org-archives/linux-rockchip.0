Return-Path: <SRS0=t/9b=OT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04AEDC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 02:28:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A3C51613DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 02:28:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A3C51613DB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7U5RYPdYy6w2fYrfXoZwCXXGBhHlEm/hol9C+vletOI=; b=y7427e4o7MVsjk
	bp9ZLOx+xLlNxGHGGh3iUXyHEXsRGyPq0DOxpeg2O2BZwgQDxo/wdCyhQ3lIqgou8vF9ibF2dKSO4
	zsYE1SkN8tgrKbx4RDLZ2nif1L0IRLJnNl7BR07kuTo9GRC6V6pLMAKg55wR0Wt2Gnhl41n5+dCAM
	mlB66pLWjsLjJjqofQnpEItt6QE6f3y7CjUgxTU/RnbR198HNThDkxB4sdBakithRg/VFBUj0WqEN
	OTSkvWdEpoLxSclE/n3DuAdYJNZQxyCTqBWUyOcan0SpPB/06GXSqC93Zl8X4rOqYzxowtWHoIWO5
	8ghYIeO3fJ/EVzwOwPDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVPKi-009hlA-7j; Wed, 29 Sep 2021 02:28:32 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVPKf-009hjp-Pd
 for linux-rockchip@lists.infradead.org; Wed, 29 Sep 2021 02:28:31 +0000
Received: by mail-lf1-x132.google.com with SMTP id i19so1434900lfu.0
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Sep 2021 19:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vzNXCj84D1g4PbD9Z2/a7WAfkTzxrDKROcDc/hzpBWc=;
 b=UFBbRLUsdxkCVsyDBTZelri1sE1uBJFhlXVFzOQ00BYD/vd027QrYNGqzaxNahSk5t
 p6RkaJek68Zp/n/NESHX4OhAOqTF0Ns7OTCXh7/7WouElvWnEJzoUqEO5tfPylzKLTcJ
 4mmlTm0nReyACi0Ttcsrq2osd9UWg42lgdAnQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vzNXCj84D1g4PbD9Z2/a7WAfkTzxrDKROcDc/hzpBWc=;
 b=y++R5EUpUT8FpAJMcK9ucmm5x2j6gpQn5Ym1KNGTdG97kLDwUHoJeYpT+IH1t+LuJ2
 s3rpXoCKwAU2NiRtiMnnC2AbCva7FAVMP4I8qaGPNV+822CCeSGrgJDGOZQ2ucs7aKp6
 m9kAhK6H+Rio68m5AGE5Wz+yonkYAF/8/JfnYBLnpffe6pJp9xFR4Svae8LDQxFkOGkm
 ZNI8Cc/zWCnMOTz7dzS6ZTgrKRsoVqlb9fwhJKAjcJw2B27eysCnDY6UFVoAJo+xNL3m
 m0SNAcYQTOTBCDUtTEclHNp2VD1+wnZvBPKBC38/qWQBSRekoHCc5MCdWqxfYFxvatQB
 T6Kg==
X-Gm-Message-State: AOAM533raeo/N6VnYZkYuQQeqIXeuGyP7nftHF9ItbByYzPeCmJZgA9h
 vnH1Y+JUEFL1lT6MVj9eQiCRa+osDVmPjfl4TNqIpw==
X-Google-Smtp-Source: ABdhPJyNUZV2MQMbi62ec77cW4ABFydIvPmDIM3cOMvSI1YRYR4lewd8Ni0ge/QhfE1OeZiNo6sOeIu/PGqaRs29+uo=
X-Received: by 2002:a2e:b80f:: with SMTP id u15mr3549500ljo.414.1632882506299; 
 Tue, 28 Sep 2021 19:28:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210928213552.1001939-1-briannorris@chromium.org>
 <20210928143413.v3.2.I4e9d93aadb00b1ffc7d506e3186a25492bf0b732@changeid>
In-Reply-To: <20210928143413.v3.2.I4e9d93aadb00b1ffc7d506e3186a25492bf0b732@changeid>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 29 Sep 2021 10:28:15 +0800
Message-ID: <CAGXv+5GiQrxrcwCt0A6Dxxodd8JTqUvEJtZdzB=SUKJuWD_RVw@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] drm/rockchip: dsi: Reconfigure hardware on resume()
To: Brian Norris <briannorris@chromium.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sandy Huang <hjc@rock-chips.com>, 
 Thomas Hebb <tommyhebb@gmail.com>, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_192829_840219_EABE2DFB 
X-CRM114-Status: GOOD (  13.67  )
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

On Wed, Sep 29, 2021 at 5:36 AM Brian Norris <briannorris@chromium.org> wrote:
>
> Since commit 43c2de1002d2, we perform most HW configuration in the
> bind() function. This configuration may be lost on suspend/resume, so we
> need to call it again. That may lead to errors like this after system
> suspend/resume:
>
>   dw-mipi-dsi-rockchip ff968000.mipi: failed to write command FIFO
>   panel-kingdisplay-kd097d04 ff960000.mipi.0: failed write init cmds: -110
>
> Tested on Acer Chromebook Tab 10 (RK3399 Gru-Scarlet).
>
> Note that early mailing list versions of this driver borrowed Rockchip's
> downstream/BSP solution, to do HW configuration in mode_set() (which
> *is* called at the appropriate pre-enable() times), but that was
> discarded along the way. I've avoided that still, because mode_set()
> documentation doesn't suggest this kind of purpose as far as I can tell.
>
> Fixes: 43c2de1002d2 ("drm/rockchip: dsi: move all lane config except LCDC mux to bind()")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
