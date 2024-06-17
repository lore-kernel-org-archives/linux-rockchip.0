Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48652C2BA18
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 10:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ottUVt/8leN2t57GyYwGo6ea/sZ5D8hxduBPp0s+7Nk=; b=3Ni2f3EQLQJQeI
	TsXr+FZgAzRqUcl0WurvZYxQ2nzn58gilZ/psWGWW4vZkWUh2x+E3Ip3SiXRBh4/k6VTZVdWDyoWz
	g3UHsbhAROpzI5/qibwUOZ7gzs8gF2gd26oLIWPDpfhl0ARciqcmGGzdk+usIr4MNhIFWQckF56yu
	XEj5YCN+UAgKKXxZnLZy0JFutRfLvnghRh6315D4AIL241Mg2DGjJN1PZcFyxf44Jvw3psjGUZ7Sk
	49z29gpf9elINLQPTx3Ug6jOpKo4eWbK3O6QiJgH3wQWQ7zrEAxEAHK5YxhXqITgMkFZDtNNPkc46
	ZpiBnzTg+BbU05ybKUMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ9U1-0000000AEXO-2Mro;
	Mon, 17 Jun 2024 10:21:05 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ9Ty-0000000AEWW-0OGC;
	Mon, 17 Jun 2024 10:21:03 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a6ef793f4b8so437478266b.1;
        Mon, 17 Jun 2024 03:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718619660; x=1719224460; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uHfz5gEjeGSF+rOMoEalB7WTEbRFmK0VDhLIXxLJjyM=;
        b=YOD9qDrjCOFoiE7SDCjTQL9kK0CuNHpqxqGlrCSvDsAMrSXx/G0w7j6TKndPBYD+we
         iFkfdFpkYbSJUqsQ8q7c9MbT58wPe0nUUNuWvRCHLFavvsXVC5n8yikcAkkTSO3OfcOP
         X7I5EPX8i+n6f0of3XKkPrJGC8jwSJZNII4Kti2Jzqy4deqrxou4Us06QtWKQRAxzagE
         IKjhGomOwSczgBDkye9a3noK6GnfmUVlf9UbSNaIVqZ0eTGnIp+wCRBdlyqZyTSXRKmx
         XWJCbPFa3KWqiYTmt0Am2wO06tsZcYFW3lqtPvkqDqIVLAjIoQqUIYM/C59WnMj67xOx
         +IeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718619660; x=1719224460;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uHfz5gEjeGSF+rOMoEalB7WTEbRFmK0VDhLIXxLJjyM=;
        b=quUgvFYmuV0gcM+iPmGkthRtSXlqBOwF+VkNuDg1w/cj5GZfj10fPAXKZRpRVNgGGD
         3YiY3JEyh2gb89l9MVv8C7NZaUQEN0zDSsubWb3YxJYcJJLCggWb7cUS+6/T5TJhY7N9
         sp6gu73k241sxjHI5ljiPEwFoA45DEowa/akRbuwMZ8bIv8b0LE7wxqxn9NtSbHyBosZ
         fPz6ovsUfZVJry/aiZAUj9JN0PHfjUNwa+ljzcChKE0kRE6k6xx6X5rbgZ/QtwZVHWMr
         sKcp4vvmuRydOHpSfcJPU30/lKT+4/Lpc9OwX462ED9iwRgSWMVebaPORgjHulrOweH1
         rYlg==
X-Forwarded-Encrypted: i=1; AJvYcCUAt9HLTYNE+Wz7AJ3b8d8B7+tYRkvhbjYpn1aeosyRCJNcZkUysxnIfM1XJRpwiMzT6NzS2h5xn8omOD3qhLbxB74QRGp+cVydYErOAFCO4oqfwo9aSbzciRG5a1qXultUTpyU7fB5CDUTbVl0tIUu22YEgq2l2Nc=
X-Gm-Message-State: AOJu0YyElqtQvP96yuIWDhSQtlUSRKTzp5BZM1/4AacjyR01z2R+spkf
	hNgpMDX0iZOWedCS6Gx6PO0NLXHiVh6jUzd7CPWFNv9J+yrpzrvD
