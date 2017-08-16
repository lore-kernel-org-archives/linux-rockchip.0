From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 3/4] Rockchip dts32 changes for 4.14
Date: Wed, 16 Aug 2017 23:10:32 +0200
Message-ID: <CAK8P3a1o4N47JO_Y_iW0jb0Q1O=fd_J0Z5pFKktz=U6EXrDw_w@mail.gmail.com>
References: <12145142.47nS8LyXIe@phil> <3167861.YfTzp5M1RE@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <3167861.YfTzp5M1RE@phil>
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

On Sun, Aug 6, 2017 at 11:50 AM, Heiko Stuebner <heiko@sntech.de> wrote:
> The following changes since commit 5771a8c08880cdca3bfb4a3fc6d309d6bba20877:
>
>   Linux v4.13-rc1 (2017-07-15 15:22:10 -0700)
>
> are available in the git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.14-rockchip-dts32-1
>
> for you to fetch changes up to 0f4dc7e154d054303c4dd6b5c3e3207f9a7f8714:
>
>   ARM: dts: rockchip: fix property-ordering in rv1108 mmc nodes (2017-07-22 22:41:35 +0200)
>
> ----------------------------------------------------------------
> Removal of the deprectated num-slots property from all Rockchip dw-mmc
> nodes. The rv1108 gains support for sd-cards on the evaluation board and
> the general nodes get a bit of cosmetic. On rk3288 the evb gains support
> saradc and the adc-key connected to it while some more boards also get
> their mali gpu enabled (fennec, evb, tinker).
>
> The biggest set of changes can be found on the rk3228/rk3229 combo this
> time. It gets core support for efuse, sdmmc, sdio, io-domans and spdif
> as well as a separate rk3229.dtsi that will keep the slight differences
> between the two brothers rk3228/rk3229. The evaluation board also gets
> some attention and abled nodes (regulators, io-domains, emmc, tsadc keys)
>
> But I think the most interesting change is the cpu enable-method for it.
> Instead of using the older in-kernel method, we're now also moving to
> handling this in firmware via the psci interface on 32bit Rockchip socs.
> In a recently merged pull request [0] support for the rk3228/rk3229 was
> added to OP-TEE including the psci support and it seems supporting other
> 32bit Rockchip socs that way is also planned for the future.
>
> [0] https://github.com/OP-TEE/optee_os/pull/1666

Nice tag description!

What is the migration strategy for the 32-bit chips moving to psci?
Does this mean that you have to update the bootloader in sync with the
kernel now?

Pulled into next/dt, thanks!

      Arnd
