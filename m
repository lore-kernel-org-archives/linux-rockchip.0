From: Romain Perier <romain.perier@collabora.com>
Subject: Re: [PATCH] drm: dw_hdmi: Gate audio sampler clock from the
 enablement functions
Date: Fri, 10 Mar 2017 11:58:19 +0100
Message-ID: <202cd871-eb1c-d8f4-62d6-bed479f0eece@collabora.com>
References: <20170310093509.19044-1-romain.perier@collabora.com>
 <20170310094613.GQ21222@n2100.armlinux.org.uk>
 <7888eb1f-2781-d4ed-6f26-cb76e1ead4d2@collabora.com>
 <20170310102753.GR21222@n2100.armlinux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20170310102753.GR21222@n2100.armlinux.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Russell King - ARM Linux <linux@armlinux.org.uk>
Cc: Archit Taneja <architt@codeaurora.org>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hello,


Le 10/03/2017 à 11:27, Russell King - ARM Linux a écrit :
> On Fri, Mar 10, 2017 at 11:21:53AM +0100, Romain Perier wrote:
>> Hello,
>>
>> Le 10/03/2017 à 10:46, Russell King - ARM Linux a écrit :
>>> On Fri, Mar 10, 2017 at 10:35:09AM +0100, Romain Perier wrote:
>>>> Currently, the audio sampler clock is enabled from dw_hdmi_setup() at
>>>> step E. and is kept enabled for later use. This clock should be enabled
>>>> and disabled along with the actual audio stream and not always on (that
>>>> is bad for PM). Futhermore, this might cause sound glitches with some
>>>> HDMI devices, as the CTS+N is forced to zero when the stream is disabled
>>>> while the audio clock is still running.
>>>>
>>>> This commit adds a parameter to hdmi_audio_enable_clk() that controls
>>>> when the audio sample clock must be enabled or disabled. Then, it moves
>>>> the call to this function into dw_hdmi_audio_enable() and
>>>> dw_hdmi_audio_disable().
>>> How does this interact with the workaround given in my commit introducing
>>> these functions?  (Commit b90120a96608).
>>>
>>> Setting N=0 is a work-around for iMX6, and we need the audio FIFO to be
>>> loaded with data prior to setting N non-zero.  If disabling the audio
>>> clock prevents the audio FIFO being loaded, your patch will break iMX6.
>>>
>> Mhhh, the fact is I have no IMX6 devices here (only Rockchip). So
>> I only tested on Rockchip devices. An approach might be to introduce an
>> option for handling this errata, because that's platform specific and
>> other platforms (like Rockchip) are in conflict with this.

> or are you saying
> that the I2S driver was never functionally tested as working?

No ^^

>
> I also would not think that it's platform specific - remember that
> this is Designware IP, and it's likely that other platforms with
> exactly the same IP would suffer from the same problem.  It's
> probably revision specific, but we need Synopsis' input on that.
>
> However, I do believe that your patch probably doesn't have much
> merit in any case: on a mode set, you enable the audio clock, and
> it will remain enabled until the audio device is first opened and
> then closed.  If another mode set comes along, then exactly the
> same situation happens again.  So, really it isn't achieving all
> that much.
>
The fact is we still have sound glitches caused by this workaround on
Rockchip, we probably have a revision
of the IP without this issue. If CTS+N is not forced to zero we no
longer have the glitches :/ (with or without touching the clock)

Romain
