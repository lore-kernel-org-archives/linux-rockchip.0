Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB774C54E64
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 09:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99WcgtEtUznqZmpvIQ5HJrZ/rhVQEJHWx6BrZkqLMEM=; b=XUleZz1gO2p60+
	ZNtehXPp1RPgmqNkUY+ukVPOAky5cyoLTSHBddWUQEmRsw1xxiiY7JRfSLNlDfeSF5EqHe+MIr9hD
	xfxrd5RTtgyMhH5N+xG0hTrjgtvp6+6nQGOMOKDJhRBFEsAA+NLI9q3kWHsAS8gkFQygMC2o1x1iz
	J5Kz1QEOPkbCCArcN1pHiJ/tyj9ZzCUSMqPR1xGCp8WgyVAbwuO69EaSBx4YmMLmxOUfBGLo4MGa6
	HbTuBMJsMB9ypbGZ9VbqdOXmch8/m0KX0MpqaUNQQr+yKzDbGMP5uaCMEhslGzW8tsmhviFcSHhrx
	iYub+Mzqf9rZ5DM/pDpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roggn-0000000GTGe-0FyG;
	Mon, 25 Mar 2024 09:32:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roggk-0000000GTEi-0SVK
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 09:32:20 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1roggb-0004XE-8B; Mon, 25 Mar 2024 10:32:09 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: vkoul@kernel.org, Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Sugar Zhang <sugar.zhang@rock-chips.com>, dmaengine@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] dmaengine: Add support for audio interleaved transfer
Date: Mon, 25 Mar 2024 10:32:08 +0100
Message-ID: <2115347.bB369e8A3T@diego>
In-Reply-To: <20240325103731.v1.1.I502ea9c86c8403dc5b1f38abf40be8b6ee13c1dc@changeid>
References: <20240325103731.v1.1.I502ea9c86c8403dc5b1f38abf40be8b6ee13c1dc@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_023218_311452_27F4E103 
X-CRM114-Status: GOOD (  17.27  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am Montag, 25. M=E4rz 2024, 03:37:49 CET schrieb Sugar Zhang:
> This patch add support for interleaved transfer which used
> for interleaved audio or 2d video data transfer.
> =

> for audio situation, we add 'nump' for number of period frames.
> =

> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> =

>  include/linux/dmaengine.h | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/include/linux/dmaengine.h b/include/linux/dmaengine.h
> index 752dbde..5263cde 100644
> --- a/include/linux/dmaengine.h
> +++ b/include/linux/dmaengine.h
> @@ -144,6 +144,7 @@ struct data_chunk {
>   *		Otherwise, destination is filled contiguously (icg ignored).
>   *		Ignored if dst_inc is false.
>   * @numf: Number of frames in this template.
> + * @nump: Number of period frames in this template.
>   * @frame_size: Number of chunks in a frame i.e, size of sgl[].
>   * @sgl: Array of {chunk,icg} pairs that make up a frame.
>   */
> @@ -156,6 +157,7 @@ struct dma_interleaved_template {
>  	bool src_sgl;
>  	bool dst_sgl;
>  	size_t numf;
> +	size_t nump;
>  	size_t frame_size;
>  	struct data_chunk sgl[];
>  };

hmm, this only ever adds this nump element. I think for adding things
to really generic structs, you definitly will need to provide an actual
user for it in a second patch.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
