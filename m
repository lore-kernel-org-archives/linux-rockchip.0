Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA5BCC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Feb 2022 13:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8X/QBKBRtXKTTyDvXs2crjPH9z7sSWET5afjkqdtX8=; b=1oRoha4L2xaY9i
	29eqv+R0lltDv5Hki6k1cSUa3t+pzyi0Mv2WOqJXcuHITqv4Ane5Jjxha3Ns0lpFzPBxeVG8xOi9R
	1Lo1SwscKf31SX/6HwAyKtmz2J7FmR4uCLqE5CFqUaPQ0aEltrwyX2fL7D3x/Up5F4l8KU80TlgBm
	GRmpcIlsh0jdAOAE3ifMEkXrQVyUkMypQTDqZI/Un50I2bybAdvWaks6irpd+i44r0ySHMP3XlUl5
	lBi7PiqfuB3r1Z4pNoztp3N6mV3WYkih2+2XN75iCH6Q4JpYa9TfCFtGKmvSrd6uzQPcCJQNLLmvJ
	14EkaoinyRGAF44B0BIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nI9IR-003rEK-O0; Thu, 10 Feb 2022 13:15:39 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nI9IE-003rCO-4C; Thu, 10 Feb 2022 13:15:28 +0000
Received: by mail-ed1-x536.google.com with SMTP id s7so10902476edd.3;
 Thu, 10 Feb 2022 05:15:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=IDFdLfJtlG9kbEXdQ+MVN7+prsgCVcqyHxP/Y3ykVls=;
 b=F8D9SmUjEPCEirAKI6VHBHib2i+fWwlv1wRVaJoxQQD9NzbzGzQYoIpDXMah0HpSYX
 hmvhSZUNjNxg30SnfCg++SAxqBSJ21w3S69bxTQsQitQdw7GQm0cYOcibxyRYTMptC95
 6LRh4lym49q5/2K6W+aCYK8Hzxxls+m0HnflKw7aAUABsGY3FSUmNo7Ej47wO5XBoeX4
 0Mgu/zveeDVFPy0jP9ZBL0ypXg8/GF/ys/fqT5deAEm/EyMz8sqIFXW5wXhFcJo4IkVy
 nKz9W5BVvjGuE/5Rl0oRqqgLakIZN3Naqlk+uHL+CJTisyxz+uGnlpUdLoHEliU1XBFK
 1+Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=IDFdLfJtlG9kbEXdQ+MVN7+prsgCVcqyHxP/Y3ykVls=;
 b=6p99LfBU6F7lT8AxHDuhq0bd3vSbH1V94kLac6rYpi+DXVmTyxbEEE2P/w5tpx8veD
 jzHSIyUkPNyazz/EtdAUZoOZwHYNtK1TiwxBM5/BebM6UVJGT56BxQaWnG7f+4qKjkl8
 sH8bjE0b5/UBttMXY6cf+nuk9hWHh9dsHFRSnLXKmkakQUgn7vGScu3Gjxra4X00gCXL
 aBfBzcdHX048t5yF8SuJVZifYusXk8aVGixEqmWDB4AboRc5QrDsQCQPIygAH79vkktV
 cTczhoBLxLiihgH9pAIzZ1PzOOkSwJl1HtU60lWKzP6D22vynzhosi4ZcYKS/501o2Zv
 cHsQ==
X-Gm-Message-State: AOAM532OZsdweae+L9II4zkzLQI0MetEb823ZBRN0EXzXPc02dP77Y2E
 CQR4e6fqv3UgHGUvCEp6tiA=
X-Google-Smtp-Source: ABdhPJzOMe5zGljbr+jECC1VrFrmXL0gmt9Ei+JTZ807FDeFFZDDLr8caxaTV4TkVYfkTnMd0jbfxQ==
X-Received: by 2002:a05:6402:2688:: with SMTP id
 w8mr8406868edd.393.1644498919204; 
 Thu, 10 Feb 2022 05:15:19 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 s8sm6949538ejb.59.2022.02.10.05.15.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Feb 2022 05:15:18 -0800 (PST)
Message-ID: <2fa2e53d-da1c-6957-33ed-f3e9806347cf@gmail.com>
Date: Thu, 10 Feb 2022 14:15:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 19/23] arm64: dts: rockchip: rk3568-evb: Enable VOP2
 and hdmi
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-20-s.hauer@pengutronix.de>
 <3492afbf-b9fc-d5f5-6f7a-2157442d8209@gmail.com>
 <20220210114746.GX18637@pengutronix.de>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220210114746.GX18637@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_051526_178481_174B509E 
X-CRM114-Status: GOOD (  23.75  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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



On 2/10/22 12:47, Sascha Hauer wrote:
> On Thu, Feb 10, 2022 at 01:10:32AM +0100, Johan Jonker wrote:
>> Hi Sascha,
>>
>> Something with port and endpoint gives notifications.
>> Somehow with the conversion of rockchip,dw-hdmi.txt to YAML not all SoC
>> options were checked/covered (see rk3328 and rk3568).
>>
>> Allow multiple vop:
>> port or
>> port@0
>> 1x vop -> endpoint
>>
>> 2x vop -> endpoint@0
>>        -> endpoint@1
>>
>> Also allow for connector:
>> (not all existing DT have this yet)
>> port@1
>>       -> endpoint
>>
>> See also at graph.yaml
> 
> Ok, let me see if I get this right. The HDMI can either have one or two
> ports. It has one when the HDMI connector is not described in the device
> tree and two when it is. Also the first (or only) port can have one or
> two endpoints. It has one endpoint when the SoC has a single VOP and two
> endpoints when the SoC has two VOPs.
> 
> It's been a painful morning because my YAML knowledge is fairly limited,
> but here's what I came up with:
> 
>   ports:
>     $ref: /schemas/graph.yaml#/properties/ports
>     unevaluatedProperties: false
>     patternProperties:
>       "^port(@0)?$":
>         $ref: /schemas/graph.yaml#/properties/port
>         description: Input of the DWC HDMI TX
>         properties:
>           endpoint:
>             description: Connection to the VOP
>           endpoint@0:
>             description: Connection to the VOPB
>           endpoint@1:
>             description: Connection to the VOPL
>     properties:
>       port@1:
>         $ref: /schemas/graph.yaml#/properties/port
>         description: Output of the DWC HDMI TX
> 
> Does this look sane to you? With this a make dtbs_check on this binding
> doesn't generate warnings anymore, and even better it does generate
> warnings when I add some wrong nodes/properties to the dts files.

Hi,

Send a patch to rob+dt and he will let you know... ;)

Also could you test the ARM branch as well just for sure with:
ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make  dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml

Could you group your serie a bit:
dt-bindings
drm patches
dts changes

Johan

> 
>> ===
>>
>> dtc -I dtb -O dts rk3568-evb1-v10.dtb
>> <stdout>: Warning (avoid_unnecessary_addr_size):
>> /hdmi@fe0a0000/ports/port@1: unnecessary #address-cells/#size-cells
>> without "ranges" or child "reg" property
>> <stdout>: Warning (graph_child_address): /hdmi@fe0a0000/ports/port@0:
>> graph node has single child node 'endpoint@0',
>> #address-cells/#size-cells are not necessary
>> <stdout>: Warning (graph_child_address): /hdmi@fe0a0000/ports/port@1:
>> graph node has single child node 'endpoint', #address-cells/#size-cells
>> are not necessary
> 
> That's easy. I dropped the @0 suffix and reg property from the node.
> 
> Sascha
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
