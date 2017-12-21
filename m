From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 2/2] Rockchip dts64 fixes for 4.15
Date: Thu, 21 Dec 2017 17:01:06 +0100
Message-ID: <CAK8P3a1ahSgxDDe36zYmuom5W0CXM7zYqKHONHuHJTMZGNmrnQ@mail.gmail.com>
References: <6469701.IcmEy0bVhn@phil> <2690908.kxVfvpsLEa@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <2690908.kxVfvpsLEa@phil>
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

On Wed, Dec 13, 2017 at 7:57 AM, Heiko Stuebner <heiko@sntech.de> wrote:
> The following changes since commit 4fbd8d194f06c8a3fd2af1ce560ddb31f7ec8323:
>
>   Linux 4.15-rc1 (2017-11-26 16:01:47 -0800)
>
> are available in the git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.15-rockchip-dts64fixes-1
>
> for you to fetch changes up to bc631943faba6fc3f755748091ada31798fb7d50:
>
>   arm64: dts: rockchip: limit rk3328-rock64 gmac speed to 100MBit for now (2017-12-06 01:14:20 +0100)
>
> ----------------------------------------------------------------
> Another trailing interrupt-cell 0 removed.
>
> Removed as well got the vdd_log regulator from the rk3399-puma board.
> While it is there, the absence of any user makes it prone to configuration
> problems when the pwm-regulator takes over the boot-up default and wiggles
> settings there. Case in question was the PCIe host not working anymore.
> With vdd_log removed for the time being, PCIe on Puma works again.
>
> And a second stopgap is limiting the speed of the gmac on the rk3328-rock64
> to 100MBit. While the hardware can reach 1GBit, currently it is not stable.
> Limiting it to 100MBit for the time being allows nfsroots to be used again
> until the problem is identified.

Pulled into fixes, thanks!

       Arnd
