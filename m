From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL RESEND 3/4] Rockchip dts32 changes for 4.17
Date: Wed, 28 Mar 2018 17:16:38 +0200
Message-ID: <CAK8P3a3_jc2Px5iADy4xLmn9RXYu6czBodxogoOHpqGyLHz4Hw@mail.gmail.com>
References: <12470502.BUvxkRrZk8@phil> <11622789.b3QClBAtVJ@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <11622789.b3QClBAtVJ@diego>
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
Cc: "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Mar 28, 2018 at 5:09 PM, Heiko Stuebner <heiko@sntech.de> wrote:
> The following changes since commit 7928b2cbe55b2a410a0f5c1f154610059c57b1b2:
>
>   Linux 4.16-rc1 (2018-02-11 15:04:29 -0800)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/
> v4.17-rockchip-dts32-1
>
> for you to fetch changes up to 8dc9b9720380a3c16969932151ba92b558110b2f:
>
>   ARM: dts: rockchip: enable USB-OTG port on Radxa Rock2 Square (2018-02-19
> 06:53:35 +0100)
>
> ----------------------------------------------------------------
> For general soc-specific changes the rk322x socs got their correct grf
> compatible set. Other than that there are some board-specific changes
> like the Rock2 getting its otg port, recovery and power keys enabled.
>
> The vyasa board gained an enabled emmc node and the phyCORE boards
> got UHS speeds in their sd card and a fixed sd-card power supply.
>
> Finally the veyron boards dropped a nonstandard and unused property.

Pulled into next/dt, thanks!

     Arnd
