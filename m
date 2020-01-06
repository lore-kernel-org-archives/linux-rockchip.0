From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 11/11] arm64: dts: rockchip: Add PX30 LVDS
Date: Mon, 06 Jan 2020 12:50:27 +0100
Message-ID: <2384472.TJ9hiSgVgr@phil>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
 <20191224143900.23567-12-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20191224143900.23567-12-miquel.raynal@bootlin.com>
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

Am Dienstag, 24. Dezember 2019, 15:39:00 CET schrieb Miquel Raynal:
> Describe LVDS IP. Add the CRTC and LVDS relevant endpoints so they can
> be linked together.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

> +
> +			vopb_out_lvds: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&lvds_vopb_in>;
> +			};

> +
> +			vopl_out_lvds: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&lvds_vopl_in>;
> +			};

applied for 5.6, with the endpoints becoming @1 after the dsi

Thanks
Heiko
