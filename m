Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA764C02182
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jan 2025 18:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xorMWtL7vfhvFFYy9LFti5AvBCbiM6szFutKGFdOe0A=; b=axnBKR7yDwX4mr
	DKqBzLEwk0zRqQuGOmwEopVvZylYGVucLqVJOxlbdJZ7LEk1cgBNpXcznqZngciso9O2z7GR7vzBs
	kGrL1R5qMg1jpJvKYV9DpOl3KqqNKO7QXkWTsvJvaDupQi4UJt8ggriNAGhfCgy19nUg+uoJMZ5B/
	5M38EqH7xJotFIzsPG/cuXF3t9IHfcy9834lBR2O/3FGEPsV6GALvUwxSr0IqgyUPjEJDjnYhjARj
	yxrgvTSiLt3n5r0xD3YPX57kW8x5hnDBGx8J3D4x5bqv+aty5q8djZDGb1dztwpxc7a6XVcsu2uEC
	Yoo7XBmA2VV2973YOyAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tafvh-0000000B2P6-2iUy;
	Wed, 22 Jan 2025 18:58:21 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taftl-0000000B2BS-0yXk
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jan 2025 18:56:23 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-30761be8fcfso478051fa.0
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jan 2025 10:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737572179; x=1738176979; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ucEtL2vpaDXIcOOJNCX2jaEjGKELSNePIN/Dbu21H78=;
        b=dXGuyawGNyGuDREcyyNV3FLk+QD/tHC+SzEk22ErptUBPFZwV7RPhT7w0aSukNrYe4
         doFjkdAseXucQ0FomEo72H/neMF/plmf6fGosADN6p8fqSgMzZahgeolIkbF0S+yDIL7
         D+APA8HYPLbKyEQXJGYM5PaSYI8QDItbsg+H0FD6AkyOcFy+l/AWXA92kEUF0/OP9bZS
         I6LR9JA9b4nxYN7NhYqaFBVE61hVk+qrLFlFcJi+fAS401/5BQIuLzfcZa2vs/eLjc8o
         nTQT9tFRQ9AKcBAGt6Fz8zhfr9i7eEpr25h8X+bKs5IyL1xvyqlk5O0KjVovyoa3SJ7P
         yqtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737572179; x=1738176979;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ucEtL2vpaDXIcOOJNCX2jaEjGKELSNePIN/Dbu21H78=;
        b=ryHknOGvFCuQ2JWJmM4gnC5ZmqXzCfSWNfRTQAmODR2w5ZPQxJnx1hzS98MjDr2oci
         dy9UcQQXLrG/b5En0HyVLtVIv2IGNH11jmlTA/mbljwdeHawjmn0C3UNvBFOGXX+7o56
         iZm3DyWPVrIkzLiVNMRaIym3audNQujTxHJWPH3zKUONKmNqsOr3e7njwvce2GScff5S
         9jUpKBQIjJVQkgcXt/2SCRZtGS/hWYY9n0HTBCqXonCbg1YGrxiC92uU5mDanvy8vjV/
         BPTSFIlKmHb8MoH4WpbbXWnGY+/6V7gGt84YUhHRN1omCi9SqkzZ8oPcnk0qsPuBIf8U
         LzZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdwK6HRyDg/8nX4+VX90PQJNvccow9pEMZj22nOQd2OEZpMqUpzhLyn8inmt+AhNSuUCSd9bQRCXK9TXkniw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwUFxyomDF7owB2Wy3fUDwMdU5kD/8aq/TEPppGLA6s97aXpbce
	fWg6MjLsYPvDLTwVqDpKdp/09wd6xFfyLzFzZGoJNbx1V83tI5Guc800fc28DXw=
X-Gm-Gg: ASbGnctjo6tlYctl66Cg48tNCWyHExcJfoNShW218OUOPDa783Kvbq+fFhuXhDtN1ed
	3/hjbjtBRde1QVJ2AaiRES9udlf/kZcimYFtsFsvmwiV+5PmrHIs/OHfWxWJ+W40J0GG7ZsMLKh
	tELtPgcEtPwj2q0ng5REDgsYmYhTrcT02Fbw8rKYp1p+N31EWdY++HQqwwSObQb90lXMWaKnC5c
	RJUsEiDWuSZ5hb1gj8+UXNHnOn9EhrdEigF/uCAXevNXWJnHKy+UabrfB5fcSI5rB5GjL0kmZw/
	l8B4fENKZDj++R3gZvbNxBTwXcPUCkuslkEuZjmYCWRgJUMsgg==
X-Google-Smtp-Source: AGHT+IH1Num8sybuVWGX6lQCu41xk40pAQuzRF+kjqRrF1p7We/fl/ksVQE0dG+SV6CSYwqD02NYlQ==
X-Received: by 2002:a05:651c:1713:b0:300:7f87:a6a with SMTP id 38308e7fff4ca-3072cab0c95mr63866951fa.7.1737572178788;
        Wed, 22 Jan 2025 10:56:18 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3072a35acb6sm26558281fa.62.2025.01.22.10.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 10:56:17 -0800 (PST)
