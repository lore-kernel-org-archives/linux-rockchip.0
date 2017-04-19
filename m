From: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH] multi_v7_defconfig: make Rockchip usb2-phy built-in
Date: Wed, 19 Apr 2017 05:22:00 -0700
Message-ID: <20170419122200.GC17004@localhost>
References: <20170403102212.6802-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20170403102212.6802-1-heiko@sntech.de>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, Apr 03, 2017 at 12:22:12PM +0200, Heiko Stuebner wrote:
> The phy is necessary for the dwc2 controllers driving the usb ports
> on all arm32 Rockchip socs. Both the dwc2 as well as usb downstream
> drivers (mass-storage as well as usb networking) are already built-in,
> so only the phy is missing to allow booting from usb-devices without
> to much hassle.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
> Ideally to be applied directly to some armsoc defconfig branch.

Merged, thanks!

-Olof
