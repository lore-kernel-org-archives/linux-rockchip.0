From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 4/4] Rockchip dts64 changes for 4.14
Date: Wed, 16 Aug 2017 23:41:56 +0200
Message-ID: <CAK8P3a2=9L1Rgy_86nj1yv2o9EY+1mkivd+h0sUhcfzXAQUAmg@mail.gmail.com>
References: <12145142.47nS8LyXIe@phil> <3713539.z1Eee8O6DN@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <3713539.z1Eee8O6DN@phil>
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

On Sun, Aug 6, 2017 at 11:51 AM, Heiko Stuebner <heiko@sntech.de> wrote:
> ----------------------------------------------------------------
> 64bit Rockchip devicetree changes containing fixes for pinctrl typos
> and the use of keep-power-in-suspend in non-sdio nodes as well as the
> removal of the deprecated num-slots property from dwmmc nodes.
>
> rk3328 gets support for spdif, io-domains and usb (including enablement
> of usb on the evaluation board), while rk3368 gains support for spdif.
>
> The biggest chunk of course aims for the rk3399 with a number of pcie
> changes, support for the mali gpu, a new power-domain, sdmmc support
> on the firefly board and dynamic-power-coefficients.
>
> The gru family also gets support for their quite central pwm regulators
> using the newly introduced vctrl regulator types.

Pulled into next/dt64, thanks!

       Arnd
