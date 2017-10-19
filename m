From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 2/2] Rockchip dts64 updates for 4.15 part1
Date: Fri, 20 Oct 2017 00:34:25 +0200
Message-ID: <CAK8P3a3PiJQV-P8+w78tzSKa-awZyrb07sXaD26WLvPg+f5Gnw@mail.gmail.com>
References: <5843673.lOC77YXMZV@phil> <5888991.PG7Gbs0CIl@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <5888991.PG7Gbs0CIl@phil>
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

On Tue, Oct 17, 2017 at 7:40 PM, Heiko Stuebner <heiko@sntech.de> wrote:
> The following changes since commit 2bd6bf03f4c1c59381d62c61d03f6cc3fe71f66e:
>
>   Linux 4.14-rc1 (2017-09-16 15:47:51 -0700)
>
> are available in the git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.15-rockchip-dts64-1
>
> for you to fetch changes up to d85438991874205467f9739d5f3ee771245b4754:
>
>   arm64: dts: rockchip: enable cec pin for rk3399 firefly (2017-10-15 14:11:32 +0200)
>
> ----------------------------------------------------------------
> The biggest step forward is probably the enablement of display support
> on the rk3399-firefly, which got its default serial set as well and
> got cec support as well.
> Gru boards got their touchpad support refined to actually mark the button
> correctly and also git their rt5514 dsp added.
> And finally the rk3328 eval board got its cpu regulator and mmc nodes.

Pulled into next/dt, thanks!

      Arnd
