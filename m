From: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v1 5/6] rockchip: kylin: Enable boot with android boot
 image
Date: Tue, 12 Jan 2016 10:36:04 +0800
Message-ID: <56946694.40203@rock-chips.com>
References: <1451893823-20309-1-git-send-email-jeffy.chen@rock-chips.com>
 <1451893823-20309-6-git-send-email-jeffy.chen@rock-chips.com>
 <CAPnjgZ1G=5=gqy6yGV1NZ13Zv0BACRYMPpdAoFAi+sv2TPXknw@mail.gmail.com>
 <568F94B8.60101@rock-chips.com>
 <CAPnjgZ2_wS1N8uO23+M0RJZovVFx7Wc_uMqOC37nGGBQN7NZZA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAPnjgZ2_wS1N8uO23+M0RJZovVFx7Wc_uMqOC37nGGBQN7NZZA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: U-Boot Mailing List <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, huang lin <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Simon,

On 2016-1-12 0:58, Simon Glass wrote:
> Hi Jeffy,
>
> On 8 January 2016 at 03:51, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
>> Hi Simon,
>>
>> On 2016-1-8 11:34, Simon Glass wrote:
>>> Hi Jeffy,
>>>
>>> On 4 January 2016 at 00:50, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
>>>> The android kernel is using appended dtb by default, and store
>>>> ramdisk right after kernel & dtb.
>>>> So we needs to relocate ramdisk, and use atags to pass params.
>>>>
>>>> Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>>>> ---
>>>>
>>>>    include/configs/kylin_rk3036.h | 23 +++++++++++++++++++++++
>>>>    1 file changed, 23 insertions(+)
>>> Acked-by: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>>>
>>> What kernel version are you using?
>> It's kernel v4.1 for android project:
>> git fetch
>> https://android.googlesource.com/platform/hardware/bsp/kernel/common/v4.1
>> refs/changes/03/188603/5 && git checkout FETCH_HEAD :)
> OK - just wondered why it needs ATAGs (CONFIG_SETUP_MEMORY_TAGS) - are
> there things that device tree does not support?
I saw our guys used to detect ddr params in the loader, and pass memory 
areas and reserved areas to kernel...
and kernel's device tree would only define a common memory node in the 
dtsi, which is not match the actually memory.
>   used to
>
>>>
>>> Regards,
>>> Simon
>>>
>> On 2016-1-8 11:34, Simon Glass wrote:
>>> Hi Jeffy,
>>>
>>> On 4 January 2016 at 00:50, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
>>>> The android kernel is using appended dtb by default, and store
>>>> ramdisk right after kernel & dtb.
>>>> So we needs to relocate ramdisk, and use atags to pass params.
>>>>
>>>> Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>>>> ---
>>>>
>>>>    include/configs/kylin_rk3036.h | 23 +++++++++++++++++++++++
>>>>    1 file changed, 23 insertions(+)
>>> Acked-by: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>>>
>>> What kernel version are you using?
>>>
>>> Regards,
>>> Simon
>>>
> Regards,
> Simon
>
