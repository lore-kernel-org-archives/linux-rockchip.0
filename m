From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 2/5] dt-bindings: display: rockchip-dsi: document
 external phys
Date: Wed, 13 Nov 2019 19:52:01 -0600
Message-ID: <20191114015201.GA22126@bogus>
References: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
 <20191108000253.8560-3-heiko.stuebner@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20191108000253.8560-3-heiko.stuebner@theobroma-systems.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net, heiko@sntech.de, narmstrong@baylibre.com, linux-kernel@vger.kernel.org, jonas@kwiboo.se, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, philippe.cornu@st.com, yannick.fertre@st.com, a.hajda@samsung.com, robh+dt@kernel.org, Laurent.pinchart@ideasonboard.com, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
List-Id: linux-rockchip.vger.kernel.org

On Fri,  8 Nov 2019 01:02:50 +0100, Heiko Stuebner wrote:
> Some dw-mipi-dsi instances in Rockchip SoCs use external dphys.
> In these cases the needs clock will also be generated externally
> so these don't need the ref-clock as well.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../bindings/display/rockchip/dw_mipi_dsi_rockchip.txt     | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
