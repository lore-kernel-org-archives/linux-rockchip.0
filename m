From: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: RockPro64: enable wifi module at sdio0
Date: Tue, 10 Dec 2019 09:14:58 +0000
Message-ID: <0101016eef17168b-4b99c805-9c89-4ce6-a4fc-02f5e2b80c6d-000000@us-west-2.amazonses.com>
References: <20191209223822.27236-1-smoch@web.de> <2668270.pdtvSLGib8@diego>
        <2cf70216-8d98-4122-4f4e-b8254089a017@web.de>
        <6162240.GiEx4hqPFh@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <6162240.GiEx4hqPFh@diego> ("Heiko \=\?utf-8\?Q\?St\=C3\=BCbner\=22'\?\=
 \=\?utf-8\?Q\?s\?\= message of "Tue, 10
        Dec 2019 02:18:24 +0100")
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Soeren Moch <smoch@web.de>, linux-wireless@vger.kernel.org, brcm80211-dev-list.pdl@broadcom.com, brcm80211-dev-list@cypress.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Heiko St=C3=BCbner <heiko@sntech.de> writes:

> Hi Soeren,
>
> Am Dienstag, 10. Dezember 2019, 00:29:21 CET schrieb Soeren Moch:
>> On 10.12.19 00:08, Heiko St=C3=BCbner wrote:
>> > Am Montag, 9. Dezember 2019, 23:38:22 CET schrieb Soeren Moch:
>> >> RockPro64 supports an Ampak AP6359SA based wifi/bt combo module.
>> >> The BCM4359/9 wifi controller in this module is connected to sdio0,
>> >> enable this interface.
>> >>
>> >> Signed-off-by: Soeren Moch <smoch@web.de>
>> >> ---
>> >> Not sure where to place exactly the sdio0 node in the dts because
>> >> existing sd nodes are not sorted alphabetically.
>> >>
>> >> This last patch in this brcmfmac patch series probably should be pick=
ed
>> >> up by Heiko independently of the rest of this series. It was sent tog=
ether
>> >> to show how this brcmfmac extension for 4359-sdio support with RSDB is
>> >> used and tested.
>> > node placement looks good so I can apply it, just a general questions
>> > I only got patch 8/8 are patches 1-7 relevant for this one and what ar=
e they?
>> Patches 1-7 are the patches to support the BCM4359 chipset with SDIO
>> interface in the linux brcmfmac net-wireless driver, see [1].
>>=20
>> So this patch series has 2 parts:
>> patches 1-7: add support for the wifi chipset in the wireless driver,
>> this has to go through net-wireless
>> patch 8: enable the wifi module with this chipset on RockPro64, this pat=
ch
>
> Thanks for the clarification :-) .
>
> As patch 8 "only" does the core sdio node, it doesn't really depend on the
> earlier ones and you can submit any uart-hooks for bluetooth once the
> other patches land I guess.
>
>
>> If this was confusing, what would be the ideal way to post such series?
>
> I think every maintainer has some slightly different perspective on this,
> but personally I like getting the whole series to follow the discussion b=
ut
> also to just see when the driver-side changes get merged, as the dts-parts
> need to wait for that in a lot of cases.

FWIW I prefer the same as Heiko. If I don't see all the patches in the
patchset I start worrying if patchwork lost them, or something, and then
it takes more time from me to investigate what happened. So I strongly
recommend sending the whole series to everyone as it saves time.

--=20
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatc=
hes
