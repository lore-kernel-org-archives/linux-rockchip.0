Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CC11CEB2CA
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 10:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hIzhFBwtqVoRszkyJFhUEsD9Pccspx1SvLR1T7nfcM=; b=S2lhbAEbwodIfQ
	EVj64WyUvFOFJwoRvp7ePkFlO2fuISI5gzk1QoDGOTvGxIZHMaokziZpigN8dRZGw3clWrpvVS3kJ
	0Woyi7GX6NInBufnu25EnFUn7jXqspSen1ruLml9/Zb5Gof7b+3jE+xBmcb2gXwVtHDhowvtoIb4x
	8RO+6sSs63ieDFbXOQTSSxNWAJC9iiqzcs4EB4qwBoE/fxO8xFx8ha4EkH01+VK2QpEBi1SUUyL4i
	XnACCoKRft9Uitcp+e9/PxR5gzNPa8mtMhYTexZTB5H69Y1zjJ12dw3CgEodekOQrZJOVaDSqo5vO
	UDotazBRaPsOLc8TW6Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKD65-0000000DgPU-3d3k;
	Sat, 15 Nov 2025 10:01:34 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKD5y-0000000DgOR-3Rbk;
	Sat, 15 Nov 2025 10:01:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id EE6F040FDD;
	Sat, 15 Nov 2025 11:01:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763200883; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Z8ENjA1O7KsiohjnVwrpnU2+8wRrzBEXFU0FKDVm6Vs=;
	b=hegVytWfQX3nP/0CyzpqP7bgtbxhgrhc/nnXYmahru2+e65IfcdZ7lDUJ/Dpn6KnIVYtQC
	z1BZ3sf5qmY/ipJEFBiYcE0WO89reg2fyGeg+4vIjUa4krObEcZg5cnQZtIxVujq1oEwlB
	4LqCbXm0lE1Jugf4jhRCpxNcUJpcFDENBBduvKJSbfb3HrAseumPP/4mlByaqRGvXisxMH
	Vf73esieTh727fByzOtgII2VdPFPvBZ9buAeqA4IesUx+wfisGQBcaaqnTbPw2wWgk4ixG
	RkOTWnoPNa61s3p8uERWKgliME7y/PRPc/n5Nkmy1S0vnhXYz2yl5HPF1uyJAQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <aRhNIcGcQKp2ylqN@geday>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
 <b04ed0deb42c914847dd28233010f9573d6b5902.1763197368.git.geraldogabriel@gmail.com>
 <c8a6d165-2cdd-cd0d-4bed-95dfa5ff30d2@manjaro.org> <aRhNIcGcQKp2ylqN@geday>
Date: Sat, 15 Nov 2025 11:01:21 +0100
Cc: linux-rockchip@lists.infradead.org, "Shawn Lin" <shawn.lin@rock-chips.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Johan Jonker" <jbx6244@gmail.com>
To: "Geraldo Nascimento" <geraldogabriel@gmail.com>
MIME-Version: 1.0
Message-ID: <85d1543b-ea91-5f0f-59d6-e00fcf720938@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/3] =?utf-8?q?PCI=3A?=
 =?utf-8?q?_rockchip-host=3A?= comment danger of =?utf-8?q?5=2E0?= GT/s 
 speed
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-Rspamd-Fuzzy: 83c865715b7113a59b93546ee6a88838d4bbcab70d4a53f23333084f29fd2604053233ae0ec2379f12cfaacb3af815deb6e782a9b018734885047e902d4f57c0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_020127_049552_EBBEE117 
X-CRM114-Status: GOOD (  18.29  )
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

On Saturday, November 15, 2025 10:51 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> On Sat, Nov 15, 2025 at 10:30:49AM +0100, Dragan Simic wrote:
> > On Saturday, November 15, 2025 10:10 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> > > According to Rockchip sources, there is grave danger in enabling 5.0
> > > GT/s speed for this core. Add a comment documenting that danger and
> > > discouraging end-users from forcing higher speed through DT changes.
> > > 
> > > Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> > > Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> > > Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> > > ---
> > >  drivers/pci/controller/pcie-rockchip-host.c | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > > 
> > > diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> > > index ee1822ca01db..7e6ff76466b7 100644
> > > --- a/drivers/pci/controller/pcie-rockchip-host.c
> > > +++ b/drivers/pci/controller/pcie-rockchip-host.c
> > > @@ -332,6 +332,11 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
> > >  		/*
> > >  		 * Enable retrain for gen2. This should be configured only after
> > >  		 * gen1 finished.
> > > +		 *
> > > +		 * According to Rockchip this path is dangerous and may lead to
> > > +		 * catastrophic failure. Even if the odds are small, users are
> > > +		 * still discouraged to engage the corresponding DT option.
> > > +		 *
> > >  		 */
> > >  		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
> > >  		status &= ~PCI_EXP_LNKCTL2_TLS;
> > 
> > Looking good to me, thanks for this patch!  There's no need
> > to emit warnings here, because they'd be emitted already in
> > the rockchip_pcie_parse_dt() function.
> > 
> > Please feel free to include
> > 
> > Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> >
> 
> I disagree, I think the comment stands.
> 
> Even if we reduce to one line, ex:
> 
> + May cause damage

Ah, perhaps I wasn't clear enough, so let me clarify a bit.  The
comment you added is fine, I just referred to no need for emitting
a warning at that point, because it would be emitted already.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
