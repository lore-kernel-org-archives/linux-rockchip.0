Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3277BE77199
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 12:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOtRCZyKxQkmI7EUNqPgtqiI2mUZIs/3SnvluQU33oc=; b=PSKDhnx1uvNv89
	A+cul2Rr+6r+ygFSlDv1E+cObznJtKksYcKkxCknYo7DV9L9e5GatfkdwwQvZQeWnof3GLrWs/x8o
	skMuUuINv0JmxNleeAWbBpfMJ7bhUIwCvUotafU6cf5fnhDjAevv1Qqs++MEgScYtA62Y/a6+ReYm
	whwvngadReWOr6aCggOrP5MVWhgPt2dbGpGIGnCpAMdSWiuxGHy5E+PdHF/LyY7cwHJpFoDlcjGQF
	DBiztBtdd4JsDNPTfmpPqSrhe8d5R4+kfvDEkQwUg/zka0B46Jg0qLPo3hVAnEcMtJTMK3K6P37rS
	dHtguwhTXXh6P95rFCoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrpx-0000000BsVW-1YKI;
	Thu, 09 Jan 2025 12:40:33 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVroj-0000000BsLK-3K0s
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Jan 2025 12:39:19 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-540201cfedbso826118e87.3
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2025 04:39:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426355; x=1737031155; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+fqi2sB9Eo33cd+pF6AS06tGvsYXM7VDT81xCwEBraw=;
        b=K5UjZ7lE4K5kTINZsz6u7OoXN75uRJh9UMY57f7UPav/eUkwPzAI6hJDa3M8Q0Ll2T
         s4/Qhd0sBvS/R5qyLGSeaBTOpwM+g3IR/V9eRuHLSkVrBoOY7avhvjvF4NIFdzHa8XhM
         45TfMc9nwjROyKrz8OBbZnOI7tBsRWBmv99J7EuMglj7liVX7SiuW+nZsv37scpPsjW4
         09E+CUdoTDM298ARUxeUMvKMkdg6wcJizSiA7T6b6l7bm8b3surF2qDWdf3uTYAc/sNp
         PoXaR1BO+kq27E6cIeidxTb+XKxB/Ti2BDlhLoVpIl07SrLBWd/7CCHEHtQURHWB3Ia5
         AD/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426355; x=1737031155;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+fqi2sB9Eo33cd+pF6AS06tGvsYXM7VDT81xCwEBraw=;
        b=jTh+SAMsl+U9EswX6eoglqSu1uIlwV78B+Sop4RTO2j2ZP8147iuiA5lSHfMcn/25m
         8EcsGc0xit2H5b3BF5hQwCp1tfKpgLN1o4rVy7tGJz/JJpIWoV95j55hjX8liIQKyFdc
         b3AKeWNYTEVa0D8jtng96K08b5Gg6Zl78GsH+qv+8jJqGABq1taxd0p8DuCvY9NDEPer
         AC9TpQZyVR3JALKewvVKE+60DILbzgPGP0exzX3ywoNhuOY9oXjm3en8W7AvANueOeBF
         3+h3J/Uh2jmMXJdEmEnFc9C3Y5JUL2V6/j4eO/97jMFqUUxwtWoqAvaRdZb35wOZiSgV
         LoVg==
X-Forwarded-Encrypted: i=1; AJvYcCWm8IubtejLUOGnmBYN99C7mZ7KI/GkLyQp9XE2ELsFy9jDJpXC//DoaZLLbnZk7x6bQiLs3Q8rCHHT+v0pyw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzjZ9bE8nzwJvbsrkFpayVQCgA7rYx7NHVnkPOzRFkU5zgxHcUs
	LTWE3u1bDKbLa7l+3JdLKzPycP0z7TUCWHb8kqy93Xbkn3gASOTuq3jLrLSS7hU=
X-Gm-Gg: ASbGncuLpFWTSM2sjjAtadOFXuIiC6tTrojaz/7mCB3mF5da6RMFSUt3VQTM5gx8iZp
	OKsI4asnpcF6Zmt7WJERDnUI+Hz0T6tAVH/0uLFbxRfFPih60ynXFzsA9cRQQTR3tsUijyKBY/j
	Bz7cPbiR3W+dg0zdm02IkpfUd2PXffSMlnMuvbVkAssOPQaIyeYkfZnz06gYEJdYsmUj1CGDhGZ
	dC+f2M3G1hoJ+7BZC/P4gKB22LU223mS68fGoDaW9hBnVX2S//Axo8qskp5xBrfwNB1CAlzThi6
	kdNFz2wsyIrOzADkuVQaQy2TKtR1VXgNjNni
X-Google-Smtp-Source: AGHT+IF8KTbR4QB2nrxLqa6lQMCAzL4XCQ4k/7mYRphIWqgLup+TimV/WVu8MCf6LAMcOCZjoERp1Q==
X-Received: by 2002:a05:6512:1242:b0:542:8da7:242f with SMTP id 2adb3069b0e04-5428da724c7mr359076e87.10.1736426355407;
        Thu, 09 Jan 2025 04:39:15 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bea686dsm187270e87.156.2025.01.09.04.39.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:39:14 -0800 (PST)
Date: Thu, 9 Jan 2025 14:39:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v5 04/20] phy: phy-rockchip-samsung-hdptx: Add eDP mode
 support for RK3588
Message-ID: <kanqmwi4yzmqjxyxbd3ccmabitko3zfgockmhx22swz46zeqz2@klq3dkaukrxz>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-5-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-5-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_043917_839179_1818C7C8 
X-CRM114-Status: GOOD (  17.31  )
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

On Thu, Jan 09, 2025 at 11:27:09AM +0800, Damon Ding wrote:
> The PHY is based on a Samsung IP block that supports HDMI 2.1, and eDP
> 1.4b. RK3588 integrates the Analogix eDP 1.3 TX controller IP and the
> HDMI/eDP TX Combo PHY to support eDP display.
> 
> Add basic support for RBR/HBR/HBR2 link rates, and the voltage swing and
> pre-emphasis configurations of each link rate are set according to the
> eDP 1.3 requirements.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Add the module author
> 
> Changes in v3:
> - Split this patch into two, one for correction and the other for
>   extension
> 
> Changes in v4:
> - Add link_rate and lanes parameters in struct rk_hdptx_phy to store the
>   phy_configure() result for &phy_configure_opts.dp.link_rate and
>   &phy_configure_opts.dp.lanes
> 
> Changes in v5:
> - Reuse the existing functions rk_hdptx_phy_consumer_get() and
>   rk_hdptx_phy_consumer_put()
> - Return 0 instead of -EINVAL in rk_hdptx_phy_configure()
> - Remove rk_hdptx_phy_lane_disable() and related check of 0 lanes
> - Mention the design details in the commit message
> - Remove unnecessary rk_hdptx_phy_set_mode()
> ---
>  .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 879 +++++++++++++++++-
>  1 file changed, 869 insertions(+), 10 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
