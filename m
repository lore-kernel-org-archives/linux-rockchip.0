Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E238E7719A
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jan 2025 14:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QzYVArxePfZSeBKESHb58v9D0KVJZ9e8WMdNYEuIS9I=; b=RTkG506SfXcBHb
	WwF4ihJLJeQ8dsNKIT/MDL1dPUohXFR5+t5lEJpFOrlrPDX27Xmyus51XQavblaqzUdtjpmKAR6Ne
	qfFPuYGKpB/q8Dw7RQ4SR35GJw7oC/Yf+Q4sZVyGcb7cPaCKsy+Ce+Of6TNgJ6wL+/ugPAgz+IDGE
	ELORK8ukxQWRJDMzfVuA8AhJLuHe4WyjJnXyg/EZVZluPaR+M8xpFAJEIvAIoht7rWjqnuZxbnThS
	vmwmO+I5jhe/cQ1uuNB+TX2tjivrlsDgOEs5NkTDVvmJ/5zMAlrKBYGZJokdfwEj912/Nn1fqnAkM
	oZHRx8B1Rb21WWnRzbKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUoPX-00000001drk-2aHg;
	Mon, 06 Jan 2025 14:48:55 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUo9o-00000001aMs-3h3s
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jan 2025 14:32:42 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-e549a71dd3dso4073926276.0
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jan 2025 06:32:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736173959; x=1736778759; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fJSZIXJSkHeJBkdcb6ya9oMRq6rzriaUtPDL7vlAVQw=;
        b=kJw8LumpMKyLYmrquxvbJ/YkBXfubB/aeYQLjiDVXzDJEr6aYWrhBHixq2aiI07mYc
         m9UEi6QDv21Gn76Kb0NIvRyA/xzSYodOQwji5H5vHaWbtqosatImZrs2xMaklT9E9KVW
         g4g2VSDgcFkEyyuRYyStWGpecf5LiqV4wYcj94M3hV/lrXfhMjdF3zfNq/SVUV9cA0Io
         HF4imWzBGJw3vAx8GPMO71WCgJHU7N2K9SXwSaBYynO+q22JPZ5vbDPXeZfQf6a9hxR0
         9flXmYVBnznCPX0Z5+05aXE0OJ+zmo/8dJVE3nRc8gVf7bHdEV+H1PqmZGyigyNqHA8O
         wNFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736173959; x=1736778759;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fJSZIXJSkHeJBkdcb6ya9oMRq6rzriaUtPDL7vlAVQw=;
        b=pTCBz+cbMUUfnxo+rwpA5xqcJ1YM19hJ61jf2MJrhYtKaw3Gb0/MgoEG7CABgakt/Z
         d6BlBgPIakuMKdlqam6kHxLlHFUZuJBvsbHwJ0NS9vpeLS7kU5M5un6FmGS0yq3XAof9
         AJjQ/aROoNabA2EAwb07nefNiwfbsts7jFmHRBdx69tjviynuAwXij5JfInRjgLVrAEJ
         yu3yKgVFSPmrFg1iVjFR18/V1lSRCjcOEX3n31KLpd9H7WpG7IWHsSbVI5EaxYOx+XIx
         7AJ3rn4qsHQCJeYAQ4zI0Kx8mm2hXyM9uu3KEwS8o/jz8yBKWo1TnLZ4jzq72vIZg2Zr
         vYOA==
X-Forwarded-Encrypted: i=1; AJvYcCUCaLVAw6bWlfn4wlsqVBuhFkqmU62SXcP7btvs4rvqIYtBu0xYHL5hPt1uftWR2GOQI5Sh8zZbQUw1DNWT2g==@lists.infradead.org
X-Gm-Message-State: AOJu0YyKWL4LdNCuQefFFWArHJ+0v8J0lr3iuu1EdXYCfSYaq2LD6cDi
	wVBAp5HVkxDWBAJ0zVpJlpS3jad7eWa7cdyQeIJNdqmq1c/LO2hLWIbOFmUWFHgzIC3gkW8hBwG
	a86r2BKIacNVaD4TY85FbRt6ullh2J51unwFrOQ==
X-Gm-Gg: ASbGncv68IHGK6WNlLrdfXhaz1JAo0OKM0FEnLhKmt5+47SD32aRYUnm2IPxZ04G6O7
	nv7ZFx/RiXG9kSxTRf14lIBcGp7Wlb+OmC92Az7K0/xGzNk80iT1NWdL8sw3RKJnnsRnrxQ==
