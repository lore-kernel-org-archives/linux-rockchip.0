Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE306CAC58E
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Sep 2025 05:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXNy7ucD+SGJClsg3YlApU8ON5vOOp/yykS3HfqEPAM=; b=g+tXJycZJe9Gko
	1Z0mIQkn+sdajlNTrn2NssZeWPo2VbuXXwwBNRI57AAUTZIL30jIvkOsXkSvee0/wsEWYuVZ1i7Un
	jP7Z7aBjzge5t8c12VxdJdrWABv2JLpOSRMLSxsjiA/inWiOk9rfkxi/CgWu15AQWpWhrHce9MEtM
	EO8FnGBx7E5qJeKoR9qAJ41p1/kHN6qrg7ldlBa+QL2i7ksb9tWRq+uDCsabtI8nFsEty+kvdm8d3
	Yok1uwZwz/cNMhFAUTUkFsVSl2IhVyMrBTYk4lJqrSryUDaNpbZhdMVN6V4ujTnNZ0Kwdad62qAAd
	BL/i/aiZ/GvcGzu15iBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxJH3-0000000DQk9-3RW8;
	Sat, 13 Sep 2025 05:58:13 +0000
Received: from mail.8bytes.org ([2a01:238:42d9:3f00:e505:6202:4f0c:f051])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxJH0-0000000DQix-37WS;
	Sat, 13 Sep 2025 05:58:12 +0000
Received: from 8bytes.org (p54921b16.dip0.t-ipconnect.de [84.146.27.22])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id 20DBB4FD40;
	Sat, 13 Sep 2025 07:58:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1757743086;
	bh=TdTQRlOgkFFp121tWctGOE7zJMN8424tRrjVZduIikg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XqK1+UPuImxMQZCxA6SMPJbtwsVcWCAEAh20urbbjeTj7wMT+Sv/Pfi6Luy1xLiJB
	 K4wYK1jOR9pgBY4L/Z+Hifkxw4YopSYDUrHwlrgPTBeytduGK1/BEJG1rVUjO46x/m
	 It4hn6eb/zBK1bX/ddQEjFCD0xWQqbohk+ZnuCQgdtSsZyaEGznKDVbS2Nv3uVqLls
	 6T3cqm32KoGrl6CT1weUyJ2Gl1KkhRgNGuJd0gERBjHseLnsxapr/baWqBostSLSxR
	 G45QWT5TqIuGRW/J7eTwrH0PUeDSj+ENwVNo36DdZK7uHzSx4Xrkh1XJdLQwC5xlqD
	 T0WyvAhR7p0WQ==
Date: Sat, 13 Sep 2025 07:58:04 +0200
From: =?utf-8?B?SsO2cmcgUsO2ZGVs?= <joro@8bytes.org>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	robin.murphy@arm.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	heiko@sntech.de, jgg@ziepe.ca, p.zabel@pengutronix.de, mchehab@kernel.org, 
	iommu@lists.linux.dev, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, 
	linux-media@vger.kernel.org, Will Deacon <will@kernel.org>
Subject: Re: [PATCH v9 3/7] iommu: Add verisilicon IOMMU driver
Message-ID: <rt6nvgazcl6mvyy4iuut3n7irf72t7rex2iwabbkuxp7cdvez5@2nanenqgxjdy>
References: <20250911155720.180465-1-benjamin.gaignard@collabora.com>
 <20250911155720.180465-4-benjamin.gaignard@collabora.com>
 <vrngq76nnms3jyl5hnxqnkimjc6kil66o6fdyqn5vm3fpovmja@cfynipjw7ktp>
 <694b9ba15cd67f41a38f4a65a3811f035cf8e99d.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <694b9ba15cd67f41a38f4a65a3811f035cf8e99d.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_225810_997722_171DEC91 
X-CRM114-Status: UNSURE (   7.51  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

[Adding Will back to Cc]

On Fri, Sep 12, 2025 at 01:37:11PM -0400, Nicolas Dufresne wrote:
> To me this rejection isn't about Benjamin's driver, all iommu seems to look
> alike, so anyone else that would have sent new driver would have face the same
> issue.

This is about ignoring comments from one of the IOMMU maintainers. I am not
going to merge a driver with open comments/objections[1] from Will (and a few
others), so resolve this with him and get his Ack.


	Joerg

[1] https://lore.kernel.org/all/aMAno-DkDJumcAtj@willie-the-truck/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
