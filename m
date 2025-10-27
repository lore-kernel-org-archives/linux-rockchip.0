Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19B31CCF9EA
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 10:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=exdOmx8AwBDgen9CCXNZBAoULV0YCv0J+iQ+QFOgt8Y=; b=cajDYeaCCJW74k
	JLMlwYjuCM5aFfO/gNmYDYITGuOWFEPB78EVebbN3dLmwa7oxh/XsLunGw/2BrAC5cZ6gUQf0yq+6
	pFhwuBSnkys8zH/H59lH1bh5SlUnwuxyDm1tk4npNXH/bMK6lusESBeyWqwjoZd8rJIF2QMintZpn
	qTxEGuiuXVZCOhpIz6ZCWhLIbxr4M//QpQReXDOvBgC7WtV99rktfkjQlSP8oNiYIv+3ndb4jQLlc
	GgFlx4CqB2naKz8VPnskamS8AcDsHHglHy8LaLB8SH/eV2OV/MPADf9lk+e2qh/pmy3itf2JD2sdP
	AJQ1EnB4xXv4SUOLzHSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDK1x-0000000DbtP-24W4;
	Mon, 27 Oct 2025 10:00:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDK1u-0000000Dbsm-3azl
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 10:00:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8488E440F0;
	Mon, 27 Oct 2025 10:00:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 630C5C4CEF1;
	Mon, 27 Oct 2025 10:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761559246;
	bh=g9zJBVbnGEA4HG5ooeAzLqX41v1JBzQYQqje6z0ZFx0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FjOEetGk9z+CDj6SBDLC3q333GF293fQKVJYDxwd4mFRcpbAl5zochz9FDKgGXH41
	 C5NRL9OOCswq2yBRA6VHx3wscWweZ5DCaKaPIH+HHx/G4CaumZAeuXnNr02lCnLaNt
	 0u3Q6m6HIXhBzojPGbamjXnF6syyixBeTP2ELdZIXKF57uNaQ4j+zkFqL2yE/ntjp9
	 YuDgQWShi2tiOWYKMe9d7vS/L8nUsx7hVtEztKXt23ww/a9+ruGWrVBgoz+xQ8oMH/
	 0bpfLGMt0Aw25SodjvjPRL/V98oy3OoGYxOsN+ts241fDcOxW4UNcSoWjMtbFF1lEx
	 Ykf+RTgh70YQQ==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vDK1w-000000006Yg-38Bu;
	Mon, 27 Oct 2025 11:00:49 +0100
Date: Mon, 27 Oct 2025 11:00:48 +0100
From: Johan Hovold <johan@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linux-pci@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Christian Zigotzky <chzigotzky@xenosoft.de>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dragan Simic <dsimic@manjaro.org>, linuxppc-dev@lists.ozlabs.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Bjorn Helgaas <bhelgaas@google.com>,
	Shawn Lin <shawn.lin@rock-chips.com>, Frank Li <Frank.li@nxp.com>
Subject: Re: [PATCH] PCI/ASPM: Enable only L0s and L1 for devicetree platforms
Message-ID: <aP9C0H_2XVk6MiLV@hovoldconsulting.com>
References: <aPuZQRaTN2tAwkb5@hovoldconsulting.com>
 <20251024203924.GA1361677@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251024203924.GA1361677@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_030046_937929_2A1BC41C 
X-CRM114-Status: GOOD (  27.13  )
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

On Fri, Oct 24, 2025 at 03:39:24PM -0500, Bjorn Helgaas wrote:
> On Fri, Oct 24, 2025 at 05:20:33PM +0200, Johan Hovold wrote:
> > On Fri, Oct 24, 2025 at 05:12:38PM +0200, Johan Hovold wrote:

> > > Note that this will regress ASPM on Qualcomm platforms further by
> > > disabling L1SS for devices that do not use pwrctrl (e.g. NVMe). ASPM
> > > with pwrctrl is already broken since 6.15. [1]
> > 
> > Actually, the 6.15 regression was fixed in 6.18-rc1 by the offending
> > commit, but pwrctrl devices will now also regress again.
> > 
> > > Reverting also a729c1664619 ("PCI: qcom: Remove custom ASPM enablement
> > > code") should avoid the new regression until a proper fix for the 6.15
> > > regression is in place.
> 
> Help me think through this.  I just sent a pull request [2] that
> includes df5192d9bb0e ("PCI/ASPM: Enable only L0s and L1 for
> devicetree platforms").  If all goes well, v6.18-rc3 will enable L0s
> and L1 (but not L1SS) on Qualcomm platforms.
> 
> IIUC, if we then revert a729c1664619 ("PCI: qcom: Remove custom ASPM
> enablement code"), it will enable L1SS again, but since this is done
> in a dw_pcie_host_ops .post_init() hook, L1SS will only be enabled for
> devices powered on at qcom-pcie probe time.  It will *not* be enabled
> for pwrctrl devices because .post_init() was run when those devices
> were powered off.

Correct.

> I think this is the same as in v6.17.  v6.18-rc1 enabled L1SS for
> everything, including pwrctrl devices, because it was done in the PCI
> enumeration path, not the host controller probe path.  I think that
> enumeration is the right place to do this, but we need to figure out
> how to do it in a generic way.  At a minimum, we need to know that
> CLKREQ# is supported, and some platforms like dw-rockchip also need
> device-specific configuration [3].
> 
> Bottom line, I think we need to revert a729c1664619 for v6.18 to get
> all ASPM states including L1SS enabled on Qualcomm platforms for
> non-pwrctrl devices.  I'll post a patch for this.

Right, that would at least restore the 6.17 state of things with respect
to Qualcomm machines.
 
> Then try to figure out how to make this work for pwrctrl devices for
> v6.19.  Does this sound right?

Yes, unless you can come up with a simple way to enable L1SS during
enumeration on Qualcomm platforms, for example, using a driver callback
that returns true for platforms using the 1.9.0 ops to indicate that
L1SS is supported. That should address also the 6.15 pwrctrl regression.

Johan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
