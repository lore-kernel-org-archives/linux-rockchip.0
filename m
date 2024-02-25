Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B15CBC54798
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Feb 2024 14:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m/xJ7TRMPVpA10M2nn4jWeCVQMoZl6Mlw3jUth0whUM=; b=TUsMnMZNxiTNdC
	9LSnpETL/HUgOPWjOtg/tY2reuCYxdtHekn0dG8yd4C7shL0NXJytK304mKakgbUxwI9hfFV4sihg
	0OblT3gikjEGHApRpTAPd5WjJyak6zP69Vg4OtS/VS5XVpaxLdNa9pGf5zZHd47fFfE49Qy6x0xWY
	/v94p9Ce8uILKN+78cQ6cJjyJ63kBVHFNag/CzMx82Tq8fm6aHTjtY/A7DqbXiaf17JT3SBYGOFIl
	2sLV4eISZyzUYgRxKNMbAtSGFrT0UoDgRqtSTDpd7nkQ7YjIRNLW7ZLY3PMMleL1WU9cCNfrNH2b6
	aUxoNlo8aEuDX5XWLlOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reFpi-0000000F6pJ-442f;
	Sun, 25 Feb 2024 14:50:27 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reFpX-0000000F6n2-05J5
	for linux-rockchip@lists.infradead.org;
	Sun, 25 Feb 2024 14:50:16 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-dcc84ae94c1so2057960276.1
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Feb 2024 06:50:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708872611; x=1709477411; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8ZtuRq6cAfTAvOtymIsospr++soOYmb+Wj6Ig36bcNk=;
        b=siYBgUtFWb8sNuAzj47pAZpTnk/rxgFOOGhbXzHxmp5+FlXQrbUHv/ZpYOkylBc9p7
         Vat4mT2j4qgCqMH1P4aufOkDI8BkRgPOZtGDBF4t75eGMkO1rvc1MCPj/Xh+fR0FyJu4
         6t2KQ+AvV0LKDnZ82ij0OKfROhYJGvGB/46De5tbfFL0/C7N3/o27XlKevpDO8rt2C14
         mQhSjGRhW3/o9z1QGZWOUE2o6HhiHr/Gwz/tIU6mvMNFGjB3Q6wg7vRSsSX0ue+Bsy1t
         4tKSis2oSqk+7xrAAlYqKu9uIGwDe5MYGwod0zil3Tksln1FGI4dKLhl1a0wsmX6rl/M
         itgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708872611; x=1709477411;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8ZtuRq6cAfTAvOtymIsospr++soOYmb+Wj6Ig36bcNk=;
        b=NE1OwNMJ7F52Yeex+8kGDL16rNkQNySo95Vhb0ngXde+3GxmXeHKK3vUP0pxn0eCUw
         O2W4OFVzGz3N50wfBp7dtkkaY+qa++pruajg8Ttxd4sc6aEVi/s7g5DNfgx9KQCQRDNd
         8kXdCPb+RhVkKo22IzVZ/+MImNuuHiyQBu42uNPH9db+pTOAJA0tFxtXVjl7pEdvX67b
         eqMeL93jSvJtQj/v8SPNJWoeUrcKxC3bR8p/X9ZLVELE3JXnFSrkJzVddBwC7kgmmCl0
         /M+iH17rLmesYsbOqiOj0acdFv7BJXoC/sAuw9B7l5zZcLuVdM5a22p7HyWKdF1CabrF
         Pn+w==
X-Forwarded-Encrypted: i=1; AJvYcCX1sk/rI02ZOhUSZz49qtKx2ojek+u4ccCVfX5ptYf8lWyJ3tezHu1TrvfIaL+Rwg0h6xVgUoRfzkbZVCyY/dL9FmhvMSmkqYWsz9ma2PTvJ+IB
X-Gm-Message-State: AOJu0YymK9c63VfEZYE1UwfsJD8vRMKTG2akmXgUjntPEgzNFeIIOBOH
	ErohIznjWYIxJcFIGcRQ7TVjh5ct5Yzpc7iUO4BDYodQ2ku7fRj+X90edmMDS0VFxBLf/Vy8bVE
	r7eWQoOYTXU2/oeJQ1QKftO5ku+g+ynIcx6UntA==
