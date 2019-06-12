From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Subject: Re: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
Date: Wed, 12 Jun 2019 13:11:46 +0200
Message-ID: <c7c6d3f4-ebb1-8964-0616-973fae1ab47d@broadcom.com>
References: <20190607223716.119277-1-dianders@chromium.org>
 <20190607223716.119277-4-dianders@chromium.org>
 <363DA0ED52042842948283D2FC38E4649C52F8A0@IRSMSX106.ger.corp.intel.com>
 <CAD=FV=U8eo78Ee9xjhGXJMv=8YF9o89KLX024GH3iBRnRjCRvQ@mail.gmail.com>
 <CAPDyKFo=QMRTkNYUVSE2AqiZgytkTVRXF0Mvznn6trVT4-cR=Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <CAPDyKFo=QMRTkNYUVSE2AqiZgytkTVRXF0Mvznn6trVT4-cR=Q@mail.gmail.com>
Content-Language: en-US
Sender: netdev-owner@vger.kernel.org
To: Ulf Hansson <ulf.hansson@linaro.org>, Doug Anderson <dianders@chromium.org>
Cc: "Hunter, Adrian" <adrian.hunter@intel.com>, Kalle Valo <kvalo@codeaurora.org>, "brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Double Lo <double.lo@cypress.com>, "briannorris@chromium.org" <briannorris@chromium.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Naveen Gupta <naveen.gupta@cypress.com>, Madhan Mohan R <madhanmohan.r@cypress.com>, "mka@chromium.org" <mka@chromium.org>, Wright Feng <wright.feng@cypress.com>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>, Franky Lin <franky.lin@broadcom.com>, linux-k
List-Id: linux-rockchip.vger.kernel.org

On 6/12/2019 12:10 PM, Ulf Hansson wrote:
>> drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c:
>>    mmc_set_data_timeout(md, func->card);
>>    mmc_wait_for_req(func->card->host, mr);
> These are not okay, none of these things calls should really be done
> from an SDIO func driver.
> 
> It tells me that the func driver is a doing workaround for something
> that should be managed in a common way.

We are using some low-level functions passing chain of skbuff to the 
device using CMD53 with scatterlist. If I recall correctly Marvell made 
an attempt to have a similar function for it in the mmc stack. Not sure 
if that ever made it in. If so I can rework our driver using that API. 
If not, I can make a new attempt.

Regards,
Arend
