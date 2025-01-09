Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF530E77197
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gaRc5h2qjPYO21Xmm/Ahznxc+r+6hBDnKTGXl+UH8mY=; b=sDwcW2uK8Qk9Js
	dlzdW9Mn3zL4wLdZJPdmbSfPH7aTX5ERNApQmy9Xc6FSFhjLsl3U2DHcYpMMz8poegnnbOqTMxDvd
	RVviB5C3Y/i0qRi8KN68Ud1xB9TM940Cu31gCPrAyz0nCVeLxxxb5aFeiIfDGdI4ClsnzDu9gLqCe
	yW7dsv6dtwBDpdlcNHjp5kDKDhoDf6mP03uui2arm1IU5oMdLUm1hagUp2wt3i0E9GI79t+BxbMo/
	1niyyklOdJEt0X+q6TaS/4ywfd8Tny0Fx9CyG7VcuuuowMUOdOzPtxRPxWLPHQ1cZy2zdEYckoDCX
	Ix1L9XYxTQem9YwOdu0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrzu-0000000BuIj-1yLK;
	Thu, 09 Jan 2025 12:50:50 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVryG-0000000Bu5h-2nZU
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Jan 2025 12:49:10 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-53f22fd6887so815674e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2025 04:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426947; x=1737031747; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ISAvUvnxrJppDS2oaPXGBaXepNKXj9gL7beVEXrneoM=;
        b=fh+O7RLLptM4IvOPmO33G50GflYx0VmLWVT8w2JDU3GecTSz1J/hIw+CGH2pPIBqAh
         jOVQiTvNjXBxWoUuQ7+BdIrJZAiA/32tVPiHnXKqA0G0DlqwFE7L61oJ00LsIc8QJuqs
         OhnsPBFAiV34ZghK3ugweWz5Luxk5xY2cdXpINO+jf9qtTxbTKEeMT34kxdXI6KOGWx9
         eQeKcae7BCQJJN8i4keFWJX0eg25ktMLMsRdAKZ7wNihEqkP9y+KMQmDPNCXo404NGKH
         p5D7UAzoirpa7IzgkG5odUO7OcgHatOB4/5axf/q5hN4BG2oWOBxWpXZmkYmqIPYJsdm
         qA2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426947; x=1737031747;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ISAvUvnxrJppDS2oaPXGBaXepNKXj9gL7beVEXrneoM=;
        b=LWq+m6kUehrjaNk/hfz22vwr9MJMX1bvtBXlx9YhNdrjZa0HT4T4Wpu+RAvQj/ai6a
         CwJAwkok7y38WIPRxRwE44MlafVsmJWKjUKtdh/NxsGJPuKO2kbBOTRHeA+CzRB2TCJv
         qiEzmUmOyxVn1vn8QzYoMlUB/DPvbKnwKWxZjT549RKiC+Ord+5nH73dxcRNaB34vEBv
         F8Fw1nsXChQXhLgqnm9iPxck6PbASf+fvr1EFBY55RPeeXYaGgSED1VmRz91ws7CTm8H
         +V8s+FLNZoZLkT1oDzj6slwOZXHkb4qOJBIQKJZgfv/ILl4x7lY22d7/p73rSGvOOV5P
         5HgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWO1yuPKUgF8uDvaAODsXlmn0Z449FUy49YR+j7fkjwhlJ2DEgDFerFtFDclK7KO6bELugV43qLSE76K8oZSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwjtvG8qXOJP0O0tw2V3zlvJASwsSuCUn6Pxd3mmQ4s3BVwhw+M
	Y1QauAJpS8FugJTNqNE34kcc1Vn+XGzfuhzHnP4hePwzjI8NAt90e4pk4Td6wto=
X-Gm-Gg: ASbGncuPWLbS+ARP1QouLOzTJx02xXNOSRmKs2HwOVgS27tXGxTA74QGif/44+m+gCK
	GtS0DfridqnttaJpZAx695dBNjJPH5EJT0UJTOMf88a0t9wN+r1HXDcgZb+C09uD0/wnjcHet8n
	T0GY61aoSNt+oaXElhcRTphrMsualUqb6h7XqY8/TFSWZOMm6fY7olJ7Y9CZCY97D1pQOP1IAjf
	SYQlCAWSDKQAmzgJYDjhY9wRxDOS1jIjsxLI17A0+ImTYrNMLEXIs/6xyBva0674qb7zYL7sMxM
	tKprZqVocXa4xeTNDEF/lWexjtOYjLlNW+Np
X-Google-Smtp-Source: AGHT+IFtzPf5r/L8vL1E/ZArSF/N5lVRhLbGlgYJHuErJi9BwgLOD62Gve10/GJMoU02S8ksLbRDSg==
X-Received: by 2002:a05:6512:1281:b0:540:30df:b3ea with SMTP id 2adb3069b0e04-542845b972emr1634434e87.15.1736426946964;
        Thu, 09 Jan 2025 04:49:06 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be496c4sm193126e87.24.2025.01.09.04.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:49:05 -0800 (PST)
Date: Thu, 9 Jan 2025 14:49:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v5 14/20] drm/bridge: analogix_dp: Add support for RK3588
Message-ID: <q522hpxpoxwierd3uwtijvnmaia5tec3gzazuzblhxeqgqgavy@d6yhljsiyvrn>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-15-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-15-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_044908_837237_4BFE42BA 
X-CRM114-Status: GOOD (  12.92  )
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

On Thu, Jan 09, 2025 at 11:27:19AM +0800, Damon Ding wrote:
> Expand enum analogix_dp_devtype with RK3588_EDP, and add max_link_rate
> and max_lane_count configs for it.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v5:
> - Add the RK3588_EDP related modification in analogix_dp.h
> - Move this commit above related commit on the Rockchip side
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 4 ++++
>  include/drm/bridge/analogix_dp.h                   | 3 ++-
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
