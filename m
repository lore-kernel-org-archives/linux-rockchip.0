Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 472EDC79FB9
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2026 12:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0uBL5eAbY6dbeah9SQ+RfQbVSER0nEzgcmmL/pktLs=; b=mCCzs/kMjyiZbD
	clpRBUpZZZtbvUK3uFeocYpqV7rdFg75yNyRe3W7B9juFoBkNc8QptI6HIgGfGoTWiYrt9TUCioQY
	dYeJULAwtEwtHlFP3PQV4JhUk0ZXLms/hi/UgXUeMUoKAQqpJiCN6q3ZhVlke2rfTbG7NQOj3JalT
	fMrYCkiM6kKkde3HZ5YaKaooLq0Ly24h0KoRjvy2iZACR17XA5FCwYPrNF/ZkdWkuvCFOwI1l6JAs
	otFrNphJ2dhphpBav71OotTUek4wjZyzCIiSN4rn2VVROaz5EhLE2aQtcu7HhBfxT+xg+4eA5iMXP
	f7fs6CjEAMIgF5ToQwUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4dW6-0000000EI7h-1bFB;
	Thu, 10 Sep 2026 12:04:34 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4dW4-0000000EI6n-1lIR
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Sep 2026 12:04:33 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49cd82be878so4195865e9.1
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Sep 2026 05:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789041870; x=1789646670; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=csxrJaNJi4tIfZjrD+uNlOFumjNYljFKlQuyLO7kEBc=;
        b=fKolcgWsGyG7SwehjOYUTWci4wAnKzTiJAmpHebYLLL6ZdGxvRpkLwXZ39RZTbJeO1
         PHK4WtihTVIx1/vnieQ4Jzlk1Jh6VI7N9BkxoNlL6C/8NHglgw8EjUUWHWrIhzhCxke+
         6viLoMcaNDz1yKKfOatRzzZ2yifWDiPyV4U5WoH8iULAxefE5813WJNPcTcmuOflpLB3
         /8Y/9H2sPai2j4JEksSo/2BLf4xray5vtZ/P34s/HZECO8ylzyODzva/4wp6ZX1MTW0b
         Kmt/X9g9WEpzsiiNX4GXei/F9m8qWoKomgrRVYZGs3ba4A0FtOVdEksV1Yowz/+Fl5xW
         yQFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789041870; x=1789646670;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=csxrJaNJi4tIfZjrD+uNlOFumjNYljFKlQuyLO7kEBc=;
        b=EVjq+6fR5EkngfMqyDzrcarxlqI2P6rfyZafFeFd6T2BoTZwARjb3/PhaSdsAexINf
         IF3+xigXn4HiScE6NEOQEUuiNW8F9CQ0XQXJ19fKnDtGMXuOLbcCZH6ETQ773d1lYLmV
         OPjpw1IWDoJxUoqUZJmKq1VaKPwcfEs7iyGtGrsuuD+CAHnvhPwezVDEOTDexS56a7gN
         DX9gLtgvbOivYNo+iqsjVYTsimwc6gO6TFDChDTYLdeTIlYJANg5LLn0Ps9LjUrZLTlG
         orpQT/vBF0smydF+Vml9vL4t+UNxnvv8oakcf8LPMW73HZWj4PB/XR3xr8IMRHNqPlDS
         grCg==
X-Forwarded-Encrypted: i=1; AKwUvBzdu7eqdkZLMKWyHguBTEDaXWmpS6SVtADfudNXtudyECtoWUxg9qHaCZ+UcH4sp8ZazRdbVmxseZPkVEe5mA==@lists.infradead.org
X-Gm-Message-State: AFuF++nIzc6AqiwwC0P0ELRzzo7XEsH+iWcndFZpMykpiPWC1L+LnZrA
	HzBlA0ELpuGWUp25HewYJh/4qyAgjDs2j2SFHXUYWMdrXI9DMRfrd93h
