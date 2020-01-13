From: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH RFT v1 3/3] drm/panfrost: Use the mali-supply regulator
 for control again
Date: Mon, 13 Jan 2020 17:10:23 +0000
Message-ID: <21d0730b-8299-8bfd-4321-746ccb3772d0@arm.com>
References: <20200107230626.885451-1-martin.blumenstingl@googlemail.com>
 <20200107230626.885451-4-martin.blumenstingl@googlemail.com>
 <2ceffe46-57a8-79a8-2c41-d04b227d3792@arm.com>
 <CAFBinCD7o-q-i66zZhOro1DanKAfG-8obQtzxxD==xOwsy_d6A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAFBinCD7o-q-i66zZhOro1DanKAfG-8obQtzxxD==xOwsy_d6A@mail.gmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: tomeu.vizoso@collabora.com, airlied@linux.ie, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org, robin.murphy@arm.com, alyssa@rosenzweig.io
List-Id: linux-rockchip.vger.kernel.org

On 09/01/2020 17:27, Martin Blumenstingl wrote:
> On Thu, Jan 9, 2020 at 12:31 PM Steven Price <steven.price@arm.com> wrote:
>>
>> On 07/01/2020 23:06, Martin Blumenstingl wrote:
>>> dev_pm_opp_set_rate() needs a reference to the regulator which should be
>>> updated when updating the GPU frequency. The name of the regulator has
>>> to be passed at initialization-time using dev_pm_opp_set_regulators().
>>> Add the call to dev_pm_opp_set_regulators() so dev_pm_opp_set_rate()
>>> will update the GPU regulator when updating the frequency (just like
>>> we did this manually before when we open-coded dev_pm_opp_set_rate()).
>>
>> This patch causes a warning from debugfs on my firefly (RK3288) board:
>>
>> debugfs: Directory 'ffa30000.gpu-mali' with parent 'vdd_gpu' already
>> present!
>>
>> So it looks like the regulator is being added twice - but I haven't
>> investigated further.
> I *think* it's because the regulator is already fetched by the
> panfrost driver itself to enable it
> (the devfreq code currently does not support enabling the regulator,
> it can only control the voltage)
> 
> I'm not sure what to do about this though

Having a little play around with this, I think you can simply remove the
panfrost_regulator_init() call. This at least works for me - the call to
dev_pm_opp_set_regulators() seems to set everything up. However I
suspect you need to do this unconditionally even if there are no
operating points defined.

> [...]
>>>       ret = dev_pm_opp_of_add_table(dev);
>>> -     if (ret)
>>> +     if (ret) {
>>> +             dev_pm_opp_put_regulators(pfdev->devfreq.regulators_opp_table);
>>
>> If we don't have a regulator then regulators_opp_table will be NULL and
>> sadly dev_pm_opp_put_regulators() doesn't handle a NULL argument. The
>> same applies to the two below calls obviously.
> good catch, thank you!
> are you happy with the general approach here or do you think that
> dev_pm_opp_set_regulators is the wrong way to go (for whatever
> reason)?

To be honest this is an area I still don't fully understand. There's a
lot of magic helper functions and very little in the way of helpful
documentation to work out which are the right ones to call. It seems
reasonable to me, hopefully someone more in the know will chime in it
there's something fundamentally wrong!

Thanks,

Steve