X-Google-Smtp-Source: AGHT+IHmvXuwvGSdBr59QFJmGXR85prnYmkeJd5ryoQXMvTWEemEChNFf5E52WxYsQ1l+y7kBas5ggRo21B4VIcMRB4=
X-Received: by 2002:a05:690c:7106:b0:6ef:7640:e18a with SMTP id
 00721157ae682-6f3f820f277mr479003527b3.31.1736173959645; Mon, 06 Jan 2025
 06:32:39 -0800 (PST)
MIME-Version: 1.0
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-14-damon.ding@rock-chips.com> <e52pbjnusvuoqiyoorjr5msrfmgeqs2jt5sk6zcesvzy7cszzk@fzrtpsjoklgu>
 <e2a18f8c-dc38-4b12-968e-dd369cb34cb4@rock-chips.com>
In-Reply-To: <e2a18f8c-dc38-4b12-968e-dd369cb34cb4@rock-chips.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 6 Jan 2025 14:09:34 +0200
Message-ID: <CAA8EJpo5aE4itm8MTeCpqns5eLuWj0TaZW5qwrw02_Zc73NNiw@mail.gmail.com>
Subject: Re: [PATCH v4 13/17] drm/bridge: analogix_dp: Convert
 &analogix_dp_device.aux into a pointer
To: Damon Ding <damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_063240_950546_6563A79C 
X-CRM114-Status: GOOD (  28.57  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 6 Jan 2025 at 13:04, Damon Ding <damon.ding@rock-chips.com> wrote:
>
> Hi Dmitry,
>
> On 2024/12/30 21:35, Dmitry Baryshkov wrote:
> > On Thu, Dec 26, 2024 at 02:33:09PM +0800, Damon Ding wrote:
> >> With the previous patch related to the support of getting panel from
> >> the DP AUX bus, the &analogix_dp_device.aux can be obtained from the
> >> &analogix_dp_plat_data.aux.
> >>
> >> Furthermore, the assignment of &analogix_dp_plat_data.connector is
> >> intended to obtain the pointer of struct analogix_dp_device within the
> >> analogix_dpaux_transfer() function.
> >>
> >> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> >> ---
> >>   .../drm/bridge/analogix/analogix_dp_core.c    | 92 ++++++++++---------
> >>   .../drm/bridge/analogix/analogix_dp_core.h    |  2 +-
> >>   .../gpu/drm/bridge/analogix/analogix_dp_reg.c |  2 +-
> >>   3 files changed, 50 insertions(+), 46 deletions(-)
> >>
> >
> > [...]
> >
> >> @@ -1127,6 +1128,7 @@ static int analogix_dp_bridge_attach(struct drm_bridge *bridge,
> >>
> >>      if (!dp->plat_data->skip_connector) {
> >>              connector = &dp->connector;
> >> +            dp->plat_data->connector = &dp->connector;
> >>              connector->polled = DRM_CONNECTOR_POLL_HPD;
> >>
> >>              ret = drm_connector_init(dp->drm_dev, connector,
> >> @@ -1535,7 +1537,9 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
> >>   static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
> >>                                     struct drm_dp_aux_msg *msg)
> >>   {
> >> -    struct analogix_dp_device *dp = to_dp(aux);
> >> +    struct analogix_dp_plat_data *plat_data = to_pdata(aux);
> >> +    struct drm_connector *connector = plat_data->connector;
> >> +    struct analogix_dp_device *dp = to_dp(connector);
> >
> > I see that Analogix DP driver doesn't support
> > DRM_BRIDGE_ATTACH_NO_CONNECTOR, but at the same time I don't think this
> > is the step in the right direction. Instead please keep the AUX bus on
> > the Analogix side and add an API to go from struct drm_dp_aux to struct
> > analogix_dp_plat_data. Then your done_probing() callback can use that
> > function.
> >
>
> It is truly a more concise way.
>
> In the next version, I will add the following functions on the Analogix
> side in order to get the pointers of struct analogix_dp_plat_data and
> struct drm_dp_aux on the Rockchip side. And the way has already been
> verified.

LGTM, thank you.

>
> struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct
> drm_dp_aux *aux)
> {
>         struct analogix_dp_device *dp = to_dp(aux);
>
>         return dp->plat_data;
> }
> EXPORT_SYMBOL_GPL(analogix_dp_aux_to_plat_data);
>
> struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp)
> {
>         return &dp->aux;
> }
> EXPORT_SYMBOL_GPL(analogix_dp_get_aux);
>
> >>      int ret;
> >>
> >>      pm_runtime_get_sync(dp->dev);
> >>
> >
>
> Best regards
> Damon
>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
