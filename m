From: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: =?UTF-8?Q?Re=3a_=5bPATCH=5d_drm/bridge=3a_analogix=5fdp=3a_Split_bi?=
 =?UTF-8?B?bmQoKSBpbnRvIHByb2JlKCkgYW5kIHJlYWwgYmluZCgp44CQ6K+35rOo5oSP77yM?=
 =?UTF-8?B?6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcythbmR5Lnlhbj1yb2NrLWNo?=
 =?UTF-8?B?aXBzLmNvbUBsaXN0cy5pbmZyYWRlYWQub3Jn5Luj5Y+R44CR?=
Date: Fri, 6 Mar 2020 11:30:11 +0100
Message-ID: <746dee17-dac0-6c49-ffaa-5048b352bee6@samsung.com>
References: <CGME20200302142626eucas1p25b7aec18264b1483fab9cceb86989aa8@eucas1p2.samsung.com>
        <20200302142615.14947-1-m.szyprowski@samsung.com>
        <30f64c8f-2a12-46c2-e5eb-505bbb2088ed@samsung.com>
        <331b5d65-f619-ff84-d4e7-55d2257a90c5@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Return-path: <linux-samsung-soc-owner@vger.kernel.org>
In-Reply-To: <331b5d65-f619-ff84-d4e7-55d2257a90c5@rock-chips.com>
Content-Language: en-US
Sender: linux-samsung-soc-owner@vger.kernel.org
To: Andy Yan <andy.yan@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>, dri-devel@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>, Jingoo Han <jingoohan1@gmail.com>, Neil Armstrong <narmstrong@baylibre.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Andy

On 05.03.2020 10:03, Andy Yan wrote:
>
> I tested it on a rk3399 board, but the eDP was broken after this patch 
> applied:
>
>
> [    0.891873] registered taskstats version 1
> [    0.892243] Loading compiled-in X.509 certificates
> [    0.929147] rockchip-dp ff970000.edp: no DP phy configured
> [    0.931676] random: fast init done
> [    0.932594] rockchip-drm display-subsystem: bound ff900000.vop (ops 
> vop_component_ops)
> [    0.934117] rockchip-drm display-subsystem: bound ff970000.edp (ops 
> rockchip_dp_component_ops)
> [    0.934878] [drm] Supports vblank timestamp caching Rev 2 
> (21.10.2013).
> [    0.935459] [drm] No driver support for vblank timestamp query.
> [    0.956708] mmc0: new HS400 MMC card at address 0001
> [    0.958261] mmcblk0: mmc0:0001 AWPD3R 14.6 GiB
> [    0.958952] mmcblk0boot0: mmc0:0001 AWPD3R partition 1 4.00 MiB
> [    0.959804] mmcblk0boot1: mmc0:0001 AWPD3R partition 2 4.00 MiB
> [    0.960540] mmcblk0rpmb: mmc0:0001 AWPD3R partition 3 4.00 MiB, 
> chardev (242:0)
> [    0.965428] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.966228] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.967025] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.967104]  mmcblk0: p1 p2 p3 p4 p5
> [    0.967823] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.968620] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.969417] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.970216] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.971012] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.971811] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.972608] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.973404] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.974201] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.974998] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.975799] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.976596] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.977393] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.978189] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.978986] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.979786] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
> [    0.980584] rockchip-dp ff970000.edp: AUX CH error happened: 0x7 (1)
>
Thanks for the tests. I will check the code again, although I've tried 
not to change the code flow at all... If anyone has a suggestion what to 
check, let me know.

 > [...]

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland
