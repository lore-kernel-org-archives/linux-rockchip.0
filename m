From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v5 0/6] drm/rockchip: px30 dsi support
Date: Mon, 16 Dec 2019 12:17:53 +0100
Message-ID: <4524104.zPHHQK04YB@phil>
References: <20191209143130.4553-1-heiko@sntech.de>
 <8a071340-6452-4de3-10c9-393bce815ad7@baylibre.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <8a071340-6452-4de3-10c9-393bce815ad7@baylibre.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Cc: bivvy.bi@rock-chips.com, jernej.skrabec@siol.net, kuninori.morimoto.gx@renesas.com, jonas@kwiboo.se, sean@poorly.run, xzy.xu@rock-chips.com, philippe.cornu@st.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, yannick.fertre@st.com, nickey.yang@rock-chips.com, eddie.cai@rock-chips.com, Laurent.pinchart@ideasonboard.com, linux-rockchip@lists.infradead.org, sam@ravnborg.org, christoph.muellner@theobroma-systems.com
List-Id: linux-rockchip.vger.kernel.org

Hi Neil,

Am Montag, 16. Dezember 2019, 11:40:00 CET schrieb Neil Armstrong:
> On 09/12/2019 15:31, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > 
> > This series addes support for the px30 Rockchip soc to the dsi driver.
> > This includes support for external dsi-phys like used on the px30.
> > 
> > What happened between v1 and v5? The then separate dsi hs2lp timing
> > patch happened ;-) . As both it and this series touch similar areas
> > in the dsi driver ordering becomes an issue and so combining them to
> > make ordering explicit is helpful. v2-v4 where then iterations of the
> > timing patch.
> > 
> > So this v5 is mainly rebased on 5.5-rc1 and rechecked against drm-misc.
> > 
> > Heiko Stuebner (6):
> >   drm/bridge/synopsys: dsi: driver-specific configuration of phy timings
> >   drm/bridge/synopsys: dsi: move phy_ops callbacks around panel
> >     enablement
> >   dt-bindings: display: rockchip-dsi: document external phys
> >   drm/rockchip: add ability to handle external dphys in mipi-dsi
> >   dt-bindings: display: rockchip-dsi: add px30 compatible
> >   drm/rockchip: dsi: add px30 support
> > 
> >  .../display/rockchip/dw_mipi_dsi_rockchip.txt |  13 +-
> >  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c |  40 ++--
> >  drivers/gpu/drm/rockchip/Kconfig              |   1 +
> >  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 173 +++++++++++++++++-
> >  drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  13 ++
> >  include/drm/bridge/dw_mipi_dsi.h              |   9 +
> >  6 files changed, 227 insertions(+), 22 deletions(-)
> > 
> 
> You can go ahead and merge the whole serie with bridge stuff into drm-misc-next if you want,
> or I can do it.

I've applied the patches to drm-misc-next now (after double checking again).

Thanks a lot for doing the reviews
Heiko
