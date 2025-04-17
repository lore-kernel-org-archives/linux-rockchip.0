Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09122C369C2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 15:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JrVIfMSZmdVHr81zQX86ZDj93w2ZaDZGnfdrpaai16I=; b=4Wcjxx+bJ/CL4r
	wR6eSLUnFJhqjNBMADMHQxDi00Ct26ipIbBhqDmmVUgKPfRjxb/kApwfoIVi/k9d2JxkPxDBGxKq6
	vmLpyMtvEdNK04SYnw85yVqMoFkNRebiMwhwhcQGPLPI6kQSe6EPmH8mFufyC5Q9VCntFV/PW6QbA
	ulmS9ZSxN4JLuFAH9YxErIVR0bv/GTNsIwQo7y53xleNX5vDYNJZYQEIacdkvtaS4G5VDhy8/tiLx
	iOK8cJXrRWhBTAB8xfcAE8trJiX6LOG5UYHVJhfxO1wOGnPiyLpMSGwsTR/VmnuPH/1kHld5KiqiD
	3kpoaCVbwcjlWyqSFYZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Qxs-0000000DSzc-42oc;
	Thu, 17 Apr 2025 15:15:44 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5QKv-0000000DL7m-35Dx
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Apr 2025 14:35:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 043A7A4B431;
	Thu, 17 Apr 2025 14:30:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 935E9C4CEE4;
	Thu, 17 Apr 2025 14:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744900528;
	bh=wnrScLvNMWAdpvl0Ot+SMpbyDyceQMrcNClqUjt96MY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OzA0qzRCBUy5GF6fE5vGg1MbVEUMJpKgv4P3BDwDb9eN+jZigMFCncUKnqtmrvSmn
	 8VDaGwAa3Q7cxyM6nCj/uE3NwVMA5XZbkiWeUIOcylsplj8BLQWnwNlJciLKLgOfRP
	 ywsebgp6msX8SIwA49ZT4YqdAHwGkDfKecTDvhAfjJKkvRiB74JYVHVzTFcU5P7PL8
	 SbK5KN/RPszB62Xv1OVy2H+Zf16LAkEDfqMThdp3RIx8HbbsmBHAHeVg6ZmWxjr2HB
	 J7/eFFGRxF0U/gg2iRdQkaeEknYgdpTKEh9a7F5YvQw7/IUP6WhrCHemWx6Jc/8fQG
	 7tyWIDX1C7f4w==
Date: Thu, 17 Apr 2025 16:35:23 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Add system PM support
Message-ID: <aAERqx6LNZpcv7KO@ryzen>
References: <1744352048-178994-1-git-send-email-shawn.lin@rock-chips.com>
 <Z_5aib0WGKfIANj_@ryzen>
 <8815983.T7Z3S40VBb@workhorse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8815983.T7Z3S40VBb@workhorse>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_073529_838394_C91A381A 
X-CRM114-Status: GOOD (  19.19  )
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

Hello Nicolas,

On Thu, Apr 17, 2025 at 03:24:34PM +0200, Nicolas Frattaroli wrote:
> On Tuesday, 15 April 2025 15:09:29 Central European Summer Time Niklas Cassel wrote:
> > On Fri, Apr 11, 2025 at 02:14:08PM +0800, Shawn Lin wrote:
> > > [...]
> > > +      rockchip_pcie_ltssm_enable_control_mode(rockchip, PCIE_CLIENT_RC_MODE);
> > 
> > Here you are setting PCIE_CLIENT_RC_MODE unconditionally.
> > 
> > I really don't think that you have tested these callbacks with EP mode.
> 
> Hi Niklas,
> 
> I may be reading too much into your tone here, but I think it'd be good if
> you didn't formulate this in such a passive-aggressive accusatory way. You
> can just express your concern as a question about whether this was tested
> with EP mode.

I provided a suggestion further down in the same email
(perhaps split the driver to RC and EP part like the qcom driver).

I also provided a further suggestion here:
https://lore.kernel.org/linux-pci/aADdI7ByEImYy3Pq@ryzen/
(perhaps do like the tegra driver and let the callback return -ENOTSUPP
if running in EP mode.)


> 
> After all, I'm giving you specifically the same benefit of the doubt with
> RC mode that has broken BAR resource mapping on RK3588 in timing-related
> ways in v6.15-rc that has already taken me about a day of unreliable
> bisects to try and track down, and may in fact end up bisecting to one of
> your recent commits touching that part.

It would have been nice if you waited until your bisect was done,
so you could have provided some facts, rather than speculation.

Nonetheless, may I suggest that you try with Shawn's recent patch:
https://lore.kernel.org/linux-pci/aACaupQvmiiBE29l@ryzen/T/#m5ec27d0ee4d2345dd4539385b3c7c8f6b98ee72e
which fixes the .link_up() callback.

The link_up() callback is used e.g. by dw_pcie_other_conf_map_bus():
https://github.com/torvalds/linux/blob/v6.15-rc2/drivers/pci/controller/dwc/pcie-designware-host.c#L622-L631

So bad things could happen if this callback is not implemented correctly.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
