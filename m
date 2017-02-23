From: Jose Abreu <Jose.Abreu-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH] drm: bridge: dw-hdmi: support i2c extended read mode
Date: Thu, 23 Feb 2017 10:17:44 +0000
Message-ID: <b391d2dd-3352-08b5-fe82-cd24381a10a6@synopsys.com>
References: <1487749545-5349-1-git-send-email-nickey.yang@rock-chips.com>
 <3f562fa6-886a-104f-62be-e0b1cbb8e5f7@synopsys.com>
 <a857310f-8ca7-428b-f121-ec012ac29975@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <a857310f-8ca7-428b-f121-ec012ac29975-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: "Nickey.Yang" <nickey.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Jose Abreu <Jose.Abreu-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, airlied-cv59FeDIM0c@public.gmane.org
Cc: laurent.pinchart+renesas-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Nickey,


On 22-02-2017 11:11, Nickey.Yang wrote:
> Read EDID func is drm_do_probe_ddc_edid    (in
> drivers/gpu/drm/drm_edid.c     Line:1215)
> when block = 3  means &msgs[3].addr = DDC_SEGMENT_ADDR(0x30)
> ,but in dw_hdmi_i2c_xfer
> line 299  msgs[i].addr != addr (0x50),  it will printk
> "unsupported transfer, changed slave address"
> and return -EOPNOTSUPP.
>
> in fact,0x30 not means change slave address but means segment
> address.
>

I am reading the drm_do_probe_ddc_edid and I have one question:
There are 2 writes and one read, but your patch only handles the
write of segment address. What about the start address?

I am refering to this structure:
1228                 struct i2c_msg msgs[] = {
1229                         {
1230                                 .addr   = DDC_SEGMENT_ADDR,
1231                                 .flags  = 0,
1232                                 .len    = 1,
1233                                 .buf    = &segment,
1234                         }, {
1235                                 .addr   = DDC_ADDR,
1236                                 .flags  = 0,
1237                                 .len    = 1,
1238                                 .buf    = &start,
1239                         }, {
1240                                 .addr   = DDC_ADDR,
1241                                 .flags  = I2C_M_RD,
1242                                 .len    = len,
1243                                 .buf    = buf,
1244                         }

There is a write which indicates DDC segment address and then
there is another write which indicates start address. Shouldn't
this be handled?

Best regards,
Jose Miguel Abreu