X-Gm-Gg: AYBFou1jmMYBY6fxRg9Aa1p5yccAMacZRyQ4NKKIwtUi+Vj0VYBkb6gYwq8xge24PCK
	mlPmDyzoMPZI6Qwl3VqhSo7Dda23Oq/8Mw+lT9eVeHwZrVyrpgwh9scisrlGuXU+YtSMs9QFF9b
	QHG5S3wia9RdajnnS4qIoJcjD9gasxjaE3pRsqyoujoQUhSrS2TDYG5x32hWL4s5L1042N8JXjt
	HFIUBFKqSqwddZOsfwNgH5v6zhyz2aoEG8gKhXYG8jdy88+lmWZwKxiXmOYCrCEDTrkEZZeQ2o3
	juuVD2tm1V4AltWUBPKTdsWp5gPcZfkkG6l++0X/5MxZL/oYDvGBSHr5GonyB9jHhycg9GIcLK/
	Lf2fEuvEakMRl/Qp9NiZ9nHfI0hPlLi+DkA0ygHe/0QW3mH8O8lRqFYBCktRn0JEgs96TNFW0RB
	YMgxGXaYSSqjZ+4UsLYMGhjOZZRTuoFIJjaPXbI7Z00dhA0F2c+wy/ciWaCkgelAY5s7aycRzwE
	2ltS/5s+mhxhllaC7CbEzuNpj/9hlxEd0lOA1okBIJ3QsmFGLJJoWffCv4iylyDBtJIjJlCwy0G
	NxyC
X-Received: by 2002:a05:600c:c494:b0:499:d95a:41f with SMTP id 5b1f17b1804b1-49d010c3969mr308061045e9.0.1789041870300;
        Thu, 10 Sep 2026 05:04:30 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B9146001C92980EE71198AB.dsl.pool.telekom.hu. [2001:4c4e:1b91:4600:1c92:980e:e711:98ab])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48591eb3d3bsm34529530f8f.0.2026.09.10.05.04.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2026 05:04:29 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Maxime Ripard <mripard@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Ville Syrjala <ville.syrjala@linux.intel.com>,
	Imre Deak <imre.deak@intel.com>,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH v2 3/3] drm/rockchip: dw_dp: Attach "max bpc" connector property
Date: Thu, 10 Sep 2026 14:04:06 +0200
Message-ID: <20260910120409.63850-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <388fd1ef-a8c9-4419-8bf2-10af7063e734@rock-chips.com>
References: <388fd1ef-a8c9-4419-8bf2-10af7063e734@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_050432_472598_EE3A3CD1 
X-CRM114-Status: GOOD (  11.73  )
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

Hi Chaoyi,

On 9/10/26 10:16, Chaoyi Chen wrote:
> Maybe we should consider adding a new "DRM_BRIDGE_OP_DP" :)

Works for me - it keeps the HDMI-only wording of max_bpc and makes the
check explicit. So that Maxime and Cristian have something concrete to
object to, this is all I would give the flag:

 - DRM_BRIDGE_OP_DP: the bridge drives a DisplayPort connector and
   fills in max_bpc. Nothing else is read from it for now.
 - drm_bridge_connector_init() treats it like DRM_BRIDGE_OP_HDMI:
   at most one such bridge in the chain (-EBUSY), max_bpc must be set
   (-EINVAL), and the connector gets "max bpc" with range 6..max_bpc.
 - dw-dp sets the flag and max_bpc = 10.

The connector itself stays a plain drmm_connector_init() one - no DP
counterpart of drmm_connector_hdmi_init() - so bridges without the flag
see no change at all.

> Perhaps @Cristian and @Maxime have better ideas?

That is point 3, and I will wait for it before writing v3: whether the
create-state block gets duplicated into the non-HDMI path or factored
out of drmm_connector_hdmi_init(), and whether keeping the restore value
in struct drm_bridge_connector is acceptable once 71/74 lands.

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
