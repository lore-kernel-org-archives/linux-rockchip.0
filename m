Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9490EC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Apr 2022 09:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6EFKpALQax8pzsJNbi9YpzISygZ/eJ90aMXsbYPkQM=; b=GCL9EFCjIG4BN3
	Uw3TQdiUuLgEh4XoGo4S2Jr2PoYzxUxhX/A4x8K71r/7vfRXIxMjII9vGpxnDtt6M88QAlhioZtg+
	mA8Kt5nTefMOq+/eqqRHqfGrGhb/13V8hP1VG5ROYvb0wn1527cxmdZwK6WH6KU9fBM0MqNcly0uD
	tQU9QXqgHd25mmN9ZtRbpu/Fu4HpoV++1He3jiGUaPB7uECYfSIG4+F+8zE4TLiLrBnBHvP5J5b9Z
	fKZd3UYLxD452FZOHyYD6FyWP+BomaQxtJk6yzm9QOLiG7Q6NzIUbTlHtLEMs9P7K/FJUzwMhWzsS
	5gHgEypWm9A1OSBjHH1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nk0SL-005iUr-AJ; Thu, 28 Apr 2022 09:29:01 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nk0Ry-005iHy-9L
 for linux-rockchip@lists.infradead.org; Thu, 28 Apr 2022 09:28:39 +0000
Received: by mail-ed1-x536.google.com with SMTP id e23so4793558eda.11
 for <linux-rockchip@lists.infradead.org>; Thu, 28 Apr 2022 02:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=ARjzKSJ1boVbUsyHWVKrd/F0BEB2NcYm5tFfBpPw1B8=;
 b=m9L56/TLMjbkJNGkPq0/4vhj93TF6hX+vp42zkfW2sWK6J+QKnIfFwHN5bf58QgSTG
 pulJdYDFBa3+C+wC+swn1KbaLFRuT3LdB+Q4kxG5j9R2uT5h2JhsWqNXJMYOXi4ihFXA
 5FMsjXrtJhe7ScN8oEx3CG1naMEgWrFbbd54hwxFQ3qKJWnL7DjWnz1b0zt73aAh0rTh
 nSBWhRhGPGrO+Jq50N/al+48Y9vUUPSFtlB+avzPMptKnfgEJ63cR/vSzp86P2RIflbL
 vi7R3GSdcWZAQVxjDC4tCOuPeqXqG572fHa0wYZgyDX6IoDPI7nnE91CjA5LRHXgm0ld
 5sfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ARjzKSJ1boVbUsyHWVKrd/F0BEB2NcYm5tFfBpPw1B8=;
 b=cSNTxB69tyhtkZBV+cCLcyAFxjGmfF1jig27vkaEa3yLJC/Wg/KxqHsyxQmhyY85hn
 PCB9lAv3wqJ/HIWeLgyuGnXYiwJgjXg/791qxDn4zhJUE+LKmCVTyDRgX7HdZOGBOtWt
 oRlcy0hWUZOyRIGqy1L/UtbgAFUBijJQglcZKXNublSLwJUHO2zJJ6k2e9BP0V9vqx+a
 WO/VyMJPEJYl6/yNT2uW92ys7ImkysujI5NHQA2xbFqmdB6ZHGXW/6MDOYE0YrCxgAIw
 EIa6qs6kj7Nj3ozD/php8yha+XISdYQgdh6JvuErEdYPhZOjp3QeF+LubAQnrMnYrqqm
 mpKw==
X-Gm-Message-State: AOAM533ewEORAl4tYFfnvbwqa/aabk4Bw9wZoxVPXo0f27jpgcTGNguT
 i+VJqITJU/jwgCPcg7qmvUshyw==
X-Google-Smtp-Source: ABdhPJxGwsAH2L/Urtc7neXZ8Wk3ukX7a601iUj1Wv389n0WEpH/jegU2zbjfen3b6tiseIIGqbnVg==
X-Received: by 2002:a05:6402:11cd:b0:425:ee49:58cb with SMTP id
 j13-20020a05640211cd00b00425ee4958cbmr19442993edw.157.1651138115159; 
 Thu, 28 Apr 2022 02:28:35 -0700 (PDT)
Received: from [192.168.0.161] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 b11-20020a17090630cb00b006e83fb1e6b1sm8118357ejb.100.2022.04.28.02.28.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Apr 2022 02:28:34 -0700 (PDT)
Message-ID: <a8d73c8f-76dc-c3ab-baf8-fcc253330fb3@linaro.org>
Date: Thu, 28 Apr 2022 11:28:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: Aw: Re: [RFC/RFT v2 03/11] dt-bindings: phy: rockchip: add PCIe
 v3 constants
Content-Language: en-US
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
 <kw@linux.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220426132139.26761-1-linux@fw-web.de>
 <20220426132139.26761-4-linux@fw-web.de>
 <918f5bc9-77f6-4d65-7432-ab53aadd6734@linaro.org>
 <trinity-3a10bccf-c3ed-479f-81c8-b48712f34432-1651138074158@3c-app-gmx-bs20>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <trinity-3a10bccf-c3ed-479f-81c8-b48712f34432-1651138074158@3c-app-gmx-bs20>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_022838_409470_7142D835 
X-CRM114-Status: GOOD (  10.62  )
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

On 28/04/2022 11:27, Frank Wunderlich wrote:
> Hi
> 
>> Gesendet: Donnerstag, 28. April 2022 um 08:34 Uhr
>> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
>>
>> On 26/04/2022 15:21, Frank Wunderlich wrote:
>>> From: Frank Wunderlich <frank-w@public-files.de>
>>>
>>>  include/dt-bindings/phy/phy-rockchip-pcie3.h | 21 ++++++++++++++++++++
>>
>> Naming - vendor,device.
> 
> ok, would rename to rockchip,pcie3-phy.h, is this ok?

Yes.

> 
>>> --- /dev/null
>>> +++ b/include/dt-bindings/phy/phy-rockchip-pcie3.h
>>> @@ -0,0 +1,21 @@
>>> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
>>
>> s/MIT/BSD-2-clause/ just like bindings because it is part of it. Unless
>> you took it from something and it is already licensed like that?
> 
> took this with this license from downstream-repo, only removed snps from name and changed name of include guarding.

Then you need to keep the original license, so it is ok.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
