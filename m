From: Ulf Hansson <ulf.hansson-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
Date: Thu, 13 Jun 2019 11:48:41 +0200
Message-ID: <CAPDyKFr+nzy4JrtSrudORfOkFvPa==UtgaokQwigo8+c1L9wbQ@mail.gmail.com>
References: <20190607223716.119277-1-dianders@chromium.org>
 <20190607223716.119277-4-dianders@chromium.org>
 <363DA0ED52042842948283D2FC38E4649C52F8A0@IRSMSX106.ger.corp.intel.com>
 <CAD=FV=U8eo78Ee9xjhGXJMv=8YF9o89KLX024GH3iBRnRjCRvQ@mail.gmail.com>
 <CAPDyKFo=QMRTkNYUVSE2AqiZgytkTVRXF0Mvznn6trVT4-cR=Q@mail.gmail.com>
 <c7c6d3f4-ebb1-8964-0616-973fae1ab47d@broadcom.com>
 <CAPDyKFpM0+FfvoMo8Z_hxM9rzSjeQZHCsA2SPa8WP+SRDhhsPA@mail.gmail.com>
 <16b4bfb39e0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <16b4bfb39e0.2764.9b12b7fc0a3841636cfb5e919b41b954-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Arend Van Spriel <arend.vanspriel-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Cc: Madhan Mohan R <madhanmohan.r-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, brcm80211-dev-list.pdl-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, YueHaibing <yuehaibing-hv44wF8Li93QT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Hante Meuleman <hante.meuleman-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Chi-Hsien Lin <chi-hsien.lin-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-wireless <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Double Lo <double.lo-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Matthias Kaehlcke <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Naveen Gupta <naveen.gupta-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Wright Feng <wright.feng-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, "Hunter,
 Adrian" <adrian.hunter-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, brcm80211-dev-list-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org, Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Franky Lin <franky.lin-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, 12 Jun 2019 at 15:58, Arend Van Spriel
<arend.vanspriel-dY08KVG/lbpWk0Htik3J/w@public.gmane.org> wrote:
>
>
> On 6/12/2019 1:48 PM, Ulf Hansson wrote:
> > On Wed, 12 Jun 2019 at 13:11, Arend Van Spriel
> > <arend.vanspriel-dY08KVG/lbpWk0Htik3J/w@public.gmane.org> wrote:
> >>
> >> On 6/12/2019 12:10 PM, Ulf Hansson wrote:
> >>>> drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c:
> >>>>     mmc_set_data_timeout(md, func->card);
> >>>>     mmc_wait_for_req(func->card->host, mr);
> >>> These are not okay, none of these things calls should really be done
> >>> from an SDIO func driver.
> >>>
> >>> It tells me that the func driver is a doing workaround for something
> >>> that should be managed in a common way.
> >>
> >> We are using some low-level functions passing chain of skbuff to the
> >> device using CMD53 with scatterlist. If I recall correctly Marvell made
> >> an attempt to have a similar function for it in the mmc stack. Not sure
> >> if that ever made it in. If so I can rework our driver using that API.
> >> If not, I can make a new attempt.
> >
> > I recall there were some patches, but not sure why we didn't merge them.
> >
> > Anyway, if you want to move this forward, that would be awesome!
>
> Let's scope it before moving forward. Our use-case is to transfer a
> chain of skbuff's. I am pretty sure that is not something we want to
> deal with in mmc stack api. So I suppose passing a scatterlist is more
> sensible, right? Maybe on sdio layer of the stack we could consider
> dealing with skbuff's for network func drivers?

Passing a scatter gather list seems reasonable. Ideally we should be
highly influenced with how buffers and dealt with for mmc block
requests.

Some information that may be needed by upper SDIO layers is the
segment/block constraints set by the MMC/SDIO host controller/driver.
The below is what we have today (see include/linux/mmc/host.h):

max_seg_size;   /* see blk_queue_max_segment_size */
max_segs;       /* see blk_queue_max_segments */
max_req_size;   /* maximum number of bytes in one req */
max_blk_size;   /* maximum size of one mmc block */
max_blk_count;  /* maximum number of blocks in one req */

Ideally we don't want SDIO func drivers to access these directly from
the ->host pointer, but rather via new SDIO func APIs.

>
> Let me see if I can find those Marvell patches. Might be a good start.

Great! Thanks!

Kind regards
Uffe
