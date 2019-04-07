From: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] Rockchip devicetree fixes for 5.1
Date: Sun, 7 Apr 2019 15:15:54 -0700
Message-ID: <20190407221554.ljwufiwmnvy2skxc@localhost>
References: <3810761.i4nrmJbiT5@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <3810761.i4nrmJbiT5@phil>
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

On Mon, Apr 01, 2019 at 01:17:00AM +0200, Heiko Stuebner wrote:
> Hi Arnd, Kevin, Olof,
> 
> please find below some fixes for Rockchip SoCs on 5.1-rc. Nothing
> overly major thankfully but still somehow more than normal.
> 
> So please pull
> 
> Thanks
> Heiko
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.1-rockchip-dtfixes-1
> 
> for you to fetch changes up to 1a96665143c355b1019ed13b927266185d2a1e4f:
> 
>   ARM: dts: rockchip: Remove #address/#size-cells from rk3288-veyron gpio-keys (2019-03-25 13:33:10 +0100)
> 
> ----------------------------------------------------------------
> Fixes for dtc warnings, fixes for ethernet transfers on rk3328,
> sd-card related fixes on both rk3328 ans rk3288-tinker and a
> regulator fix on rock64 and making ddc actually work on the
> Rock PI 4 due to missing the ddc bus.

Merged, thanks!


-Olof
