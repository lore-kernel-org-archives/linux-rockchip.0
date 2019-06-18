From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH] drm/bridge/synopsys: dw-hdmi: Handle audio for more clock rates
Date: Tue, 18 Jun 2019 19:23:18 +0200
Message-ID: <6219398.I55JWXAmVF@jernej-laptop>
References: <20190617235558.64571-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190617235558.64571-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, seanpaul@chromium.org, heiko@sntech.de, jonas@kwiboo.se, linux-rockchip@lists.infradead.org, narmstrong@baylibre.com, dgreid@chromium.org, cychiang@chromium.org, David Airlie <airlied@linux.ie>, Zheng Yang <zhengyang@rock-chips.com>, Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

Hi!

Dne torek, 18. junij 2019 ob 01:55:58 CEST je Douglas Anderson napisal(a):
> Let's add some better support for HDMI audio to dw_hdmi.
> Specifically:
> 
> 1. For 44.1 kHz audio the old code made the assumption that an N of
> 6272 was right most of the time.  That wasn't true and the new table
> should give better 44.1 kHz audio for many more rates.
> 
> 2. The new table has values from the HDMI spec for 297 MHz and 594
> MHz.
> 
> 3. There is now code to try to come up with a more idea N/CTS for
> clock rates that aren't in the table.  This code is a bit slow because
> it iterates over every possible value of N and picks the best one, but
> it should make a good fallback.
> 
> 4. The new code allows for platforms that know they make a clock rate
> slightly differently to pick different N/CTS values.  For instance on
> rk3288 we can make 25,176,471 Hz instead of 25,174,825.1748... Hz
> (25.2 MHz / 1.001).  A future patch to the rk3288 platform code could
> enable support for this clock rate and specify the N/CTS that would be
> ideal.
> 
> NOTE: the oddest part of this patch comes about because computing the
> ideal N/CTS means knowing the _exact_ clock rate, not a rounded
> version of it.  The drm framework makes this harder by rounding rates
> to kHz, but even if it didn't there might be cases where the ideal
> rate could only be calculated if we knew the real (non-integral) rate.
> This means that in cases where we know (or believe) that the true rate
> is something other than the rate we are told by drm.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Which bus is used for audio transfer on your device? If it is I2S, which is 
commonly used, then please be aware of this patch:
https://lists.freedesktop.org/archives/dri-devel/2019-June/221539.html

It avoids exact N/CTS calculation by enabling auto detection. It is well 
tested on multiple SoCs from Allwinner, Amlogic and Rockchip.

Best regards,
Jernej
