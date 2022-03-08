Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61800C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 14:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/TKyxhjQeJQ+uJDKLNjrllSSONXr5qQzSpZYCc+Q+A=; b=5B6QgNNNU9uRam
	bs5iZ+FORFoNEYFIEiJ6nIrrpjNrFQgI0Yg+gKvdefL31kX+GD0DLVxQ4aNlzaKLkTyIsv2wsqPpo
	abPmqdEdQTe3GNDXpt97+U+hevpsbiSpgZEiD6SmZabvOwa0Cq6KxySO8Qy6c0wcxeD8bHwmWeXdQ
	22YEoABgPXdf2FBJDN83rXlnSi4qOvF21pHkn/1Pj5SS3cbiACTXT33MEPTJtVOXroAmyN9GzgYAF
	xNMntLC+0nKJxqq6BQf/TAYNPA1676WlbqbT28zV9bK/R653PAcT9R3dINPEcteMTAz6imezWVnz/
	6vwxtCylEsqnVmPjX/9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRaRy-004eJr-8y; Tue, 08 Mar 2022 14:04:30 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRaRv-004eII-AL
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 14:04:28 +0000
Received: by mail-yb1-xb36.google.com with SMTP id h126so37984029ybc.1
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 06:04:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ztuy8VhVTaaw8Ilxr41jLiszCCDbp/SzK9cYm0UCZmU=;
 b=me7lBTWMjyab9fr0cxTAY81lZo+cHm694XLNEmD5jhegCxY6uQbWXpx5UCo2C4LUH8
 ctgFG+r3QAluGcdRvQIC6PoKQDzLqGapT5hwPe1kpUIt58umsTLmfSje2U8TM8PPUx3k
 75+P3yrEVFjv5YlN/UtN4JYH6nZiYrkylxa6w3OmJ36qfXmlaXeiemuNwgNUHHNSF8Q4
 IRTK8KfsIXmP/okRhFZ6okucVk/UJnFEa74RDvM5DchIBk94NYMa+mbchfCqZAJkIkbw
 JuFyA4YPjMLpQwQxbj+hUIHlOn1kNBAu5iV+VYOrhcZ8YCpTjDfsv56UgSwuLdYlP8TP
 XIGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ztuy8VhVTaaw8Ilxr41jLiszCCDbp/SzK9cYm0UCZmU=;
 b=gA6gY64yDDDiUVfY2gUALnR3gcoNLKc2patzthBHIo2T0mFjz9G8sDGsE5RSTm6AlS
 zDJre9DxakT8GYjArKOF+gjOqX/Y0iHmh3OlyVfC3FqXJ3F3j1TaEXr0hMKOG1hX1PQZ
 ta1w7VLQV8/6nLS+yV1s8IrfOT9Prvo6d14rDGObrF1hMMGR5nMAfoU4qdAZI2XM+CUJ
 XVVwF67TIAScK8xa036wTe2LoIq4B09FgSZoUS+sMzSyTyV4BWDLg8Y9+pi5p8fFlm0M
 OJ3Ws+Wm/7pxGMK84ZDPIPNPLJ2VyX69RCQFAcLxBBAqA4ZOpKzXWMXg11soM5EoMeq2
 24mQ==
X-Gm-Message-State: AOAM530TlyJZhF2M0xC52ap/cAVdb5Yjo/j1V9nkEur6YcyJJxMyw5pz
 9h5r6ECNyZN2B8g0oC1SPpfSx/XIsCTyUFwEUcafmg==
X-Google-Smtp-Source: ABdhPJw/jICR5t36ye8bP3B/l9rTbY4oei1RUuRxkwrS0Jj3llULUf6q6zkgPTpEoQRi2ubiZajn8QhRgVsXFd322Ms=
X-Received: by 2002:a25:ac98:0:b0:628:6e4b:66f0 with SMTP id
 x24-20020a25ac98000000b006286e4b66f0mr11867056ybi.28.1646748263827; Tue, 08
 Mar 2022 06:04:23 -0800 (PST)
MIME-Version: 1.0
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-23-s.hauer@pengutronix.de>
 <bb077f34-333e-a07a-1fcb-702a6807f941@rock-chips.com>
 <CAPj87rO2sztocJrE-CeSQWry9j_cSe2uv9F1Yf81pGnBXdu2Ag@mail.gmail.com>
 <ae4314db-09c0-049b-ccc9-f6b1c3003dcb@rock-chips.com>
In-Reply-To: <ae4314db-09c0-049b-ccc9-f6b1c3003dcb@rock-chips.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 8 Mar 2022 14:04:12 +0000
Message-ID: <CAPj87rOanNE1wca3ijJx1zXYZkKX1ta9F145GCXM15Nv=POicA@mail.gmail.com>
Subject: Re: [PATCH v7 22/24] drm: rockchip: Add VOP2 driver
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de, 
 Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_060427_434516_26DB4F25 
X-CRM114-Status: GOOD (  12.02  )
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

On Tue, 8 Mar 2022 at 08:42, Andy Yan <andy.yan@rock-chips.com> wrote:
> On 3/7/22 21:09, Daniel Stone wrote:
> > On Mon, 7 Mar 2022 at 12:18, Andy Yan <andy.yan@rock-chips.com> wrote:
> >> When run a weston 10.0.0:
> >>
> >>    # export XDG_RUNTIME_DIR=/tmp
> >>    # weston --backend=drm-backend.so --use-pixma --tty=2
> >> --continue=without-input
> >>
> >> I got the following error:
> >>
> >> drm_atomic_check_only [PLANE:31:Smart0-win0] CRTC set but no FB
> > Can you please start Weston with --logger-scopes=log,drm-backend and
> > attach the output?
>
> Please see the weston ouput here[0]

Are you running with musl perhaps? Either way, please make sure your
libdrm build includes commit 79fa377c8bdc84fde99c6a6ac17e554971c617be.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
