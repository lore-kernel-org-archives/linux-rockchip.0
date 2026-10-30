Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E65606A327
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 11:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=At26xNBX;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=G/+Laos6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=V7PZdMBn3XwjPWES/y1QlcxeSooHzCXfa6NBFGle3hs=; b=At26xNBXM3IvDUuF3jFMqRq+TM
	ALJsyqGa9HRqWkgwKcxh5asG9sXSoBpbDPihkWPxiGjVhA5CboBksPS0i5xyAFaETJurxvhQ9BORU
	PqBeKEWqng5kBQPTmVyafsAFUKSJ5emZJelIFLW/CeFzTp3YIgbM0dHPNmB/bHxsl2ts5+B1Rucmm
	7pmvimSHlMOyMTV0QwPzaRaRqAN3YRxa0zXCu+rXxj2p9fh1jk0+sJ3PB6Yg/FEIpeA02rW2cnZBV
	Sr0oXC8vJNLyhuPy0M56SHxF6/W//i5tS4SEiTh8JyVawj+Pp8+Vg8JFl/vKkH73Vj933/8StABmD
	u5p/v4DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMl5E-0000000Bamk-1aLU;
	Fri, 30 Oct 2026 11:47:44 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMl5B-0000000Bam4-3UJj
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 11:47:43 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-3ac78f4c10bso265176a91.1
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 04:47:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793360860; cv=none;
        d=google.com; s=arc-20260327;
        b=Fij6W7rrlEZEezLG86FqXRTYxtfIOeZMp9iSai05JBxmy3v4Ail69nND1ToboOCtE+
         oB2EPieSSyzG0gJB1xu7COzRyJqrd+/+0wnRwdIr4C6OzLWihV2IfKTnX6eIEB1gmxDB
         5yhNd3dJ7XT/R2P1DAvFaO3C1KsCJ5xJJ7ZkjWnKK62chhttMBdRBkvbwYuhleXjcDHW
         VHtH6CgYWzZl9v/ziwZGBfjW1m60PZ69c0fvRV+VqpiR/i3+ZTVk63uFM9DO9uM3FYfJ
         fx3TTI7uMAqOtBbN50StKgeuHES9Fhr5VukQKmg477Mqn4bYNKCuwWqIW9ch9+Je3mJ5
         Tuzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jhQMGcD15ceeh2wLMh9Atxq0/hg3i7fdihgYRv3Ypv8=;
        fh=xXBHs/sN6Abux8Y1mj3ZNFd+MmcTDSPL2us2dZ8ih9Q=;
        b=Zh76+xIVEv1tCq77JSd0fBuiBx3G5S5Sv/NdDvTuq+S/of7M99BVSJhZiZZSKAhzpQ
         PRqww6zFbNmjYNZksRPFXDX6QzgX9o/zd9V9FkeaRSF6KbcG+iXgbJewah5axqoJETe4
         ek+BsQCYbytrnU4F/TeZdQdBuM6WtLy8xvcdOpbfMdGZL8qq5NWw/8zqa27OVgzRILiG
         uAZqeCKrbLXL7UwV9kozCkc57OcF552qkP5/RYaglJF0zr4ZmrY+0IG+wxwUP0qypTzz
         rGcTqjVEDHJo52iEWoJwAf1j60y8BofA9jS5nmQPGvlGG0OclJ1JQB4glvTPu7xDu5L3
         XqYQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793360860; x=1793965660; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jhQMGcD15ceeh2wLMh9Atxq0/hg3i7fdihgYRv3Ypv8=;
        b=G/+Laos6VA3qF8FRW989FQw9QPcFAf3pACaFTpMe9NjPpmBvE33CGvaUERv6z24TSj
         UNhBApIj+vfxK2umPI4n5jyE8kWOJ3pqJi6GVXejy5OSzw7FlQyi1MhIx661ymkIAzES
         femOX6fKmduMQw1mdCSTfSE7Su0DtQfoK7qj1BNB+dwiH102aHCfrDvRWyEPAqazaYC8
         APlqhauso7GO3/Jv19VL7UkT9vegj1pRTMpzXnIfKhQSDwwZLXs6p5aC9XW9MdnbNfmF
         Qpt2BURVkf4R70IP+wbtLBoh/6qqqbR0RbjAvK+5MWabn2iqzjwSqfVazT5KvVY+6lFU
         8czQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793360860; x=1793965660;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=jhQMGcD15ceeh2wLMh9Atxq0/hg3i7fdihgYRv3Ypv8=;
        b=H9vFNI0RRSDbB7iSaV4OrLyqNSO/mofr/ILOf+juCFH8qd3cSVkvEUtlvG6cUqtLH4
         pkFiTAQFCfwK2D+g4jX15qDnx7ndoKD/KPXq1WyXJorjnNyElaFwkjjMT4cEifCebXoJ
         96Wa6s9Uv5KdkWaZN7yyNufPCZDxy8bcBz7yU3sEI22NvxVJVr38rqCDf585Vf2++5dN
         RuGBPP0NVuMf2mT1HDCUg1uB46TAN4oS+wjK48X0Rd0fWTZakrKYwVPepARpl06n6xnu
         2ZAz3Z0Jq4Sm6Sampj0EndEfjJYyF3XP8+iptQVeJThl4WkaOxdqP7Z+0rZmqBqtjJnx
         lm2A==
