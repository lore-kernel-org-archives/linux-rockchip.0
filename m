Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F809C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 17:14:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4529A20797
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 17:14:55 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="M+uaHXgN";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/PPfYy+"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4529A20797
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TsdBCG2CyfaI9A28Iwr2o6f/QRghMt0ZGa4g+Zw9Kvw=; b=M+uaHXgNXUSw19W23UXufn6jB
	s/je5NZGBESIxhZEJ9zRpJP8LdJVkSh1R42ONS90DNGjXnxUWKn+4q6sj1gL+mr1GiXy49Bn6pr2f
	G38RWgUUrVlI97xzi4AqlXvkLVtGYj+61phnIeMMSVQWY+gKFQ80rohnQwZ5LYA8Ibp6yrBzF/gNY
	snbgi6UBpVYW+05t7/fZOk3ixWqIx6fpw6h2cM670JaIHejDNITcOvt7WYaQsS8nTE2EX5IxK3TPR
	3I0eL+T6yLhB9cA4pXwjlS91G7RGPOK9bH+1+2vRJLm9aEyaYOkn5dd6icTMSVB14g3yaaRXbwHGX
	2XGBu3UOw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kei5b-0006AD-FE; Mon, 16 Nov 2020 17:14:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kei5Z-00069h-NL
 for linux-rockchip@lists.infradead.org; Mon, 16 Nov 2020 17:14:50 +0000
Received: from localhost (unknown [122.171.203.152])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 21FF720797;
 Mon, 16 Nov 2020 17:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605546889;
 bh=Do6LikazT2GPRsF4PjZgIWIMXnzhA/SSk92JoCfMLG8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V/PPfYy+fVraJmzX0RDzARI4yPpVSeu+Oy83cU0rFyWc1/B/nhWFK+gECtLr1C7qm
 TVyt6NwFmgV6JALFNsNP7bVzYB5hOBpqbTAVZuRdhYQpzzpgSEOCT8I1l97RSEkOe/
 sLWhP2Kc80FumzzaasgjvK+D7S16ddfq+oLViDRA=
Date: Mon, 16 Nov 2020 22:44:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCH] dmaengine: pl330: _prep_dma_memcpy: Fix wrong burst size
Message-ID: <20201116171444.GA50232@vkoul-mobl>
References: <1605326106-55681-1-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1605326106-55681-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_121449_860768_08354374 
X-CRM114-Status: GOOD (  10.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: dmaengine@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Dan Williams <dan.j.williams@intel.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 14-11-20, 11:55, Sugar Zhang wrote:
> Actually, burst size is equal to '1 << desc->rqcfg.brst_size'.
> we should use burst size, not desc->rqcfg.brst_size.
> 
> dma memcpy performance on Rockchip RV1126
> @ 1512MHz A7, 1056MHz LPDDR3, 200MHz DMA:
> 
> dmatest:
> 
> /# echo dma0chan0 > /sys/module/dmatest/parameters/channel
> /# echo 4194304 > /sys/module/dmatest/parameters/test_buf_size
> /# echo 8 > /sys/module/dmatest/parameters/iterations
> /# echo y > /sys/module/dmatest/parameters/norandom
> /# echo y > /sys/module/dmatest/parameters/verbose
> /# echo 1 > /sys/module/dmatest/parameters/run
> 
> dmatest: dma0chan0-copy0: result #1: 'test passed' with src_off=0x0 dst_off=0x0 len=0x400000
> dmatest: dma0chan0-copy0: result #2: 'test passed' with src_off=0x0 dst_off=0x0 len=0x400000
> dmatest: dma0chan0-copy0: result #3: 'test passed' with src_off=0x0 dst_off=0x0 len=0x400000
> dmatest: dma0chan0-copy0: result #4: 'test passed' with src_off=0x0 dst_off=0x0 len=0x400000
> dmatest: dma0chan0-copy0: result #5: 'test passed' with src_off=0x0 dst_off=0x0 len=0x400000
> dmatest: dma0chan0-copy0: result #6: 'test passed' with src_off=0x0 dst_off=0x0 len=0x400000
> dmatest: dma0chan0-copy0: result #7: 'test passed' with src_off=0x0 dst_off=0x0 len=0x400000
> dmatest: dma0chan0-copy0: result #8: 'test passed' with src_off=0x0 dst_off=0x0 len=0x400000
> 
> Before:
> 
>   dmatest: dma0chan0-copy0: summary 8 tests, 0 failures 48 iops 200338 KB/s (0)
> 
> After this patch:
> 
>   dmatest: dma0chan0-copy0: summary 8 tests, 0 failures 179 iops 734873 KB/s (0)
> 
> After this patch and increase dma clk to 400MHz:
> 
>   dmatest: dma0chan0-copy0: summary 8 tests, 0 failures 259 iops 1062929 KB/s (0)

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
