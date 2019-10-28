From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH 0/5] add rk3328 usb3 phy driver
Date: Mon, 28 Oct 2019 18:41:56 +0000
Message-ID: <5230f80c-9684-72e0-8f96-602428a9e655@arm.com>
References: <20191028182254.30739-1-pgwipeout@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191028182254.30739-1-pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, kishon-l0cyMroinI0@public.gmane.org
Cc: katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 28/10/2019 18:22, Peter Geis wrote:
> It took a lot more effort than originally anticipated, but here it is.
> This is the driver from [0], updated to work with the current kernel.
> I've tested it on the rk3328-roc-cc board, both usb 2.0 and usb 3.0
> devices detect on hotplug.

Thanks Peter, I'll try to give this a go on my box for confirmation.

One quick comment is that it might be worth importing the version from 
Rockchip's own kernel tree, as that includes this additional patch which 
looks like a welcome improvement:

https://github.com/rockchip-linux/kernel/commit/12efa9acad65b4c3256683c1ccd769687be3ca56#diff-b6317b3425ac054be551abdcda910b68

Also, as it's a new phy driver, we should keep Kishon (+cc) in the loop 
as the subsystem maintainer.

Robin.

> [0] https://github.com/FireflyTeam/kernel/commits/roc-rk3328-cc/drivers/phy/rockchip/phy-rockchip-inno-usb3.c
> 
> Peter Geis (5):
>    phy: rockchip: add inno-usb3 phy driver
>    dt-bindings: clean up rockchip grf binding document
>    Documentation: bindings: add dt documentation for rockchip usb3 phy
>    arm64: dts: rockchip: add usb3 to rk3328 devicetree
>    arm64: dts: rockchip: enable usb3 on rk3328-roc-cc
> 
>   .../bindings/phy/phy-rockchip-inno-usb3.yaml  |  157 +++
>   .../devicetree/bindings/soc/rockchip/grf.txt  |    8 +-
>   .../devicetree/bindings/usb/rockchip,dwc3.txt |    9 +-
>   .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |   21 +
>   arch/arm64/boot/dts/rockchip/rk3328.dtsi      |   72 ++
>   drivers/phy/rockchip/Kconfig                  |    9 +
>   drivers/phy/rockchip/Makefile                 |    1 +
>   drivers/phy/rockchip/phy-rockchip-inno-usb3.c | 1107 +++++++++++++++++
>   8 files changed, 1378 insertions(+), 6 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb3.yaml
>   create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-usb3.c
> 
