From: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v11 00/11] Rockchip ISP Driver
Date: Thu, 12 Dec 2019 13:02:10 +0100
Message-ID: <20f99f0e-dfec-f6c0-eeb3-7561018f32e9@xs4all.nl>
References: <20191114051242.14651-1-helen.koike@collabora.com>
 <996a9b6a-0e45-d627-9263-539c22e5f1c0@xs4all.nl>
 <7fd4bf99fd6316da8acaf0a27b6845bedbf4b25f.camel@collabora.com>
 <eafffc6f-061e-65ab-079b-b2bd613d61cb@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <eafffc6f-061e-65ab-079b-b2bd613d61cb@xs4all.nl>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Ezequiel Garcia <ezequiel@collabora.com>, Helen Koike <helen.koike@collabora.com>, linux-rockchip@lists.infradead.org
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com, heiko@sntech.de, gregkh@linuxfoundation.org, jeffy.chen@rock-chips.com, zyc@rock-chips.com, jacob-chen@iotwrt.com, tfiga@chromium.org, robh+dt@kernel.org, laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com, mchehab@kernel.org, zhengsq@rock-chips.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Helen, Ezequiel,

The merge window is open, so you want to get this in, then please post a v12
with the few remaining items addressed so that I can merge it.

Regards,

	Hans

On 11/19/19 9:30 AM, Hans Verkuil wrote:
> On 11/18/19 7:52 PM, Ezequiel Garcia wrote:
>> Hi Hans,
>>
>> Thanks for taking care of this.
>>
>> On Thu, 2019-11-14 at 09:42 +0100, Hans Verkuil wrote:
>>> On 11/14/19 6:12 AM, Helen Koike wrote:
>>>> Hello,
>>>>
>>>> This series adds the Rockchip Image Signal Processing Unit v1 driver to
>>>> staging.
>>>>
>>>> The main reason to be in staging is that people are already using it from the
>>>> mailing list (including libcamera), and having it in mainline makes the workflow
>>>> easier. Also, it is easier for other people to contribute back (with code
>>>> or testing the driver).
>>>>
>>>> We plan to actively work on this driver to get it our of staging.
>>>>
>>>> This patchset is also available at:
>>>> https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v11
>>>>
>>>> Libcamera patched to work with this version:
>>>> https://gitlab.collabora.com/koike/libcamera
>>>> (also sent to the mailing list)
>>>>
>>>> The major difference in v11 are:
>>>> - Fixed compiling warnings found with W=1
>>>> - Fixed checkpatch errors
>>>> - Add clock-names values in dt-bindings
>>>
>>> Looking at checkpatch I see a few remaining issues that I believe should be
>>> fixed before merging this:
>>>
>>> CHECK: spinlock_t definition without comment
>>> #575: FILE: drivers/staging/media/rkisp1/isp_stats.h:43:
>>> +       spinlock_t irq_lock;
>>>
>>> CHECK: struct mutex definition without comment
>>> #581: FILE: drivers/staging/media/rkisp1/isp_stats.h:49:
>>> +       struct mutex wq_lock;
>>>
>>> CHECK: spinlock_t definition without comment
>>> #1648: FILE: drivers/staging/media/rkisp1/isp_params.h:25:
>>> +       spinlock_t config_lock;
>>>
>>> CHECK: spinlock_t definition without comment
>>> #2058: FILE: drivers/staging/media/rkisp1/capture.h:145:
>>> +       spinlock_t vbq_lock;
>>>
>>
>> I'd rather merge this as-is, adding a TODO entry stating
>> we need to revisit locking specifically, because I'd like
>> to take a close look at these spinlocks/mutex,
>> instead of just addding comments for then.
> 
> Fair enough! Just as long as it is mentioned somewhere.
> 
>>
>>> Once this is done together with the Jacob Chen email clarification
>>> it is ready to be merged for v5.6.
>>>
>>
>> I'll find out more about this.
> 
> Thanks!
> 
> Remember that we are in the code freeze until v5.5-rc1 is released,
> so you have time to make more adjustments if you want to.
> 
> Regards,
> 
> 	Hans
> 
>>
>>> It passes all the sparse/smatch tests, so that's very good.
>>>
>>
>> Great!
>>
>> Thanks,
>> Ezequiel
>>
> 
