Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A03E5C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jan 2022 21:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4taE1Zcjuy1g03Blp2hpHWrFd7fNKDdNFDo3kmdEUGI=; b=0TqFu/rnlKKkUV
	tcx5D1IRB8k389rnXxK+WZOtMpyVfpuU2qRu5sRd8ZlPGcg2iKw6tc1gkyoiwA5V7UMIjnMuAsFCx
	UPDPpjmYwubdUoM74AkApIcDdyydyskHAxDwZxezwdytEp0PVrUBFBrmpTkELuZViBi0GottCCsq8
	A3DEOaJd6jGliUQ7ZDA1tp4kuYXf190wivm7jZiYI+5/lJgg1hMD67KSA4UoSt8+78mPXBVviGHJt
	jZaTX5d9l5DnzIORP5DnDP3P2xGsG8nLgC3QYwtU/1x57ulTBcftZ1/RBQrVcLzNT0bTVxIL2EPMu
	a2Al6mjw06WI4D5cpCWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Tho-00AEwo-E2; Fri, 14 Jan 2022 21:01:52 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8Thc-00AEvR-Jh
 for linux-rockchip@lists.infradead.org; Fri, 14 Jan 2022 21:01:42 +0000
Received: by mail-oi1-x22f.google.com with SMTP id w188so13857164oiw.13
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jan 2022 13:01:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ev8VAWLABgcwjAWOJiwrx2eFMwjFEQ1Ark3f35TvFjs=;
 b=M2yojZLr84nstQZUzNRXprG2/FlU5DJXCa/4lDGpMbgAipBAIr2iB5N9qqsMfwqQkT
 g4yO681gHnyAaJL2H39tZR29z9AG/zWpTNG5WQvh3V4qvQUnEZJgbHJLq89a6QFbmj7U
 T13OJuE02K3CvAEpRN/RzVBWxyp6maN+0PkJo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ev8VAWLABgcwjAWOJiwrx2eFMwjFEQ1Ark3f35TvFjs=;
 b=OkoHwEs7JuuHMQN7SGHo/+M93IV4f2scy4OOK2xhW31VI9re6spmSPvG9Ven0Ko+cJ
 ZuCPI1M5ykUdHrYHaxmzGbHiZk5SJonpUtB3dgUq6sVe8Sa8Ldkld/NW7567s2hqSm9u
 XAqTzcMe666VrWyAx5gYxZNoFVDULaHTzpl707QekLIyxk1oHq7zCCvdqIGoL981GsIR
 gljMhsJ2OzQTznQRxkc3aP334yc0uBhLP4hnTkXbY/xhWBsF02V9GhGbJPlw2+W8tyQl
 Ymdd2nAW1zNLJlfZXKL2t0PiB8E68tjizBJfjsDrjXDay2Yv9J9ncXyQYyQ+7wmj+pbf
 mBEw==
X-Gm-Message-State: AOAM532WO2hDaCIFTUyYwzy4G4BRYa3AF6M+OZnRMSLoq8JkvXLxApZU
 UpOHhwEC1I6ALGylzdHWebKZ40HAtyD/sw==
X-Google-Smtp-Source: ABdhPJxwjIfw/dBbFoqPmyjxs2/qKprtZUfmPM8a0Y4ZM/NVRCQRTheRxJby28tOHIm+CF1P1vC0uw==
X-Received: by 2002:a05:6808:45:: with SMTP id
 v5mr13131830oic.58.1642194099243; 
 Fri, 14 Jan 2022 13:01:39 -0800 (PST)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com.
 [209.85.210.46])
 by smtp.gmail.com with ESMTPSA id f18sm623855oiw.30.2022.01.14.13.01.36
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Jan 2022 13:01:36 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id
 z25-20020a0568301db900b005946f536d85so2503309oti.9
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jan 2022 13:01:36 -0800 (PST)
X-Received: by 2002:a9d:5908:: with SMTP id t8mr7723553oth.186.1642194095619; 
 Fri, 14 Jan 2022 13:01:35 -0800 (PST)
MIME-Version: 1.0
References: <20220114201652.3875838-1-briannorris@chromium.org>
 <20220114121515.1.I46f64b00508d9dff34abe1c3e8d2defdab4ea1e5@changeid>
In-Reply-To: <20220114121515.1.I46f64b00508d9dff34abe1c3e8d2defdab4ea1e5@changeid>
From: Brian Norris <briannorris@chromium.org>
Date: Fri, 14 Jan 2022 13:01:22 -0800
X-Gmail-Original-Message-ID: <CA+ASDXMO3sPta-vhMCqAPRFFkNa-nmY+wK6PXJaSUEXBHETG+A@mail.gmail.com>
Message-ID: <CA+ASDXMO3sPta-vhMCqAPRFFkNa-nmY+wK6PXJaSUEXBHETG+A@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Switch RK3399-Gru DP to SPDIF
 output
To: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: alsa-devel@alsa-project.org, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>, Sandy Huang <hjc@rock-chips.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Linux Kernel <linux-kernel@vger.kernel.org>, Lin Huang <hl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_130140_657332_60A00BDB 
X-CRM114-Status: GOOD (  17.91  )
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

Sorry to send a self-reply so quickly, but I noticed an error and want
to make sure this doesn't get merged _too_ quickly before I get to
send a revision! See below:

On Fri, Jan 14, 2022 at 12:17 PM Brian Norris <briannorris@chromium.org> wrote:
>
> Commit b18c6c3c7768 ("ASoC: rockchip: cdn-dp sound output use spdif")
> switched the platform to SPDIF, but we didn't fix up the device tree.
>
> Fixes: b18c6c3c7768 ("ASoC: rockchip: cdn-dp sound output use spdif")
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
>  arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
> index 45a5ae5d2027..21ec073f4d51 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi

> +&spdif {
> +       status = "okay";

I need to fix up the pinctrl settings here. rk3399.dtsi has a default
that is incorrect. That's OK for several variants (Kevin and Bob,
where the pin is actually unconnected), but it breaks Scarlet (where
the pin in question is actually connected to something else).

I'll send a v2 after waiting a bit, in case there are other comments
worth addressing at the same time.

Brian

> +};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
