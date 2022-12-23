Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E31EC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 08:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpyRvrk7vVxe/Kdx6FAYOZto/w3U+DxrOA+rHGoGFho=; b=QCkHY8nZt+MP6R
	xcqlbE+mE9WQLrOmjSyuDlxcmwnxsNruRoo9fA9Cipqu0ee7trukqWMLwHkv3MXI5Tnoie79u+4Xm
	iVUKqhqloOfYiRC6f/3TtBleAPgikslzcK7NUbF0OhYuh/dibJXcTiqVqsNeJFUBk8pqC0eXGAbLL
	ZBOzmHy0gufQ/2HvQOemcWHIk48Yp0Fx0BgX6aYIRSqcVukwo8aJ1PuNDIpxh0VJFcm8GOBlYWSkO
	J9zIFoUh737PAGCsgFx99i2qMNVSG/iwUjBNYRnM4KCzk9KQj7FTJ7V+Qexe7sy6YKxc76bbGtown
	kHtUCOOp5KLfYgTlab6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8dgK-005KST-Ki; Fri, 23 Dec 2022 08:45:32 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8dfo-005K9d-VX
	for linux-rockchip@lists.infradead.org; Fri, 23 Dec 2022 08:45:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1671785099;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=saMXhQ6FaRFb79mAY11mIOCOiw3Mj/T5tk9AKBUTHeM=;
	b=X+1+Q9UQIRazUif3ENhNP/iRtLcjOi+ur838di2FLdoYDrpWiqP/vhAQHr+DXWfrmF6adq
	hRVBsbVD9Zd1SKmwMUhj/HouzONkvdDs8dTpWTz3pfTQl76+8Y+sFNo5refamMKvlHC6F9
	9dhsSgPUWSrHDg978Sg6q2G1I0TKogw=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-451-z5-dWWbrNPGW3jje5_L9Ag-1; Fri, 23 Dec 2022 03:44:58 -0500
X-MC-Unique: z5-dWWbrNPGW3jje5_L9Ag-1
Received: by mail-wm1-f70.google.com with SMTP id m38-20020a05600c3b2600b003d1fc5f1f80so3517426wms.1
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Dec 2022 00:44:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=saMXhQ6FaRFb79mAY11mIOCOiw3Mj/T5tk9AKBUTHeM=;
        b=hSmN9xPFE+a+SMb6yIHKpnU9VVCtlPiDsE/s5khYDk606VYE0IFkIbeub1WFMqVeSC
         8zUeE4Lcm/ZJiPwb144BXuMFn0OPHmOWpBo8Xlk9WJGpvzoZ77vwrmPPo5rHRG9kkEyR
         tWh7oTn2McVR7Q/ieELt9v2ZOMGYxId2cTiUtZ9L94TBfBfikAqDEDjOyEDpZa5J6NnH
         jTRgJeLAw/aLJu6TfRO5lwjoNGhHJt0lYomCiOmHuMoFTETp/U2QHAqFZVx/dqr7ISIc
         wK34tIIepgSd7t5FMKO1EX+zu9jmDIldF+pJYjOKZz/HzlSDQeJ1Bk/K80G4OAKhuz5D
         28XA==
X-Gm-Message-State: AFqh2kppjeKnFaN5a1tayL5WK6anXOpsOgOnQQ9mBtTQ3uTHhcblKeT3
	C23yVGT1W3+lZvaQgJAU+omwbOdgkT6FQvyYPuZd44Y/4GF+qWZU4hepE/vnWY/l2H+/r6zugIL
	2iDWV3WBQb/WiKOfXis/70m/nmPUjrCvC
X-Received: by 2002:a05:600c:4e04:b0:3d2:381f:2db5 with SMTP id b4-20020a05600c4e0400b003d2381f2db5mr6216503wmq.22.1671785097115;
        Fri, 23 Dec 2022 00:44:57 -0800 (PST)
X-Google-Smtp-Source: AMrXdXt1Fkupw8Va8m6hEvjj4yEMTWjnMAE5PPtO0pCOALsERpBky1niqrg1HyQfg57dwjlb1upXpg==
X-Received: by 2002:a05:600c:4e04:b0:3d2:381f:2db5 with SMTP id b4-20020a05600c4e0400b003d2381f2db5mr6216489wmq.22.1671785096950;
        Fri, 23 Dec 2022 00:44:56 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id o7-20020a05600c4fc700b003cf4ec90938sm4316705wmq.21.2022.12.23.00.44.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 00:44:56 -0800 (PST)
Message-ID: <f86d661c-7ecd-4950-53c4-6a342d2fe963@redhat.com>
Date: Fri, 23 Dec 2022 09:44:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 4/4] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-kernel@vger.kernel.org
Cc: Ondrej Jirman <megi@xff.cz>, Robert Mader <robert.mader@posteo.de>,
 Peter Robinson <pbrobinson@gmail.com>, =?UTF-8?Q?Kamil_Trzci=c5=84ski?=
 <ayufan@ayufan.eu>, Martijn Braam <martijn@brixit.nl>,
 Caleb Connolly <kc@postmarketos.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20221222223830.2494900-1-javierm@redhat.com>
 <20221222223830.2494900-5-javierm@redhat.com>
 <a73d99fb-0d47-ad93-27e2-9b51dba4b824@linaro.org>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <a73d99fb-0d47-ad93-27e2-9b51dba4b824@linaro.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_004501_216265_4A90057E 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
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

On 12/23/22 09:13, Krzysztof Kozlowski wrote:
> On 22/12/2022 23:38, Javier Martinez Canillas wrote:

[...]

>> +
>> +	/* MIPI DSI panel 1.8v supply */
>> +	vcc1v8_lcd: vcc1v8-lcd {
> 
> Node names should be generic, so regulator suffix or prefix (looks like
> other nodes already use suffix)
>

Indeed, Maya already pointed this out. I missed this when forward porting
this patch from the pine64 downstream tree.
 -- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
