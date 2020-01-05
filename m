From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 00/11] Add PX30 LVDS support
Date: Sun, 05 Jan 2020 15:05:26 +0100
Message-ID: <1885398.klecWcqSHf@phil>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20191224143900.23567-1-miquel.raynal@bootlin.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Maxime Chevallier <maxime.chevallier@bootlin.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 24. Dezember 2019, 15:38:49 CET schrieb Miquel Raynal:
> Hello,
> =

> This series aims at supporting LVDS on PX30.
> =

> A first couple of patches update the documentation with the new
> compatible and the presence of a PHY. Then, the existing Rockchip
> driver is cleaned and extended to support PX30 specificities. Finally,
> the PX30 DTSI is updated with CRTC routes, the DSI DPHY and the LVDS
> IP itself.
> =

> Cheers,
> Miqu=E8l
> =

> Changes since v1:
> * Added Rob's Ack.
> * Used "must" instead of "should" in the bindings.
> * Precised that phy-names is an optional property in the case of
>   PX30.
> * Renamed the WRITE_EN macro into HIWORD_UPDATE to be aligned with
>   other files.
> * Removed extra configuration, not needed for generic panels (see
>   Sandy Huang answer).
> * Dropped the display-subsystem routes (useless).
> * Merged two patches to avoid phandle interdependencies in graphs and
>   intermediate build errors.
> =

> Miquel Raynal (11):
>   dt-bindings: display: rockchip-lvds: Declare PX30 compatible
>   dt-bindings: display: rockchip-lvds: Document PX30 PHY
>   drm/rockchip: lvds: Fix indentation of a #define
>   drm/rockchip: lvds: Harmonize function names
>   drm/rockchip: lvds: Change platform data
>   drm/rockchip: lvds: Create an RK3288 specific probe function
>   drm/rockchip: lvds: Helpers should return decent values
>   drm/rockchip: lvds: Pack functions together

applied patches 1-8 to drm-misc-next

>   drm/rockchip: lvds: Add PX30 support

drm-misc-next is currently still at 5.4-rc4, so I'll need to find out how
to get newer kernel changes in there, as right now we're missing
the PHY_MODE_LVDS constant.


Heiko

>   arm64: dts: rockchip: Add PX30 DSI DPHY
>   arm64: dts: rockchip: Add PX30 LVDS
> =

>  .../display/rockchip/rockchip-lvds.txt        |   4 +
>  arch/arm64/boot/dts/rockchip/px30.dtsi        |  48 ++
>  drivers/gpu/drm/rockchip/rockchip_lvds.c      | 486 ++++++++++++------
>  drivers/gpu/drm/rockchip/rockchip_lvds.h      |  19 +-
>  4 files changed, 401 insertions(+), 156 deletions(-)
> =

> =