X-Google-Smtp-Source: AGHT+IEsDNKJglOwjpcbwuPET3jv5CNNyGpNaZEJmoSwiU0M4Hi3m/yyoB9WQeO9FCl6owi4EWs5iQnCZDMYGCJpGJQ=
X-Received: by 2002:a25:e0cf:0:b0:dc2:2e01:4ff0 with SMTP id
 x198-20020a25e0cf000000b00dc22e014ff0mr2897191ybg.45.1708872611551; Sun, 25
 Feb 2024 06:50:11 -0800 (PST)
MIME-Version: 1.0
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 25 Feb 2024 16:50:00 +0200
Message-ID: <CAA8EJpqB+Mf4jp88__r5dfsRSuGdAB+Q3vK5MBfBXysvRB92iQ@mail.gmail.com>
Subject: Re: [PATCH v7 00/36] drm/connector: Create HDMI Connector infrastructure
To: Maxime Ripard <mripard@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, freedreno <freedreno@lists.freedesktop.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sebastian Wick <sebastian.wick@redhat.com>, 
	=?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	Sui Jingfeng <sui.jingfeng@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240225_065015_185786_AF62103F 
X-CRM114-Status: GOOD (  26.80  )
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

Hi Maxime,

On Thu, 22 Feb 2024 at 20:14, Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi,
>
> Here's a series that creates some extra infrastructure specifically
> targeted at HDMI controllers.
>
> The idea behind this series came from a recent discussion on IRC during
> which we discussed infoframes generation of i915 vs everything else.
>
> Infoframes generation code still requires some decent boilerplate, with
> each driver doing some variation of it.
>
> In parallel, while working on vc4, we ended up converting a lot of i915
> logic (mostly around format / bpc selection, and scrambler setup) to
> apply on top of a driver that relies only on helpers.
>
> While currently sitting in the vc4 driver, none of that logic actually
> relies on any driver or hardware-specific behaviour.
>
> The only missing piece to make it shareable are a bunch of extra
> variables stored in a state (current bpc, format, RGB range selection,
> etc.).
>
> The initial implementation was relying on some generic subclass of
> drm_connector to address HDMI connectors, with a bunch of helpers that
> will take care of all the "HDMI Spec" related code. Scrambler setup is
> missing at the moment but can easily be plugged in.
>
> The feedback was that creating a connector subclass like was done for
> writeback would prevent the adoption of those helpers since it couldn't
> be used in all situations (like when the connector driver can implement
> multiple output) and required more churn to cast between the
> drm_connector and its subclass. The decision was thus to provide a set
> of helper and to store the required variables in drm_connector and
> drm_connector_state. This what has been implemented now.
>
> Hans Verkuil also expressed interest in implementing a mechanism in v4l2
> to retrieve infoframes from HDMI receiver and implementing a tool to
> decode (and eventually check) infoframes. His current work on
> edid-decode to enable that based on that series can be found here:
> https://git.linuxtv.org/hverkuil/edid-decode.git/log/?h=hverkuil
>
> And some more context here:
> https://lore.kernel.org/dri-devel/50db7366-cd3d-4675-aaad-b857202234de@xs4all.nl/
>
> This series thus leverages the infoframe generation code to expose it
> through debugfs.

[...]

>
> Let me know what you think,
> Maxime

The overall idea looks great. I've started checking how I can use that
for our msm devices family, which makes use of bridges and
drm_bridge_connector.
My current idea is to extend the drm_bridge_funcs with the new
callback to be called once the drm_connector has been instantiated.
This way all the bridges can influence new connector.
Another possibility is to follow drm_bridge_connector design closely
and let it call into drm_connector_hdmi code if it detects that the
last bridge is the HDMI one.
WDYT?

Some context, older MSM devices have an on-die HDMI encoder,
implemented as drm_bridge at drivers/gpu/drm/msm/hdmi. Newer
generation of devices has dropped the on-die HDMI implementation in
favour of using external DSI-to-HDMI bridges, like Lontium LT9611 or
LT9611UXC. I'm looking at enabling new HDMI infrastructure for both
cases.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
