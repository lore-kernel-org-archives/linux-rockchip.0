From: John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
Subject: Re: changes to scheduler from mainline 4.8 to 4.10?
Date: Wed, 29 Mar 2017 11:52:11 +0100
Message-ID: <20170329115211.3edaca98.john@metanate.com>
References: <CALd3UbSKV_Qzun=9Hhwe=omP5f4A3gyOi_nGNM6JA4d5ziFZ_g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CALd3UbSKV_Qzun=9Hhwe=omP5f4A3gyOi_nGNM6JA4d5ziFZ_g-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Bert Schiettecatte <bert-SPTOQ0XKFtOY49tRHJ+t6mXnswh1EIUO@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Bert,

On Tue, 28 Mar 2017 21:15:21 -0700, Bert Schiettecatte wrote:

> I'm working on a realtime audio application running on a rk3288
> platform. The application is written in the JUCE framework, and uses
> ALSA for audio output. I build the application in a debian jessie
> chroot since it needs a bunch of libraries compiled for armhf.
> 
> The application used to run fine on 4.8 mainline, without noticable
> audio dropouts. I had to upgrade recently to 4.10 mainline to get the
> audio gadget driver working, but now the application has audio
> dropouts (pause in the audio output).
> 
> I have been using 44100 hz sample rate and 960 samples buffer size for
> testing. I increased the buffer size to 1280 which seemed to improve
> things a little, and then after googling around I changed the IO
> scheduler to noop (it was set to CFQ), which further increases the
> performance. I now only have occasional audio dropouts.
> 
> The application does a lot of I/O via HID and has 4 audio processing
> threads for signal processing, besides other threads and callbacks for
> HID I/O.
> 
> Does anyone know if there are specific settings to pay attention to
> for running realtime audio processing applications on mainline 4.10,
> and if anything has changed with regards to how threads are scheduled,
> between 4.8 and 4.10? Just trying to understand why my application
> behaves differently now on 4.10 and if this is due to changes that
> have been applied and kernel config settings I might not be aware of.

Are you using the RT patchset [1] and CONFIG_PREEMPT_RT_FULL?  I'm able
to run at 44100Hz with 128 sample buffers on RK3288 with appropriate
thread priorities (although that is on a 4.4 series kernel, I haven't
tested audio performance on more recent versions).

You may also want the pinctrl patchset I posted recently [2] to avoid
locking issues when using full RT preemption.

[1] https://rt.wiki.kernel.org/index.php/Main_Page
[2] https://lkml.org/lkml/2017/3/23/208


Regards,
John
