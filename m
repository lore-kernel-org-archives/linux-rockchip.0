Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3684C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 15:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3eBnD8xhyPad5L6krtWJbnFOfftVRi742Z1tTcN/oNY=; b=IIjtgr4jsVN1nf
	APVxoQpnifD5toXz+FeN47IQlBuLz6jUYyCDiIp0CMQ0NXJBzEJUpj0DUXSWorxCVEk7F1m71dyCb
	KccCaVExS0xohO8r/GeohDv3X3913EFKdn4ngmLNDqVbG5c1sHYT1nJoJ1aF0DpUL2aS7NjXyai4S
	VqNV3bCi00Bum9mI09ps+Lo4dHJqteDL3lwo31MOgI1b/JWjZdcdk3uw1r7uL3R1pE19UQ+roLxv/
	sfo/2S1s5285J9DFW5tISasZ3wjmAxYkO3BcbRWPH/XCnQAbKrSiGL+40vFRDGWEH6Rfx9Xr3YF30
	pMluxZfEcrx6AOhRWztA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p80gU-00G0fX-RN; Wed, 21 Dec 2022 15:07:06 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p80gR-00G0YJ-Il
	for linux-rockchip@lists.infradead.org; Wed, 21 Dec 2022 15:07:05 +0000
Received: by mail-lf1-x135.google.com with SMTP id x11so92927lfn.0
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Dec 2022 07:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nXHfNUaNPuVa1Udkb7Ct+xGCUATGWGV9FO609P79yWk=;
        b=Ee0H9qiZHOqKL3li1jBzUyaziFcgOvcRiEbMtC47CW5az4T11Si7rtZg666S5Fw6U/
         VDZlNkEvITErFgzfPrgDkoAYnZFcAt37qFAHZrNyenSkz77OGMEzEXWQfcVG3PP3AZB8
         13eHcid8PwHa3TqdveJdRAzIiHkJq9KWV8PxAS+Yd36I9X+gwY+qAXuIBZOa54RboVwY
         LSmIDK/6N9QREJIxoLvxa4GlDYrkDjwpveL6fgpEq8BlNvt1SoPIeqiN+mUFn6Lc9NL9
         nmMI6QN6cbMPCZUjV4pzE8lVC7pm+mtibsxWu3JPaGkJrCv8UZWXZcmYAC7aMGXVdNpt
         x53Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nXHfNUaNPuVa1Udkb7Ct+xGCUATGWGV9FO609P79yWk=;
        b=i/12spzyHUhTOgfq0owqj7S4OY/1gGuLwLeVRv3+kNeDG4a3PEvl7sPhGXg9+5n1at
         lIaurLO0eNNXFdCkuQSs/eo07+68Ey1NU8DPE99NfwKPijXtZk/c1xgtxmXj7KGC7pDE
         9lhoAZqdOqdbEvUwrv+IUuzyj5Dc1gwwumgqw1ncDahGpi4zFPeKkTbwpnKgBG4ZdtZA
         kibnYw88ptTbpezF0sawNQzbwY5T5P0iRNWMWyChtBDgbNO2YNTLPyCqjoHj6XZRh0Q5
         z96XJ8SU75LwXZIoouWfbwMePyhYF5rFpGIQNIUDlyavgdM4RMoJrinkiGFAmxnxN7Kg
         tIJQ==
X-Gm-Message-State: AFqh2krR5YyDlZ7e2P+Y9MNazwtZxJvmd4p25b8bJEer0hIb64n5nB15
	AZGzBwHzA6BMZ+RUioiLM0Qkfg==
X-Google-Smtp-Source: AMrXdXscXH6TKv4+JWL+cSlNXlcAiowOZWm12TFZDG5PTlGD3gdIlidFAA3zEusvmWeqvU1rTrh65g==
X-Received: by 2002:ac2:4bd4:0:b0:4a4:68b9:66b7 with SMTP id o20-20020ac24bd4000000b004a468b966b7mr709486lfq.2.1671635220653;
        Wed, 21 Dec 2022 07:07:00 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d4-20020a056512368400b004a47e7b91c4sm1845446lfs.195.2022.12.21.07.06.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 07:07:00 -0800 (PST)
Message-ID: <0ea140a8-b872-7341-a15a-4feecc69e480@linaro.org>
Date: Wed, 21 Dec 2022 16:06:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v5 1/2] arm64: dts: rockchip: Add EmbedFire LubanCat 1
Content-Language: en-US
To: Yuteng Zhong <zonyitoo@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, DHDAXCW <lasstp5011@gmail.com>
References: <Y6MP74TUp50yt6wZ@VM-66-53-centos>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y6MP74TUp50yt6wZ@VM-66-53-centos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_070703_738102_ACFFC722 
X-CRM114-Status: GOOD (  10.25  )
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

On 21/12/2022 14:53, Yuteng Zhong wrote:
> From: DHDAXCW <lasstp5011@gmail.com>
> 
> The LubanCat 1 is a RK3566 based SBC, developed by EmbedFire Electronics
> Co., Ltd.
> 
> It has the following characteristics:
> - MicroSD card slot, onboard eMMC flash memory
> - 1GbE Realtek RTL8211F Ethernet Transceiver
> - 1 USB Type-C port (power and USB2.0 OTG)
> - 1 USB 3.0 Host port
> - 3 USB 2.0 Host ports
> - 1 HDMI
> - 1 infrared receiver
> - 1 MIPI DSI
> - 1 MIPI CSI
> - 1 x 4-section headphone jack
> - Mini PCIe socket (USB or PCIe)
> - 1 SIM Card slot
> - 1 SYS LED and 1 PWR LED
> - 40-pin GPIO expansion header
> 
> Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
> Signed-off-by: DHDAXCW <lasstp5011@gmail.com>

This also needs fixes (SoB order, full name)

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
