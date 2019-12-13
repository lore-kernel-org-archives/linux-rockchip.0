From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [RFC] Permanent Fix for RK33 gmac 1500 mtu bug
Date: Fri, 13 Dec 2019 07:48:57 -0500
Message-ID: <CAMdYzYo6HG+NK2BHNaULtD=Lu=Ozd6pFW4YRXF8QF_UGLjJN_w@mail.gmail.com>
References: <CAMdYzYpHxMELdB4HzsViFvrLcDzG0A4000PJU6wHTaq4V9c1Nw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAMdYzYpHxMELdB4HzsViFvrLcDzG0A4000PJU6wHTaq4V9c1Nw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Dec 12, 2019 at 8:21 AM Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
> Good Morning,
>
> So I've continued work on fixing the rk3328/rk3399 gmac mtu tx coe offload bug.
> I've found two fixes that maintain full performance and work consistently.
>
> First, is ayufan's tx coe patch [0], which takes the bugged_jumbo
> concept introduced in [1] and applies it to 1498 and above, vice 1500
> and above.
>
> The only downside is this disables tx coe for full size packets, which
> has a negligible performance impact in my testing.
>
> The other option I've found that reliably works is bringing the mtu
> down to 1498.
> This allows tx coe to remain enabled, but with the downside of total
> loss of jumbo frames.
> The reduction in size has a negligible performance impact in my testing.

Shortly after sending this I discovered that setting the mtu lower is
not sufficient in some corner cases.
I managed to make offload break even at a 1496 mtu by `apt install
kubuntu-desktop` over ssh on a gigabit internet connection.

After porting ayufan's patch the issue went away.
So unless we can fix this by axi tuning, his patch seems to be the
most viable option.

>
> I have also discovered that the rockchip implementation of the stmmac
> driver does not process flags such as max-frame-size.
>
> A third option, which I haven't explored because I don't know enough
> about how it works, is possibly tuning the axi settings, via the
> snps,axi-config and snps,mtl-tx-config handles.
> I don't know if this is feasible, but since tuning the dma settings
> affects the rk3328 I have hope.
> I do know that my current fix for the rk3328 does not provide full
> performance and does not work at all on the rk3399.
>
> Thoughts?
>
> [0] https://github.com/ayufan-rock64/linux-kernel/commit/8a41c672dd77e48b06c1b2dec3aa9db4bad30b49#diff-c897c0b53bd633240f4b12c4d29a5ff1
> [1] https://github.com/torvalds/linux/commit/ebbb293f8b3021ae2009fcb7cb3b8a52fb5fd06a
