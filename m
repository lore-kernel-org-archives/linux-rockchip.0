Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A801E7718B
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Dec 2024 04:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fneEFM2ZAB3HMwyEaD37gt3IA/ON8dcxHf3bUFvwJ6I=; b=aoLg/WtcwuWW3B
	qKt+O4IGc2JnAOfOJQFkIAiq1pVuqMV4w1+1yvHFL6SJzcWI+1wk5btR/Efq3dgFCT3BeGwxhmSTv
	qzC1QlERGY+9CX0p6CdQWuqNGY1R3M+bBCQceOxYRUJoDGcXN8xDpNqGbG2A/TsBBTi+ASZDJTqH7
	qduo3NGs1pq3PG4ekmkj32qMw4QBKpRBut5AaJxeiXIVMOc0S5q878rndwxuEitSLwBXNCMCVljB2
	ISfbBHCIiiPRnhlPMMao6xFKj8MZ2XpxIF+ZwOGXR3cSi9sHSa+CjuPz0QR5c1Po6AvqBwkIWAx4T
	MRpDKWvauVDViAk3l+og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRlFJ-00000002qXI-485e;
	Sun, 29 Dec 2024 04:49:46 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRlE7-00000002qPW-24dL
	for linux-rockchip@lists.infradead.org;
	Sun, 29 Dec 2024 04:48:33 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-3003e203acaso86043501fa.1
        for <linux-rockchip@lists.infradead.org>; Sat, 28 Dec 2024 20:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735447709; x=1736052509; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kmRmow4ij1wj8NxR26ZZrxr/RgEq3MZKXl2c41wGPBg=;
        b=df5sXKv5EdBX0Wm49waYUMeoAbPe+IezdV6BWlbD7OX6I0BT5IdKdnUD522SXkH12t
         MEVaZFE3LCLEMHEKaX2lEcKXqg9ZsovEg1V6ULI3Y+a1LgxKK7D0q4RuIusoN9DbF3eC
         tf3GMfYdG2FoBV295MHS/VzHSuGPItGDQfss9P1rKOfC8nlA5AyjnNFFZDqtnaz8y71e
         cFcs8AQEBh9UR+tUqGoGSZ67MTZfKj/UfeIjWB1j5JPHsB238PIJdVKDYYA3FTNX+U9E
         bDlIDXO8QUg4J+Ja6ZjN9ycTCCkPlqYTIrs3NneqRTd3U2bu4eWEjMrQ6IZFz6mlxlS6
         Az8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735447709; x=1736052509;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kmRmow4ij1wj8NxR26ZZrxr/RgEq3MZKXl2c41wGPBg=;
        b=GpnbOUVfKB2WNtUX0hVxGlxTEJ6tu79MRK9Qu2gnQ3yr31EwhZZxVthCcjPJaCvBvc
         BKiuvVPs7GlCUZx7hS6ERgu2LbtqWLHSOVyTxDbhFhetCRmvaQlJk7MPcSWWZ3IzyBi9
         Vlz+H24OWqTrwr23PbkWhYJhxk5RV4Dde5HvNVcvJTs+ZQHyxpFRsgrvpGNW6m2hQh8/
         JXmyv/qQJ9gwY97intJhuirQQiYdzDh83BOzeuU7cE/VE6gSBchgHpJmIpgjmpoKgWCB
         6+NOuhq08JophQiIFaOzsrklBxFbYBJUmKBd5xQZXGmPOOLSq7zJK/t7RjqeoW6dRQoi
         pHNw==
X-Forwarded-Encrypted: i=1; AJvYcCUf5AwJAb2FmduwRRUUipZJMV7Qz7W024mgyhwQcJggN+pjZufCRp1AasMpbj4qRk0LLTTtUzVez30i1xyLmw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwqLwjCa7Nh+Qpk5WGOUfaoOYuPTjumVzsFiFp7wf2I53Jr6RxN
	tIV+1/707gLsN//mSn8nEGPepJcFVY61sSmCbcmfB2rvHvoq92Rbe46C7zzs3JA=
X-Gm-Gg: ASbGnctLYDUHekJuQBbz0CiHe/KVmkzhBRkmpfGlG0YQnf9cU6WE3cvfF2uDfMor4KY
	ZXOsgkQH/FSm6WHHP7iaj9xeaupcmys25A8qZFDW38zYUIxdZOOw2BGlMELI1U7+U+mPJimpqK8
	ELt7+YejqXqc1wcdWmgJZf4NKre41+REBoEmxFcGqJmBFd0JE4NwYfDML0ml58E2poSnYxhQzup
	qkEzyi9mlJAdSsXi/n+5yXi0kcZY22X31wKHoYiyQozwOTdM3pa/rjHoXUEY3yQ76ximXJhRpRT
	8K9N8NzZ/VM+7A9DfVcH7vwjCsA5E6Vftlnm
X-Google-Smtp-Source: AGHT+IFLdOShLFUrgmFocbWkVBhAX2agF1zyEDdRzkJIIIUTfHxFHK7o41L90uicbnh2u3edwxhOVQ==
X-Received: by 2002:a05:651c:50a:b0:300:3a15:8f2a with SMTP id 38308e7fff4ca-30468503587mr106112501fa.2.1735447709482;
        Sat, 28 Dec 2024 20:48:29 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045adac821sm30924381fa.59.2024.12.28.20.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Dec 2024 20:48:28 -0800 (PST)
Date: Sun, 29 Dec 2024 06:48:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v4 09/17] drm/bridge: analogix_dp: Add support for phy
 configuration.
Message-ID: <nqbcp4wwvzxh7qpvlobt3mw7clj22bmq72xsaw7sbzfj3dpyll@u5mq5ciijse2>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-10-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-10-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241228_204831_527094_27A89D55 
X-CRM114-Status: GOOD (  11.47  )
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
> ---
> 
> Changes in v2:
> - remove needless assignments for phy_configure()
> - remove unnecessary changes for phy_power_on()/phy_power_off()
> 
> Changes in v4:
> - remove unnecessary &phy_configure_opts_dp.lanes assignments in
>   analogix_dp_set_link_bandwidth()
> - remove needless &phy_configure_opts_dp.lanes and
>   &phy_configure_opts_dp.link_rate assignments in
>   analogix_dp_set_lane_link_training()
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    |  1 +
>  .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 52 +++++++++++++++++++
>  2 files changed, 53 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
