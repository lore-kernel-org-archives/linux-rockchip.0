Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12A95C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 17:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVOcWG45NPdopbioAJ7n1AGC/1TE8YTWj6CKFn+P+y0=; b=JMc06+wMa+XTcp
	ofDKYLviDqF/nFWtMqxEd0st10libQnBowDGdJYThjUlPoFzXZyzg5n8BTERxBXb9Wddw3z/z1eKa
	WyVaK/S5v6a5lA3IfXOLa0pq7LHykF+POeJI3MsB50eCxxNvav5+0JnySguJvb7+C/TrYPHpkj2B8
	R1tX7cWenkiigE+3JWYcaiVIv8EDCiU1GhwmLF9L7nPnVF6NRU9O1O2rQIQHhEyarB4YkPf0A386N
	zFCE5zsjAk5JSc6V6GZKglIvfSheis+5715jZ6rwbEpgFg7LKBDuj8t2Bos5HZFVWx/XSq4tBZeKg
	pVIVrpwi3xnnZl9TFWOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otuJS-0070i3-Bu; Sat, 12 Nov 2022 17:29:02 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otuJH-0070gu-Qw; Sat, 12 Nov 2022 17:28:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 60A22B80989;
	Sat, 12 Nov 2022 17:28:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CF05C433C1;
	Sat, 12 Nov 2022 17:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668274128;
	bh=F485qhHTIh9CmK7hy1NhMzh6HMGWQY7IhAau/1prH8E=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=snsSgQwL63w7qszuQIr8NuGMAbHR8B3SAESy8OQ6Fj+YNfe+LxAZba4WGJlfeau5U
	 eqCFeQhZy53CYLfIprYsIpKglZoPi33jVN5ilueykMqgUnTCWPBJLQoPss6crGjsGl
	 wshmQF8EvZo9P7p2X6dTuDgOYP113xZKdq94A7EFYbkhincVkZPsKUq2fyKih7qzmi
	 8iPmpzsy0PjoT9SXPBjgQK1rRXwYgSPyBB1X7S85OLWRmTk7CWMtyuOQjeqw2VGfUB
	 AFS8UMcSgrxk68MjeIxkfQfJ7oi1p5Dyk/f+TMTkvxRgqzCXCbFwxXVAW6DZGiB7vm
	 iioKmf/7pTtEg==
Date: Sat, 12 Nov 2022 17:41:01 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Johan
 Jonker <jbx6244@gmail.com>, linux-iio@vger.kernel.org
Subject: Re: [PATCH v7 03/10] dt-bindings: iio: adc: rockchip-saradc: Add
 saradc for rv1126
Message-ID: <20221112174101.472abb56@jic23-huawei>
In-Reply-To: <58ee258e-8708-abcc-077b-c6b4a1a4185a@linaro.org>
References: <20221108041400.157052-1-jagan@edgeble.ai>
	<20221108041400.157052-4-jagan@edgeble.ai>
	<58ee258e-8708-abcc-077b-c6b4a1a4185a@linaro.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_092852_050062_19D27708 
X-CRM114-Status: GOOD (  10.94  )
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

On Tue, 8 Nov 2022 19:09:45 +0100
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 08/11/2022 05:13, Jagan Teki wrote:
> > Add saradc compatible string for rockchip rv1126.
> > 
> > Cc: linux-iio@vger.kernel.org  
> 
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Applied this patch to the togreg branch of iio.git and pushed
out as testing for 0-day to poke at all the patches I've queued
up today.

Thanks,

Jonathan

> 
> Best regards,
> Krzysztof
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
