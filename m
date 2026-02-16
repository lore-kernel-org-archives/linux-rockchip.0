Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15F89E7BDB4
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Feb 2026 13:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsTqZXgP/R5ug/vPDIjTA2OB06kRjPh1TL3LvotjN0A=; b=hBjv1lEG7Bitc2
	KA3uqoii+emdrgh7G9A7dR4vsGcYZDM4J6jvteHkThFgLRqqKHqYaFRd+wJ1e+qBfTb4vhvwmMHNB
	Orkz2yRD9R0i1ZkXaG78thGr5+G2Gi4wKu2xtZRAB9Xf8OBYMBdKE0Rj4IdxYJmHvyjEdQjK7sJGh
	GHmylNNWlPc7FQKWcgxAsDtLxvzKOtsAHz1hkB2aR/Aa1imwNA/EF6FRY4iP/KIHWMDYJZkDxg3fv
	xehgI4hpJ+HaN+snGHtB2Gn4IMwMUQU18NCNR9qYhcCfkPmmtMBBPy4CButkZ5xfpn/c6DU99dVCL
	kU+k4CvvKlzjpqyZ0Myg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vryjO-00000006exC-00rv;
	Mon, 16 Feb 2026 13:33:42 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vryjK-00000006ewg-3idm
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Feb 2026 13:33:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771248816;
	bh=4xUKrRwoa1mIk7MvSEGD7auFGq7ILzxeSPtTqhgpsgI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=VkTRcfQZfpOXsqW3yeml8RbmxInZFLkNNVmif6Z5ekDbc37oJRqXMwC4UakjR8M5J
	 v/4/bBsOKJsB6G9OPSnfVfp1qJzEZnguDezjGLnmx2UUg2jWgBxvMaosNMF7o8daZ2
	 VZa5mONZwFBmXDs4fohVtrxoMQCk03Sa1h3H4SGIFYXuT3jEkctESlSuiL+9r8ZQDX
	 BJdTvmNblfL7favKwNwOhda6b5Hxiy5Z33kBl2gPh+QctEXoeGfrwktJRvG+hzfEIn
	 M9FYWx7fnmi+ePLyFC0pVxI/+c9PiAaPXn4dpgPx7QOl97UbqeBtYkZ8BP2IglF8Us
	 B7bGt4KdzI2nA==
Received: from [10.40.0.100] (185-67-175-126.lampert.tv [185.67.175.126])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F0D2517E12A9;
	Mon, 16 Feb 2026 14:33:35 +0100 (CET)
Message-ID: <bf195496-29d0-49bb-945b-60ce3d02024c@collabora.com>
Date: Mon, 16 Feb 2026 14:33:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [bug report] media: rockchip: rkcif: add support for rk3568 vicap
 mipi capture
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel <linux-kernel@vger.kernel.org>
References: <aYXvDURNPu_5NILk@stanley.mountain>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <aYXvDURNPu_5NILk@stanley.mountain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_053339_088533_F50A705F 
X-CRM114-Status: GOOD (  14.30  )
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

Hi Dan,

On 2/6/26 14:39, Dan Carpenter wrote:
> [ Smatch checking is paused while we raise funding.  #SadFace
>   https://lore.kernel.org/all/aTaiGSbWZ9DJaGo7@stanley.mountain/ -dan ]
> 
> Hello Michael Riesch,
> 
> Commit 1f2353f5a1af ("media: rockchip: rkcif: add support for rk3568
> vicap mipi capture") from Nov 14, 2025 (linux-next), leads to the
> following Smatch static checker warning:
> 
> drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c:519 rkcif_mipi_id_get_reg()
> index hardmax out of bounds 'rkcif->match_data->mipi->regs_id[id]' size=4 max='4' rl='0-u32max'
> 
> drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c:519 rkcif_mipi_id_get_reg()
> index hardmax out of bounds 'rkcif->match_data->mipi->regs_id[id][index]' size=11 max='11' rl='0-11'
> 
> drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
>     504 static inline unsigned int rkcif_mipi_id_get_reg(struct rkcif_stream *stream,
>     505                                                  unsigned int index)
>     506 {
>     507         struct rkcif_device *rkcif = stream->rkcif;
>     508         unsigned int block, id, offset, reg;
>     509 
>     510         block = stream->interface->index - RKCIF_MIPI_BASE;
>     511         id = stream->id;
>     512 
>     513         if (WARN_ON_ONCE(block > RKCIF_MIPI_MAX - RKCIF_MIPI_BASE) ||
>     514             WARN_ON_ONCE(id > RKCIF_ID_MAX) ||
>     515             WARN_ON_ONCE(index > RKCIF_MIPI_ID_REGISTER_MAX))
> 
> 
> The id and index checks should be >=.  Not sure about block but I assume
> it's off by one as well.

Thanks for the heads up. I started fixing this and then recalled some
previous work on that issue.

I found that you submitted a patch that fixes exactly this, but this
patch hasn't been applied for whatever reason.

Since I have some other fixes for the rkcif driver, I'll give your patch
another spin in the scope of that series -- hope this is OK for you!

Best regards,
Michael

> 
>     516                 return RKCIF_REGISTER_NOTSUPPORTED;
>     517 
>     518         offset = rkcif->match_data->mipi->blocks[block].offset;
> --> 519         reg = rkcif->match_data->mipi->regs_id[id][index];
>     520         if (reg == RKCIF_REGISTER_NOTSUPPORTED)
>     521                 return reg;
>     522 
>     523         return offset + reg;
>     524 }
> 
> regards,
> dan carpenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
