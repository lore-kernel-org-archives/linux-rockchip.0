From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4] usb: dwc2: host: Don't retry NAKed transactions right away
Date: Tue, 19 Dec 2017 09:19:35 -0800
Message-ID: <CAD=FV=UHr3bFyETHK0mHa2hTe_GQvAwyJqFWuDRcqi2g7jLRFA@mail.gmail.com>
References: <20171212183031.46772-1-dianders@chromium.org> <CAD=FV=WksZcVY1fu-KX9E-cPvBEA6LaOMrAoAgh=GDWDtjCWFw@mail.gmail.com>
 <581796864.256888.1513702600488@email.1und1.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <581796864.256888.1513702600488@email.1und1.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Stefan Wahren <stefan.wahren@i2se.com>
Cc: John Youn <johnyoun@synopsys.com>, Felipe Balbi <balbi@kernel.org>, Matthias Kaehlcke <mka@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, Eric Anholt <eric@anholt.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>, John Stultz <john.stultz@linaro.org>, linux-usb@vger.kernel.org, Johan Hovold <johan@kernel.org>, Alexandru M Stan <amstan@chromium.org>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, linux-rpi-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tue, Dec 19, 2017 at 8:56 AM, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> Hi Doug,
>
>> Doug Anderson <dianders@chromium.org> hat am 19. Dezember 2017 um 16:57 geschrieben:
>>
>>
>> Felipe,
>>
>> On Tue, Dec 12, 2017 at 10:30 AM, Douglas Anderson
>> <dianders@chromium.org> wrote:
>> ...
>>
>> I don't mean to be a pest, but I'm hoping that we can land this
>> somewhere (if nothing else in your /next tree) just so it doesn't miss
>> another release cycle.  If you're not so keen on collecting dwc2 host
>> patches these days, I can also see if Greg KH is willing to take this
>> directly into his tree.  Please let me know.  Thanks for your time!
>> :)
>>
>> -Doug
>
> it's applied to next:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/balbi/usb.git/commit/?h=next&id=38d2b5fb75c15923fb89c32134516a623515bce4

Awww, crud.  OK, then _really_ I'm just being a pest.  :(  Thanks for
pointing it out Stefan.  I'm so used to all the emails that fly by
from folks when things land that I didn't think to check directly.
Sorry for the noise Felipe and thanks to both of you guys your all
your help.

-Doug
