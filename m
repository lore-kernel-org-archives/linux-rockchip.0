From: jeffy <jeffy.chen@rock-chips.com>
Subject: Re: [PATCH v2 6/9] drm/rockchip: Reoder unload sequence
Date: Wed, 05 Apr 2017 18:20:34 +0800
Message-ID: <58E4C4F2.7090306@rock-chips.com>
References: <1491046529-4310-1-git-send-email-jeffy.chen@rock-chips.com>
 <1491046529-4310-7-git-send-email-jeffy.chen@rock-chips.com>
 <20170404194426.e7pxf4kj5lbkvp6s@art_vandelay>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20170404194426.e7pxf4kj5lbkvp6s@art_vandelay>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Sean Paul <seanpaul@chromium.org>
Cc: dianders@chromium.org, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>, briannorris@chromium.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, zyw@rock-chips.com, linux-arm-kernel@lists.infradead.org, mark.yao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Sean,

On 04/05/2017 03:44 AM, Sean Paul wrote:
> On Sat, Apr 01, 2017 at 07:35:26PM +0800, Jeffy Chen wrote:
>> We should not cleanup iommu before cleanup other resources.
>>
>> Reorder unload sequence, follow exynos drm.
>
> This doesn't match the cleanup sequence in rockchip_drm_bind. Also make sure
> that you're unwinding the setup sequence when you cleanup (ie: take a close look
> at how you set things up and reverse it for cleanup).
ok, will reoder the bind sequence too, thanx.
>
> Sean
>
>>
>> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
>> ---
>>
>> Changes in v2: None
>>
>>   drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>> index b360e62..a5d83cb 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>> @@ -244,11 +244,13 @@ static void rockchip_drm_unbind(struct device *dev)
>>   	struct drm_device *drm_dev = dev_get_drvdata(dev);
>>
>>   	rockchip_drm_fbdev_fini(drm_dev);
>> -	drm_vblank_cleanup(drm_dev);
>>   	drm_kms_helper_poll_fini(drm_dev);
>> +
>> +	drm_vblank_cleanup(drm_dev);
>>   	component_unbind_all(dev, drm_dev);
>> -	rockchip_iommu_cleanup(drm_dev);
>>   	drm_mode_config_cleanup(drm_dev);
>> +	rockchip_iommu_cleanup(drm_dev);
>> +
>>   	drm_dev->dev_private = NULL;
>>   	drm_dev_unregister(drm_dev);
>>   	drm_dev_unref(drm_dev);
>> --
>> 2.1.4
>>
>
