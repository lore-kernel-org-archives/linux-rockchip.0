From: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [Linux-stm32] [PATCH v8 08/10] drm: stm: dw-mipi-dsi: let the
 bridge handle the HW version check
Date: Mon, 01 Jun 2020 12:15:02 +0300
Message-ID: <87blm387vt.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
References: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
 <20200427081952.3536741-9-adrian.ratiu@collabora.com>
 <4acc09e8-0610-01f6-b18d-3ffc390c45a3@st.com>
Mime-Version: 1.0
Content-Type: text/plain; format=flowed
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4acc09e8-0610-01f6-b18d-3ffc390c45a3-qxv4g6HH51o@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Philippe CORNU <philippe.cornu-qxv4g6HH51o@public.gmane.org>, Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>
Cc: Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Adrian Pop <pop.adrian61-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org" <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, "linux-imx-3arQi8VN3Tc@public.gmane.org" <linux-imx-3arQi8VN3Tc@public.gmane.org>, "kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org" <kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, "linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org" <linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org>, Arnaud Ferraris <arnaud.ferraris-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Yannick FERTRE <yannick.fertre-qxv4g6HH51o@public.gmane.org>, Benjamin GAIGNARD <benjamin.gaignard-qxv4g6HH51o@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, 29 May 2020, Philippe CORNU <philippe.cornu-qxv4g6HH51o@public.gmane.org> wrote:
> Hi Adrian, and thank you very much for the patchset.  Thank you 
> also for having tested it on STM32F769 and STM32MP1.  Sorry for 
> the late response, Yannick and I will review it as soon as 
> possible and we will keep you posted.  Note: Do not hesitate to 
> put us in copy for the next version  (philippe.cornu-qxv4g6HH51o@public.gmane.org, 
> yannick.fertre-qxv4g6HH51o@public.gmane.org) Regards, Philippe :-) 

Hi Philippe,

Thank you very much for your previous and future STM testing, 
really appreciate it! I've CC'd Yannick until now but I'll also CC 
you sure :)

It's been over a month since I posted v8 and I was just gearing up 
to address all feedback, rebase & retest to prepare v9 but I'll 
wait a little longer, no problem, it's no rush.

Have an awesome day,
Adrian

>
>
> On 4/27/20 10:19 AM, Adrian Ratiu wrote:
>> The stm mipi-dsi platform driver added a version test in
>> commit fa6251a747b7 ("drm/stm: dsi: check hardware version")
>> so that HW revisions other than v1.3x get rejected. The rockchip
>> driver had no such check and just assumed register layouts are
>> v1.3x compatible.
>> 
>> Having such tests was a good idea because only v130/v131 layouts
>> were supported at the time, however since adding multiple layout
>> support in the bridge, the version is automatically checked for
>> all drivers, compatible layouts get picked and unsupported HW is
>> automatically rejected by the bridge, so there's no use keeping
>> the test in the stm driver.
>> 
>> The main reason prompting this change is that the stm driver
>> test immediately disabled the peripheral clock after reading
>> the version, making the bridge read version 0x0 immediately
>> after in its own probe(), so we move the clock disabling after
>> the bridge does the version test.
>> 
>> Tested on STM32F769 and STM32MP1.
>> 
>> Cc: linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org
>> Reported-by: Adrian Pop <pop.adrian61-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Tested-by: Adrian Pop <pop.adrian61-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Tested-by: Arnaud Ferraris <arnaud.ferraris-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
>> Signed-off-by: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
>> ---
>> New in v6.
>> ---
>>   drivers/gpu/drm/stm/dw_mipi_dsi-stm.c | 12 +++---------
>>   1 file changed, 3 insertions(+), 9 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
>> index 2e1f2664495d0..7218e405d7e2b 100644
>> --- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
>> +++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
>> @@ -402,15 +402,6 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
>>   		goto err_dsi_probe;
>>   	}
>>   
>> -	dsi->hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
>> -	clk_disable_unprepare(pclk);
>> -
>> -	if (dsi->hw_version != HWVER_130 && dsi->hw_version != HWVER_131) {
>> -		ret = -ENODEV;
>> -		DRM_ERROR("bad dsi hardware version\n");
>> -		goto err_dsi_probe;
>> -	}
>> -
>>   	dw_mipi_dsi_stm_plat_data.base = dsi->base;
>>   	dw_mipi_dsi_stm_plat_data.priv_data = dsi;
>>   
>> @@ -423,6 +414,9 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
>>   		goto err_dsi_probe;
>>   	}
>>   
>> +	dsi->hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
>> +	clk_disable_unprepare(pclk);
>> +
>>   	return 0;
>>   
>>   err_dsi_probe:
>> 
