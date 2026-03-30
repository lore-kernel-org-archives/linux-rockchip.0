Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EE62FC97E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Mar 2026 08:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkIIcCJb0MGrmuchse41O+zqLBiaQo5RB5DIF365yj8=; b=rTSLnf0Hpw9trQ
	fBFi+HBo6nHtBt/hp272RdPjm4lY1iK2L63s/YzUxBnLGh4ear5bnb757vAfF+dBV2bnLCl5cd+Z4
	Hx9o8n3G36HqgcNoHujavQBxOYd+pXpbc9la3diti/lTh3zWj9oYSM2mHkCsCe3PUtW0URAvZUW5x
	qLBK4OJw9QubdbNbwqWu4UW+Y3eNHmtQ7UtON9C0Jupu2p8zU+nNI3MjhegV9ZfF5tEs6D9Lx46bv
	hLQmlXr2TS8ATKnjqFdcfFYjUizY6qIZWMtq/enJHHuyoY92NPqFbiHuZk9E980sOyDkZK9eiVZqm
	JalMq8L59BPXFpA3yUXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w78R9-0000000AvCi-2yO5;
	Mon, 30 Mar 2026 08:57:31 +0000
Received: from mail-wr1-f52.google.com ([209.85.221.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w78R7-0000000AvCH-1kjn
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Mar 2026 08:57:30 +0000
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-43b8822fc05so404656f8f.1
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Mar 2026 01:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774861047; x=1775465847; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NuAWp3WuRNOiGbMUfdiOKGUuLbpHU86UYThvWrha9xo=;
        b=Z3SqUlq38vrQ1/uzLqmLk/fy96zUWi8gKdvmEn1ODRnkznglJsdwu/TsPOZLBY/e40
         vK/3CM1qs+57/pcQxwOBqr5bSLiJUcjAsJIlNnoXHWUuRLcpjFX0nHntCbr7r5+ypa3h
         IZ7/p/f/vV9fLKCQ8QGN7wx+FJvNquM5WijEBYjIwZc0fnHskqz0DqhZV5POHRcprflw
         4uYSCX7H74XcVywTWz5izvNNffDGrZbfkxpwOaIMf6CMYtOzATB1l8WLVKQFvzoPtZEi
         lnK3nfW4BGgXhVH8Az2fgfdqIcLqG0EmpSABWuQMWv+EGcYlNs5xkqP+9CfAlZCKnUKD
         OLsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774861047; x=1775465847;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NuAWp3WuRNOiGbMUfdiOKGUuLbpHU86UYThvWrha9xo=;
        b=OYZjqJXqCLzBM8zjOTjMF+YX0tis2t/Uannb+lw0LX/QHnCK0Z5pVYr8xVFoaqY7A/
         voZserHdwxQIGNlNe8T/Lvl0qt0hhbDvbnwxi9eRS/vrEZt4I3akxdgFyfWktFao+wjc
         prAX4SuqCO9+mP67usj2eXTIKM5oI8ZtGm0XXpaO1FZ4W0BlDPmXWXSNvBKaxuBRVvzD
         mXhm3020dN983eXaWSJ3zNP/bTp7Yfr3wnq3T16UQ56+0/K/H2xCnyxvWropnpvWONK8
         iuHGZebuqSHuSn5p3rV3eehasAxQbtBc6DZ94yLOtLusf6Lm8dp4sh+I+glq6r20fbIY
         EvQg==
X-Forwarded-Encrypted: i=1; AJvYcCXIE2czy7PUpgZyokI0SmvIv43dwcdC9Ok8HDx9Pa3YwruQklPfoqrgMqgy3dlwz4Xht9M44W2HoRKuhMURQg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzlpdF+ejcK2KSJY1pTb5vk2ONYW6Pbm0R1VgidqnwEaFxiaIJi
	+wdmYH81ktCT3QS7+G10KqZRWhPeWNOMaIEKpcAXsBgeYlumjpJ920+V
X-Gm-Gg: ATEYQzwPl/WVPrOu3fZMKXbNE0cxUFtDg+bzC73HA2ypSYPhvCnjm3moG/hGGVbgwvj
	t4jjUtR3QT6wH0YoAux1+aGYJQn9TeHwahPZ6JEAo2Q3kaNsz2GpGghDgDt2kXIIMG3W1NaTFK7
	8+suZMfrpSKwxVh0n7Z6XhXCKfHxZ8if6GEdr/buhEtJ6bCjiyffQR+ZfblVO+jv58gx2uLX7BH
	QldJdCLHw1sl0WJjfvC5CqvYPBA/fMz3yFRNkljMYveoIYEn1ga9VmAu6euEUWzZ8M9uZnM5Qf0
	lZXEej6pfQeVdX4pJJUoKeDZTPZvYxAby+7WIqt30KONv9TBz9NpNvMJxs2JBH1GWZZVSO9GmGP
	ocM4yt2k23VmT2l0S/js/WXdJlyTMItEVK+57frlEMIDJ7Wv12LrsUBxssGy+2i0eSON9Rba5Jr
	81vLWQ50h6Up6LLdgclevcddj+dA==
X-Received: by 2002:a05:600c:1d1c:b0:487:1fbb:5a28 with SMTP id 5b1f17b1804b1-48727f2d043mr90623985e9.1.1774861046566;
        Mon, 30 Mar 2026 01:57:26 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d50a:b400:a0f3:2097:3813:850f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4873bbcac33sm65338995e9.15.2026.03.30.01.57.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 01:57:25 -0700 (PDT)
Date: Mon, 30 Mar 2026 11:57:23 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, kernel@collabora.com,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/2] phy: hdmi: Add FRL TxFFE level control
Message-ID: <20260330085723.4rewkbs76lz3scum@skbuf>
References: <20260328-hdptx-ffe-v1-0-53ebd5dea20a@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260328-hdptx-ffe-v1-0-53ebd5dea20a@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_015729_511092_F03C2A5B 
X-CRM114-Status: GOOD (  16.32  )
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

On Sat, Mar 28, 2026 at 03:54:53PM +0200, Cristian Ciocaltea wrote:
> During HDMI 2.1 Fixed Rate Link training, the source and sink may
> negotiate a Transmitter Feed Forward Equalizer (TxFFE) level to
> compensate for signal quality degradation on the physical channel.  The
> source starts at level 0 and may increment it up to a maximum agreed
> upon during LTS3 in response to persistent link failures reported by the
> sink.  TxFFE adjustment is optional and entirely independent of the FRL
> rate and lane count selection.
> 
> Patch 1 extends the HDMI PHY configuration API with two new fields in
> the frl sub-struct: ffe_level to carry the requested level, and a
> set_ffe_level flag that switches the semantics of a phy_configure() call
> to a pure equalizer update, leaving all other fields ignored.
> 
> Patch 2 implements the new interface in the Rockchip Samsung HDPTX PHY
> driver.
> 
> The series depends on the "[PATCH 0/6] phy: rockchip: samsung-hdptx:
> Clock fixes and API transition cleanups" patchset:
> 
> https://lore.kernel.org/all/20260227-hdptx-clk-fixes-v1-0-f998f2762d0f@collabora.com/
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
> Cristian Ciocaltea (2):
>       phy: hdmi: Add optional FRL TxFFE config options
>       phy: rockchip: samsung-hdptx: Add support for FRL TxFFE level control
> 
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 74 +++++++++++++++++++++--
>  include/linux/phy/phy-hdmi.h                      |  6 ++
>  2 files changed, 75 insertions(+), 5 deletions(-)
> ---
> base-commit: f7b64ed948718290209074a50bb0df17e5944873
> change-id: 20260328-hdptx-ffe-a89c51e66904
> prerequisite-change-id: 20260227-hdptx-clk-fixes-47426632f862:v1
> prerequisite-patch-id: 5c1d442fae39103bb758f54738aff33d2491401d
> prerequisite-patch-id: b86f30292308345387d2a6b50949ad040b931592
> prerequisite-patch-id: b1335105db9177cb10c64ed1bf0867832e6aac2f
> prerequisite-patch-id: 83db6603d13e19f239e89fde2b26366eb0106b7e
> prerequisite-patch-id: b534395ad315811861f11859a3946f65c90c631a
> prerequisite-patch-id: f9637e57c902f35218cda658397416f84f7285cb

Sorry for my ignorance; who is supposed to act upon this git-format-patch
base tree information and in what way?

As things stand today, the build infrastructure we have in place will
not be able to apply and test your series unless it applies directly
onto the linux-phy/next branch.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
