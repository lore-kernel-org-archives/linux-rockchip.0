Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20DA1C54EED
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 15:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=mcrO0/NDXKtiTTPMIBhb6J9WJytF9n4mP4GNNpBiMC0=; b=tEsZqsYnkVsBbE
	9By3S8axf4E/f9krAkP6r+2J12BfXe+ZM7V8g4MsC8UCzRh4gqddaMY6x+zeCWZB2GMEtCvQ6uGHK
	8vIQ2I3d7/wi+WGlFKbFLUnFGvApPXh6WSQ75AnKtzRgYSV5jBoUz+BEC/u/Fkogh9Qe/588fe1Dv
	2WZjWtP69ycfyOrwU9TsiwanMV3EbbKWoha1dJJrhfVAOtU3TdsMbsRJfNpUZtLQbYEI824iEzHIM
	Bp7l8HYWh5DWAk+UdYV6lpJfyo8+Uze/RSYPXy9DSmoNtN6oMzMR6YI345s4mCM+BTNvD+2Bl/tJw
	yihGVnwqZLz+JmU0pNMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL4Vy-00Bbrm-AJ; Thu, 26 Jan 2023 15:50:14 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL4Vl-00Bbll-LX; Thu, 26 Jan 2023 15:50:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0A286B81E6F;
	Thu, 26 Jan 2023 15:50:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F9D5C4339B;
	Thu, 26 Jan 2023 15:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674748198;
	bh=tz37H93KJoXT7koLr1H4HT5GaXKxGQjDxvtFWm7fYOY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=jqXQMHePLVFSiJqj0BgbGZMSJfFzBNY1s6BwEQB8uiax+WOjHz0lV4186ZtQdvbU3
	 VlcXlHGw+7BSYxkQhOdJkzk5JGC3Sjei/OXUTgUyXuis2MgcgbNTcTFDhBGwtHsapv
	 BWjzD2QkPbh4tcAjQOAWHKvfEIc7v7GVmCAWqYo0dL1dMpif0lnkTtRgmiIgdyTYnv
	 HVwbngVuGhfvugMn/7DfKFiw47VQtQ6TJQaM9BwGmw6P3Q2Xitjm1qmI9trS1Atlk8
	 JJoBV0NzEojUnCR5P0ARoBsXnZYnZ7iK+BEISeiOB51RuC05DGjF6/mWBB0AUtiM01
	 iL+0jwwg2LTxg==
Date: Thu, 26 Jan 2023 09:49:56 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com,
	wenrui.li@rock-chips.com, rick.wertenbroek@heig-vd.ch,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jani Nikula <jani.nikula@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Mikko Kovanen <mikko.kovanen@aavamobile.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH 0/8] PCI: rockchip: Fix PCIe endpoint controller driver
Message-ID: <20230126154956.GA1278063@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAEEuhq9X0ppqTMp7fnZapbubf9k8xhH=u3gPva3hEpAdawK3w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_075001_945301_C8AF9867 
X-CRM114-Status: GOOD (  29.50  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jan 26, 2023 at 04:23:57PM +0100, Rick Wertenbroek wrote:
> Le jeu. 26 janv. 2023 =E0 15:52, Bjorn Helgaas <helgaas@kernel.org> a =E9=
crit :
> > Thanks very much for your work.
> >
> > On Thu, Jan 26, 2023 at 02:50:40PM +0100, Rick Wertenbroek wrote:
> > > This is a series of patches that fixes the PCIe endpoint controller d=
river
> > > for the Rockchip RK3399 SoC. It is based on Linux kernel 6.0.19
> > >
> > > The original driver in mainline had issues and would not allow for the
> > > RK3399 to operate in PCIe endpoint mode. This patch series fixes that=
 so
> > > that the PCIe core controller of the RK3399 SoC can now act as a PCIe
> > > endpoint.
> >
> > So we merged cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip
> > PCIe controller") when it actually didn't work?  Ouch.  Thanks for
> > fixing it and testing it.
> =

> It seems it wasn't fully tested, the code compiles and kernel module load=
s,
> but further functionality didn't seem to have been tested
> (e.g., lspci, and with the pcitest tool and pci_endpoit_test_driver).

OK, I guess that happens sometimes.  Glad you're getting it into
shape!

> Does this mean I should refer to the commit cf590b078391
> ("PCI: rockchip: Add EP driver for Rockchip PCIe controller") ?
> Because it wasn't working in the first place ?

Yes, I think so.

> Thank you for all the pointers, I'll take them into account for the
> next iteration. This is the first time I actually submitted a series of
> patches to the LKML so it's all relatively new to me.

Welcome to Linux, and great start!

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
