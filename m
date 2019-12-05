From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: rk3328-firefly ddr4 tpl init
Date: Wed, 4 Dec 2019 21:19:02 -0500
Message-ID: <CAMdYzYpbhAT5EfJv2SuC8GZE3q3juUXCwtbAX8SW9eXiC5AP2g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Good Evening,

I am trying to get TPL/SPL working on the rk3328-firefly ddr4 4gb board.
I've pulled the ddr4 dtsi from the rockchip u-boot repository [0].

Unfortunately I cannot get the ddr4 to detect correctly.

With the u-boot tpl, I get the following:
U-Boot TPL 2020.01-rc3-00072-g1a1bea82b2-dirty (Dec 04 2019 - 08:33:54)
data training error
row errordata training error
DDR4, 333MHz
BW=16 Col=10 Bk=4 BG=2 CS0 Row=17 CS=1 Die BW=16 Size=2048MB

With the rk3328_ddr_333MHz_v1.16.bin, I get the following:
DDR version 1.16 20190528
ID:0x805 N
In
DDR4
333MHz
Bus Width=32 Col=10 Bank=4 Bank Group=2 Row=16/16 CS=2 Die
Bus-Width=16 Size=4096MB
ddrconfig:19
OUT

[0] https://github.com/rockchip-linux/u-boot/blob/next-dev/arch/arm/dts/rk3328-sdram-ddr4-666.dtsi
