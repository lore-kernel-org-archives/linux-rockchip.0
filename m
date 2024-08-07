Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A7DCC52D73
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 16:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJo9vK9RQ30++GAvREdjDX5y7tTKUJT/47EVouci9A8=; b=aYaOKJnjCaCf+B
	wa8ZJlU4BbMKGpblnZ8bKEVNtABqQm8vh1+n7lWWylaKq33gVE5lrEw4Ut1yz20If7ubRAVZdLw9w
	0a1RiDjX3UBHe5ohZSYKJZS/+RMajKNKHNZ1skQfCBdJQ9eOry4CdG9POEw3dw1Vpj9sqcEqP7uVu
	82sy9lPlVz4gcA36ZyDk4vECDJ3cDVf5ZLG5nCoi+yyQRb+BbK4niIs0BaDyfAxHa9tOgftpQgiXS
	jW5z1Ij/oZawrq+ZFt3q5TXoCmjQ0adrQlzXqIUPpIDZijQfS3SFst2DHO2rT02eKOI2gJ/RBwXoi
	Nm/7apGjM3mLQeaEUKdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbjrB-00000005k01-31fM;
	Wed, 07 Aug 2024 16:49:49 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbjpu-00000005jdF-2PHx;
	Wed, 07 Aug 2024 16:48:32 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-7a1d3959ad5so6241085a.0;
        Wed, 07 Aug 2024 09:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723049309; x=1723654109; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ppEzbuljpxEqS9CSU1lR4GhsTWn9NP9h9n5p+ezkHKg=;
        b=bQ3mrZUSjIQAXI9Wff1DYhDXxtGPAbV+klxN5W+hTl9s6pnKsGMJBz7ayhcX8bogWr
         izy7z1Cxu2x7BYcSL6laqS/rv3Hav4y8tzTUqc+hBdbokQSFu5lPllrGHp++mOfYxeRF
         sk1lutchU5U/RXmC3jlWfWc6Osl+4BLRKynZOc9Vn4clWBc15NeRHtXLYNQf1KmuIT42
         MLaRUDKCs+kzB+cT/oXsltqVtqBoENn7kdJRfnJ7Pt1fXuTParNWw9gKLJbx74i0IBnW
         D3FrUo4DyqdUpfPmgIQSeXwGiKFIAOd7529581Rco5eYxsUzlsqWxM17ijq6eTfmc4BH
         UJRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723049309; x=1723654109;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ppEzbuljpxEqS9CSU1lR4GhsTWn9NP9h9n5p+ezkHKg=;
        b=ViDbDH518R1IjIqQQmcE48AzAf9vHbytCbgTd3FgFKmFI43lXV52cKDFGfgRM4NHsi
         JzIPkbkzcu1UdnaKbMXYAG1uHLkuLXKcqu1Q/ibbu19Oqlz5uhnoYuT5iP8d4D12Kma4
         WWfEfgGC2kmu7gn9pX0kftrNocgj5CrONXD+pLbOe2IoU/t8Y4648sygxw2602zQXYVG
         JFj0Vm1CXkyyiLH7LlwoBabP6LLZhsgI2XNapUr1lp+xauF/VYQUAHnadBG3Qs/dM0oT
         NWM1ZwLUvM5RTXORXYfC+eDXtKkciE8iG5zPephUCzTBBSwethvj1dgyzY7JusjrVZvr
         QsoQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlkAtHiPE977tNu3WUc2eDXA4YoqHwYVu7CdjsZnZpS0Z/fwdFvZIbK87IH0M1V8uEeHj1yV2UmPeO2WQ4U+ppaOs9Mp7IJMp0K32Yp8Rrs3hjuY9Nb0lK/bVQW+flJKB6mylcYDOOZFf5e3iya3KTQuBpAz39spA=
X-Gm-Message-State: AOJu0YyZQtOq6clOKv3bcTkz2NcLwsoPoQwNh4Z/25MnKc8qaybUQfI1
	noZ+UPQHSq0Jun901cpVwUG59QuJYXZa8NZcQA73Gaj/pLMRJKYW2qUKNfN2bb6oLBKbUrb+9DD
	KbpmhWXwWUqpBRBWdsQ/ffrTowLk=
