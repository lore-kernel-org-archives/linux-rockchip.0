From: Ryan Sherlock <ryan-Rd0sS1InIrzZJqsBc5GL+g@public.gmane.org>
Subject: rk3399 clock enable latency
Date: Tue, 29 Oct 2019 18:08:00 -0700
Message-ID: <CADPGVq40Vzp+RnUuPVqj_cm_pa3N4P2zsOA2=qVtnBCpmocZZw@mail.gmail.com>
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
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi All!

I'm working on the 9tripod X3399 SoM, based on the Rockchip RK3399 SoC.
I am using a Sony IMX 258 image sensor which is attached to the second
I2C bus and using the CIF clock out of GPIO2-B3.

The IMX258 driver has been updated to reference this clock via the
device tree at 24MHz.
The issue I'm seeing is that the driver is trying to access to the
image sensor via the I2C bus before the clock is enabled, yet we set
the pinmux by default in the device tree.

I can see this using a logic analyzer that the clock is enabled very
long after the device has been probed and the driver starts to use the
bus.
It seems like there is some parent to the CIF clock that is
controlling it, but there's nothing in the RK3399 TRM that shows this.

If I compile the IMX258 driver as a module and insmod after boot we
are able to communicate with the camera.

Does this make sense? Shouldn't the clock be enabled as soon as the
pinmux has been set? Or is there perhaps something with the clock
configuration?

Cheers!
