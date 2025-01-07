Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43769E77197
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jan 2025 10:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXSNjkisASFhm2onK0gj8LXnK79sB5ZJGX5qZ49sOok=; b=3opAuPvHix+pP+
	MdbMywp/b5swO/iLTc/ynG/yLfB5UqH2C2XvUB41aY7BoYs3PGdxuvLSx81V/U/CqOhw1r+Vpi4Eb
	Sx/0lnLzwHSwzfCBi9Fp9MABJ1pD3+/nfi7Fe6TIrEn/j9NK7ZIbWHRpaBR1ti6CIvxqzY0fwYnJk
	0ci8wct3C7y3TBVo/Rf4YbVDwB8hlvcIK6hMo9AxyVlCxctF4VrZSB40IGFVEfPCDTcokfkweRC+K
	2tDpfO11BhfUA6YNJ2b4a6bZ8ljX9JBP0uxrsU5/CbDqtZRGP9iiKU87Gau0nNl4Bdtt4wUMBAhh6
	+kwpnN7oAE1nqnB69j7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7G7-00000004SuX-0yb5;
	Tue, 07 Jan 2025 10:56:27 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7Er-00000004ScV-25oq
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Jan 2025 10:55:16 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-304d760f118so38382331fa.0
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Jan 2025 02:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736247307; x=1736852107; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8JZJoaJUaNREKAXmerLK4Rd1hRsVn/PObGVachLq/qE=;
        b=flAM62qZBto9aHKIz9Ub0aRwipx2z3SNh55dKLkAuxjwflOqlGBaRkcuw1JKdemPMM
         tsRAC5mf7iXXrr27IMGgJ1PcTHAxtzZd9813Ah0XykQiZ1IMiYEfUtaq/dyXbZ3Df/+D
         Q4v+Xk5adGla2TyYoXJXGn1kG2Y+bC5b+tm71CZ6wX7AU3tTUwFCmcEFxRAIDMiZeB9l
         VgHsYtgYyd3nVTvdYdqhiZSR6U4u4fUD5iGrcNVk0wSrKUYW+7QIgjgGjoff6xhj7ytc
         rAgtDBVHfnJbZOLnu69EB1SvXFGMgSbQEYwfjf8s51mIthqPYoc4ctPaJ0TK+IaVMxbB
         CAxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736247307; x=1736852107;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8JZJoaJUaNREKAXmerLK4Rd1hRsVn/PObGVachLq/qE=;
        b=r8kchH7JfsOvvhreXTwV+Yrdw/hVI5GbljI0WDqdqfswN+Z5xmt6yvDzjk9HXijUXq
         MqJY3Jh66WHzF3oMa55bE9iZkA8UaNWzRH5VMNiKTVLoBOWmFFzmk21Cg8xY1Wa/R6JY
         YGaQ/bXQApVPrQf4dz2FMbgkqKU+SgM4yfRHqnGLU/k3XV9RMyg5MviROfaFJQG+CxUq
         19YuUuansBeRVKHAF1qBm97jBOPmfAIpRQKMGRtcJRfWnThGwDKJJbqmK5QNbdsgXOmv
         oeSBq8EXVIN3SeRSbfVKK5Qlsa0mYkPgSap4bhcmP3YklMC4s1W8I7YD4SAxRvgIUk2D
         tt1A==
X-Forwarded-Encrypted: i=1; AJvYcCUbnSHtBN7nxZKMylIG+SMItGdKb/1A199nsQTRXIibdF2irm1eUJhvBRZOOQwq8pICvbjPfiLvS7UIwfM/Og==@lists.infradead.org
X-Gm-Message-State: AOJu0YygZ89faQL+Q8aEAhi1lqdcjuByXbdQPViLDlzrCEEd/TuZrLZd
	C6K5EZZT9+7YyZ3JqIcgphfFRTowqs+6Vh9utGTbQZYNlfc2gUDjqINzP/xBEKs=
