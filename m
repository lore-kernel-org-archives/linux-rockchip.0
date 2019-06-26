From: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH v2 1/2] drm/bridge/synopsys: dw-hdmi: Handle audio for
 more clock rates
Date: Wed, 26 Jun 2019 11:56:17 +0200
Message-ID: <a94d9554-fc93-a2d0-9a30-9604db8c123e@samsung.com>
References: <CGME20190619211151epcas3p4dbb163c034afa4063869c761b93e24b1@epcas3p4.samsung.com>
        <20190619210718.134951-1-dianders@chromium.org>
        <bec87373-48cc-0c55-9662-a74a7d2a47a0@samsung.com>
        <CAD=FV=WJBkYfRznh6aAyvgKgHb8-AG0hMORdKA0BXCL89wG_7w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=WJBkYfRznh6aAyvgKgHb8-AG0hMORdKA0BXCL89wG_7w@mail.gmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Sean Paul <seanpaul@chromium.org>, Jernej Skrabec <jernej.skrabec@siol.net>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Maxime Ripard <maxime.ripard@bootlin.com>, Neil Armstrong <narmstrong@baylibre.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Dylan Reid <dgreid@chromium.org>, Cheng-Yi Chiang <cychiang@chromium.org>, Jerome Brunet <jbrunet@baylibre.com>, Sam Ravnborg <sam@ravnborg.org>, dri-devel <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

On 25.06.2019 18:26, Doug Anderson wrote:
> Hi,
>
>
> On Tue, Jun 25, 2019 at 9:07 AM Andrzej Hajda <a.hajda@samsung.com> wrote:
>> On 19.06.2019 23:07, Douglas Anderson wrote:
>>> Let's add some better support for HDMI audio to dw_hdmi.
>>> Specifically:
>>>
>>> 1. For 44.1 kHz audio the old code made the assumption that an N of
>>> 6272 was right most of the time.  That wasn't true and the new table
>>> should pick a more ideal value.
>>
>> Why? I ask because it is against recommendation from HDMI specs.
> The place where it does matter (and why I originally did this work) is
> when you don't have auto-CTS.  In such a case you really need "N" and
> "CTS" to make the math work and both be integral.  This makes sure
> that you don't slowly accumulate offsets.  I'm hoping that this point
> should be non-controversial so I won't argue it more.
>
> I am an admitted non-expert, but I have a feeling that with Auto-CTS
> either the old number or the new numbers would produce pretty much the
> same experience.


Because Auto-CTS mechanism will alternate between two or more CTS values
every frame, thus it will compensate non-rational clock relationship.


>   AKA: anyone using auto-CTS won't notice any change
> at all.  I guess the question is: with Auto-CTS should you pick the
> "ideal" 6272 or a value that allows CTS to be the closest to integral
> as possible.  By reading between the lines of the spec, I decided that
> it was slightly more important to allow for an integral CTS.  If
> achieving an integral CTS wasn't a goal then the spec wouldn't even
> have listed special cases for any of the clock rates.  We would just
> be using the ideal N and Auto-CTS and be done with it.  The whole
> point of the tables they list is to make CTS integral.


Specification recommends many contradictory things without explicit
prioritization, at least I have not found it.

So we should relay on our intuition.

I guess that with auto-cts N we should follow recommendation - I guess
most sinks have been better tested with recommended values.

So what with non-auto-cts case:

1. How many devices do not have auto-cts? how many alternative TMDS
clocks we have? Maybe it is theoretical problem.

2. Alternating CTS in software is possible, but quite
complicated/annoying, but at least it will follow recommendation :)


Regards

Andrzej


>
>
>>> 2. The new table has values from the HDMI spec for 297 MHz and 594
>>> MHz.
>>>
>>> 3. There is now code to try to come up with a more idea N/CTS for
>>> clock rates that aren't in the table.  This code is a bit slow because
>>> it iterates over every possible value of N and picks the best one, but
>>> it should make a good fallback.
>>>
>>> NOTES:
>>> - The oddest part of this patch comes about because computing the
>>>   ideal N/CTS means knowing the _exact_ clock rate, not a rounded
>>>   version of it.  The drm framework makes this harder by rounding
>>>   rates to kHz, but even if it didn't there might be cases where the
>>>   ideal rate could only be calculated if we knew the real
>>>   (non-integral) rate.  This means that in cases where we know (or
>>>   believe) that the true rate is something other than the rate we are
>>>   told by drm.
>>> - This patch makes much less of a difference after the patch
>>>   ("drm/bridge: dw-hdmi: Use automatic CTS generation mode when using
>>>   non-AHB audio"), at least if you're using I2S audio.  The main goal
>>>   of picking a good N is to make it possible to get a nice integral
>>>   CTS value, but if CTS is automatic then that's much less critical.
>>
>> As I said above HDMI recommendations are different from those from your
>> patch. Please elaborate why?
>>
>> Btw I've seen your old patches introducing recommended N/CTS calculation
>> helpers in HDMI framework, unfortunately abandoned due to lack of interest.
>>
>> Maybe resurrecting them would be a good idea, with assumption there will
>> be users :)
> I have old patches introducing this into the HDMI framework?  I don't
> remember them / can't find them.  Can you provide a pointer?
>
> -Doug
>
>
