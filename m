From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [GIT PULL 4/4] Rockchip arm64 defconfig updates for 4.18 round 1
Date: Tue, 15 May 2018 23:41:26 +0200
Message-ID: <5941903.uzDxGiH5hI@diego>
References: <2000491.bLgWuj0xar@phil> <2676342.8y6AX4oR9f@phil>
 <20180515205354.whll4pj74exaci5h@localhost>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20180515205354.whll4pj74exaci5h@localhost>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Olof Johansson <olof@lixom.net>
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 15. Mai 2018, 22:53:54 CEST schrieb Olof Johansson:
> On Tue, May 15, 2018 at 12:40:05PM +0200, Heiko Stuebner wrote:
> > The following changes since commit 
60cc43fc888428bb2f18f08997432d426a243338:
> >   Linux 4.17-rc1 (2018-04-15 18:24:20 -0700)
> > 
> > are available in the Git repository at:
> >   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
> >   tags/v4.18-rockchip-defconfig64-1> 
> > for you to fetch changes up to 214f2c319a140f8a0121f362ad8e73ea1576d5ad:
> >   arm64: defconfig: enable rockchip efuse (2018-05-09 16:33:09 +0200)
> > 
> > ----------------------------------------------------------------
> > Enablement of Rockchip-specific efuse, io-domain and typec drivers
> > as well as general cros-ec, hid, touchscreen bluetooth and wifi-drivers
> > on 64bit arm platforms.
> > 
> > ----------------------------------------------------------------
> > 
> > Enric Balletbo i Serra (3):
> >       arm64: defconfig: Enable typec-phy and extcon-usbc-cros-ec for
> >       rk3399
> >       arm64: defconfig: Enable Rockchip io-domain driver
> >       arm64: defconfig: Enable ChromeOS EC drivers for supported
> >       Chromebooks.
> > 
> > Ezequiel Garcia (4):
> >       arm64: defconfig: Enable HID over I2C drivers
> >       arm64: defconfig: Enable Atmel Maxtouch driver
> >       arm64: defconfig: Enable Marvell WiFi-Ex PCIe driver
> >       arm64: defconfig: Enable bluetooth USB support
> > 
> > Heiko Stuebner (1):
> >       arm64: defconfig: enable rockchip efuse
> 
> Merged. Not sure if it's useful to split defconfig updates quite this
> granular, might make sense to just do slightly more consolidated patches.
> 
> Anyway, no harm, just a bit verbose.

ok, I'll check if things can be merged more, the next time :-)


Heiko