X-Google-Smtp-Source: AGHT+IGrz1woRCdFcf3AU1cz6WnokARNZ8npr64xqniUVjK159lEQjZ0EsGdSQw2I8QF6WpZIMde7xJ4DnI207ISe+Y=
X-Received: by 2002:a05:620a:2484:b0:7a1:dc64:59db with SMTP id
 af79cd13be357-7a377ba35c1mr531954785a.8.1723049308726; Wed, 07 Aug 2024
 09:48:28 -0700 (PDT)
MIME-Version: 1.0
References: <20240805073425.3492078-1-jacobe.zang@wesion.com>
 <20240805073425.3492078-5-jacobe.zang@wesion.com> <2e38c2bd-2cb2-4104-97ad-0355069606c0@gmail.com>
 <b6551bf0-2ee9-4b79-af68-0677e3f0f915@broadcom.com>
In-Reply-To: <b6551bf0-2ee9-4b79-af68-0677e3f0f915@broadcom.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 7 Aug 2024 19:48:17 +0300
Message-ID: <CABjd4YzEzDW6KhTJ1ZBU1PptHotgDqg8i03Z7VAfdzAgQo8BDw@mail.gmail.com>
Subject: Re: [PATCH v8 4/5] wifi: brcmfmac: Add optional lpo clock enable support
To: Arend van Spriel <arend.vanspriel@broadcom.com>, Jacobe Zang <jacobe.zang@wesion.com>, 
	robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org, 
	davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
	conor+dt@kernel.org
Cc: efectn@protonmail.com, dsimic@manjaro.org, jagan@edgeble.ai, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	arend@broadcom.com, linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
	megi@xff.cz, duoming@zju.edu.cn, bhelgaas@google.com, minipli@grsecurity.net, 
	brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com, 
	nick@khadas.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_094830_655869_327F9882 
