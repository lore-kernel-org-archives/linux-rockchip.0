Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9972C3DA64
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 15:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FaSdz9KL5ux6ZPHvoRb5Sc5OFl93/VfcyiEQa4kh6ts=; b=ICGRkY0WA/HJwq
	S4QaUQWXhqWieuQndgISL6vS+t/h/hhPbW7GuVpxkGYjOpVhs6Qi/FrzWRIZ1M0nysZjge1xSUJ5D
	y+v5IsaPh6ndEpCkGcdiQghIhJ1KUw57raInrhOneTraVSGR9VBYnB4Kn5T62CTcX3JlHi9kZeQsQ
	b47DRSZ69yOM7dwb5N6DdY7zSaed7/wfUUmXV1xVKu/I0PR8EJClhQcmHpZjNbm9fddA+vmXO7NY1
	PnC6j5d/WNr54SY+ErBIiaBCiPJ5F8F8AZrXRQCjEAz2TelrxnFunhLbC6gedoMHPKLeg66D87/dF
	PShsg6BusuwDZYkdVNwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZB1I-00000001eqo-3866;
	Wed, 31 Jul 2024 15:13:40 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZB0Y-00000001eXY-3wyM
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 15:12:57 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-70d23caf8ddso5118861b3a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 31 Jul 2024 08:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1722438773; x=1723043573; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ydsvrBXtt6nU238Px/qRdSbaJLxYYF7XQP8F6wgRzZA=;
        b=TNJhJDaC85HIEM8SR0xC0HGejvbrvypWSRY2oZGSQl7QS4FA/x/lH6hfm/ruH393oa
         mRd8hUL85l1O4E1FPkTToGwhPsqCXYgIua6yF8y0+X79o2MxLmSkd5lCqICWcYFvndVd
         oeWzptfb0NqgujOplGtyBziN6tdVQXNyF1HE8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722438773; x=1723043573;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ydsvrBXtt6nU238Px/qRdSbaJLxYYF7XQP8F6wgRzZA=;
        b=DryjBi4Mc/tNyYyLVJmwmDLIalRw6U/klEX/zshhEs7tiOu4dWdRjsmKa6a/VD+lYg
         vWsVK1BMV6eWNz2PnWPf9d+hwF4GkVtzl00sQL2h+ixXPlNQDkcxIHeObyo3e4yIqIuh
         vUWJHemtiVyGzBYfjILtBeXjzG/MoKW/9PdsGGH7aHCUVhcHWhsuLT5Lea9Lj2PoEOR4
         rqwcVVAjOzufqzugmpKQ7b5tvzc3VLRawvgHIxbmABjyXmCrk+ER47GGYtFw5r8tN41N
         XnOQRkdbgr2W5glqFSx7h+QMEkixosBI2SN/tCrW4i5hNRSBML6GCt0TnpOCxtMfUt4L
         sOJQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2O+QBUwljPFnvPmMyQGnuKy5A+msmozdMIcDCq1YVQACd29/GppDyrCxD2b0xW1lPbdP2AHMxp6uOdErpSHl192k72xzLcHyGoVLjzzOtC/JA
X-Gm-Message-State: AOJu0YxL7g+U89TF2zT87jC9CBtSpIIUk8Kr1WgPLIhmE0kfqn1uKJIj
	nxTbd15DRuumC2/eNJ39ovodcxmeUY7Bb6B3YjHjaW1TeVlN+q4B9of7qkhiDA==
X-Google-Smtp-Source: AGHT+IHEl06Nm3dVBLJpGj1Uk+cVGvjdXmv2CgeM4NvVMJyMb/tbEYSvWNiGXEabI5NOqoQNRCIVqA==
X-Received: by 2002:a05:6a00:8592:b0:706:31d9:9c99 with SMTP id d2e1a72fcca58-70ece928cf5mr17384197b3a.0.1722438773104;
        Wed, 31 Jul 2024 08:12:53 -0700 (PDT)
