From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH 2/3] ASoC: rockchip: Make RK3328 GPIO_MUTE control
 explicit
Date: Thu, 6 Feb 2020 12:36:04 +0000
Message-ID: <ad2c941a-9724-510e-959f-3cca3cab1dc2@arm.com>
References: <cover.1580950046.git.robin.murphy@arm.com>
 <29a846da33c02df64eca62b5fa0f3884652f788f.1580950046.git.robin.murphy@arm.com>
 <20200206114606.GM3897@sirena.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200206114606.GM3897-GFdadSzt00ze9xe1eoZjHA@public.gmane.org>
Content-Language: en-GB
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, alsa-devel-K7yf7f+aM1XWsZ/bQMPhNw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 2020-02-06 11:46 am, Mark Brown wrote:
> On Thu, Feb 06, 2020 at 01:07:12AM +0000, Robin Murphy wrote:
>> The RK3328 reference design uses an external line driver IC as a buffer
>> on the analog codec output, enabled by the GPIO_MUTE pin, and such a
>> configuration is currently assumed in the codec driver's direct poking
>> of GRF_SOC_CON10 to control the GPIO_MUTE output value. However, some
> 
> This makes sense but it is an ABI break so is going to need
> quirking for existing boards that unfortunately rely on the
> existing behaviour.

Yeah, that's where it gets tricky - there doesn't seem to be a nice way 
to differentiate between "no GPIO because old DT" and "no GPIO because 
the enable is hard-wired/irrelevant and GPIO_MUTE doesn't do what you 
think it does", and it seems really improper to introduce a DT property 
for the sole purpose of telling a Linux driver not to assume something 
it shouldn't really have in the first place.

My opinion fell on the side of a minor ABI break being the lesser of two 
evils, given that the worst case once people start enabling this codec 
on Renegade/ROC-CC boards (which I was only anticipating, but have just 
discovered is happening already[1]) results in unexpectedly stuffing 
3.3V into the SD card and SoC I/O domain while both are in 1.8V mode, 
and that the change would only really affect one other current board 
(Rock64), where most mainline users are likely to be upgrading their DTB 
in lock-step with the kernel anyway.

I guess the existing (mis)behaviour could be predicated on an 
of_machine_is_compatible() check for Rock64 boards - it's ugly, but 
should do the job if you feel it's more important to be 100% strict 
about not regressing supported systems for any possible kernel/DTB 
combination.

Thanks,
Robin.

[1] 
https://github.com/armbian/build/commit/18b24717be9639b65b86db3dbcf2b42fe73ca12c
