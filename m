Return-Path: <SRS0=jpTb=OR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D977EC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 22:53:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A814F60EFF
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 22:53:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A814F60EFF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cTIxNtb8JcSwdGCy5bKC5FtDhjABsfKtdygOZMD7boY=; b=jKAhOTfgR+mWC9
	KD/yfaGI7oRAqvIXiI/U6X3jZyChCUUfyY402K6cc9o8bjGePH32m+CxkWJvIhXfuwBNphHZuYeTA
	fG9H88MUAuAPZhuEiJPmI7mbhO4pHLeuTAGKU8yqGF/bzKQNZNSVBab1A/IIgoi13AbckloAJe8wJ
	T5K+W7mFJ1VwOhjcv8aLbNLHMOadCj7585vs5QcBacdlHiG3f9h8zV6xraZ9w8JAY5FW4JjUvsJE0
	iESAH8Yf1ZCDPUxLPVqDoXMBmuHIqXAoV0eXgn0G/AjgaLWWhUe8AYi+jwgBhrsUDV+jEWqcmI/g2
	AoaDj/HHyWf/WNnD5ekw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUzUm-004m4M-0U; Mon, 27 Sep 2021 22:53:12 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUzUf-004m04-Cu
 for linux-rockchip@lists.infradead.org; Mon, 27 Sep 2021 22:53:08 +0000
Received: by mail-pl1-x62a.google.com with SMTP id t11so12807500plq.11
 for <linux-rockchip@lists.infradead.org>; Mon, 27 Sep 2021 15:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JA7b+17NeQa8MxRoYAOMDqy2vhM9dB7W8X4n526ZCa0=;
 b=Z5O9ySOI18c257QEjUpy/S8DkTMRZbS+Opwm+B06YkbXyoON66i8zm0NmG1G1POeYS
 EBc7b9mKjFHhjnVmjWrHyrtObPg/oquR2Jn3r5VzpoNSSmbzAFUXVpMR0KdMkvSO3ils
 f2HFYDCiCdJkcZJt36DLQZwmQu3Xu5F9SFcdk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JA7b+17NeQa8MxRoYAOMDqy2vhM9dB7W8X4n526ZCa0=;
 b=eRwmy1h876rIaQx5r/eiVL3upsn+ZWe43Fyt6a8OzwT8nJca4oF4/Tan6W5++Gpk9Z
 m8Sah2j+NChzOAX6T0NtjyBdpAizcq94FOjuIasbbfAAT/blibAchsbZphhi9/RxEgLp
 /1hamejHUXhzGY+odZbUU8PAcW8x3GIUijLckLm2Ir1sBb3M5yxCqzWg82JBq5FXKlHV
 QlDV/oYJvLFgm0cIZzdA9ACl48kQrguiXpwAWtmc8eSnxP4TpJv0BG1Y3U7q2FPhiSuO
 lsVXz1K06ztAFx8TU9YCuHsSDG2zEyh/IGWsUs9u5ITfBWnhfhLi/oJ80ffE9BrYj6Hg
 Br/A==
X-Gm-Message-State: AOAM531DJRRvyNx6vcD5n/YRGEaKUq+21jUBJqc2BjhoueCxbn3w635Y
 uXIRAh5LPoX/ktJm6NoA9ZRT5g==
X-Google-Smtp-Source: ABdhPJxkB1+hIdcbUYUE1kpFcUSeQp8QyXRmiFqUkg3nIfTORYYZ8be8QnFQ8D4kae1TnKknxs4a/A==
X-Received: by 2002:a17:902:db11:b0:13c:7a6e:4b57 with SMTP id
 m17-20020a170902db1100b0013c7a6e4b57mr2025768plx.43.1632783184202; 
 Mon, 27 Sep 2021 15:53:04 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:82d7:f099:76bc:7017])
 by smtp.gmail.com with ESMTPSA id gk14sm172195pjb.35.2021.09.27.15.53.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Sep 2021 15:53:03 -0700 (PDT)
Date: Mon, 27 Sep 2021 15:53:00 -0700
From: Brian Norris <briannorris@chromium.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Thomas Hebb <tommyhebb@gmail.com>, dri-devel@lists.freedesktop.org,
 Chen-Yu Tsai <wenst@chromium.org>, linux-rockchip@lists.infradead.org,
 Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org,
 aleksandr.o.makarov@gmail.com, stable@vger.kernel.org,
 =?iso-8859-1?Q?N=EDcolas_F_=2E_R_=2E_A_=2E?= Prado <nfraprado@collabora.com>
Subject: Re: [PATCH v2 1/3] drm/rockchip: dsi: Hold pm-runtime across
 bind/unbind
Message-ID: <YVJLTLuNHNAzVq5V@google.com>
References: <20210927175944.3381314-1-briannorris@chromium.org>
 <20210927105928.v2.1.Ic2904d37f30013a7f3d8476203ad3733c186827e@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210927105928.v2.1.Ic2904d37f30013a7f3d8476203ad3733c186827e@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_155305_493449_06C515CA 
X-CRM114-Status: GOOD (  20.12  )
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

On Mon, Sep 27, 2021 at 10:59:42AM -0700, Brian Norris wrote:
> In commit 43c2de1002d2, we moved most HW configuration to bind(), but we
> didn't move the runtime PM management. Therefore, depending on initial
> boot state, runtime-PM workqueue delays, and other timing factors, we
> may disable our power domain in between the hardware configuration
> (bind()) and when we enable the display. This can cause us to lose
> hardware state and fail to configure our display. For example:
> 
>   dw-mipi-dsi-rockchip ff968000.mipi: failed to write command FIFO
>   panel-innolux-p079zca ff960000.mipi.0: failed to write command 0
> 
> or:
> 
>   dw-mipi-dsi-rockchip ff968000.mipi: failed to write command FIFO
>   panel-kingdisplay-kd097d04 ff960000.mipi.0: failed write init cmds: -110
> 
> We should match the runtime PM to the lifetime of the bind()/unbind()
> cycle.

Hmm, sorry to reply to my own patch so quickly, but after a bit more
testing I'm finding we still have yet another problem here -- that
suspend/resume does not work. For suspend/resume,
drm_mode_config_helper_{suspend,resume}() are expecting to only do
teardown/setup via disable()/enable() -- there is no re-bind() (which
makes sense). But the DSI hardware state may be lost, so the resume-time
enable() may find the panel initialization timing out yet again.

Possible solutions:

(1) I can add PM suspend()/resume() operations just to call
    dw_mipi_dsi_rockchip_config().

(2) Switch back to using mode_set() for HW configuration, like the
    downstream/BSP driver does (and the initial versions Rockchip and
    later Heiko were working on did the same), since that's always
    called at the right time before both panel and encoder enable().
    That also happens to be where some other DSI drivers [1] do similar
    init.

Have we been avoiding (2) just because that doesn't really match the
intended purpose of the callback? I can't find any cleaner callback for
this at the moment, and I'd rather not try to introduce entirely new drm
helper callbacks just for this particularly-unfriendly sequence.

I have a patch written for option (1), and may send a v3 soon to include
that as well (because that's also a regression from the same commit).

Brian

[1] e.g., drivers/gpu/drm/bridge/nwl-dsi.c

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