Received: from [192.168.178.38] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead7156c8sm10059508b3a.83.2024.07.31.08.12.45
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jul 2024 08:12:52 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
CC: Krzysztof Kozlowski <krzk@kernel.org>, Jacobe Zang <jacobe.zang@wesion.com>, <robh@kernel.org>, <krzk+dt@kernel.org>, <heiko@sntech.de>, <kvalo@kernel.org>, <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>, <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, <efectn@protonmail.com>, <dsimic@manjaro.org>, <jagan@edgeble.ai>, <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>, <arend@broadcom.com>, <linux-wireless@vger.kernel.org>, <netdev@vger.kernel.org>, <megi@xff.cz>, <duoming@zju.edu.cn>, <bhelgaas@google.com>, <minipli@grsecurity.net>, <brcm80211@lists.linux.dev>, <brcm80211-dev-list.pdl@broadcom.com>, <nick@khadas.com>, Andy Green <andy@warmcat.com>
Date: Wed, 31 Jul 2024 17:12:43 +0200
Message-ID: <1910959c1f8.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <sgfd5ccltsi7mjbybmdbs3fmsfcp3vqtpitdac7exzgxav53kk@6lwogbq4fhks>
References: <20240730033053.4092132-1-jacobe.zang@wesion.com>
 <20240730033053.4092132-3-jacobe.zang@wesion.com>
 <191025b5268.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <f45c1fa7-f321-4a1f-b65c-6ed326a18268@kernel.org>
 <191030eac78.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <3d3b8e0a-7492-4db1-bd73-c30a488edaa7@kernel.org>
 <191035b8c28.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <k3dhdsa5bjzad2ha5e2uurg2azzs773ier5thkot4w2qcvnv54@yuf52eluqsae>
 <dd381dc1-454f-4ecd-adb7-55de2e15d592@broadcom.com>
 <sgfd5ccltsi7mjbybmdbs3fmsfcp3vqtpitdac7exzgxav53kk@6lwogbq4fhks>
