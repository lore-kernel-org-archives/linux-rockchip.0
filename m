Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1C26C02182
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jan 2025 11:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwccdM32nybRQrqSE54H1JjGrN/E7FvVPsy0eM4xFyA=; b=fowZtsBl3DLWdX
	ByhFU3HYXdR5wmo2dJbbmkAPGEwABB63zGd2NDQOxXv9kEzAaLoxK7rETNfd81HdeizSRwUuDgBa/
	Y8ZMkSZRPC+KnU2Z/5wyrco3z/spAi3om8qJl7ywwInBu43JVYAEqoNCQ7DY2I9LoolPuYaJDpq2n
	kf2UeMwEp25mTrrBKQPTmb0iGmZ8LVydY8lmntLnY76M7gJnlL/PToSho0hSxe27FuFh19eD6SMwb
	+CrTjJLZZ5awZQ5Zn+MhaRgz6SFixarwBL5kwgg2Jziaikf5RcKVj2LL6B3DHO8GKOh8TH1ss276d
	1X+vSauVqZbxf+oh09Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tavP4-0000000CKTR-1YFa;
	Thu, 23 Jan 2025 11:29:42 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tavP2-0000000CKSK-1CKM
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Jan 2025 11:29:41 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5401bd6cdb7so858333e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2025 03:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737631779; x=1738236579; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ywUpj3PvGs7O6YC27wxHtXRfoNnEiXLhmb6FDXD8qK8=;
        b=womIQ3GEQHk4zmZST5qmfjIOR/a/m3+zlu/o5zxUIBrCq6g3r1faRzfnEzwpbcKoM8
         8EBpPSmLqxBPM+HT2I/WaZN1pir/gJkKJdeG8tUatxIMFCnPT0mM67f00jLI1cml6WtF
         Uu6J6AlxH64AKCF0k2CDCKIhpi0ysf90Gy5pdB0diH5fzQHqezEOYcoaswB90thdNzBp
         1rWPWt+JW/wuO4yd74um4J5GgNK+4Edm7omfRo5gX9PQuOZPB7UUpBW1ER3F8zRQYJbl
         gjCZxO3yGjK08tiebtCHtcHvv/sKszUMi6qx08YbinIc4w1H5To6UG92jSneXeFr1VPr
         +k2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737631779; x=1738236579;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ywUpj3PvGs7O6YC27wxHtXRfoNnEiXLhmb6FDXD8qK8=;
        b=sY/vESahmASHVI9Us/U+/petX79WfaVudi/Pe7DjuAa9NfhbEtqq2V0Q6CsVCeuwW5
         S4r3IzMUg5ozMGKuFBrAiDNh9RvymNpIB9MmR1ND8kA8t1zvCGdLk7ym9UU3c0BFX1PY
         NEl0pYfdCrBG5OyxaBdaoKwpr7BARSvqK3Zf5l2cVf9U2N4bIh1AzvKJiraKR0JXxu0g
         2WKvIwGOXkpZAxGMB7FVdtlX72B9zERPVXqgu/u3CUstI7oGZEYrwEec3E9vy+5fDgqZ
         wPBekFysDWeItW3cblAeu3sGSO1HoEYrzgSRociZcLtBWHCvlnTZfFp3itt7+NPxq6K0
         6CVg==
X-Forwarded-Encrypted: i=1; AJvYcCV/W71irIkpXQiIBnPSwmIdi5ylZ0e3p1j380xWTer3b6+XaxWwBIFSNjP0lB1NIF7/Eif/Ddn8e2bUaipMdQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YynJrLVlxU8TUn9t99OvN/8nbsBavaS4BJ0+cHTh+6ithY5o/uY
	TtalnLvhkJh/MfPaLd3jyh2BEa9cMFEfwSA9gR32Gvj9Ln9YuYBa8LB1BeOW0ew=
X-Gm-Gg: ASbGnctts9I959S3EPLr9ESOR1L0OFwGTUosFX1+90HOgdbH9gPFOBetZNLPXDpD9O0
	hVcUU8D7JVH67Q0Od+/SDYnPDQkuBIG2Hgq1zvZ2fOAP1xuSKSmh2s6vFWKZ0+LHmH9xH7Jnfbz
	QxHYDjjB3W2hgKAX7IoRvGlrd/PhbZYJVkQ6ix9+iHFU9Jhaee+5icHCuoIsgCWW1t/ObCUnSgB
	3oylXE574tNXaaJ4vCy8dllxghBNMXHPYyfIWsOiLWGrHJ6qSgM2hF42bpV7+uoGevZArF6I+3+
	TWKG0b9Nf6Xfgqbdg+G7SGNV4/kT0gxjM15+RVkiG4Swz89tBJ1JSm43uXdP
X-Google-Smtp-Source: AGHT+IH/IRIwigEV36zPfTMvutci/xM95ud1AjoiE5XvAxHbcLlm2/4wSeaGwe0S+EmSvBufcEVLsw==
X-Received: by 2002:a05:6512:2346:b0:542:297f:4f64 with SMTP id 2adb3069b0e04-5439c280a83mr10948852e87.43.1737631778565;
        Thu, 23 Jan 2025 03:29:38 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543bae0ba76sm771974e87.8.2025.01.23.03.29.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 03:29:38 -0800 (PST)
Date: Thu, 23 Jan 2025 13:29:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v6 11/14] drm/rockchip: analogix_dp: Add support for
 RK3588
Message-ID: <k4hno2c46ys3unusw4emhkevp3yezhtgyy566vfyfju3efyei2@twict2pypjug>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-12-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250123100747.1841357-12-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_032940_325200_F819A3F0 
X-CRM114-Status: GOOD (  12.33  )
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

On Thu, Jan 23, 2025 at 06:07:44PM +0800, Damon Ding wrote:
> RK3588 integrates the Analogix eDP 1.3 TX controller IP and the HDMI/eDP
> TX Combo PHY based on a Samsung IP block. There are also two independent
> eDP display interface with different address on RK3588 Soc.
> 
> The patch currently adds only the basic support, specifically RGB output
> up to 4K@60Hz, without the tests for audio, PSR and other eDP 1.3 specific
> features.
> 
> In additon, the above Analogix IP has always been utilized as eDP on
> Rockchip platform, despite its capability to also support the DP v1.2.
> Therefore, the newly added logs will contain the term 'edp' rather than
> 'dp'. And the newly added 'apb' reset control is to ensure the APB bus
> of eDP controller works well on the RK3588 SoC.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
