Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 232ADC32793
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 18:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3xz7cw50ZVWgAMy0a4ySu6QSvT+/curh5DfWLV5zHU=; b=V76JGlpRvRzMQU
	0M87qsL++PLKX8z8z6u9lCIEwfqaPSveMGQRXMT9UzUT5IzULdop3FlT34DpWovsSFwuHcUYM2P/o
	WZxKR9IGC5Z+PmDz82nON+1oNwuQ5lGshBq/+uuxIba67BpFpsXrSV74z/3kTDbDWjiD139Iio/mj
	05a1fTd8ovG/3jJK6zXRcQEBt9fPLMefWwGjkAGnoIIXB09TjkpF35CBhTmDCi2kYqxEbw+yh1Bvm
	8stzdJ9u0CrKYu9i5rKDLGrHo2edA+VYlqEpI7W6AmBOL92QKvosR7yQ/8Bqz0u+urqAxAKRByRUe
	88Uzj2GccvSxUto6IE+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIDOU-002Mev-Ag; Wed, 18 Jan 2023 18:42:42 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIDOR-002MeA-DP
	for linux-rockchip@lists.infradead.org; Wed, 18 Jan 2023 18:42:40 +0000
Received: by mail-wm1-x32b.google.com with SMTP id f25-20020a1c6a19000000b003da221fbf48so2272972wmc.1
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Jan 2023 10:42:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r0LA6cGaaxp3puXrMYIx3Plq7Ps/ZLbe9KrZC2IbOQA=;
        b=YExTC/Qap6Zd/r31YyFxFW2AAxAohGzM9iZbu1SpJxcRj+Rthc0uYF8EkM8SG2477I
         gUkXHvvA/BedGsHIzD/Aoars3OKUXniJhSIMbIkExCVD1IZOH0jGESqgvr5AO84s+IFI
         7xHWlp3ZcnxvFeqL+2kDv72hdr5eBGPfqulV/eAdgnzEELH6PR71CVdPHV+L2Sfj2Xe0
         PwQfFMsG8l29SP9CeQ8yS6P3rOM0pmuICmCS9HfQm5Tp5yb/E9pzazwVJxFIIUWoTibj
         CGpdtvV88H7OCE+jhwibrOyPs1LY6nX+PRmwh0O7Alt5YVjWdN06ZcS9Epi8BMg5YaOA
         679g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r0LA6cGaaxp3puXrMYIx3Plq7Ps/ZLbe9KrZC2IbOQA=;
        b=xxlMH5PuHeGO3BR+WDWEzXNMduYvcLxIWnCb6jFEuXBtLZmmfF4B5CA3P+nj9xvCC9
         KIqszUrzGtU2Sd08A0v9K9ukK1BrRLRDjtTal2TBABuszuOdvJsrEIDE6Mp5dzlrBqfw
         ujcwrFhlMVATgZE4ifPriQ/q+IgshaNQpviYYPC+zvJcDTO5sdhxOYbfrUmif4vS1zf/
         FUM0DZirT7QwdB9HACfwY71UlYKLjTDQywgokCTWUBd6apUxUkSw5+y8Oo68sp+fYjXq
         AwBAPsb7+i6QDGzsVlyoYgOyfLSSK9N9ybdC0sk4jsLz1gjfoxcK909YpX+FRhAlJPb4
         Ap2Q==
X-Gm-Message-State: AFqh2kpBFj7KIMJgXITQKrpRsNqOyzyoZx2emTxdCu96Rt0ic+qeSRvN
	fplPFtVYvQ2YjpjED0wcO6Y=
X-Google-Smtp-Source: AMrXdXukmf9b8exM0b1FemrAVyfFt8TCuarQhQM/rUVlgYFNAbZeXExDbZYZ7Vu46FK65hS+UPLJdQ==
X-Received: by 2002:a05:600c:b8a:b0:3d9:f806:2f89 with SMTP id fl10-20020a05600c0b8a00b003d9f8062f89mr7497630wmb.41.1674067355624;
        Wed, 18 Jan 2023 10:42:35 -0800 (PST)
Received: from archbox.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id m31-20020a05600c3b1f00b003db0cab0844sm3149306wms.40.2023.01.18.10.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 10:42:35 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Robin Murphy <robin.murphy@arm.com>, Dan Johansen <strit@manjaro.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v3 0/3] drm/rockchip: dw_hdmi: Add 4k@30 support
Date: Wed, 18 Jan 2023 19:42:33 +0100
Message-ID: <5902537.lOV4Wx5bFT@archbox>
In-Reply-To: <20230118132213.2911418-1-s.hauer@pengutronix.de>
References: <20230118132213.2911418-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_104239_484730_2831E41C 
X-CRM114-Status: GOOD (  18.04  )
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

On Wednesday, 18 January 2023 14:22:10 CET Sascha Hauer wrote:
> It's been some time since I last sent this series. This version fixes
> a regression Dan Johansen reported. The reason turned out to be simple,
> I used the YUV420 register values instead of the RGB ones.
> 
> I realized that we cannot achieve several modes offered by my monitor
> as these require pixelclocks that are slightly below the standard
> pixelclocks. As these are lower than the standard clock rates the PLL
> driver offers the clk driver falls back to a way lower frequency
> which results in something the monitor can't display, so this series
> now contains a patch to discard these unachievable modes.
> 
> Sascha
> 
> Changes since v2:
> - Use correct register values for mpll_cfg
> - Add patch to discard modes we cannot achieve
> 
> Changes since v1:
> - Allow non standard clock rates only on Synopsys phy as suggested by
>   Robin Murphy
> 
> Sascha Hauer (3):
>   drm/rockchip: dw_hdmi: relax mode_valid hook
>   drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
>   drm/rockchip: dw_hdmi: discard modes with unachievable pixelclocks
> 
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 40 ++++++++++++++++-----
>  1 file changed, 32 insertions(+), 8 deletions(-)

For the whole series:

Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>

Tested on two monitors:

Monitor 1 was an Iiyama ProLite G2773HS, which only does 1080p60 over HDMI.
Testing on it, I found no regressions; all the old modes still showed up
and the 1080p60 mode worked as expected.

Monitor 2 was a Philips 328P, which does 4K30 over HDMI. Without the patches,
the 4K modes were absent. With the patchset, the 4K modes are present,
functional and picked by default.

Great work!

Cheers,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
