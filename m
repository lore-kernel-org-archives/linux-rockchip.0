From: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH 1/3] brcmfmac: re-enable command decode in sdio_aos for BRCM 4354
Date: Wed, 29 May 2019 17:51:47 +0300
Message-ID: <87h89d2u0s.fsf@kamboji.qca.qualcomm.com>
References: <20190517225420.176893-2-dianders@chromium.org>
        <20190528121833.7D3A460A00@smtp.codeaurora.org>
        <CAD=FV=VtxdEeFQsdF=U7-_7R+TXfVmA2_JMB_-WYidGHTLDgLw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=VtxdEeFQsdF=U7-_7R+TXfVmA2_JMB_-WYidGHTLDgLw@mail.gmail.com>
        (Doug Anderson's message of "Tue, 28 May 2019 08:51:53 -0700")
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Arend van Spriel <arend.vanspriel@broadcom.com>, Madhan Mohan R <MadhanMohan.R@cypress.com>, Ulf Hansson <ulf.hansson@linaro.org>, LKML <linux-kernel@vger.kernel.org>, Hante Meuleman <hante.meuleman@broadcom.com>, "David S. Miller" <davem@davemloft.net>, netdev <netdev@vger.kernel.org>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Brian Norris <briannorris@chromium.org>, linux-wireless <linux-wireless@vger.kernel.org>, YueHaibing <yuehaibing@huawei.com>, Adrian Hunter <adrian.hunter@intel.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, brcm80211-dev-list.pdl@broadcom.com, Matthias Kaehlcke <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>, Wright Feng <wright.feng@cypress.com>, brcm80211-dev-list@cypress
List-Id: linux-rockchip.vger.kernel.org

Doug Anderson <dianders@chromium.org> writes:

> Hi,
>
> On Tue, May 28, 2019 at 5:18 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>>
>> Douglas Anderson <dianders@chromium.org> wrote:
>>
>> > In commit 29f6589140a1 ("brcmfmac: disable command decode in
>> > sdio_aos") we disabled something called "command decode in sdio_aos"
>> > for a whole bunch of Broadcom SDIO WiFi parts.
>> >
>> > After that patch landed I find that my kernel log on
>> > rk3288-veyron-minnie and rk3288-veyron-speedy is filled with:
>> >   brcmfmac: brcmf_sdio_bus_sleep: error while changing bus sleep state -110
>> >
>> > This seems to happen every time the Broadcom WiFi transitions out of
>> > sleep mode.  Reverting the part of the commit that affects the WiFi on
>> > my boards fixes the problem for me, so that's what this patch does.
>> >
>> > Note that, in general, the justification in the original commit seemed
>> > a little weak.  It looked like someone was testing on a SD card
>> > controller that would sometimes die if there were CRC errors on the
>> > bus.  This used to happen back in early days of dw_mmc (the controller
>> > on my boards), but we fixed it.  Disabling a feature on all boards
>> > just because one SD card controller is broken seems bad.  ...so
>> > instead of just this patch possibly the right thing to do is to fully
>> > revert the original commit.
>> >
>> > Fixes: 29f6589140a1 ("brcmfmac: disable command decode in sdio_aos")
>> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>>
>> I don't see patch 2 in patchwork and I assume discussion continues.
>
> Apologies.  I made sure to CC you individually on all the patches but
> didn't think about the fact that you use patchwork to manage and so
> didn't ensure all patches made it to all lists (by default each patch
> gets recipients individually from get_maintainer).  I'll make sure to
> fix for patch set #2.  If you want to see all the patches, you can at
> least find them on lore.kernel.org linked from the cover:
>
> https://lore.kernel.org/patchwork/cover/1075373/

No worries, I had the thread on my email but was just too busy to check.
So I instead wrote down my thought process so that somebode can correct
me in case I have misunderstood. I usually do that when it's not clear
what the next action should be.

-- 
Kalle Valo
