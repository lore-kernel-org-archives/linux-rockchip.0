Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67989C77B6E
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 09:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vhpadNQpiBQgF5F2tvwroz1pRX51aMrhQW3wxuE4HQ=; b=J0CPgtTDuYd0wY
	Fj6iAIZ0SzIz7p/RUjd/Wt+8tsNFg38HEJK1sa9vrPaUt2aFKLw/djnRQhK9HB8POZxfLGbpThUMh
	4xT2ZHIIeyp5pyLGA0v7vITdNZ8tUYVS82fZCROVJIsE7WI6n18z96p3mvMZLmh127MB6pvhyNVWN
	T5JZdJfskxZA5wm3u8r3PjbsMQmhUwZHOKWa6S2HKdZ5tpd8J5iFMGfwgseCZugULBP3I/vThJIzA
	X3PKuLpVn3OWTA75UNYYXX+pM7Vx/ehxU1xzvGqTUXYraHGBGnU/H7vQT3lBO1bJ+xccLUXFVvdrD
	kDF2b9IjoCgsoaaKY3qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmt3w-005Yni-1F;
	Thu, 13 Apr 2023 09:16:16 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmt3o-005Ygq-0f;
	Thu, 13 Apr 2023 09:16:09 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4AFFE660321E;
	Thu, 13 Apr 2023 10:16:06 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681377367;
	bh=n7y1cE2MUgJTJW2qjt7n2PuEhypkBndzpVE2ASPTfwM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CHZFVKk2Ag9o/l+eJFxejpb0qa8QgiH/1y3ABkzTXOFsmNU582JqqZnNqJ3aqj2q0
	 KrLAR6lT+bWNpQ2aoV7iChYaM0Z+u6OiN59/f5+p1/DkM+tY2jsuHFLojfGKOArYx6
	 0+qD7Alv5mbDl/S+IXz5ZtLUzrn1PEa/XHrrxN9f8asYbrrR6x1qdsJs0/1M9x3XhT
	 52SK8o1qzpHz5nc4a+HtDsNYP1ZDJYCZvxP6W1AYQTQ/C96Xt7DooBL2+BdPVnIX6r
	 8IjcdAL2CNvGKLzDcwvLwqhmrpxLjG/TM9oJXbdbTCGnGFD/0640Z34LRWUY80m7oo
	 3JDU58wO/JZDQ==
Message-ID: <156c1295-a288-3263-7d3b-416cae3147d2@collabora.com>
Date: Thu, 13 Apr 2023 11:16:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 06/13] media: verisilicon: Add AV1 decoder mode and
 controls
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230412115652.403949-1-benjamin.gaignard@collabora.com>
 <20230412115652.403949-7-benjamin.gaignard@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230412115652.403949-7-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_021608_418444_DCB89084 
X-CRM114-Status: UNSURE (   6.89  )
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

Il 12/04/23 13:56, Benjamin Gaignard ha scritto:
> Add AV1 decoder as new decoder mode to Hantro driver.
> Register needed AV1 controls for the decoder.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
