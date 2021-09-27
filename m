Return-Path: <SRS0=jpTb=OR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 172C7C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 07:17:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D39E160FC2
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 07:17:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D39E160FC2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+EbUk0giNvc/5eBq0eNvA49EY3bzLFRkt0N4w62DL0=; b=PUFn29iXTQLCuk
	TiWTKeBmwspQ64wy2aNjSHIVzznZkG2A1lU7FiobSm//fWlBL/8tUajPULasJWLULRSs7nmEzIEPo
	CO+KEf3mLWnoUBZVXuQ2w5ck6LRc/OEP2Z4otMP6T5SG7BRahGRZRo7Vm1r/Rfyk+MG0+0KEK2Q0/
	teGOmL0l9nGXgHKOMZ0HtCZ1sZu2D/0YeIBn+W4HV0iGfJBPY822A5UpHNVWfFs0BMfw9wZImchaP
	VMi9ex8w3pOarhM/gOe6cTDCw3iK9w4+fviOnDPVgYAJTX9z/qLHsnyIu5PWBSXxKaQMC1VdlnM8f
	B8XqO6RvcPaR5zaILbUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUktU-001nWj-Iu; Mon, 27 Sep 2021 07:17:44 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUktL-001nV1-9c
 for linux-rockchip@lists.infradead.org; Mon, 27 Sep 2021 07:17:36 +0000
Received: by mail-lf1-x136.google.com with SMTP id y28so72629010lfb.0
 for <linux-rockchip@lists.infradead.org>; Mon, 27 Sep 2021 00:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tuPT9UMjnSF9/x2VxZzbMJbiT3SxCc7RjnbYKdMUOXk=;
 b=NpIOiC9JGVYQ+YGJXTh0LGscT4eTT3N3WB0MpB+nmp0e3RAkiFa2U+CmaWuVoqhtFB
 F4roQ/o1rqwAxesyKp5TXE9xgLRngmIpg3EjrhOt/gtJUwL3ikK+DfcjscR5NvdsGYnR
 5pO8pRUAAMSth27MjzOIJQ1hl4F0G9pW3gxD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tuPT9UMjnSF9/x2VxZzbMJbiT3SxCc7RjnbYKdMUOXk=;
 b=OPtA/OBcJ6+2ylM1UEzCKklGtBb/nJ9ookRHC2KwXCkiAz8xYtV9kdfw7l979jHkLj
 v6SZyKWsdbIyIFlT60jZ7vy2Wr76gf6EMAtyBsU1p4m6Nr7uJ8FCcXAuCbJLzxKsxEvT
 u19bNka3OALmykhSgn0JCZagt88jggHQCQAkGO8giJJ8fVQn+xCcT1rKhLac3fTVa9rv
 ez1Irg4CJo7taKKLHaSHsUNJJfc/QN6SDU0tVQt40ZhPecamF3yES29i3vyyMA8rH/Jz
 VAFMMG0vA8NVXeTViGwX2NRw1ylW1NSUXb8SOvq+0X2RF3DJWfZObTbNH/1SOHbR2s+J
 VbKQ==
X-Gm-Message-State: AOAM532zvZVKTB1RSmS3ZoYQjL/1BsarAyFizaV9ktgwN6QNNPAwnJRu
 ybUAqsU+q1/UmkxlgesyW2Phd6qGXWXTpP820ruAhg==
X-Google-Smtp-Source: ABdhPJw4lCvDI5qxWeg9+Zx4oGNCCIFt2BJqNldnjQXhKLPJfzJPOcHS8LHpQntsfImx7DzCXz9/tkEB43a7uAvl+iE=
X-Received: by 2002:a19:c3d3:: with SMTP id
 t202mr23208923lff.678.1632727050548; 
 Mon, 27 Sep 2021 00:17:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210924162321.1.Ic2904d37f30013a7f3d8476203ad3733c186827e@changeid>
 <20210924162321.2.Ie8ceefb51ab6065a1151869b6fcda41a467d4d2c@changeid>
In-Reply-To: <20210924162321.2.Ie8ceefb51ab6065a1151869b6fcda41a467d4d2c@changeid>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 27 Sep 2021 15:17:19 +0800
Message-ID: <CAGXv+5GVpm2PeKkHxnn4gd_WE_Pyoij1RjYiJbAMnyze6RT5oQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/rockchip: dsi: Fix unbalanced clock on probe error
To: Brian Norris <briannorris@chromium.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Sandy Huang <hjc@rock-chips.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thomas Hebb <tommyhebb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_001735_679602_F5BBCE0B 
X-CRM114-Status: UNSURE (   8.40  )
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

On Sat, Sep 25, 2021 at 7:24 AM Brian Norris <briannorris@chromium.org> wrote:
>
> Our probe() function never enabled this clock, so we shouldn't disable
> it if we fail to probe the bridge.
>
> Noted by inspection.
>
> Fixes: 2d4f7bdafd70 ("drm/rockchip: dsi: migrate to use dw-mipi-dsi bridge driver")
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