Date: Wed, 22 Jan 2025 20:56:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v5 12/20] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <qrtcanwfokvc5x6xtgxhi2fs6fcibhnnhenegrdialx7cgy7u3@ea4v3woh5gki>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-13-damon.ding@rock-chips.com>
 <d7zpv6qt52mhny54dejw4yqlp2k2c437op7qmepqe27pufplqk@64xvohrz7h2q>
 <330041c4-aaee-4b41-8ccd-e2807415c709@rock-chips.com>
 <ba369b98-9a2a-421a-9251-4db3c1dcedd9@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba369b98-9a2a-421a-9251-4db3c1dcedd9@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250122_105621_263851_EF291036 
X-CRM114-Status: GOOD (  29.98  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jan 22, 2025 at 05:37:53PM +0800, Damon Ding wrote:
> Hi Dmitry,
> =

> On 2025/1/22 16:17, Damon Ding wrote:
> > Hi Dmitry,
> > =

> > On 2025/1/9 20:48, Dmitry Baryshkov wrote:
> > > On Thu, Jan 09, 2025 at 11:27:17AM +0800, Damon Ding wrote:
> > > > Move drm_of_find_panel_or_bridge() a little later and combine it wi=
th
> > > > component_add() into a new function rockchip_dp_link_panel().
> > > > The function
> > > > will serve as done_probing() callback of devm_of_dp_aux_populate_bu=
s(),
> > > > aiding to support for obtaining the eDP panel via the DP AUX bus.
> > > > =

> > > > If failed to get the panel from the DP AUX bus, it will then try
> > > > the other
> > > > way to get panel information through the platform bus.
> > > > =

> > > > In addition, use dev_err() instead of drm_err() in rockchip_dp_powe=
ron()
> > > > , which will be called before rockchip_dp_bind().
> > > > =

> > > > Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> > > > =

> > > > ---
> > > > =

> > > > Changes in v4:
> > > > - Use done_probing() to call drm_of_find_panel_or_bridge() and
> > > > =A0=A0 component_add() when getting panel from the DP AUX bus
> > > > =

> > > > Changes in v5:
> > > > - Use the functions exported by the Analogix side to get the pointe=
rs of
> > > > =A0=A0 struct analogix_dp_plat_data and struct drm_dp_aux.
> > > > - Use dev_err() instead of drm_err() in rockchip_dp_poweron().
> > > > =

> > > > ---
> > > > =A0 .../gpu/drm/rockchip/analogix_dp-rockchip.c=A0=A0 | 41 ++++++++=
++++++-----
> > > > =A0 1 file changed, 30 insertions(+), 11 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/
> > > > drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > > > index 0957d3c5d31d..3ae01b870f49 100644
> > > > --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > > > +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > > > @@ -124,13 +124,13 @@ static int rockchip_dp_poweron(struct
> > > > analogix_dp_plat_data *plat_data)
> > > > =A0=A0=A0=A0=A0 ret =3D clk_prepare_enable(dp->pclk);
> > > > =A0=A0=A0=A0=A0 if (ret < 0) {
> > > > -=A0=A0=A0=A0=A0=A0=A0 drm_err(dp->drm_dev, "failed to enable pclk =
%d\n", ret);
> > > > +=A0=A0=A0=A0=A0=A0=A0 dev_err(dp->dev, "failed to enable pclk %d\n=
", ret);
> > > =

> > > =

> > > why?
> > > =

> > =

> > The &rockchip_dp_device.drm_dev will be assigned in rockchip_dp_bind(),
> > which is called after probing process. The PM operations have been
> > advanced to the probing for the AUX transmission, so the dev_err() may
> > be better than drm_err().
> > =

> =

> Using drm_...() uniformly may be better [0].

Yes

> =

> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> > > > =A0=A0=A0=A0=A0 }
> > > > =A0=A0=A0=A0=A0 ret =3D rockchip_dp_pre_init(dp);
> > > > =A0=A0=A0=A0=A0 if (ret < 0) {
> > > > -=A0=A0=A0=A0=A0=A0=A0 drm_err(dp->drm_dev, "failed to dp pre init =
%d\n", ret);
> > > > +=A0=A0=A0=A0=A0=A0=A0 dev_err(dp->dev, "failed to dp pre init %d\n=
", ret);
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 clk_disable_unprepare(dp->pclk);
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> > > > =A0=A0=A0=A0=A0 }
> > > =

> =

> Best regards,
> Damon
> =

> [0]https://patchwork.kernel.org/project/linux-rockchip/patch/202501090327=
25.1102465-6-damon.ding@rock-chips.com/#26209891
> =


-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
