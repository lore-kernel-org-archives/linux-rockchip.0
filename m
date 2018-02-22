From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 2/2] Rockchip dts64 fixes for 4.16
Date: Thu, 22 Feb 2018 17:47:48 +0100
Message-ID: <CAK8P3a2QXnUCaj1vDa6PePWWJAcyvMe-fRAhVqLd3QdFKEWRLg@mail.gmail.com>
References: <2137280.MWbT8y5lbZ@phil> <1708943.A4pxJccnVY@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1708943.A4pxJccnVY@phil>
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

On Sun, Feb 18, 2018 at 4:41 PM, Heiko Stuebner <heiko@sntech.de> wrote:
> The following changes since commit 7928b2cbe55b2a410a0f5c1f154610059c57b1b2:
>
>   Linux 4.16-rc1 (2018-02-11 15:04:29 -0800)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.16-rockchip-dts64fixes-1
>
> for you to fetch changes up to ca9eee95a2decc6f60bed65b5b836a26bff825c1:
>
>   arm64: dts: rockchip: Fix DWMMC clocks (2018-02-16 10:30:25 +0100)
>
> ----------------------------------------------------------------
> Fixes of dwmmc tuning clocks that may make probing HS cards fail,
> adding the grf-vio clock to the edp so that it can also be build
> as module, correct pcie ep-gpio on the sapphire board and finally
> a fix that makes the gmac work at gigabit speeds on the rk3328-rock64.

Pulled into fixes, thanks!

     Arnd