X-Forwarded-Encrypted: i=1; AKwUvBy7KgpDtvep/cezKrv8a1tgcEZQumo4oMkVjg8eSluiE5eZpJlprfoRYlmqSzmgqhqrr3pqM4gEq29c+z2Q5w==@lists.infradead.org
X-Gm-Message-State: AFq9FYLGXIpX9dtn3cEgP5rLiGQb3T0fO3++p9SJvMBVtBQwGxbsQL7Z
	yWGIMWl3fNNsLoRU0VVZk4VdRRIs4ozmDLWsFDlcphXhiKVUO5aREIvr+wfs122fGK138Cv0a1A
	fmm8zTMtv1ifhtsaGOgoO6DvjMztuZS9EzhGzFYvxxw==
X-Gm-Gg: AYBFou0ORntk5zlIuoHoNyReyY2S1Mvb4xGKTIzWx7lcWV3qjgZaSz5PIEbcGbQy48A
	7/Bwjq4QyicUCO1WnPIJlrSnkYQG49FWj6XtE49mEMMhWzIzLPuLjQqm96XzyqtrbwgY+lKBpbg
	GJkcDNvMyYlOvyijRCU1JOtifvUlD0KLl3AlhOyNKJ9zTbfATpPvuIbI+BvSSBYm+ShVchgyFrY
	RaJz5WDgGGJfrp4m2d4E8fd2uC6pSgVAe/WCbiBbXHMOi6kH3mhPdxipfRpMVzJMpvLJzvtOGNy
	Y9/zDUdXB8RYZSOW27OU8BVxxj+Q6liIpz/Byj2EHqTZhG0yveMDlXhSxYHOL1E/FIyXsnuK4Qc
	DA+SJNQZSnjvCfp3fN7gOkVJbySKeOs3H1mWv
X-Received: by 2002:a17:90b:4a46:b0:3aa:f2c4:12e9 with SMTP id
 98e67ed59e1d1-3ae8953617fmr1788397a91.3.1793360860430; Fri, 30 Oct 2026
 04:47:40 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261014-dw-hdmi-qp-yuv-v5-0-6fab0fe43a9b@collabora.com> <20261014-dw-hdmi-qp-yuv-v5-10-6fab0fe43a9b@collabora.com>
In-Reply-To: <20261014-dw-hdmi-qp-yuv-v5-10-6fab0fe43a9b@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 30 Oct 2026 11:47:29 +0000
X-Gm-Features: AclHuK94pfXkqJW650Ejw1KMr2XP085nv_elOXQBTTnf3Z6vJhDk_9RcSiJIx78
Message-ID: <CAPj87rMMHpeE3WnPQp-M8KvAH9yZjT7goWU8dGtw+ykzvY1TGQ@mail.gmail.com>
Subject: Re: [PATCH v5 10/15] drm/rockchip: vop2: Switch to enum vop_csc_format
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Daniel Stone <daniels@collabora.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, kernel@collabora.com, 
	Andy Yan <andyshrk@163.com>, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Igor Paunovic <royalnet026@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_044741_868394_33035AFA 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, 13 Oct 2026 at 23:51, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> Improve code readability in vop2_setup_csc_mode() by using enum
> vop_csc_format for the csc_mode variable, as well as for the return type
> of the vop2_convert_csc_mode() helper, which already returns CSC_*
> enumerators.
>
> While at it, replace the nonsensical 'csc_mode = false' assignment in
> the no-conversion branch with the equivalent CSC_BT601L, which carries
> the same value (0) but is type-correct.

Reviewed-by: Daniel Stone <daniels@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
