Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81953EEB565
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Dec 2025 17:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+8XHvlDQ3gtdZIJmoMdTmjuz0gnCYtgGvSfWTYXdiA=; b=gfUHmgexeAu9Aw
	gZyWRV/BnwP4sNZZ0cVehhF/xbTNoJ4VPDjkrtTd2NnuJsQpNm4YtQ9fzmggYD3Pj2XAjEJrq1Nzh
	gl/awfPJKXcpoceoKBbHN+T/+QzWlazrwGJi1odVa2esFc/W0g+VTgVsXJzbKvN7yxAnDxJBF+HkO
	QoUNMQOOEemU0IMBd2i5Q3G0k+rPuM4IodAWQOZAYQYaN+895ZYP+3zlkd7obhQX3DMBoE+zpJCgj
	dd+YyjbqKdUzjT/AjOReyTej03vuEVzgF+8W6HSlRWdo0tXCTvbPDGusrTEjxMI1QzcZk7F+YRXHi
	aRR7a5gemY3l31/iVVaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vb052-00000006CUK-0rK1;
	Wed, 31 Dec 2025 17:33:52 +0000
Received: from out-187.mta1.migadu.com ([95.215.58.187])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vb04y-00000006CTr-2jaF
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Dec 2025 17:33:50 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1767202424;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=152GR3bpCkA4edsFB/mhHCnTqy+h5Kh1YyF59UsoHYI=;
	b=XW5/xx9AeHfZWmeTvOCRcxRXv2ZTuRxLTSs7/g1QZzue0w9tJmLPm72NdIqmPMRyDOOjvG
	dFDdtVt76pTua9SYE+iAD40KYkoYY3fKm60luRp2LKyzFqu8aNV7LVE1SZa9SvoHOKv5Jr
	69760ZYS4hWuv5QIzgzbAcBm0bhHHI/b/XoRvUpfdnTBTaHQaral4qxfRGBUnrse9wc3Rw
	llNM1K2GtGvXVB9Eqkeho5iH7aAP5HGCeouorozxxKWww3DXvVNOschi+a14ZQY++yty2d
	q5CAHQiVjgO4GDiY1RMeFZQOQwEEaWRUwbQmX5I0BNtY9lDuYl8yILzpLlHWow==
Date: Wed, 31 Dec 2025 18:33:34 +0100
Message-Id: <DFCKZ1I7C83G.1DUX9IT96CYZ3@cknow-tech.com>
Cc: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Huacai Chen"
 <chenhuacai@loongson.cn>, "Huacai Chen" <chenhuacai@kernel.org>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <stable@vger.kernel.org>, "Shengwen Xiao" <atzlinux@sina.com>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] USB: OHCI/UHCI: Add soft dependencies on ehci_hcd
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Alan Stern" <stern@rowland.harvard.edu>, "Diederik de Haas"
 <diederik@cknow-tech.com>
References: <20251230080014.3934590-1-chenhuacai@loongson.cn>
 <2025123049-cadillac-straggler-d2fb@gregkh>
 <DFBMNYF0U5PK.24YOAUZFZ0ESB@cknow-tech.com>
 <73d472ea-e660-474c-b319-b0e8758406c0@rowland.harvard.edu>
In-Reply-To: <73d472ea-e660-474c-b319-b0e8758406c0@rowland.harvard.edu>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251231_093349_284582_FD576C40 
X-CRM114-Status: GOOD (  31.51  )
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

