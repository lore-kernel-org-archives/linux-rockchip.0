Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D86EB105A58F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Mar 2026 11:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Cc:Subject:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ESgwo3/i562bHeOnhkmQQjZsCZBXGJ7DYkAiDO1rj/k=; b=0roHnyQ0qYWmOX
	qDHmTc3iynM25osEclYbxo/1ekdExZMuVTAvaD8ZjEBTtn0F+9cDqnKT/HBQJGwooh2oHHf4sLwic
	z4GEIP7NUjPe3P+KeP3T+9I0g9mTUNyvCayOmxq238q3B+KiOyQYz0C98NqPDcv5ykL6ruIIGjlca
	sd5m3/yaYOMNtPAhyxj5sUvEHvAwKd8ZqrgcVWPO4evhovAcD4L77Ow9OypbouOksBVewFs4fdE3X
	rzWHHt1U8xrhGsqtv4sMK9THb6Nc95YPRwdLq+6cU5h02K1DV7zsCd8b9RmR/a/JNp9ttl7WtjtE9
	GI3bcg9DyIDnxF0sXo9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0ecM-0000000DzPW-2JSk;
	Thu, 12 Mar 2026 11:54:18 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0ecK-0000000DzPB-0nwt;
	Thu, 12 Mar 2026 11:54:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CC1F960137;
	Thu, 12 Mar 2026 11:54:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38699C4CEF7;
	Thu, 12 Mar 2026 11:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773316454;
	bh=GFgJm7FJgsQRl61HV8czMQRDpf/YqHn7PSxSflvCbMI=;
	h=Date:From:Subject:Cc:To:References:In-Reply-To:From;
	b=nPH8TnCUL2kGIzTtgZZ4CYLQNNDXeLRqR+eRjCqbkYzyaVYo+BzsmW65nokTqHm7t
	 /WgvdkNolDn69vhIA/RhnJwgZ52d+xXM0Z6XNsXvMuI0GvWaIfmgaPWjU6nnYYf+IV
	 KBeUJjEE2UQkXXf8at7zV+SRKgL98rMZqhtLe0nVZo5aTD5KqJLk7m/jFtbrXNl7TM
	 olGrnunrzqweWBBNvTrusH+J2YjY4eo4eBR8PehH9HSPAvhUr59kusRMYL9aPZ3ltV
	 kPULJxd3k+PIe32DfSTDTe1tjuYpMlJUpQrLuTPhr74CEzfWEFJ9ie7+N8di+nOVJr
	 xX3CZ2bCD/tSQ==
Mime-Version: 1.0
Date: Thu, 12 Mar 2026 12:54:07 +0100
Message-Id: <DH0S7TSFKDJV.2YPSBH9F142LL@kernel.org>
From: "Danilo Krummrich" <dakr@kernel.org>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
Cc: "Shawn Lin" <shawn.lin@rock-chips.com>, "Manivannan Sadhasivam"
 <mani@kernel.org>, "Robin Murphy" <robin.murphy@arm.com>, "Manivannan
 Sadhasivam" <manivannan.sadhasivam@oss.qualcomm.com>, "Lorenzo Pieralisi"
 <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas"
 <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>, "Niklas Cassel"
 <cassel@kernel.org>, "Hans Zhang" <18255117159@163.com>, "Nicolas
 Frattaroli" <nicolas.frattaroli@collabora.com>, "Wilfred Mallawa"
 <wilfred.mallawa@wdc.com>, <linux-pci@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Grimmauld" <grimmauld@grimmauld.de>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 <driver-core@lists.linux.dev>, "Lukas Wunner" <lukas@wunner.de>
To: "Anand Moon" <linux.amoon@gmail.com>
References: <20260226101032.1042-1-linux.amoon@gmail.com>
 <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
 <87bc37ee-234c-4568-b72e-955c130a6838@arm.com>
 <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
 <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com>
 <qwanhqrpztzkudik5fmberhabnzaly7v53677dohqzj5nq4wi2@6ndpiubyxcbi>
 <DGZXF3LPSRK6.2QYN63QTKUQAX@kernel.org>
 <cp5uktfqdf6zs53qsye57ior2ikmssgevxxdtevkzpisaif22h@7mrxspkuibow>
 <DH09EDBW3X6T.2996UB1CFCAW2@kernel.org>
 <7b5592e7-8a9d-2cf0-bb3e-e306a6337165@rock-chips.com>
 <CANAwSgTaZqsHYXD_ACkJGGLgk4knc7N72f4qrJaaenE-cXM8BA@mail.gmail.com>
In-Reply-To: <CANAwSgTaZqsHYXD_ACkJGGLgk4knc7N72f4qrJaaenE-cXM8BA@mail.gmail.com>
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

On Thu Mar 12, 2026 at 12:40 PM CET, Anand Moon wrote:
> I've reproduced the issue on my end. Following Danilo's suggestion,
> I used PROBE_FORCE_SYNCHRONOUS to resolve the warning.

I did not propose to add PROBE_FORCE_SYNCHRONOUS, I just noted that we should
not force all subsequent drivers into async probe() by adding
PROBE_PREFER_ASYNCHRONOUS before the issue is resolved.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
