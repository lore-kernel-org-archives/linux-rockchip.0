From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [BUG] rk3399 fails to reboot correctly with PCIE device inserted
Date: Mon, 25 Nov 2019 11:28:53 -0500
Message-ID: <CAMdYzYrLX=z-OVoW9RVecjoYK1J8EfLQ=cV1aNUqPsXqiOU+2g@mail.gmail.com>
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
To: heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Good Morning,

Another issue I've come across while testing PCIE on the rockpro64.
When a PCIE device is inserted into the board, and it enumerates
successfully, the board will not reset.
I've tried various states of u-boot-rockchip, u-boot-mainline, with
both miniloader and TPL/SPL.

With miniloader and both variants of u-boot, if you attempt a reboot
it never fires the "reboot: Restarting system" message.
If you trigger a sysrq reboot at this stage, it will reboot, but fails
to start up the two a72 cores and subsequently hangs a second later
when it loads the first dma driver.

With TPL/SPL on mainline-u-boot (I can't get rockchip-u-boot to work
with TPL/SPL), it fires the "reboot: Restarting system" message, but
never reboots.
sysrq does not function at this point.

I believe the pcie controller is not being halted, and gets stuck in a
loop with the two a72 cores.
