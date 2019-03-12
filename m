From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328 rgmii high tx error rate
Date: Tue, 12 Mar 2019 08:23:27 -0400
Message-ID: <CAMdYzYrn2eEr=JzNFe3wp-VjoVHwxcQkf98zc0MSMh4j=0ZDvg@mail.gmail.com>
References: <20190309182013.22162-1-pgwipeout@gmail.com>
 <20190310004722.5140-1-papadakospan@gmail.com>
 <1552356332.2607.1@gmail.com> <1552356823.2607.2@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1552356823.2607.2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: "Leonidas P. Papadakos" <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Mar 11, 2019 at 10:13 PM Leonidas P. Papadakos
<papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
>
>
> > I do have to say, This patch does fix my Link Reset issue reliably
> > enough, so it does *something*
>
> Well, I just tried the same things I did yesterday (iperf3 testts, GbE)
> and it seems to work even without the patch. (?)
> Using the defailt tx/rx delays though. (0x25,0x11)
>

Good Morning,

So after getting Robin's response and the follow on responses, I've
dug further into the RK3328 TRM, Specifications, and the rk3328-roc-cc
schematics.

I've made the following discoveries:
The labels in the rk3328.dtsi for those pins are inaccurate.
For instance the first of the pins missing a drive setting RK_PB0 is
labeled "mac_txclk", but it is in fact "gmac_txd1".

What I thought was 0 ma is in fact 2 ma, which is the result of both
bits being 0, apologies for the incorrect information.
This is the resulting state following the pinmux driver initialization.
This is still very low for the function performed, and is what is
causing our tx issues.
Essentially what we have is some of the tx lines are running at 12ma
and some running at 2ma, which can cause imbalance issues.

This also calls into question if 12ma is the correct drive strength,
or if we are driving too hard, leading to ringing on the interface.
The highest default drive strength is the sd interfaces at 8ma.
I've actually been running the sd interface at this level for a while,
since the 4ma setting in the current dtsi was causing data corruption.

I will conduct further tests, and resubmit the patch with the labels
corrected, as well as other fixes.
This may become a patch series, since I will be going through all of
the pins and their expected values in the TRM.
