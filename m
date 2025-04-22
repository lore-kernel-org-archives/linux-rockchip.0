Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 561A9C369C2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 13:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5vx/1HQkgYSknxXGNUblnG0caamr0OCB2LKzT32+PY=; b=38DY7Z1IbUUW0/
	cbsCGfDhAr2ov7eBYB9RwRzsOvw9kEk53ItTdbaT6NeKNtaKKFQmaWTM9eGb2NXzhPSdOTU30wtLi
	8spuwU96axGki6hWyQrSHqp9cyiAuVnjO6Qo63oAod2GCgCTE1augdWaml7d0vLJtKr6SygATsHoL
	spXkyNDaBVgTsucX04XXnyDknN1ONgq3MDBapDzZ8Ro/WOXql44OmQogn044xuSYRq52pskhdVADP
	yPt7PoNHrkyX4BVqOVtmJpt/zTSyKWmvJBqZgf0DTaXf9pa1WhqsNWlKN/vLt1KsapMLTn4US27kb
	CujMrnFHl4XcqtnrF8Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7DWH-00000007GdB-46IZ;
	Tue, 22 Apr 2025 13:18:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Cfm-000000075j4-3qgf;
	Tue, 22 Apr 2025 12:24:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 39ECB61365;
	Tue, 22 Apr 2025 12:24:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D802C4CEE9;
	Tue, 22 Apr 2025 12:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745324661;
	bh=6lAJVPvmo2XgWRsTDsBUFYz7y/erMMDcUT4+f0mJuRk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r/m/uQvRqVetV4Wbr86FwQTCQCXiFVajeQr/1G7gINX+6c4hqaBo3jYN9hsvFg2Yi
	 Lry3kUT+H4E4quTSiaXZWQfcyjfBfEOULifEGrQIUkNYovEpD39EomESvEih2na2Ju
	 dEH9il/JO71ioD/9QZYKvISd2R+at9e4sVIoIpZvc7/CSnFdrHebzeP2X7/VcYTqm0
	 lQ46+RhSwOQ7bLN1w75FLKBFIwp/wgv4FPfCrEaCxleY23ZPvNF9xo4IiHuL91OuQw
	 2o5WOfuw1AlT8Sunjnk5Ir4ltfK22LUqJJTNtZ2tGLJoWsySvNQntcbO7LqaMunQUM
	 GFvhCTW/eUh6Q==
Date: Tue, 22 Apr 2025 14:24:16 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
	heiko@sntech.de, manivannan.sadhasivam@linaro.org, robh@kernel.org,
	jingoohan1@gmail.com, shawn.lin@rock-chips.com,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/3] PCI: dw-rockchip: Unify link status checks with
 FIELD_GET
Message-ID: <aAeKcEfyDS1ImynJ@ryzen>
References: <20250422112830.204374-1-18255117159@163.com>
 <20250422112830.204374-4-18255117159@163.com>
 <aAeAAhb4R8ya_mBO@ryzen>
 <7716b76f-be79-4ed1-b8d2-29258cb250ab@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7716b76f-be79-4ed1-b8d2-29258cb250ab@163.com>
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

On Tue, Apr 22, 2025 at 07:50:50PM +0800, Hans Zhang wrote:
> 
> 
> On 2025/4/22 19:39, Niklas Cassel wrote:
> > On Tue, Apr 22, 2025 at 07:28:30PM +0800, Hans Zhang wrote:
> > > Link-up detection manually checked PCIE_LINKUP bits across RC/EP modes,
> > > leading to code duplication. Centralize the logic using FIELD_GET. This
> > > removes redundancy and abstracts hardware-specific bit masking, ensuring
> > > consistent link state handling.
> > > 
> > > Signed-off-by: Hans Zhang <18255117159@163.com>
> > > ---
> > >   drivers/pci/controller/dwc/pcie-dw-rockchip.c | 15 +++++----------
> > >   1 file changed, 5 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > > index cdc8afc6cfc1..2b26060af5c2 100644
> > > --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > > +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > > @@ -196,10 +196,7 @@ static int rockchip_pcie_link_up(struct dw_pcie *pci)
> > >   	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
> > >   	u32 val = rockchip_pcie_get_ltssm(rockchip);
> > > -	if ((val & PCIE_LINKUP) == PCIE_LINKUP)
> > > -		return 1;
> > > -
> > > -	return 0;
> > > +	return FIELD_GET(PCIE_LINKUP_MASK, val) == 3;
> > 
> > While I like the idea of your patch, here you are replacing something that
> > is easy to read (PCIE_LINKUP) with a magic value, which IMO is a step in
> > the wrong direction.
> > 
> 
> Hi Niklas,
> 
> Thank you very much for your reply. How about I add another macro
> definition?
> 
> #define PCIE_LINKUP 3

Yes, adding another macro for it is what I meant.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
