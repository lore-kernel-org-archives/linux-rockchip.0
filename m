Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EB22C05027
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 18:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=mIdjrIK2nd0NrttIPdgC2foWCONOIJIMOEwDItzTsIs=; b=tt4NW5T3mnelcU
	9JJdB/6PrmkLkfzwCrHsJMg/wpVD98B+W74100tcod+5J6HZUs+mL6rFO21Oyp4nYoLWLm9GkU+Q0
	xW787KJHHcg6LQ9HylNB2U3HSSOL+gxwjyHuoDDwSmIp2BYxgsMHOof6O0K7XIW8iQfX6j3wghIW+
	zpLJXiIHvxUIVXAf+2j4JTYutljP+2bHcfYQ7OeJPiMdxTYIzzmfuVGSKE2AwgVOQqgNh8UE4ucNl
	OzE/BSShm08LEMypIRFkHs0nqei/gzF0VXYEXTaoqVYMai4f3UC2W4uErog6vIxfqDjViMMIoYdGS
	vhMAxUxWYRPt0CQ0C4TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pO0UL-003BUM-Gh; Fri, 03 Feb 2023 18:08:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pO0UG-003BTF-8x
	for linux-rockchip@lists.infradead.org; Fri, 03 Feb 2023 18:08:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5145561FBA;
	Fri,  3 Feb 2023 18:08:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84AD4C4339B;
	Fri,  3 Feb 2023 18:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675447714;
	bh=eSBFEKZ9mYQKLYeP8tZPLD9dNADnlwR/PbZRJOtDzGg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=KmLk967KW4Sq9pmrAh5BXjEOTRcENLJwW1dKNN806+T+2Mh/nDg8hh6r/qDJRieLJ
	 ABCdo2zz2ZegUsufDUnbSYUu+bO7kUcV27+4l8WbXGHKCFWhKMOahQhzSXgng+8ZD7
	 VvxZirrXybh4l0HdYIYOZjR6zw86De+nPeyRQrg2AWGmUgSSsuMyvuZfvS6KYkE14f
	 kmYEQIAAo4jPljXQsQzvVsVpTx1tv5RONFoDmCsyvfOHPuT2/E8vgGRX9h6AxJX7IP
	 1biA4wa3Q/heRK5K/4emAn8NObm9r6uTKGMg7MHpojobY04ij3UkRI/a1N+4/G3xKQ
	 ak7ZF8GkWs0MA==
Date: Fri, 3 Feb 2023 12:08:33 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Jingoo Han <jingoohan1@gmail.com>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [RESEND PATCH v2] PCI: dwc: Round up num_ctrls if num_vectors is
 less than MAX_MSI_IRQS_PER_CTRL
Message-ID: <20230203180833.GA2030884@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1669080013-225314-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_100836_428031_31282DC4 
X-CRM114-Status: UNSURE (   9.30  )
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

On Tue, Nov 22, 2022 at 09:20:13AM +0800, Shawn Lin wrote:
> Some SoCs may only support 1 RC with a few MSIs support that the total number of MSIs is
> less than MAX_MSI_IRQS_PER_CTRL. 

I'm not quite sure what this sentence says.  Maybe it should be split
into two sentences?

> In this case, num_ctrls will be zero which fails setting
> up MSI support. Fix it by rounding up num_ctrls to at least one.

If you have occasion to repost, please rewrap the commit log to fit in
75 columns.

Krzysztof or Lorenzo will likely fix this when applying otherwise.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
