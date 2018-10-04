From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 2/3] Rockchip ARM32 devicetree updates for 4.20
Date: Thu, 4 Oct 2018 16:19:32 +0200
Message-ID: <CAK8P3a3JMxjA7CS=tnGReEB-9+Vqzgy13xUu3mq_=fp6Jf79HQ@mail.gmail.com>
References: <2559110.ail6FZQ9dJ@phil> <1670292.M4d8aT802m@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1670292.M4d8aT802m@phil>
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

On Wed, Oct 3, 2018 at 3:39 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> The following changes since commit 5b394b2ddf0347bef56e50c69a58773c94343ff3:
>
>   Linux 4.19-rc1 (2018-08-26 14:11:59 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.20-rockchip-dts32-1
>
> for you to fetch changes up to 186b45657b244ce865e01b65d73868a48252e1ff:
>
>   ARM: dts: rockchip: add rk3288-based Tinker board S (2018-09-26 14:31:30 +0200)
>
> ----------------------------------------------------------------
> Nodes for the newly support rk3188 display controller, a fix for a new
> dtc warning, gpio setting for the sdmmc regulator on radxarock and a
> new board the "S" variant of the rk3288-based Tinker board, that sports
> an added emmc.

Pulled into next/dt, thanks!

     Arnd
