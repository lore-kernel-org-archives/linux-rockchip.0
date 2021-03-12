Return-Path: <SRS0=jNzM=IK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BDA5C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Mar 2021 09:30:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B13E764FD5
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Mar 2021 09:30:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B13E764FD5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=infradead.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cMqqa+iibYu4nzALiI7tcnKyb0SOY6UqZ1+hMfC/xxo=; b=lEPx5rw7TUlbUx/f8aGiu4d0p
	Z476+5K+hJYi0Cpyy6br/WXBnqr55j/QWRrR7TvnGIiw0vamo1ow7256DaR+At9XGTxnRa+ymOS5q
	ZkHO0LtmbIG79iTWLZW75/RQaU+CSWUGrmKX9vNJtgqBIMjve/xUsSw7qSbHpkQufMvMSD2nk3bgD
	WLvpcf3ihGC7AC15euV6YwX/mgSmez+PLyEknHmj45TJw3q+SUTxM4I3VnbnxceoGFe9t6yIUD0ak
	/IkPTN8bAtTuFsUqGK1WzRapXJAKwkw2UZisJnbCMxqakf+N1uqVRPEnP6tp7YnGjvcxlWMcis56s
	Gktp0fQsA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKe7f-00B1VR-BN; Fri, 12 Mar 2021 09:30:19 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKe7M-00B1Rv-Cn
 for linux-rockchip@desiato.infradead.org; Fri, 12 Mar 2021 09:30:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/PY1FtmG3ac2SthA8z5yZwsXBWGLH/vri2vgNuCMVKM=; b=P5wamdz2faf+EoMA1yl/bkt1Kn
 tBG5+2J7pgNwd9gxHE2WLsWsWJZORrx0XrqI3Ks2LnCF0E7ntIPNhbz5W5WJgsHQsLy4JATrQxGrd
 17CxkCwVA1meyjfsDUBXTrz6ZQPmxj2W9KdmtHyWxQtG8MJtQijljhcGb/+RVHU0VHaJLo8W53Adv
 Nui1OWTkrp0C84Z2bkKN5sWDvVDYU2HF7SNgIYJiEMCBfR13/416fteRMbXpMMbgcgM8DjkTejAwQ
 hphyA/VW2FmrJnvc/afWDKGL8BTshsa9N/FFGXBNlaoTFV9sKFwUwd9dRMdm5F5MW3fvbwIXGv/NY
 PltV3i3Q==;
Received: from hch by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lKe70-00A7fg-GY; Fri, 12 Mar 2021 09:29:45 +0000
Date: Fri, 12 Mar 2021 09:29:38 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: cl@linux.co, penberg@kernel.org, rientjes@google.com,
 iamjoonsoo.kim@lge.com, akpm@linux-foundation.org,
 linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] mm/slab: kmalloc with GFP_DMA32 allocate from
 SLAB_CACHE_DMA32
Message-ID: <20210312092938.GA2412021@infradead.org>
References: <20210312080320.1965201-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210312080320.1965201-1-jay.xu@rock-chips.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
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

On Fri, Mar 12, 2021 at 04:03:20PM +0800, Jianqun Xu wrote:
> The flag GFP_DMA32 only effect in kmalloc_large currently.
> 
> This patch will create caches with GFP_DMA32 to support kmalloc with
> size under KMALLOC_MAX_CACHE_SIZE.

No.  No new code should use GFP_DMA32, never mind through slab.
Please use the proper DMA APIs for your addressing needs.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
