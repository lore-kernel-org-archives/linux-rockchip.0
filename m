Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1335AC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Mar 2022 08:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfWdllAv3uCFDpdgn576wjwMnomqDrBDzzNz53Jj/Mo=; b=1F/v9xWF/1xZ2M
	3Qkdvp8FmeKOK1YPe0K6Udn5hIIAOnCbHm0KNOtRdOCanV2MeQyr2pVCKSkLxb141xtwCA+Q/csyy
	+cgmyjN0MDcTIogpkxkbQukF7uuWXC78u64ZMp5ble3Al8lP1p+IsLKWU/Toj205x9Uxxfo21rEUx
	L1wGm2pqZfDYLF3Evg6ZecU0hOj8V+rA4cmPrTuZKDXuHj+mAKvnIMuUKs26fzEEFwcpFwttdz2dy
	mTMrnm9hcgJ2J+b4pKsuuV3TmgVIdBpqJ3dylgmwjGXz7qlsBjChiYa3bIZY7Q1jIg8OjsGaNQl3O
	ZApmRUbcXZFbuF+1jFKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nV8LN-000snZ-Aq; Fri, 18 Mar 2022 08:52:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nV8LA-000sjE-Uo
 for linux-rockchip@lists.infradead.org; Fri, 18 Mar 2022 08:52:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nV8L5-0005HN-Tp; Fri, 18 Mar 2022 09:52:03 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nV8L2-0004Z8-MF; Fri, 18 Mar 2022 09:52:00 +0100
Date: Fri, 18 Mar 2022 09:52:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Daniel Stone <daniel@fooishbar.org>
Subject: Re: [PATCH v8 22/24] drm: rockchip: Add VOP2 driver
Message-ID: <20220318085200.GB12181@pengutronix.de>
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-23-s.hauer@pengutronix.de>
 <9ec29d9b-8197-98fb-c612-5c842e4212c4@rock-chips.com>
 <20220316074001.GP405@pengutronix.de>
 <f9d57503-1ac6-61c6-5fda-1a78b6e7270a@rock-chips.com>
 <e6ab5ce2-4177-9e45-a50f-9ea3abb08800@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e6ab5ce2-4177-9e45-a50f-9ea3abb08800@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:48:51 up 97 days, 17:34, 77 users,  load average: 0.74, 0.24, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_015209_001339_94C5C30B 
X-CRM114-Status: GOOD (  29.73  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Andy,

On Thu, Mar 17, 2022 at 03:23:12PM +0800, Andy Yan wrote:
>    I found a obvious=A0 error in 0x604(OVERLAY_LAYER_SEL) register, the
>    configuration value
> =

>    is 0x54763513.
> =

>    I am not sure if you know clearly about this register:
> =

>    Every four bits of this register select a Window(Cluster0,Cluster1,
>    Esmart0, Esmart1, Smart0. Smart1)
> =

>    for layer0 to layer 5 from bottom to top.
> =

>    0: Cluster0
> =

>    1: Cluster1:
> =

>    2: Esmart0
> =

>    3: Smart0
> =

>    6: Esmart1
> =

>    7: Smart1
> =

>    And one window can only be selected by one layer at a time.
> =

>    So when I change this register to 0x54762513, the square draw by
>    weston-simple-dmabuf-egl appeared on the top of the weston background =
on
>    screen.

I can reproduce this here. It seems I have only tested overlays with two
active VPs. With only one active VP I see the same behaviour as you do.

The following patch fixes this, will include that in the next round.

Sascha

------------------------------8<-------------------------------
From d07036753bd1496fa8a49c31eff004e927ce412b Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Mar 2022 09:47:53 +0100
Subject: [PATCH] fixup! drm: rockchip: Add VOP2 driver

---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm=
/rockchip/rockchip_drm_vop2.c
index 81ff79eddb8a0..71bc8c11b8bcf 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1941,7 +1941,7 @@ static void vop2_setup_layer_mixer(struct vop2_video_=
port *vp)
 	}
 =

 	/* configure unused layers to 0x5 (reserved) */
-	for (; nlayer < 3; nlayer++) {
+	for (; nlayer < vp->nlayers; nlayer++) {
 		layer_sel &=3D ~RK3568_OVL_LAYER_SEL__LAYER(nlayer + ofs, 0x7);
 		layer_sel |=3D RK3568_OVL_LAYER_SEL__LAYER(nlayer + ofs, 5);
 	}
-- =

2.30.2

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