X-CRM114-Status: GOOD (  28.44  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 07/08/2024 2:17 pm, Arend van Spriel wrote:
> On 8/7/2024 1:10 AM, Alexey Charkov wrote:
>> Hi Jacobe,
>>
>> On 05/08/2024 10:34 am, Jacobe Zang wrote:
>>> WiFi modules often require 32kHz clock to function. Add support to
>>> enable the clock to PCIe driver and move "brcm,bcm4329-fmac" check
>>> to the top of brcmf_of_probe. Change function prototypes from void
>>> to int and add appropriate errno's for return values that will be
>>> send to bus when error occurred.
>>>
>>> Co-developed-by: Ondrej Jirman <megi@xff.cz>
>>> Signed-off-by: Ondrej Jirman <megi@xff.cz>
>>> Co-developed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
>>> Signed-off-by: Arend van Spriel <arend.vanspriel@broadcom.com>
>>> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
>>> ---
>>>   .../broadcom/brcm80211/brcmfmac/bcmsdh.c      |  4 +++
>>>   .../broadcom/brcm80211/brcmfmac/common.c      |  6 +++-
>>>   .../wireless/broadcom/brcm80211/brcmfmac/of.c | 28 +++++++++++++------
>>>   .../wireless/broadcom/brcm80211/brcmfmac/of.h |  9 +++---
>>>   .../broadcom/brcm80211/brcmfmac/pcie.c        |  3 ++
>>>   .../broadcom/brcm80211/brcmfmac/sdio.c        | 18 ++++++++----
>>>   .../broadcom/brcm80211/brcmfmac/usb.c         |  3 ++
>>>   7 files changed, 52 insertions(+), 19 deletions(-)
>>>
>>> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/
>>> bcmsdh.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
>>> index 13391c2d82aae..ee3ca85c4a47b 100644
>>> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
>>> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
>>> @@ -951,6 +951,10 @@ int brcmf_sdiod_probe(struct brcmf_sdio_dev
>>> *sdiodev)
>>>           ret = -ENODEV;
>>>           goto out;
>>>       }
>>> +    if (IS_ERR(sdiodev->bus)) {
>>> +        ret = PTR_ERR(sdiodev->bus);
>>> +        goto out;
>>> +    }
>>
>> Maybe return -ENODEV error pointer instead of NULL from
>> brcmf_sdio_probe as the default for the fail path? Then you can
>> condense these two checks into one
>
> Sound reasonable.
>
>>>       brcmf_sdiod_host_fixup(sdiodev->func2->card->host);
>>>   out:
>>>       if (ret)
>>> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/
>>> common.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c
>>> index b24faae35873d..6c5d26f9b7661 100644
>>> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c
>>> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c
>>> @@ -561,8 +561,12 @@ struct brcmf_mp_device
>>> *brcmf_get_module_param(struct device *dev,
>>>       if (!found) {
>>>           /* No platform data for this device, try OF and DMI data */
>>>           brcmf_dmi_probe(settings, chip, chiprev);
>>> -        brcmf_of_probe(dev, bus_type, settings);
>>>           brcmf_acpi_probe(dev, bus_type, settings);
>>> +        i = brcmf_of_probe(dev, bus_type, settings);
>>> +        if (i < 0) {
>>> +            kfree(settings);
>>> +            settings = ERR_PTR(i);
>>> +        }
>>
>> This looks wrong. First, you're calling brcmf_of_probe twice. Second,
>> if either DMI or ACPI probe successfully but OF doesn't, then you
>> return an error code instead of success, and also overwrite settings
>> with an error pointer thus rendering both brcmf_dmi_probe and
>> brcmf_acpi_probe useless
>
> Twice? it is removed and added few lines below.

Indeed, time to change glasses :) Didn't see the minus sign

> It does change the order
> so that may not be best thing to do here. We actually only want to
> handle the scenario where the clock resources are not yet available, ie.
> when -EPROBE_DEFER is returned because that error value is taken into
> account by the bus driver and tries to bind the driver again later.

Maybe we then do something like the following, which would retain the
old behavior but pass -EPROBE_DEFER on to the bus:

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c
b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c
index b24faae35873d..6c5d26f9b7661 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c
@@ -561,8 +561,12 @@ struct brcmf_mp_device
*brcmf_get_module_param(struct device *dev,
        if (!found) {
                /* No platform data for this device, try OF and DMI data */
                brcmf_dmi_probe(settings, chip, chiprev);
-               brcmf_of_probe(dev, bus_type, settings);
+               if (brcmf_of_probe(dev, bus_type, settings) == -EPROBE_DEFER)
+                       return ERR_PTR(-EPROBE_DEFER);
                brcmf_acpi_probe(dev, bus_type, settings);
        }
        return settings;
 }

>>>       }
>>>       return settings;
>>>   }
>>> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c b/
>>> drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
>>> index e406e11481a62..5f61363fb5d0e 100644
>>> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
>>> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
>>> @@ -6,6 +6,7 @@
>>>   #include <linux/of.h>
>>>   #include <linux/of_irq.h>
>>>   #include <linux/of_net.h>
>>> +#include <linux/clk.h>
>>>   #include <defs.h>
>>>   #include "debug.h"
>>> @@ -65,17 +66,21 @@ static int brcmf_of_get_country_codes(struct
>>> device *dev,
>>>       return 0;
>>>   }
>>> -void brcmf_of_probe(struct device *dev, enum brcmf_bus_type bus_type,
>>> -            struct brcmf_mp_device *settings)
>>> +int brcmf_of_probe(struct device *dev, enum brcmf_bus_type bus_type,
>>> +           struct brcmf_mp_device *settings)
>>>   {
>>>       struct brcmfmac_sdio_pd *sdio = &settings->bus.sdio;
>>>       struct device_node *root, *np = dev->of_node;
>>> +    struct clk *clk;
>>>       const char *prop;
>>>       int irq;
>>>       int err;
>>>       u32 irqf;
>>>       u32 val;
>>> +    if (!np || !of_device_is_compatible(np, "brcm,bcm4329-fmac"))
>>> +        return 0;
>>> +
>>
>> return 0 implies this function has completed successfully, while in
>> this case it's obviously returned early due to not finding the correct
>> device in DT. -ENODEV perhaps?
>
> This was a void function so returning 0 retains the behavior as before,
> which is important to keep in mind here.
>
> This function will be called if the platform has CONFIG_OF enabled.
> However, that does not mean that on every platform there is a node
> defined for the struct device being probed. That is fine if it does not
> require any DT properties to be functional. Hence we bail out here
> without an error.

Fair enough, thanks for the explanation!

Best regards,
Alexey

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
