From: Arend Van Spriel <arend.vanspriel-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around commands expected to fail
Date: Wed, 12 Jun 2019 15:58:05 +0200
Message-ID: <16b4bfb39e0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
References: <20190607223716.119277-1-dianders@chromium.org>
 <20190607223716.119277-4-dianders@chromium.org>
 <363DA0ED52042842948283D2FC38E4649C52F8A0@IRSMSX106.ger.corp.intel.com>
 <CAD=FV=U8eo78Ee9xjhGXJMv=8YF9o89KLX024GH3iBRnRjCRvQ@mail.gmail.com>
 <CAPDyKFo=QMRTkNYUVSE2AqiZgytkTVRXF0Mvznn6trVT4-cR=Q@mail.gmail.com>
 <c7c6d3f4-ebb1-8964-0616-973fae1ab47d@broadcom.com>
 <CAPDyKFpM0+FfvoMo8Z_hxM9rzSjeQZHCsA2SPa8WP+SRDhhsPA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; format=flowed; charset="us-ascii"
Content-Transfer-Encoding: 8bit
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAPDyKFpM0+FfvoMo8Z_hxM9rzSjeQZHCsA2SPa8WP+SRDhhsPA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Ulf Hansson <ulf.hansson-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Cc: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "Hunter, Adrian" <adrian.hunter-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, brcm80211-dev-list.pdl-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Double Lo <double.lo-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Naveen Gupta <naveen.gupta-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Madhan Mohan R <madhanmohan.r-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Wright Feng <wright.feng-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Chi-Hsien Lin <chi-hsien.lin-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, brcm80211-dev-list-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org, Franky Lin <franky.lin-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Hante Meuleman <hante.meuleman-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, YueHaibing <yuehaibing-hv44wF8Li93QT0dZR+AlfA@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org


On 6/12/2019 1:48 PM, Ulf Hansson wrote:
> On Wed, 12 Jun 2019 at 13:11, Arend Van Spriel
> <arend.vanspriel-dY08KVG/lbpWk0Htik3J/w@public.gmane.org> wrote:
>>
>> On 6/12/2019 12:10 PM, Ulf Hansson wrote:
>>>> drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c:
>>>>     mmc_set_data_timeout(md, func->card);
>>>>     mmc_wait_for_req(func->card->host, mr);
>>> These are not okay, none of these things calls should really be done
>>> from an SDIO func driver.
>>>
>>> It tells me that the func driver is a doing workaround for something
>>> that should be managed in a common way.
>>
>> We are using some low-level functions passing chain of skbuff to the
>> device using CMD53 with scatterlist. If I recall correctly Marvell made
>> an attempt to have a similar function for it in the mmc stack. Not sure
>> if that ever made it in. If so I can rework our driver using that API.
>> If not, I can make a new attempt.
> 
> I recall there were some patches, but not sure why we didn't merge them.
> 
> Anyway, if you want to move this forward, that would be awesome!

Let's scope it before moving forward. Our use-case is to transfer a
chain of skbuff's. I am pretty sure that is not something we want to
deal with in mmc stack api. So I suppose passing a scatterlist is more
sensible, right? Maybe on sdio layer of the stack we could consider
dealing with skbuff's for network func drivers?

Let me see if I can find those Marvell patches. Might be a good start.

Regards,
Arend
