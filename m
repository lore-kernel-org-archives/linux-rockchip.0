Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94873C0015E
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Aug 2023 14:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:From:References:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i6dtpntOdh/BkL3JHfAOaGl+EaEARi6Xrjz3jGCDPMo=; b=Eghk8Cndk12sib
	l1B3U0FrN21NlCUqygjstqgHXJLsibH1OnFZHefr51A9apIsKOPo79qc6sM9tNS3jdWWLUontuaMP
	3ELfPN0Y+UHEntT9LyeIvwWU3X6v4gLtbTtAbPvredi7oqgkDom1ehcgtXv/y0atabPCaBKYBvm8r
	EDIjb9CQbEsnx2U9JzUSM7ssRsvl1Y+BxoaqgjNKgFC7oUrflpJb/uUoXBdkLvSqqtT7BxJ1zknJC
	hOyjLn6CRuksO/MyJzFrk7j9gS+FzWm+MUnAr50LoLVFcjGnvpw7mUuY2DRXwj+NvTquQWlo5PDKn
	7WhxnLDqArcxt9+T9t8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUpRW-00DXor-1y;
	Sat, 12 Aug 2023 14:18:14 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUpRS-00DXnb-1U
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Aug 2023 14:18:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=mime-version:subject:references:from:in-reply-to:to:cc:content-type:
	content-transfer-encoding:cc:content-type:from:subject:to;
	s=s1; bh=sKoqonJGkns3oYuhs1epSxG/U3/42aecgJBwpTG/v1Q=;
	b=bcKPGgC5JrECh2FEnvBi2x/UEzcKjhulx/KajpUjSnOiBw9MkSpzf4fkTD/xuXlRAP98
	aiyiGyqZa5Pc+y0SMEyQfOH+mzLlcigTIaXBonfjtk58SCEBRFkaqtK2tDAZaOKEvu4+fy
	UDeAfcSPbk3FrkJX8K3Yx0pr9HdejSd2AKrRn3Tz0ljIcNOADOrjgi19z9gRmMmYTHsNqj
	0vnmrq3Nh7oiUsS6R2iScv3NVbP3R1TAxSdlBw9fq4weRBvrcHAAxAPM6H5CcrxiRiT2UY
	5OLEYeaXs0S1RBarnNrIxdrPN05hoC3Odssxl21eoGGaQBSJkhhUzwGRnJrMk3ng==
Received: by filterdrecv-d7bbbc8bf-zf9x9 with SMTP id filterdrecv-d7bbbc8bf-zf9x9-1-64D7949D-11
        2023-08-12 14:18:05.386703198 +0000 UTC m=+8087893.184532908
Received: from [192.168.1.50] (unknown)
	by geopod-ismtpd-3 (SG) with ESMTP
	id hCXh1dcGQruO7UNzEa6gzQ
	Sat, 12 Aug 2023 14:18:05.084 +0000 (UTC)
Message-ID: <17046b61-5188-28e3-41fc-dad36d76584f@kwiboo.se>
Date: Sat, 12 Aug 2023 14:18:05 +0000 (UTC)
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 0/5] drm/rockchip: Fix crtc duplicate state and crtc
 reset funcs
Content-Language: en-US
References: <20230621223311.2239547-1-jonas@kwiboo.se>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20230621223311.2239547-1-jonas@kwiboo.se>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hxUPmSkTscY2RCWIM?=
 =?us-ascii?Q?IReNLsbfMOphAa+9BFIZRWhyTq4tTnSSc4sCX6L?=
 =?us-ascii?Q?57Piv7leXKg2FML=2FUhTgWYOQY5MG4y8j1SG3sRl?=
 =?us-ascii?Q?tDBZoxb1HlqdYqv=2FVS4Xza+lrKESJFsMdK8e5yv?=
 =?us-ascii?Q?M+iKzhXWnce6uqmGeAsqFk3qChWejuOWFaD7weF?=
 =?us-ascii?Q?QudvP+mtoddftDolnpiuw=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Mark Yao <markyao0591@gmail.com>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Andy Yan <andy.yan@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230812_071811_174943_13CC22BC 
X-CRM114-Status: GOOD (  12.66  )
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

Hi Heiko,

Please consider reviewing and merging this series [2], and also [3].

drm/rockchip: Fix crtc duplicate state and crtc reset funcs
[2] https://lore.kernel.org/all/20230621223311.2239547-1-jonas@kwiboo.se/

drm/rockchip: vop: Add NV15, NV20 and NV30 support
[3] https://lore.kernel.org/all/20230618220122.3911297-1-jonas@kwiboo.se/

Regards,
Jonas

On 2023-06-22 00:33, Jonas Karlman wrote:
> This series fixes a reset of state in duplicate state crtc funcs for VOP
> driver, a possible crash and ensure crtc reset helper is called in VOP2
> driver.
> 
> Patch 1 use kmemdup instead of kzalloc to duplicate the crtc state.
> Patch 2 change to use crtc and plane cleanup helpers directly.
> Patch 3 adds a null guard for allocation failure.
> Patch 4 adds a crash guard for empty crtc state.
> Patch 5 adds a missing call to crtc reset helper.
> 
> This is the next part of an ongoing effort to upstream HDMI 2.0 support
> used in LibreELEC for the past 3+ years.
> 
> Changes in v2:
> - Handle possible allocation failure in crtc reset funcs
> - Collect r-b tags
> 
> This series is also available at [1].
> 
> [1] https://github.com/Kwiboo/linux-rockchip/commits/next-20230621-duplicate-state
> 
> Jonas Karlman (5):
>   drm/rockchip: vop: Fix reset of state in duplicate state crtc funcs
>   drm/rockchip: vop: Use cleanup helper directly as destroy funcs
>   drm/rockchip: vop: Fix call to crtc reset helper
>   drm/rockchip: vop2: Don't crash for invalid duplicate_state
>   drm/rockchip: vop2: Add missing call to crtc reset helper
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c  | 24 +++++-------
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 39 ++++++++++----------
>  2 files changed, 28 insertions(+), 35 deletions(-)
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
