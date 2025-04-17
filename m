Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8895CC369CF
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 13:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zVFBDJygNliUbCoE8BOag7pZNz6nnQveBKFLUpoQYRA=; b=xgdHhIpts3wk1t
	pst+Fca4GDhl+l2XNCDjRbqqd4CvsHBXNh76Azb6ABqTimE0bIBtrr5FIstV3E0YTWCzTLKxSlDIS
	mRZjnUXhPgHxaec8vPZT6ZjENvrPlGKsWM8LmUygN0T3Uq60ujxJ5JP8faQeLH1jrA9tQ8Hlcx4cT
	IRsdS0FMa/lYwuwUAhYIuMA0g4a9znFeYVebPfEcMjY8dRywDI60MZM5ZHCZFgN4an9yq2ESPK3og
	jiBAzfILPS470fVj7lwF+vc4xZnlcalVt7OP/lDUw9Rim7i+foi8lxj15cGNaXjLHNnKum2TOANTZ
	PrHv/5JVsRNffMSr7pPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Pbd-0000000DCME-1I44;
	Thu, 17 Apr 2025 13:48:41 +0000
Received: from sender3-op-o12.zoho.com ([136.143.184.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5PEz-0000000D94t-2X2s
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Apr 2025 13:25:18 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1744896281; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=YAmwjfcVx6oWeXIlV6PGnxiPWIz9cGSHql1PaH1BddCIt+Rdv/M5nMIsXhz46mehEWVse6RUGTsHkCTdUVTqr/o3TxDWpo2EOvYL/EmezmWtKbt97pWtajhBU7OFQB6+huGRexlOjpA8OrFJumN9Xjp02JSzeqf451KAXWS4d+0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1744896281; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Ayh36aU37peKqpZXlZgTNqposmDRisWCEwR5u33oTrQ=; 
	b=JQ+tv3lgH37E6MqdKPKGEy3GDUB+RzMddP+uSptWMfjAaIahva/z9gyVdM20LJoLQt4A36gXt1RwiTcr007V1ptJxfsHywteRDLdEcD8c4TRv6J5kmD0F3aPDcC1yRhwO+I0lAuxKufA+gRv5kEx0FjwnA2F/GjpvQGu9PYx2Q0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1744896281;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=Ayh36aU37peKqpZXlZgTNqposmDRisWCEwR5u33oTrQ=;
	b=GMO0DfTGL/gkCxhxrrrVE95dpQvS5S+K+uscs/WH9tnvcj6/FJK6+H0hPJSJ+Akt
	aHG3KmRqRfMz21Z18WqC82wAWaWs6x19eOkBMhrFQ7OIdeEs+7qv2DyeNX0L8JsXhEi
	C6Vpc46OWPHE0XmdthDDPowEIFulBx+f17G0CvHc=
Received: by mx.zohomail.com with SMTPS id 17448962784846.708394728524695;
	Thu, 17 Apr 2025 06:24:38 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Add system PM support
Date: Thu, 17 Apr 2025 15:24:34 +0200
Message-ID: <8815983.T7Z3S40VBb@workhorse>
In-Reply-To: <Z_5aib0WGKfIANj_@ryzen>
References: <1744352048-178994-1-git-send-email-shawn.lin@rock-chips.com>
 <Z_5aib0WGKfIANj_@ryzen>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_062517_713404_B8473BCB 
X-CRM114-Status: GOOD (  13.17  )
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

On Tuesday, 15 April 2025 15:09:29 Central European Summer Time Niklas Cassel wrote:
> On Fri, Apr 11, 2025 at 02:14:08PM +0800, Shawn Lin wrote:
> > [...]
> > +      rockchip_pcie_ltssm_enable_control_mode(rockchip, PCIE_CLIENT_RC_MODE);
> 
> Here you are setting PCIE_CLIENT_RC_MODE unconditionally.
> 
> I really don't think that you have tested these callbacks with EP mode.

Hi Niklas,

I may be reading too much into your tone here, but I think it'd be good if
you didn't formulate this in such a passive-aggressive accusatory way. You
can just express your concern as a question about whether this was tested
with EP mode.

After all, I'm giving you specifically the same benefit of the doubt with
RC mode that has broken BAR resource mapping on RK3588 in timing-related
ways in v6.15-rc that has already taken me about a day of unreliable
bisects to try and track down, and may in fact end up bisecting to one of
your recent commits touching that part.

> 
> If we look at pcie-qcom.c and pcie-qcom-ep.c, dev_pm_ops is defined in
> pcie-qcom.c, but not in pcie-qcom-ep.c.
> 
> Perhaps it is starting to be time to have two separate drivers also for
> rockchip?
> 
> [...]

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
