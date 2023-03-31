Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5729BC76196
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 13:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSHPHuyR1e/7MvConIJNf0KFphWJjlVZftB9ZuEF2Rg=; b=Rw1+KFY90VTU27
	mP6SkxARBAY5t/+O6RhbO492oJOZzmV+IAS3eM4wJ0Xqc2zsOFktNTBPqkPoD4Dm4M26Kal1PVjgk
	kps12szt2u/NEwt3rXOjYqC/o4mtg10acasexNLEdMJc8swY2uutl2GEz/nqWKkQXt3u3N6s8Y72a
	m8Z0WVSohlldeIZoJDT6VBuGwoqLiN4KYwxOElYY+0+ZuroiSRsb1KwSh1NVD28+2vB2sWGVz3Ixh
	MTgLoxsaadphUdlaTwGd3d3z2koBTdXm5egakYcK4hK/W7IVVTXPcjbFKIHs5ULHS1h/8K1IE8twT
	sQuEb9gvN3ZRGnVFOU0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piFET-007byy-0i;
	Fri, 31 Mar 2023 13:55:57 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piFEO-007bxg-0n;
	Fri, 31 Mar 2023 13:55:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6394162956;
	Fri, 31 Mar 2023 13:55:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1C89C433EF;
	Fri, 31 Mar 2023 13:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680270950;
	bh=AY4Vj7brLyfc8mcHlnnDPBFL372vQ2K2Eu+eeiVFgEc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mn5KEzt/zCHEHjmI1CMRw3yZ1ctrvM5Ac8vZBVgsk8xYO60grS+Q2I7AfPIAtkWtf
	 SW/1CgV9R5XYxmRjAP8xCBQsIUatgHNh6CSQJECXrKCkxt9cDwyt+xhPcAQ5op9ZPY
	 NrppV+jiIEyWVYgQWEvPjDFX1tfkt2ejAOFNJwQLxVAqM38NpRw4EUwTWBCXQQKQpa
	 9QnqmvSgyyWWtRLCzG6iicIQmTrYGbkJYkh70Na/atT5F1lh5rSv6JHmgTvhMzSUX0
	 MUah5n6UGpei2jSCDxPvlVkE+uoaq8KUyCk+r9PQiEZQtiBm9lkZCUScsnukO70UsM
	 2GUra5cMhUKvQ==
Date: Fri, 31 Mar 2023 19:25:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Lucas Tanure <lucas.tanure@collabora.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Qu Wenruo <wqu@suse.com>,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCHv2 0/3] Add PCIe2 driver support for Rockchip
Message-ID: <ZCbmYqvRTRbKw8wj@matsya>
References: <20230314135555.44162-1-lucas.tanure@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230314135555.44162-1-lucas.tanure@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_065552_324419_2BD3CC8C 
X-CRM114-Status: GOOD (  12.31  )
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

On 14-03-23, 13:55, Lucas Tanure wrote:
> I am assisting with PCIe and networking bring-up for Rock Pi 5B (RK3588).
> We sent this series a few days ago:
> https://lore.kernel.org/all/20230310080518.78054-1-lucas.tanure@collabora.com/
> 
> >From that conversation we decided to send patches for Rockchip that don't
> require GIC/ITS implementation. We will send that in a separed series.
> Making easier for reviews and unblocking patches that don't require
> GIC/ITS implementation.
> 
> This is work based on prior work from XiaoDong Huang and
> Peter Geis fixing this issue specifically for Rockchip 356x.
> Plus comments of Robin Murphy about Non-Coherent properties.

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