X-Gm-Gg: ASbGncshiOd9zunx8zJQRfSmgxaAUvkvEjVNchd8X7OPxzqDAvlN4qla7gNiETKkoyJ
	cS6mYyFoUJm2MtonJu+F47OYuHkIpmkcOwD5ziT18djonfuBuwkE6/LuyTbjtE3YFFc50CE0bvR
	AJbyahc6fc/hlARFN9zBbPdbITujt16rBwdMObMai/saGl8Ov2ODrC8dIi7rNQZiXRbk+W4eqkP
	xK8YJkAP3wE0R76r6PeGHnquzyLUF2Cz1IbMQhk2WWjHGcws8ftu6DlmMCJ8MlwML+Bqf4KFTLp
	+lHUnkrLiz4yqaDETFjHQzC6Q4nyZctr/hkt
X-Google-Smtp-Source: AGHT+IGLgKzFbsWmFq6sHxnOSAOcAHZ8LpCXiCvq8SonzUfMjFA3G31B6U5QoMf8+KUqSpyXSGnKNw==
X-Received: by 2002:a05:6512:1392:b0:542:213f:78fa with SMTP id 2adb3069b0e04-542295224demr17287062e87.7.1736247307140;
        Tue, 07 Jan 2025 02:55:07 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223832ba9sm5226861e87.277.2025.01.07.02.55.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 02:55:05 -0800 (PST)
Date: Tue, 7 Jan 2025 12:55:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v4 07/17] phy: phy-rockchip-samsung-hdptx: Add support
 for eDP mode
Message-ID: <pffzxwsqwkklur3b7c7hp6g5wonzam5fs35fwblil3cjfofozk@clwgt5gcb32a>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-8-damon.ding@rock-chips.com>
 <shr7ak7keqza3gw6wra2zra35qht2cxlzkvtuhzl3swzf2fwxy@i2v4o53lhese>
 <96f8310f-93f1-4bcb-8637-137e1159ff83@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96f8310f-93f1-4bcb-8637-137e1159ff83@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_025509_546196_69D04D4E 
X-CRM114-Status: GOOD (  27.97  )
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

On Tue, Jan 07, 2025 at 11:02:15AM +0800, Damon Ding wrote:
> Hi Dmitry,
> 
> On 2024/12/30 20:45, Dmitry Baryshkov wrote:
> > On Thu, Dec 26, 2024 at 02:33:03PM +0800, Damon Ding wrote:
> > > Add basic support for RBR/HBR/HBR2 link rates, and the voltage swing and
> > > pre-emphasis configurations of each link rate have been verified according
> > > to the eDP 1.3 requirements.
> > 
> > Well... Please describe what's happening here. That the HDMI PHY on your
> > platform also provides support for DP / eDP. Please document any design
> > decisions that you had to make.
> > 
> 
> Yes, I will add more relevant descriptions in the next version.
> 
> > > 
> > > Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> > > 
> > > ---
> > > 
> > > Changes in v2:
> > > - Add the module author
> > > 
> > > Changes in v3:
> > > - Split this patch into two, one for correction and the other for
> > >    extension
> > > 
> > > Changes in v4:
> > > - Add link_rate and lanes parameters in struct rk_hdptx_phy to store the
> > >    phy_configure() result for &phy_configure_opts.dp.link_rate and
> > >    &phy_configure_opts.dp.lanes
> > > ---
> > >   .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 896 +++++++++++++++++-
> > >   1 file changed, 889 insertions(+), 7 deletions(-)
> > > 
> > > @@ -933,9 +1484,339 @@ static int rk_hdptx_phy_power_off(struct phy *phy)
> > >   	return rk_hdptx_phy_consumer_put(hdptx, false);
> > >   }
> > > +static int rk_hdptx_phy_set_mode(struct phy *phy, enum phy_mode mode,
> > > +				 int submode)
> > > +{
> > > +	return 0;
> > > +}
> > 
> > No need for the stub, please drop it. The host controller driver can
> > still call phy_set_mode() / _ext(), the call will return 0.
> 
> Without the &phy_ops.set_mode(), the phy driver can not get phy_mode to
> distinguish between HDMI and DP mode via the phy_get_mode(), even if the
> host driver calls phy_set_mode() / _ext(). Additionally, the previous
> discussion [0] also mentioned future considerations for dynamic switching.
> Indeed, I should add a related comment before the 'return 0;' to enhance
> understandability.

Oh... I see. Without .set_mode() callback the attrs.mode won't change.
We should probably fix that, there should be no need to add dummy stubs.


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