On Tue Dec 30, 2025 at 5:42 PM CET, Alan Stern wrote:
> On Tue, Dec 30, 2025 at 03:40:27PM +0100, Diederik de Haas wrote:
>> On Tue Dec 30, 2025 at 9:15 AM CET, Greg Kroah-Hartman wrote:
>> > On Tue, Dec 30, 2025 at 04:00:14PM +0800, Huacai Chen wrote:
>> >> Commit 9beeee6584b9aa4f ("USB: EHCI: log a warning if ehci-hcd is not
>> >> loaded first") said that ehci-hcd should be loaded before ohci-hcd and
>> >> uhci-hcd. However, commit 05c92da0c52494ca ("usb: ohci/uhci - add soft
>> >> dependencies on ehci_pci") only makes ohci-pci/uhci-pci depend on ehci-
>> >> pci, which is not enough and we may still see the warnings in boot log.
>> >> So fix it by also making ohci-hcd/uhci-hcd depend on ehci-hcd.
>> >> <snip>
>> 
>> FWIW, I've been seeing this warning on several of my Rockchip based
>> devices as well. ... but the last post also had this:
>> 
>> ```
>> I checked the last 20 boots on my devices to see that warning (or not).
>> Device				Number of times that warning showed up
>> Rock64 (rk3328)			16x
>> RockPro64 (rk3399)		11x
>> Quartz64 Model A (rk3566)	 7x
>> Quartz64 Model B (rk3566)	14x
>> PineTab2 (rk3566)		17x
>> NanoPi R5S (rk3568)		13x
>> Rock 5B (rk3588)		12x
>> ```
>> 
>> While I generally don't like seeing warning messages, it often also
>> resulted in USB2 ports not working. Maybe even every time, but I only
>> notice it when I actually tried to use one of the USB2 ports.
>> 
>> The first post mentioned what I 'assume' to be the problem:
>> ```
>> CONFIG_USB_XHCI_HCD=m
>> CONFIG_USB_EHCI_HCD=m
>> CONFIG_USB_OHCI_HCD=m
>> ```
>> 
>> So I guess USB_EHCI_HCD doesn't work with '=m'.
>
> Not true, it really does work with "=m".

I shouldn't have stated that before I fully investigated it.
I do plan to change my kernel config to make it "=y" though.

> And in fact, your systems should work even if the modules are loaded in 
> the wrong order.  The issue is that doing so can cause a brief 
> interruption in the existing USB connections when the ehci-pci module is 
> loaded.
>
> If your systems don't use PCI for these host controllers then I don't 
> know how they would behave.  The issue is: How does the hardware route 
> low-speed and full-speed USB connections to the different types of 
> controller?

One of the issue is that I don't (fully) understand how this (should)
work. F.e. I wondered about all the PCI 'references' in your explanation
(thanks for that :-)).

I (also) wondered why the number on Quartz64-A was lower, but that
actually has a PCIe slot ... with a USB3 controller card in it.

If I do ``lsmod | grep pci`` on my PineTab2, I get zero hits, but I do
get hits when doing it on my Q64-A.

On my Rock 5B, I get 1 hit, "phy_rockchip_snps_pcie3", but that has a
NVMe drive connected to it. And I have a (working) keyboard connected
via a USB2 port. And/while I do have the warning ...

Cheers,
  Diederik

> On PCI systems, when ehci-pci isn't loaded, the hardware routes all 
> connections directly to the companion UHCI or OHCI controller.  When 
> ehci-pci is loaded, the hardware routes connections to the EHCI 
> controller, and when the driver sees that a connection isn't running at 
> high speed (480 Mb/s), it tells the hardware to switch the connection 
> over to the companion.
>
> So if a low-speed (1.5 Mb/s) or full-speed (12 Mb/s) device is connected 
> before ehci-pci loads, its connection will get routed to the companion 
> controller.  Then when ehci-pci loads, the connection will be switched 
> over to the EHCI controller, which will cause the existing connection to 
> be dropped.  Then the connection will be routed back to the companion 
> controller, but it will be perceived as a new connection, resulting in a 
> brief interruption in service.  For many devices this won't matter, but 
> for some it might.  The only way to avoid the problem is to load 
> ehci-pci before uhci-pci and ohci-pci.
>
> (A similar problem can occur with high-speed-capable devices.  When 
> initially attached to the companion controller, they are forced to 
> connect at full speed.  But when the connection is changed to the EHCI 
> controller, they are able to run at high speed -- and again, the result 
> is a new connection, causing service to be interrupted and then start up 
> fresh but running much faster.)
>
> Alan Stern


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
