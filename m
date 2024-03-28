Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4205C54E64
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Mar 2024 07:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOW3hrCphSVzZ/ANSly8GWtO7A1aYGiunIXEElm6tD8=; b=MrMNQNyQWKKefZ
	CnG7BjMeYWy+Ff7ZnCSlgHo3JdSV3OPHr1AAy5lamb2xBWjlVC0VN5NBsGLrte4CzSisGOY7LBy+k
	n5vOP3kthv16mr5N8GU9aY2xYQcC0rv9dwB4TK8xW4Gu5ssi2KdqOytHOX1WIW21zCEjxRNA/t8wj
	0qqsc/RxFg0j1adl0QDLpUqRB4unm9seOcpyue2GBxZOZyJk8UxzIcDqesexjPzPSLmSGyDGCYZbI
	6HSM+W1n8m+1PhVTmPRxYO7SXOp6QO6Ihy4ltH4fBx/90F201TWG/RP57kqzLJecRRLLB3EBmqIDT
	VjwfN8Yn93GMr+0S63Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpjkp-0000000CnM7-1Mdq;
	Thu, 28 Mar 2024 07:00:51 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpjkm-0000000CnLT-1hOD
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Mar 2024 07:00:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A5221CE24A6;
	Thu, 28 Mar 2024 07:00:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58CA1C43390;
	Thu, 28 Mar 2024 07:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711609244;
	bh=79pUduyl7sVdyiBAUu3IXG13G61SWXkcS9QfQ9IVBhQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CKHmmIQTNcpbo3VcTJJCnvOni0Pb2AWVxcUE+/De0JsNWPV2WNmZc5ZNQli4G6mrN
	 7Y9coyB4QKqTEV8BV1gV+JZwuUDj/oyT6sJ1K5lPPhI1W6LBEFkn8etWy8FQapkSas
	 ZSeX7SDPZOEENB5AUiM/EIAKgUeLpIuvEkFa+yoOkui4V1ii0LPtpevT8+ek245eL1
	 rjQK2goLxy+n9WfmaCVzuMJohRoMgisFA+vlpn+9SfcQNe6q3Na0t6I9xsQOY5nnZJ
	 aZf1Y9ZVyccTOfpfsCgzhQ6Q142zthSFGlSKeAYi5zV4yiXflDRlBc49Prp3jva76s
	 FtorsR421CWyw==
Date: Thu, 28 Mar 2024 12:30:40 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
	dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] dmaengine: Add support for audio interleaved transfer
Message-ID: <ZgUVmAKlLV2Oqz9i@matsya>
References: <20240325103731.v1.1.I502ea9c86c8403dc5b1f38abf40be8b6ee13c1dc@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240325103731.v1.1.I502ea9c86c8403dc5b1f38abf40be8b6ee13c1dc@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_000048_664845_6227AFDB 
X-CRM114-Status: GOOD (  15.83  )
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

On 25-03-24, 10:37, Sugar Zhang wrote:
> This patch add support for interleaved transfer which used
> for interleaved audio or 2d video data transfer.
> 
> for audio situation, we add 'nump' for number of period frames.

User? also why not use the cyclic api?

> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
>  include/linux/dmaengine.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
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
> -- 
> 2.7.4

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
