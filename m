Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9F2AC5B569
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 05:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7Hh5Eh8/6ubeTnWrWMNHkAn013V1f7SfiDrJfbKeZI=; b=RA3ss+VqYUBgr2
	77sv6sZlrJ77QIq2cJQsN1yGyFlAeHrP2mGf21gAUdWtRLmw56nKJAokb9CUtPbslKf780oQfOMpV
	34YrIufMRfyNUz7V3IL7f6ybzCL8WYWP8x/rokqcylfLc/5i9oDsaZB/aN0Pzyp+mlPHGtyVHHRf8
	6jl03s35mDD+WDcxNlO6cjEa+EoGqYq/d1jbuTfYg2iIDtlxdMxIiqQeYKabkdQ4rRv0xrvmiIRhA
	8O35HLd2VrMIrK05YcbrUIrRNeQYdyrIoALGXVv7fxu/W2CA2znevBvTH2wtkAb9Np/JZBCL+K9rt
	Jx3VxxOz5bfCAiD0rc3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtfPr-0000000DLZK-0Bwh;
	Tue, 11 Aug 2026 05:52:47 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtfPo-0000000DLYZ-12mF;
	Tue, 11 Aug 2026 05:52:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 88632600AD;
	Tue, 11 Aug 2026 05:52:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 436351F000E9;
	Tue, 11 Aug 2026 05:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786427563;
	bh=RoHt8I8oDs8GqSb7bHRfcwB/Dfr54MBmMPMgkF3/JOk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BSeAxHxZuwXbkLax//y/bgPNyiE6ABIV2B9PxTwevZxeuYoXfqzU0eMXhC5UQL44z
	 B+DF/7msEPGzclMnyeTQhKApXlexbtN6/f0AQek+5t8K3yXUZOkBBWkeOLQcfTfnQC
	 +iiv/Qjm15GXc94hwaUzZZBbvtWnPNlIjxlo6HClHDsv3gIs89C9GdlPQQsAmzdLOz
	 OsSqssKh4IUzCLXSyfapY7P19zJyjSFRpTIQx+UEcqjoB+1ecSovx0Jo+eakTfc2ya
	 bH/dQFZCo/YiPnCJsa0OkqGMDF0a7GTxYeoxr99dbhnVWEAbFvjt7QMYo2zVK380Gn
	 UFGcHH8F/+U+w==
Date: Tue, 11 Aug 2026 07:52:34 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Fan Wu <fanwu01@zju.edu.cn>
Cc: Bjorn Helgaas <bhelgaas@google.com>, shawn.lin@rock-chips.com, 
	lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org, heiko@sntech.de, 
	dlemoal@kernel.org, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] PCI: rockchip-ep: disable link training work on remove
Message-ID: <of32vj6w52rwcop7wn7vi3rh6o7im2wkbds6icp3mapxf5nzrt@efoivwhiltvd>
References: <20260811025315.136998-1-fanwu01@zju.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260811025315.136998-1-fanwu01@zju.edu.cn>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBBdWcgMTEsIDIwMjYgYXQgMDI6NTM6MTVBTSArMDAwMCwgRmFuIFd1IHdyb3RlOgo+
IFRoZSBlbmRwb2ludCBkcml2ZXIgaGFzIG5vIC5yZW1vdmUgY2FsbGJhY2ssIHNvIG9uIHVuYmlu
ZCB0aGUKPiBsaW5rX3RyYWluaW5nIHdvcmsgY2FuIGtlZXAgcnVubmluZyBhZnRlciB0aGUgZGV2
bS1hbGxvY2F0ZWQgZXAgaXMgZnJlZWQsCj4gY2F1c2luZyBhIHVzZS1hZnRlci1mcmVlLiAgQWRk
IGEgLnJlbW92ZSgpIGNhbGxiYWNrIHRoYXQgZGlzYWJsZXMgdGhlCj4gd29ya2VyLgo+IAo+IFRo
aXMgaXNzdWUgd2FzIGZvdW5kIGJ5IGFuIGluLWhvdXNlIHN0YXRpYyBhbmFseXNpcyB0b29sLgo+
IAo+IEZpeGVzOiBiZDZlNjFkZjRiMmUgKCJQQ0k6IHJvY2tjaGlwLWVwOiBJbXByb3ZlIGxpbmsg
dHJhaW5pbmciKQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gQXNzaXN0ZWQtYnk6IENv
ZGV4OmdwdC01LjYKClRoaXMgTExNIHRvb2wgc2hvdWxkJ3ZlIHRvbGQgeW91IHRoYXQgeW91IGNh
bm5vdCByZW1vdmUgYQpidWlsdGluX3BsYXRmb3JtX2RyaXZlcigpLiBTbyB0aGlzIHBhdGNoIGlz
IGVzc2VudGlhbGx5IGFkZGluZyBkZWFkIGNvZGUuIFNvCk5BQ0suCgotIE1hbmkKCi0tIArgrq7g
rqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
