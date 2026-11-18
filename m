Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECEA7606A320
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 16:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZCtRuOcM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=iH+mmEJD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vyzrYCpzXkXudLlbCgryV6AplSD6YCqBvGTGP3DMHXA=; b=ZCtRuOcMgPrFBHjSdbQPh+7IOF
	WNEzwWUZuUSye3L7G6zmmwzb2yp0IVS0YX8qdajahLotm+0n9G0j+0t6y2NZIrabFrb0uGWpLi7XJ
	UqBtQ5Zh1XR3QPJA87odww02Nlgsr9C7eGjoTsxKcJY90yPOLxUYam5JCTNy/Z3FermaSUHy0jUUA
	jJ8DbXF4H879pfjTLIotyPRqFhmnuc+TAIsiRC1hZcXlGTyfWkf7hOEjzV1/q2Qroqx91wORh7Z/m
	YhGsf6ccSTWniEPLeTRfZ0+552BGlGUeDELQT/BlIpeE5egSGaNBPosoEQXbodI+016t3Kpq67neO
	NYa6j4Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTio2-00000009ZFf-31qp;
	Wed, 18 Nov 2026 16:46:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTio1-00000009ZFG-3Yns
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 16:46:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B596040ACE;
	Wed, 18 Nov 2026 16:46:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B9A71F000C5;
	Wed, 18 Nov 2026 16:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795020404;
	bh=+oaeBPEfuBmrY3gL6dhCuUvIM7uxAAGKupfULFYYqe8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iH+mmEJDFAflm+tg3NGZUPycERCtCXkVtzbEsVPvE5bkAqrX68dCJVdzQMkxhFYlH
	 miR6tLM73gR5sazK6bwPSGodQEsN8RzIsfivUQnqYexx7NJN2X1fXfB9uyO5f735ym
	 CMCWj6ARXNHazDnab+oSWlMlM4x/stEzhb1bdT4ozx7B4Zj8R+6GEhNudRTCGTTTIb
	 gfLjcR5FeR2XZgZn7b7Cv6gV5xEHyP85SaEcltWD1YdeHQjc1hrpPmI/37vQimK4sV
	 0+WobnhNsbHMnZCxILEvuhJMN6AnKeT3f+yd7XXfXFNEkMNjllgwKzCi+c9j/WYmW9
	 p8jcdxyMZdMZA==
Date: Wed, 18 Nov 2026 17:46:40 +0100
From: Niklas Cassel <cassel@kernel.org>
To: James Le Cuirot <chewi@gentoo.org>
Cc: Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: PCI: dw-rockchip: Unable to boot Quartz64 Model B from NVMe
 since reset changes
Message-ID: <av3WcJyt_tRXNj2l@ryzen>
References: <08cc96c5171fc969b074371692e6d95d46eba60b.camel@gentoo.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08cc96c5171fc969b074371692e6d95d46eba60b.camel@gentoo.org>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hello James,

On Wed, Nov 18, 2026 at 04:03:11PM +0000, James Le Cuirot wrote:
> Hello Wilfred,
> 
> Unfortunately, since your commit "PCI: dw-rockchip: Implement
> .reset_root_port() and use for link down" (b376b3ff9cb0527), I have been
> basically unable to boot my Quartz64 Model B from NVMe. Sometimes if I wait
> long enough, it will eventually work, albeit very slowly. If I revert this
> (and 4e9f69d08253) against 7.3.5, then it boots normally. Here is the relevant
> output.

There are some dwc-rockchip fixes queued on the following branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git/log/?h=controller/dwc-rockchip

It would be interesting to see if using this branch makes a differnce.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
