From: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v6 1/8] drm: bridge: dw_mipi_dsi: add initial regmap
 infrastructure
Date: Fri, 17 Apr 2020 11:07:37 +0300
Message-ID: <87imhyk01i.fsf@collabora.com>
References: <20200414151955.311949-1-adrian.ratiu@collabora.com>
 <20200414151955.311949-2-adrian.ratiu@collabora.com>
 <CAFqH_52eKB4jtmn5e4HQubv8ijOPqDqncp1dRGahhU3NOorJMQ@mail.gmail.com>
 <87lfmvjmt5.fsf@collabora.com>
 <CAFqH_513KB+En_xbpXSBG6Q38kYxWCgw0KO3NVxCb6fqHDaKBA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; format=flowed
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAFqH_513KB+En_xbpXSBG6Q38kYxWCgw0KO3NVxCb6fqHDaKBA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Enric Balletbo Serra <eballetbo-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: "devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Adrian Pop <pop.adrian61-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, dri-devel <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Arnaud Ferraris <arnaud.ferraris-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Collabora Kernel ML <kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org, Linux ARM <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-imx-3arQi8VN3Tc@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, 16 Apr 2020, Enric Balletbo Serra <eballetbo-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> 
wrote:
> Hi Adrian, 
> 
> [snip] 
> 
>> >> 
>> >> +static void dw_mipi_dsi_get_hw_version(struct dw_mipi_dsi 
>> >> *dsi) +{ +       regmap_read(dsi->regs, DSI_VERSION, 
>> >> &dsi->hw_version); +       dsi->hw_version &= VERSION; + if 
>> >> (!dsi->hw_version) +               dev_err(dsi->dev, "Failed 
>> >> to read DSI hw version register\n"); 
>> > 
>> > Is this an error that should be ignored? If you can't get the 
>> > HW version, probably, there is something wrong with your 
>> > hardware so, don't you need to return an error? 
>> > 
>> 
>> After thinking a bit more about it, that error should be a 
>> warning. 
>> 
>> I added it because in some cases (for eg. if the peripheral 
>> clock is disabled) the reads can return 0 which is obviously an 
>> invalid version and the bridge will error in the next step when 
>> not finding a layout. 
>> 
> 
> If you'll error anyway, why wait? IIUC at this point the clock 
> *must* be enabled, and if not, something is wrong with the 
> driver, I don't see any advantage on delay the error. do you 
> have a use case where this is called and peripheral clock 
> disabled? 

There should be no real use-case (maybe malfunctioning HW), and we 
could error out here to catch driver bugs ASAP, so I'll go this 
route then :)

Thank you, much appreciated!

>
>> So I'll make this a warning in v7 and explicitely mention that
>> reads version == 0 can be caused by a disabled pclk.
>>
>
> -- Enric
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