User-Agent: AquaMail/1.51.5 (build: 105105504)
Subject: Re: [PATCH v5 2/5] dt-bindings: net: wireless: brcm4329-fmac: add clock description for AP6275P
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_081255_309966_C964A83A 
X-CRM114-Status: GOOD (  40.70  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On July 31, 2024 3:54:52 PM Sebastian Reichel 
<sebastian.reichel@collabora.com> wrote:

> Hi,
>
> On Wed, Jul 31, 2024 at 02:57:37PM GMT, Arend van Spriel wrote:
>> On 7/30/2024 7:38 PM, Sebastian Reichel wrote:
>>> Hi,
>>>
>>> On Tue, Jul 30, 2024 at 01:16:57PM GMT, Arend Van Spriel wrote:
>>>> On July 30, 2024 12:18:20 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>>>
>>>>> On 30/07/2024 11:52, Arend Van Spriel wrote:
>>>>>> On July 30, 2024 11:01:43 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>>>>>
>>>>>>> On 30/07/2024 08:37, Arend Van Spriel wrote:
>>>>>>> > + Linus W
>>>>>>> >
>>>>>>> > On July 30, 2024 5:31:15 AM Jacobe Zang <jacobe.zang@wesion.com> wrote:
>>>>>>> >
>>>>>>> > > Not only AP6275P Wi-Fi device but also all Broadcom wireless devices allow
>>>>>>> > > external low power clock input. In DTS the clock as an optional choice in
>>>>>>> > > the absence of an internal clock.
>>>>>>> > >
>>>>>>> > > Reviewed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
>>>>>>> > > Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
>>>>>>> > > ---
>>>>>>> > > .../bindings/net/wireless/brcm,bcm4329-fmac.yaml          | 8 ++++++++
>>>>>>> > > 1 file changed, 8 insertions(+)
>>>>>>> > >
>>>>>>> > > diff --git
>>>>>>> > > a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>>>> > > b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>>>> > > index 2c2093c77ec9a..a3607d55ef367 100644
>>>>>>> > > --- a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>>>> > > +++ b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>>>> > > @@ -122,6 +122,14 @@ properties:
>>>>>>> > > NVRAM. This would normally be filled in by the bootloader from platform
>>>>>>> > > configuration data.
>>>>>>> > >
>>>>>>> > > +  clocks:
>>>>>>> > > +    items:
>>>>>>> > > +      - description: External Low Power Clock input (32.768KHz)
>>>>>>> > > +
>>>>>>> > > +  clock-names:
>>>>>>> > > +    items:
>>>>>>> > > +      - const: lpo
>>>>>>> > > +
>>>>>>> >
>>>>>>> > We still have an issue that this clock input is also present in the
>>>>>>> > bindings specification broadcom-bluetooth.yaml (not in bluetooth
>>>>>>> > subfolder). This clock is actually a chip resource. What happens if both
>>>>>>> > are defined and both wifi and bt drivers try to enable this clock? Can this
>>>>>>> > be expressed in yaml or can we only put a textual warning in the property
>>>>>>> > descriptions?
>>>>>>>
>>>>>>> Just like all clocks, what would happen? It will be enabled.
>>>>>>
>>>>>> Oh, wow! Cool stuff. But seriously is it not a problem to have two entities
>>>>>> controlling one and the same clock? Is this use-case taken into account by
>>>>>> the clock framework?
>>>>>
>>>>> Yes, it is handled correctly. That's a basic use-case, handled by CCF
>>>>> since some years (~12?). Anyway, whatever OS is doing (or not doing)
>>>>> with the clocks is independent of the bindings here. The question is
>>>>
>>>> Agree. Probably the bindings would not be the place to document this if it
>>>> would be an issue.
>>>>
>>>>> about hardware - does this node, which represents PCI interface of the
>>>>> chip, has/uses the clocks.
>>>>
>>>> The schematics I found for the wifi module and the khadas edge platform show
>>>> these are indeed wired to the chip.
>>>
>>> I have a Rockchip RK3588 Evaluation Board on my desk, which uses the
>>> same WLAN AP6275P module. I think I already commented on a prior
>>> version of this series: The LPO clock is needed to make the PCIe
>>> device visible on the bus. That means this series only works if the
>>> clock has already been running. Otherwise the PCIe driver will never
>>> be probed. To become visible the devices requires:
>>>
>>> 1. The LPO clock to be enabled
>>> 2. Power to be applied
>>> 3. The WL_EN gpio to be configured correctly
>>>
>>> If one of the above is not met, the device will not even appear in
>>> 'lspci'. I believe the binding needs to take into consideration, that
>>> pwrseq is needed for the PCIe side. Fortuantely the heavy lifting of
>>> creating the proper infrastructure for this has already been done by
>>> Bartosz Golaszewski for Qualcomm WLAN chips. What is missing is a
>>> pwrseq driver for the Broadcom chip (or this specific module?).
>>
>> That does not really make sense. There is no relation between the LPO clock
>> and the PCIe clocks so 1) being a requirement for probing the device looks
>> odd. It also does not match past experience when I assisted Andy Green in
>> getting this module up and running almost two years ago.
>
> Well, first of all I can easily reproduce this on my RK3588 EVB1. I
> intentionally ignore any bluetooth bits to avoid cross-effects from
> bluetooth enabling any clocks / regulators / GPIOs and make sure the
> RTC output clock is disabled at boot time (i.e. boot once without
> any reference to the RTC clock and without 'clk_ignore_unused'
> kernel argument). When booting up like this the WLAN device is not
> visible in 'lspci' despite the WL_REG_ON GPIO being hogged. If I
> additionally hack the RTC output clock to be enabled the WLAN device
> becomes visible in 'lspci'.
>
> The datasheet fully explains this:
>
> https://www.lcsc.com/datasheet/lcsc_datasheet_2203281730_AMPAK-Tech-AP6275P_C2984107.pdf
>
> PDF Page 23/24 (20/21 in the footer) has the Host Interface Timing
> Diagram. WL_REG_ON should only be enabled after 2 cycles from LPO.
> That means with LPO being disabled WL_REG_ON cannot be enabled. I'm
> pretty sure WL_REG_ON means WLAN_REGULATOR_ON, so the logic is not
> powered. On page 27 (24 in the footer) there is also a PCIe Power-On
> Timing diagram, which shows that WL_REG_ON must be enabled before
> the PCIe refclk is enabled.
>
> So there is a specific power up sequence, which must be followed.

The chip also has an (less accurate) internal LPO so the 32khz sleep clock 
in the diagram does not have to be an external clock. Maybe Ampak 
bootstrapped the chip to disable the internal clock. Dunno.

What Andy needed back then to get firmware running was a change in the 
nvram file to force using the internal LPO, but the device was already 
visible on the PCIe bus.

Regards,
Arend



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
