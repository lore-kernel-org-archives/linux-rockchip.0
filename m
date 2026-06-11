Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1109ECD98C7
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 09:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vU3eiYQPjGH+VCdCMOQg5N8ZtfEUl7oPFTSzC3AVw3s=; b=uLOZwurdpDPUMW
	3EVKgWp/9LqSPX8OoTXVk9/PY4MlCRpY8EXuvZWs2YqAuyjStydgNmm66TsQfuMzx09+UJl5KtY4P
	8UNDP6c5V5g97I7JN9mF7PqJX0MR25SaoIA+cCyTTT79EPX9PfYR6bkwOid8RQWOfhPCC5WBWxEeX
	N2/IALv8dHnYzGperMuEwYHFOt9BkW5RYd/pP3HW9u/QIvY8Ayt190uLUlTVbLnzXyg02JUW9D9oK
	YxhV0cD+gtFX7Tac+ixbkPY6rb12KslqZXh8QCbwLC7Icci1GERilyYQ0uAJwyJpK+rVCWJIxpJmB
	Phb43+aHzhFmAjejQVQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXbhk-000000097lL-0JcK;
	Thu, 11 Jun 2026 09:28:04 +0000
Received: from mx.adeep.su ([185.250.0.168])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXbhg-000000097kl-1igL;
	Thu, 11 Jun 2026 09:28:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3795413F6A;
	Thu, 11 Jun 2026 12:27:41 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=baodeep.com; s=dkim;
	t=1781170076; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=RlMltLney+5FO6rJ24VqCkuZLI37qXL5DCduKEsVMiM=;
	b=OsmJNX00sah5SQTArdDrms3Rb0W7fi4r6DOlhQvQXdUuRazcr+SEqPNUGaHXocZfYy+gu4
	IGF3xiapUHEvQ+QIIU1/Xvj77PaS5uJkv3ouSDmAGSoc9+5lj86nC1M87sFfXSU9YRaEnP
	7KU7jBYUeTVoAMhpOXoOyspipaSFOBBJFEgyL8bwYH/V4MkAveCj8M6t8oK2GKmUC3Dpju
	DqIa/0fUnSZ9GATWzSFdFaLUmMr4xNXbzgNhnqxdZGeZiyTzI1FkSQWnlBhaV2hrzdXwnn
	Sc0tftfC5oFZ+ad91M8CU18DYycUQYjaav5i2FYZTf2/Y/FWmsuwcUTv9ciRpQ==
Message-ID: <a523e854-c1d8-4f9d-a184-70ebee5fd630@baodeep.com>
Date: Thu, 11 Jun 2026 12:27:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] gpio: fix sleeping-in-atomic in shared-proxy; restore
 meson non-sleeping
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Diederik de Haas <diederik@cknow-tech.com>, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>
References: <CGME20260610153425eucas1p29d20a835114a28b15cb12ea00534e074@eucas1p2.samsung.com>
 <20260610153329.937833-1-v@baodeep.com>
 <184d315b-a0a1-4792-8a40-1b4967025916@samsung.com>
Content-Language: ru
From: Viacheslav <v@baodeep.com>
In-Reply-To: <184d315b-a0a1-4792-8a40-1b4967025916@samsung.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_022800_958961_47BB9CDC 
X-CRM114-Status: UNSURE (   6.87  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi, Marek!

11.06.2026 11:26, Marek Szyprowski wrote:
> Hi Viachesla,
> 
> On 10.06.2026 17:32, Viacheslav Bocharov wrote:
> 
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> 

Thanks for testing.

> This probably also affects the similar changes in Rockchip GPIO driver done
> by the following commits:
> 20cf2aed89ac ("gpio: rockchip: mark the GPIO controller as sleeping")
> 7ca497be0016 ("gpio: rockchip: Stop calling pinctrl for set_direction")
> 

Yeah, we also need to revert can_sleep=true on rockchip and amlogic-a4 
(d6df4abe95a4).


Best regards
--
Viacheslav Bocharov
Shenzhen JetHome Technology Co., Ltd.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
