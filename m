From: "Leonidas P. Papadakos" <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: fix rk3328-roc-cc gmac2io
 tx/rx_delay
Date: Sun, 10 Mar 2019 02:26:36 +0200
Message-ID: <20190310002636.GA3857@X555LD>
References: <20190306223454.2959-1-papadakospan@gmail.com>
 <1552101990.1401.3@gmail.com>
 <e9c539ce-f1cb-06f8-1083-ea64c9fd9e7b@gmail.com>
 <3966706.LBvcXR5hB6@phil>
 <4f17a798-ed28-8403-ed75-30fdf4bfc44b@gmail.com>
 <1552172735.1238.0@gmail.com>
 <1bab9d4c-5e9d-968d-026d-98e65af6e7ee@gmail.com>
 <1552173935.1238.1@gmail.com>
 <6d6a700a-39c9-25b6-dfff-296c0757603d@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <6d6a700a-39c9-25b6-dfff-296c0757603d-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Thomas McKahan <tonymckahan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

> > > We have several issues on the rk3328.
> > > 
> > > The first issue, which you describe as the ssh lag, is the
> > > tx-offload issue.
> > > Packets that are larger than the MTU and will be fragmented break if
> > > tx-offload is enabled.
> > > To fix this, you must somehow disable tx-offload.
> > > force-thresh-dma-mode disabled tx-offload, but had other side effects.
> > > Ayufan's patch disables tx-offload only if the packet is larger than
> > > 1498.
> > > You can also disable tx-offload from userspace with ethtool.
> > > 
> > > The second issue is the high rate of tx packets being corrupted,
> > > which my patch to set the tx pull values fixes.
> > > 
> > > The third issue is the tx and rx delays need to be tuned now that
> > > the tx packet corruption issue has been fixed.
> > > 
> > > I hope this clears things up a little for you.
> > 
> > Yup, that's what I have in my mind already. My previous comment wasn't
> > clear, I know.
> > I pieced it together after your dma-mode patch, because that one fixed
> > the ssh lag.
> > My previous email was just what I saw after those changes.
> > 
> > In my case the link reset still happens with your patch.
> > 
> > You're thinking that the combination of your patch, ayufan's
> > "conditional" patch and a specific tweak in the delays would work for
> > the network instability problem?
> > 
> 
> Correct, the link-reset tends to happen when the delays are at the edge of
> working.
> There is also the possibility that board level manufacturing tolerances are
> causing issues where the delay can change between boards.
> If this is the case, we will have to make an auto-tune function, probably
> based off the mmc version.

So, I tried just your patch with archlinuxARM linux 5.0
(meaning the tx/rx_delays are 0x25/0x11 respectively if I'm not mistaken)
and disabled tx offload through ethtool.

After 3 30-second iperf3 tests, no link resets! I get about the same speed you mentioned before,
800-something to 700-something lowest.

Seems like the delays that are already there in the dts are better than the ones I picked up from the Armbian dts.

It's worth noting that I've never noticed a link reset in my ~3 months of using the 4.4 Rockchip kernel
that Armbian packages using ayufan's linux-kernel repo. Maybe something there?

All in all, it does seem to be much better with your patch.