X-Google-Smtp-Source: AGHT+IHeyhFwbJ02FHOefpxR67mlMUl7SBsrp6KlB/ktW30pRVoaZ2fDCDwgr8eiuKSf7S+gP/BYVQ==
X-Received: by 2002:a17:906:3e96:b0:a6f:5c1a:c99d with SMTP id a640c23a62f3a-a6f60dc56fbmr551002466b.53.1718619659791;
        Mon, 17 Jun 2024 03:20:59 -0700 (PDT)
Received: from ?IPV6:2001:8f8:183b:6864:7071:8881:6a51:3e82? ([2001:8f8:183b:6864:7071:8881:6a51:3e82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56da3344sm508978966b.19.2024.06.17.03.20.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 03:20:59 -0700 (PDT)
Message-ID: <a25472f5-3e88-408c-a033-5e338dce6340@gmail.com>
Date: Mon, 17 Jun 2024 14:20:52 +0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Alexey Charkov <alchark@gmail.com>
Subject: Re: [PATCH v2 2/5] arm64: dts: rockchip: Add bluetooth rfkill to
 Khadas Edge2
To: Jacobe Zang <jacobe.zang@wesion.com>, "robh@kernel.org"
 <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "heiko@sntech.de" <heiko@sntech.de>
Cc: Nick Xie <nick@khadas.com>, "efectn@protonmail.com"
 <efectn@protonmail.com>, "jagan@edgeble.ai" <jagan@edgeble.ai>,
 "dsimic@manjaro.org" <dsimic@manjaro.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20240617071112.3133101-1-jacobe.zang@wesion.com>
 <20240617071112.3133101-3-jacobe.zang@wesion.com>
 <f147be11-fc35-44c2-88e8-7421fee47ace@letovo.ru>
 <TYZPR03MB70017A6280F060A6F4A1DD9880CD2@TYZPR03MB7001.apcprd03.prod.outlook.com>
Content-Language: en-GB
In-Reply-To: <TYZPR03MB70017A6280F060A6F4A1DD9880CD2@TYZPR03MB7001.apcprd03.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_032102_179784_BA64D9A3 
X-CRM114-Status: GOOD (  17.82  )
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

(sorry, the previous one got sent in HTML by accident)

On 17/06/2024 12:55, Jacobe Zang wrote:
>> You refer to wlan in the commit message, but there is nothing wlan
>> related in the patch itself. Update the commit message perhaps?
> At that time, I want to describe that wlan and bluetooth were from the module named BCM43438. But, it's true that wlan do not be metioned in the code. I will update it in next version.
>
>> I thought you'd need to also reference the respective GPIO to be able to trigger its
>> state, not just switch the pinctrl configuration to GPIO.
> You means the shutdown-gpios? I configure it in the bluetooth node, it can't be configure in rfkill node at the same time.

In Documentation/devicetree/bindings/net/rfkill-gpio.yaml shutdown-gpios 
is listed as a required property, did you try building the sources with 
CHECK_DTBS=1 in make arguments?

If you already control this GPIO from elsewhere (such as from the 
bluetooth driver), then perhaps you don't need to define a separate 
rfkill device at all.

>> I'm also wondering if bt_reset_pin is the right one to use here. On my
>> Rock 5B I had to trigger bt_wake_pin to get Bluetooth up and running.
> Yes, I try to configure bt_reset_pin, bt_wake_host_irq and  bt_wake_pin in pinctrl separately. Each of them works well. After I connected a BT device to Edge2, I input rfkill block 1, bluetooth function failed. Then I input rfkill unblock 1, it can rework. So at last I only configure the bt_reset_pin.

That doesn't necessarily mean that the hardware gets an rfkill signal, 
what you describe above could also come from the software alone. It 
would be great to somehow check if the physical pin state gets triggered 
once you switch rfkill state from userspace, and then that the bluetooth 
device handles it appropriately (e.g. gets into a hardware-disable state 
somehow).

Best regards,
Alexey


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
