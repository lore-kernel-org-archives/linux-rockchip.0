Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B7ECC77B6C
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 09:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3u/jmweEHEUAL+oNCwVmT2VABtGTJKWWHCKM4uhs8bU=; b=n2dgHefs51O8L/
	LRTmL0AyTy8WxEIyF6tntRHQVR7o1RT4xrCig9QbW+pXg2/CoaKKG98aWLb6xL5cdWXYMVAoX99Dq
	ncyIe9DgLx6WSvIM5P1Rqec/R5GQWQJ39vNMDOJt6IcgyWrvrqxDPy6SV3NFFNWkpTSl0Mu1buAh7
	OW8oYyilMlYQEofFP/JosP4ynebMneY18jF7TaDCZONXUr36MUXH7wl3wde4n4XIafzrBsY/kPEIJ
	FPawKZHtrpFI595wqhYOCi3ylQNR+1bI7jNqLpmucXIOJjcMP6pGl5vvJmHM+sGWj8uBIELp5FAVo
	RAOXD/rd3qiqAYXp+FUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmt3m-005YgT-2P;
	Thu, 13 Apr 2023 09:16:06 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmt3i-005Yds-21;
	Thu, 13 Apr 2023 09:16:04 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8D14A6603207;
	Thu, 13 Apr 2023 10:15:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681377360;
	bh=Wt9eQea6Ljg+YXnJ8eD/gvOlKDFcwoBLOrVG37MEhnI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NxnKfE3lF95+Q80F4uOtnJx/PctJKJP14ZNpTb7X2SaIKLgdyvBrecyljqmSEXXMR
	 KiIqKbYXa+JMIMaFhMWjWuPlSyUiC0JQ7eF2Ju1mRpruw6d++1D9NIcl6XznYMVH+c
	 hjuK9iDsW0VJKoCNAGv9tFoDZreqbJJHby/MKyKbg+4GFK+6X54LrEOv7lR6iA3BFC
	 KcS2DJyZjk7DEeRRM0cGO+oyteSRgqTWjCT8YGnF2wDFAoY8MDqyEvXN+qZqBMlEp6
	 AfGsuYuq4znHxfjyd8Dvp6UsRYl2jBXx6AXqZapbKqXbPXw7nIDa5B3lRcZNkh3mrm
	 iYaIs1lPmfDRQ==
Message-ID: <f70e622c-9202-b0da-fa62-fda6db5b5173@collabora.com>
Date: Thu, 13 Apr 2023 11:15:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 08/13] media: verisilicon: Compute motion vectors size
 for AV1 frames
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230412115652.403949-1-benjamin.gaignard@collabora.com>
 <20230412115652.403949-9-benjamin.gaignard@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230412115652.403949-9-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_021602_869483_8B3856C5 
X-CRM114-Status: UNSURE (   6.54  )
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
> Compute the additional space required to store motion vectors at
> the end of the frames buffers.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
