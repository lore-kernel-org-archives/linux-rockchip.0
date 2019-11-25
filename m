From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [BUG] rk3399 fails to reboot correctly with PCIE device inserted
Date: Mon, 25 Nov 2019 12:10:31 -0500
Message-ID: <CAMdYzYpdW13roxwHxD5w=XLBiyASp+biMqP-n2+QD9cL5g_hvg@mail.gmail.com>
References: <CAMdYzYrLX=z-OVoW9RVecjoYK1J8EfLQ=cV1aNUqPsXqiOU+2g@mail.gmail.com>
 <2a5d91f1-033e-8acc-5b57-16ca77204a0b@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2a5d91f1-033e-8acc-5b57-16ca77204a0b-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Nov 25, 2019 at 11:52 AM Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wrote:
>
> Hi Peter,
>
> On 25/11/2019 4:28 pm, Peter Geis wrote:
> > Good Morning,
> >
> > Another issue I've come across while testing PCIE on the rockpro64.
> > When a PCIE device is inserted into the board, and it enumerates
> > successfully, the board will not reset.
> > I've tried various states of u-boot-rockchip, u-boot-mainline, with
> > both miniloader and TPL/SPL.
>
> In case it's relevant, what particular PCIe device(s) have you seen the
> issue with? FWIW I've been running a Samsung 960 Evo NVMe in my
> NanoPC-T4 with mainline kernels for months now and it's always rebooted
> flawlessly.
>
> Robin.

Currently with a I350 NIC, but also observed with a pcie switch, and the GTX645.
The NIC works, while the other two didn't without the patch to hijack
the error handler.

I am running the latest atf built from their github.

>
> > With miniloader and both variants of u-boot, if you attempt a reboot
> > it never fires the "reboot: Restarting system" message.
> > If you trigger a sysrq reboot at this stage, it will reboot, but fails
> > to start up the two a72 cores and subsequently hangs a second later
> > when it loads the first dma driver.
> >
> > With TPL/SPL on mainline-u-boot (I can't get rockchip-u-boot to work
> > with TPL/SPL), it fires the "reboot: Restarting system" message, but
> > never reboots.
> > sysrq does not function at this point.
> >
> > I believe the pcie controller is not being halted, and gets stuck in a
> > loop with the two a72 cores.
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> >
