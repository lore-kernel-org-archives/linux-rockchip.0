From: Chris Zhong <zyw@rock-chips.com>
Subject: Re: [PATCH v4 00/23] drm/rockchip: MIPI fixes & improvements
Date: Mon, 27 Feb 2017 11:34:44 +0800
Message-ID: <58B39E54.1030007@rock-chips.com>
References: <20170224125506.21533-1-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20170224125506.21533-1-john@metanate.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: John Keeping <john@metanate.com>, Mark Yao <mark.yao@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Sean Paul <seanpaul@chromium.org>, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi John

I have test this v4 series on my RK3399 board, it works well, thanks.

Tested-by: Chris Zhong<zyw@rock-chips.com>


On 02/24/2017 08:54 PM, John Keeping wrote:
> This version is mostly small changes in response to review comments from
> Sean and Chris, the details are in the individual patches.
>
> I decided to drop the final patch which adds support for MIPI read
> commands because I'm not using that feature now and I can't easily test
> it.  It's on the list if anyone wants to pick it up in the future.
>
> Version 3 was posted here:
> http://www.spinics.net/lists/dri-devel/msg130977.html
>
> Thanks to Sean Paul and Chris Zhong for their review and testing of this
> series.
>
> John Keeping (23):
>    drm/rockchip: dw-mipi-dsi: don't configure hardware in mode_set for
>      MIPI
>    drm/rockchip: dw-mipi-dsi: pass mode in where needed
>    drm/rockchip: dw-mipi-dsi: remove mode_set hook
>    drm/rockchip: dw-mipi-dsi: fix command header writes
>    drm/rockchip: dw-mipi-dsi: fix generic packet status check
>    drm/rockchip: dw-mipi-dsi: avoid out-of-bounds read on tx_buf
>    drm/rockchip: dw-mipi-dsi: include bad value in error message
>    drm/rockchip: dw-mipi-dsi: respect message flags
>    drm/rockchip: dw-mipi-dsi: only request HS clock when required
>    drm/rockchip: dw-mipi-dsi: don't assume buffer is aligned
>    drm/rockchip: dw-mipi-dsi: prepare panel after phy init
>    drm/rockchip: dw-mipi-dsi: allow commands in panel_disable
>    drm/rockchip: dw-mipi-dsi: fix escape clock rate
>    drm/rockchip: dw-mipi-dsi: ensure PHY is reset
>    drm/rockchip: dw-mipi-dsi: configure PHY before enabling
>    drm/rockchip: dw-mipi-dsi: properly configure PHY timing
>    drm/rockchip: dw-mipi-dsi: improve PLL configuration
>    drm/rockchip: dw-mipi-dsi: use specific poll helper
>    drm/rockchip: dw-mipi-dsi: use positive check for N{H,V}SYNC
>    drm/rockchip: vop: test for P{H,V}SYNC
>    drm/rockchip: dw-mipi-dsi: defer probe if panel is not loaded
>    drm/rockchip: dw-mipi-dsi: support non-burst modes
>    drm/rockchip: dw-mipi-dsi: add reset control
>
>   drivers/gpu/drm/rockchip/dw-mipi-dsi.c      | 325 +++++++++++++++++++---------
>   drivers/gpu/drm/rockchip/rockchip_drm_vop.c |   4 +-
>   2 files changed, 220 insertions(+), 109 deletions(-)
>

-- 
Chris Zhong
