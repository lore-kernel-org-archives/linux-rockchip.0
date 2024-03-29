Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08281C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 12:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=0rumUqUPuMng4ym6/Q0+kJQA6duNjK9cvQ8yFaop9s8=; b=p3PLO0SJ0DOWNg
	tqzkeMCsqg+6DL1Yu4cmFwZ9K9aua6rEVENq+5F6kYtC86cGVyZ6j6/97emGPEEvQyeAjHoCyh/k5
	u8Q1RPR0fZdiKBHXCgO4m8Xyj/1OsMAkmLkVlSCb277b0uuX3rynwQ3S3X8hsk5ROBoTC2u/tEbkg
	Tu6RTN3KJlJdVURqpwwC7uoajOX+j4W/j59gGSuoitOYiiTkMhruSATJC7N6s+v6VaYUBXanI4nat
	l06k23x/RMTTQDqYjR7JexLjOKlLHrkomNlYii8dGQmfIxl/FTKRqfdlYz0sbqblHbMBa1Lk6wV9l
	sFMohLL/ekVuZ/YwSHDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBS7-00000000OMQ-24SE;
	Fri, 29 Mar 2024 12:35:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBQq-00000000NZH-3KJa
	for linux-rockchip@bombadil.infradead.org;
	Fri, 29 Mar 2024 12:34:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:References;
	bh=PbxNxDGhhSM6r2fEtrxw4Rb4Oi1NZNuPkPjD4iAtpp4=; b=QyvuYyiTTL9vkb8ewvtHhIwakI
	JQdNmnxg1Ds/LuKMsGHQCE2pd3X0uqW8truIKRsCLtHtfQny/ajXDis7gQpSIw4KZO5FTDnmlGPUm
	lhgHb7TbTnkIXIsopqrJ6rVzYtgWQMrefxXdu07C56a1VHN8D84rMVZGpioWVFPzCW3TFxi/qCBFC
	0KuoDUnAWXdirqT04NK1GISFepuxw1b14bxVPYJ/efdjcdsHvRNsoVYN2imKctW/LAjT7VG2OF+jV
	BNEi6R5yHe8KeFsp10qjR31EIYgPBx0SQzuSi7HRghFfyQaemxLTt+bCGmiwrvCgbvhFS1VipgT77
	AktzhYvQ==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBQm-00000001YXs-0WfO
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Mar 2024 12:34:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5D3C861934;
	Fri, 29 Mar 2024 12:33:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB992C433F1;
	Fri, 29 Mar 2024 12:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711715617;
	bh=0t7MXM/aLNu5a23txLPE25mlHB94/qJWGAlsmICZDFw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=rCoS01yLhRpHwD3y+xUjTocfIjUpKz+FM2UZyiztDCo6bgH/jOeBctL4k8F28Mxu9
	 PoOTzHcMCAV3rXPpXgP/MoqLV4qsoCXP8Dkl9sVR9FHwdEmI806TJpQNFsj+0rvzFe
	 4OKWLO7PIXrFhnR4kUCIs4UpEl5SahkBf246+AoyfG5fqnfTYXakoA6fEgsjMZ6V7L
	 MiyWGnzwADiL3gOqXBaO3V4QcQP6S5ZgIZe6HDsLNAUmweYO2TZYSLdoxlpRImzD42
	 UEgcBoG3sS3XFYm8sM4/U5EcT8a5jgN3AEzYd3ecehz88fK5JRa3wz178rGE28W0a7
	 3neMCygCaWmtw==
Date: Fri, 29 Mar 2024 07:33:35 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 01/19] PCI: endpoint: Introduce pci_epc_check_func()
Message-ID: <20240329123335.GA1638817@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240329090945.1097609-2-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_123400_476289_E20DE31E 
X-CRM114-Status: UNSURE (   6.03  )
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

On Fri, Mar 29, 2024 at 06:09:27PM +0900, Damien Le Moal wrote:
> Introduce the small epc core helper function pci_epc_check_func() to
> check that an epc pointer, a physical function number and a virtual
> function number are all valid. This avoids repeating the code pattern:

Can you rename pci_epc_check_func() to something that suggests an
assertion that can be either true or false?  "Check" doesn't give a
hint about what a "true" return means.  Maybe "valid_func" or similar?

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
