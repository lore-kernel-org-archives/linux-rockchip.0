From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v3 0/4] rk3328 and rock64 display support
Date: Fri, 28 Sep 2018 16:06:31 +0200
Message-ID: <4674830.T5MsTfmpAf@phil>
References: <20180910092843.1700-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20180910092843.1700-1-heiko@sntech.de>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-rockchip@lists.infradead.org
Cc: robin.murphy@arm.com, hjc@rock-chips.com, linux-arm-kernel@lists.infradead.org, zhengyang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 10. September 2018, 11:28:39 CEST schrieb Heiko Stuebner:
> Companion series for the display modifications adding the necessary
> devicetree stuff for display support on the rk3328-rock64.
> 
> changes in v3:
> - drop reg from hdmi port - unneeded with a single vop
>   as suggested by Robin
> 
> changes in v2:
> - add defconfig addition for the phy driver
> - adapt to changed reference clock names
> - remove trailing 0 from vop irq
> 
> Heiko Stuebner (4):
>   arm64: dts: rockchip: add Innosilicon hdmi phy node to rk3328
>   arm64: dts: rockchip: add rk3328 display nodes
>   arm64: dts: rockchip: enable display nodes on rk3328-rock64
>   arm64: defconfig: enable Rockchip Innosilicon hdmiphy

with phy and hdmi support being scheduled for 4.20,
applied these as well.
