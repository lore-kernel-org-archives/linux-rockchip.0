Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 417B5C61DA2
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 15:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mcBwuEjSX3AcJUNpjua/4SSs5UFj6UMsQXtSfAN09vU=; b=xbqANHIKnCPVl/
	7pATr2xSzLEXk+KTYw0bK6jb8hHyqUtOr7fThhezylgHyUYnS6TqadQ3nbETAzurbn50PjlPi1732
	Q48h8lJmTRbfbaKsfvlK1S7Ff2Sjg9S4/1D2gi9BH6D3BvxpQrAzZa1kP4iIyab6guH6+VGnIW4ie
	s0I4Pvcdf+DJ8rXW7zbbX7iyeqFztlzwdzTORmrDAWJpEFcsgn3bT+AKcG42LKNsySoH+K/HNrg23
	J2NBNOuRDbPA05m+4TomuLUWE6oxiXsQUoVaNSAFMVxfgMPk4DtodP9cm/L1EMcZKLlr+hIKHRvOu
	RyGRy5dTJRWVTkYERlrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL48j-00BVJ5-Ke; Thu, 26 Jan 2023 15:26:13 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL47x-00BUuX-Ar
	for linux-rockchip@lists.infradead.org; Thu, 26 Jan 2023 15:25:27 +0000
Received: by mail-wm1-x332.google.com with SMTP id q8so1359684wmo.5
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jan 2023 07:25:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6w50+QY2U2rrBwxg9041R7SovRfW3AKP/5TYIutQHOg=;
        b=EJRmpDzJHoWxYw21CVGGS3KiWAkFKnmB31cgFmJbaPBzPRwQFh31czVGWnJ/VijORv
         v3xLCEBErN5vcJ32H7dopS8vfLXpJrzLyF/Jcg91XNdMNIxtStuwgrk/7vK/MH1UDkWS
         CyB3dJaWE6R4ArqSJbgN+DrCJR9t/2tJY6NvFLjvcfUYgAcKvUUI9iua1W1UpUGf7CO9
         jok519YA0xs2I2iBO+NvR+RRXQl4BTTHzMWc32Lk86YG7Buo555zpJEOZ/W6cYqGBz0H
         PuhahEWGwTpZzogD59o5/4wUO/sX/uuqu6L7bcrpWWYDMLv1tNbQeilQEoF3BbWOcWBL
         TjlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6w50+QY2U2rrBwxg9041R7SovRfW3AKP/5TYIutQHOg=;
        b=LyV//ylvd3k5xa7SUB+mUpVtxVAdIRne7ttU6CYVidbLMCZCBaukYfTxI3YvqVY3LA
         DB9h4kWqFHXQ4vAtiWypBm/fA4CMb1lyb9y1sOoxdDV6hpwiRspP8uNRM/udMbiqfxTb
         pYIAHl0VNczmiWx2CbohbPupRN/11JpOUgf6uhVijLgT0+ZOsBNQ6lYRC8lwp3kKXgz/
         PodsD13AZJ4hZsINjMffH67xFqp7Ib58vlr+bxkQ4hbwlYHqgZwqBjdI31TWZqX6tP/D
         kxXzuEXF347qNPjijrcG6hTM3f3zII5jemIEfwe9NKcyncPhTrJWnyXG+tayc0O/ERca
         NTvg==
X-Gm-Message-State: AFqh2kpvFqQS02JE2PubLX5L0Y2/GQ+xPjdjwZbLSiNioCQtUslFQUjc
	k0G8xDONaPdteBKIiLD/xjH6pA==
X-Google-Smtp-Source: AMrXdXtLC4bCssGF+R4NoHrScxbhIKC9YqJD8l4dvSr7ep98tFgY6KRIv+siazbnR+9t4gJx5wJP+A==
X-Received: by 2002:a05:600c:3b29:b0:3da:f678:1322 with SMTP id m41-20020a05600c3b2900b003daf6781322mr37544644wms.38.1674746721426;
        Thu, 26 Jan 2023 07:25:21 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o7-20020a05600c2e0700b003dafa04ecc4sm1653417wmf.6.2023.01.26.07.25.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 07:25:21 -0800 (PST)
Message-ID: <83a839c1-ed36-2ee0-d691-39c239a6a351@linaro.org>
Date: Thu, 26 Jan 2023 16:25:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 7/8] PCI: rockchip: Fixed legacy IRQ generation for
 endpoint
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, wenrui.li@rock-chips.com,
 rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
 <20230126135049.708524-8-rick.wertenbroek@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230126135049.708524-8-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_072525_570321_CC18FEBE 
X-CRM114-Status: GOOD (  11.36  )
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

On 26/01/2023 14:50, Rick Wertenbroek wrote:
> Added generation of legacy IRQ (INTx) for the RK3399 SoC PCIe EP core.

Here and in all other patches and subjects: Use imperative, not past tense.
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

"Fix legacy IRQ", not "Fixed legacy IRQ".

> The generation of the legacy interrupt was validated with the PCIe EP
> test driver. Generation of IRQ through the core is documented in the
> TRM and is done through the PCIE_CLIENT_LEGACY_INT_CTRL register of
> the core.
> 

If this is a fix, you need fixes tag and maybe cc-stable. Also the bug
should be described - it's effect, impact. Then the patch should be
first in the series (or even entirely separate).
Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
