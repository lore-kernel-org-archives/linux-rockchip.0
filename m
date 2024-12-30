Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E32B6E77188
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Dec 2024 12:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWfWef1HEM+fYtYVs3NQcHeputQbMoKfgJUJ2gAYeFM=; b=FxgQ9e44bA1XgP
	Io95WIwuih0B7x6ZbK0OKuFXBSN6K1QRMFU4oPZ6FTHUvxjQnboMxuD4LXgB8yzZ8UcXmIO4YqpZa
	Xa7W5GzF/l6BlB0nLv954Fhhp7NqLb8Gqx3SIcZ8fSzb1cwD/LwtchUT1c9wwXW5eNma+Ua2/JWEa
	HrryVkqsPQy/0tfsPkEKJVPF5TQmr0eU0+bEwHTe4BzMH4m3f2l3z+Zwwu35XzGQ0biLoKMBHRZ4L
	J45Gl4f+oHQNVQKnc2ErRb9DnvFRaZ/flqeLqB9wfpn+w1E2ijlZlabpLStAyMpVDMbbygp1LptJq
	lR31Iw/ppfaFlEfEhUjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSFBe-00000005DNE-1LS7;
	Mon, 30 Dec 2024 12:47:58 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSFAn-00000005D6H-21Bu
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Dec 2024 12:47:06 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2ffd6af012eso132419301fa.2
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2024 04:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562824; x=1736167624; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uCO6CXWnoZCq053HJEmMFJxQhQ579FC0ggfho/ODq8Q=;
        b=NsS/Pt3WDh+sDFuFMqZUJiLv57Hn+om2lZdwu1nOXexgHHfLTqvEWz+G5Xvlqu9VRS
         udLGh8wlEoNYvL2foUlSvCpCgpFX0cEYtn98kZCwKHMXYyDk61+P2q8A8V9E/a7hkcmo
         xOEhjt6svGG4r4c2mZOXhPyS+HYrv3EKJHDyV+jhokeFUaPo5RRXsNy9MBirpEn18cxB
         Nc3qjCDC/uq+71THOICMIXxG/NDVl0agMa0iWIWVQ/vVZLz3t+VaY7JD7uE+8aAtwhkZ
         wceazpTsycb26XtX/rH3EDnbUhnv3W4Q6gksQkYbggYk6DqgOoVqVLNc4ZOFxaRhjPu5
         euNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562824; x=1736167624;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uCO6CXWnoZCq053HJEmMFJxQhQ579FC0ggfho/ODq8Q=;
        b=hK1j9IBjzkc8XgRp5xfS/XEC8wpy1Zej/J7h1aYGZcKu6go6p5oZrP+89Z4Xj8f3Yg
         GFV/Sp2JBzbp2Y2au7beOxX2VWuYMmp6/+gQGK5tVYh69lvCnA++UbQFfp+grcTY4vs8
         8LfZW64MhlCdCCmpEZlqBbjdu/o93khi/9BGXSPRDAJzqD0mR8wE8kT6Kcz8Nww4buRz
         +S/xK5eNAv8eJ9zJyClHroxbx2XaZy3+IpVw0/f8wYXHCLy7BTclBhCpDbPkKO222lX+
         TEi5kpWjmqZ2GmgoS05SqVSVpEi2tU4JKxDv8G09dMRxhHgYwhaUHN5jrCBvnEANiA3z
         0Tzw==
X-Forwarded-Encrypted: i=1; AJvYcCVscTbnhUejj2nsARMIfGAXTk2mz+fqmVZlnOeZHSO0cSrdfMXlZ2wuFknNPnEYcW5ibxi1961krHSAzbp0Ow==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5ASYsz/6zJQtRzWQWJOA3xwt50qoLhUIjATrySYsAfCA8wI39
	Lv6ZHzKsG410NnuU35Jsd5stL/bPsZUR8rrw1tenreOMmMadavEVoGpL/KvRLFM=
X-Gm-Gg: ASbGncuKilV887mM6HRhiGI9rr5v9wVA4NfBr7yUfPvWmcD2voNlnBJVyZx7Wx/8Qt3
	TvMDkmYy7w3CDoi1/Ckrs7fWRAYgzmjqONnGp0Q5GPyneh3dRC37db3k5fckkajHXWmuk8xnQWd
	dPLrtUGeKy1tMFO4t1SS3sbngfw0Glvdtcq4fjqcobv1G4nDrc1m6etYR7CfDAHCF4Ql0DjPWpn
	o2F2eYvJf4e5Dx++AglVIFUzyKleiNDvCWvAWqNrS0PyITEJ7Mj2pVvW+K/s6nkONXK+mxq/D9m
	T0CsUlwbbJ0mhDEPAL8013y8lcAj07+440RU
X-Google-Smtp-Source: AGHT+IGVpxl0k9hRIyiBC+nX9q01hRzKPekN79eTtXLIY4DaSMy9S0MrmJK/hCW8fezYBdyI4HazOA==
X-Received: by 2002:a05:6512:3b0b:b0:540:2a92:7dac with SMTP id 2adb3069b0e04-54229532e69mr12026183e87.17.1735562823897;
        Mon, 30 Dec 2024 04:47:03 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542235f5f1asm3126558e87.35.2024.12.30.04.47.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:47:02 -0800 (PST)
Date: Mon, 30 Dec 2024 14:47:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v4 09/17] drm/bridge: analogix_dp: Add support for phy
 configuration.
Message-ID: <hfqoxolgga3t4fmdeo5dmqvqiiptraqwmzwdpfhzmmw2cnsail@yamn7ms2tp6x>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-10-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-10-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_044705_518962_8AC96725 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
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

On Thu, Dec 26, 2024 at 02:33:05PM +0800, Damon Ding wrote:
> Add support to configurate link rate, lane count, voltage swing and
> pre-emphasis with phy_configure(). It is helpful in application scenarios
> where analogix controller is mixed with the phy of other vendors.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
