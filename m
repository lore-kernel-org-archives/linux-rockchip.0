From: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH RFT v2 0/3] devfreq fixes for panfrost
Date: Mon, 2 Mar 2020 14:58:33 +0000
Message-ID: <6f0693f9-3efe-d1f0-18b1-90dda7b3d0a4@arm.com>
References: <20200112001623.2121227-1-martin.blumenstingl@googlemail.com>
 <CAFBinCBLJyPxOBv0JNe7o0ME3rvPi+2Qv7Lwgw6T92f15ZXcxA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAFBinCBLJyPxOBv0JNe7o0ME3rvPi+2Qv7Lwgw6T92f15ZXcxA@mail.gmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: tomeu.vizoso@collabora.com, airlied@linux.ie, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, sudeep.holla@arm.com, linux-amlogic@lists.infradead.org, robin.murphy@arm.com, alyssa@rosenzweig.io
List-Id: linux-rockchip.vger.kernel.org

On 22/02/2020 19:42, Martin Blumenstingl wrote:
> Hi Steven,
> 
> On Sun, Jan 12, 2020 at 1:16 AM Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
>>
[...]
>>
>>
>> Martin Blumenstingl (3):
>>   drm/panfrost: enable devfreq based the "operating-points-v2" property
>>   drm/panfrost: call dev_pm_opp_of_remove_table() in all error-paths
>>   drm/panfrost: Use the mali-supply regulator for control again
> I don't have time to work on these patches in the near future
> can you (or if someone else is interested then please speak up) please
> take these over? you are familiar with the panfrost devfreq code and
> you have at least one board where the GPU regulator actually has to
> change the voltage (which means you can test this properly; on Amlogic
> SoCs the GPU voltage is fixed across all frequencies).

Hi Martin,

Sorry for the slow response - yes I can pick this up. Although I've got
some other things to catch up with first.

Thanks,

Steve
