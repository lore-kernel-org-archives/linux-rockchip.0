Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 147C7E77188
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Dec 2024 12:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGO6u72CvQanHLqGPOqkwhV1Cj/MzVdT1SvlUKuKVFA=; b=Sur7Nt62zmOmRe
	l2Voo6te2z8nt7Pg5CEDy2q4m0tboCVMDRComU9exjelj3cEh8a4jtwFx5mfZmZKmsqP8V7YM8tEh
	RdVSy/1HjKN7PxlZr9i30EmBsDNPTvK2PY+kPs7w97hhDrcYC99jgveyj2TuxZsT4k7vb3UlP5IL1
	58q1r1EjVQG8VgoneXkIKPLEpR6NyvG56eCloXHITYDyp6alkXBzbCSheXxr4AwUtiSa30hWKkQRp
	At9NCgugUsT6D3Ne/EgMW5EeeJk89Nlwpw9Ntr2ifh6ykkIB2zShbupU9hkI8gqD751DYPnBWpbBC
	Hkq0uLLET14jW0liXTrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSFGM-00000005EBe-0jIB;
	Mon, 30 Dec 2024 12:52:50 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSFFA-00000005E1V-1vAd
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Dec 2024 12:51:38 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5401bd6cdb7so9938114e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2024 04:51:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735563094; x=1736167894; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5Whv3w5+5QDDBIWkUbKKLfY2NqWbDdylwB0SvEbCmtM=;
        b=dlX0H1OIL5/ejjkIpmfS5TEK6z8psaeorepe5w+2bTjcKfZdusgYxKdoym2OKKbpWL
         Ar8Pv6Wl+kktzNTzOJw+G8CXGtap3pfUJtC5AdMZClqW+iF55U+GyD5omhpmeNaFGkV6
         KsehyRKSULl6TXdvdNru1wmJk6EoPXdr+Hvw0WzedHASYo9CHvHDWh4vZZvUFZyoIb3A
         kaKjyYoU+7oPrMIAUSoeNhDZzQi7ekKPKugi7Cd0UZGUC9zRl9NckfRYD+/lkkfp8tnY
         vUNFkSCUWs6zP4BHI/Z0wBCj2qq9Lb8UVcaAzQuGDYBL40UMr4HAtsJSTJPTKSmwE5ip
         1tyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735563094; x=1736167894;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Whv3w5+5QDDBIWkUbKKLfY2NqWbDdylwB0SvEbCmtM=;
        b=dN9DVTvMIhPlTwaybXZNaZs/bEBXJlF6SfnP6WScP7dwIAux2IQlRYir6UM04iKQD/
         SP0qWOgXxNd4G8dAof3l7wfZ6dI6avI9Bb4RMSxNw9kkEjRHGuMz9p2Ai/7fu6zmFvIF
         VbD92jVY7RqXFl1rq3SgqsSHk6reS+ptvTke1WIgTu/5ZmLXQrd2VelGQM9HP0Qzvegb
         8QPMri6pppRI+oTGDFNRBqWxMHZNo6BUtXPZnB6JxstcJDFrXYgm+bcfZmwL7cRTUKKP
         8R+LYVoELOFn6JU5/ECrBCZBsDnbE43TBCb/QHffY52W6eCrp9XSrue5/GJ/BgH8AQhi
         id7g==
X-Forwarded-Encrypted: i=1; AJvYcCUmvjqUQtvkmuw5zhLOMknK/eNyOiSYA0xEgBUS24RuxhWlFUJIDBHv8SLSvxfaNyyf9JBbniizVQ6eKPbG3g==@lists.infradead.org
X-Gm-Message-State: AOJu0YzprRhK6/Dyu36hpbEP3KjBJMplHpUhNK5qc0eGcV2ckFEXlTL+
	mCp1tGWRvNo+Il7dI5UihMCfe5qwgHpr0Km34cikM4S8PW1QwlAJhzVBzOnqyOg=
X-Gm-Gg: ASbGncunTvVXHuUBTvVx1j75WkXrrKrJqNxwA2N8h5k2jdC30FSxqYye47d1BPscZ7F
	VkJxvwyoLQnrDn6M4HO0I2uFMtLfV/1foFIQF48+N4s9Q2etORvE6rr9LDn/N/GQH6C5dhmvuPY
	AcD9F28Uha6Qs6oPd4QQC/6slyKnQzkzGjMaZdFa3W4Z5tWSIjN4fr5sHgYnmwey+ogI0Snczh1
	6rl1kKdtKdJKYYOmxxmFvNth46mpEpz39ky67Tj7OHy3TvbLBfcgTVunoFpk3n/4RzzbN57oAI9
	gRBdxpLFMakfmOjVZaQ5+EFz1JB0kn1mdwG/
X-Google-Smtp-Source: AGHT+IEW593Bqv5NB/vO2QEA4rz6rsbxfXb7nT58hLPf3Wn4NzBw3y0XPudnrMXfV5cdFkQkrpllxQ==
X-Received: by 2002:a05:6512:1255:b0:540:3550:b0f8 with SMTP id 2adb3069b0e04-542295305b7mr11077421e87.24.1735563094455;
        Mon, 30 Dec 2024 04:51:34 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223821504sm3074015e87.198.2024.12.30.04.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:51:33 -0800 (PST)
Date: Mon, 30 Dec 2024 14:51:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v4 12/17] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <tlfkh3vwuwtqiaps3l4krv2grttlbe7ahienvjlglnzzdn3czk@pfdgmrvp65yf>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-13-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-13-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_045136_488602_67E0B8ED 
X-CRM114-Status: GOOD (  12.12  )
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

On Thu, Dec 26, 2024 at 02:33:08PM +0800, Damon Ding wrote:
> Move drm_of_find_panel_or_bridge() a little later and combine it with
> component_add() into a new function rockchip_dp_link_panel(). The function
> will serve as done_probing() callback of devm_of_dp_aux_populate_bus(),
> aiding to support for obtaining the eDP panel via the DP AUX bus.
> 
> If failed to get the panel from the DP AUX bus, it will then try the other
> way to get panel information through the platform bus.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
