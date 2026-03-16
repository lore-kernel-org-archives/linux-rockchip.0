Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9885DF506C6
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Mar 2026 12:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=96Mw3YVvgFqk/eCJA120x5eXzYF/cj+/57I99ZJ7fLs=; b=tpZJvbj+cV8miA
	nN4Fy7U/aqrU+AZKAJpkpI4sq88pI5DuW2ZVneQEBO/u8+Y2FvBLuFgUeUetvOEjdJrM7ib51JobD
	5kbzdYKgrc4HX8E2tEUbCYC3AE7iWx4KDBJkX+grFCisqQJVv/RKfZqcd9hSpk+3168M9GzhIBm6a
	wbjCRsPSebxJm3aRAfngvPnxqFPheEYg/QJYxE8pBb6zzVvzBRRRS/oN81xrVor+J0jyrnrJvjpBN
	dP2cYAdxT4o+TD3KbzYMwU/nqCpBHKHBso4ReV1g6ClY0bwstwoBN7KqS5W5mQpZwAIIudwO0jPF3
	luohrADnXMvUFdSFItSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w27Vu-00000003zIj-2LmH;
	Mon, 16 Mar 2026 12:57:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w27Vr-00000003zHd-0Ylq;
	Mon, 16 Mar 2026 12:57:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 03C9440433;
	Mon, 16 Mar 2026 12:57:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D31AC19421;
	Mon, 16 Mar 2026 12:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773665857;
	bh=tzu+r2qc7wCfm8REikgVroUxtUjdMAAfjpIXLK3YodM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uQlhNjPnw/+sGK8GvTKCPoZUhDhYl44fzqlqWrftUDqeMtbvxoKYn2T6C/RVS+Ust
	 HK4Sw1FIffQBntafCLNjcpjmc2NeKQo5v8vL38/ERGybt1eC0kCQY6Zo/Qt5nU/QqU
	 15917IM/CEEWtpSG2iaw10u6phrNYX+YompvRt4EH7CrUaSEunPRgLzlaoy4kvXgf3
	 /cwtGWUo2f1P4U0AwsmUGEWOrOvjjNdkKWFvwebPQDGNC0mCP9S2MBe/YWLl/VM69B
	 269nAYZTQ3aThTX02S784XZH1qs1uKwt64gHF//3klHmNmcuFfYE/EhQXfpfyTqCbH
	 +KDvqMSWxjcvA==
Date: Mon, 16 Mar 2026 13:57:23 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Christian Bruel <christian.bruel@foss.st.com>
Cc: Koichiro Den <den@valinux.co.jp>, jingoohan1@gmail.com, mani@kernel.org,
	lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org,
	bhelgaas@google.com, Frank.Li@nxp.com, vigneshr@ti.com,
	s-vadapalli@ti.com, hongxing.zhu@nxp.com, l.stach@pengutronix.de,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, minghuan.Lian@nxp.com, mingkai.hu@nxp.com,
	roy.zang@nxp.com, jesper.nilsson@axis.com, heiko@sntech.de,
	srikanth.thokala@intel.com, marek.vasut+renesas@gmail.com,
	yoshihiro.shimoda.uh@renesas.com, geert+renesas@glider.be,
	magnus.damm@gmail.com, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, thierry.reding@gmail.com,
	jonathanh@nvidia.com, hayashi.kunihiko@socionext.com,
	mhiramat@kernel.org, kishon@kernel.org, jirislaby@kernel.org,
	rongqianfeng@vivo.com, 18255117159@163.com,
	shawn.lin@rock-chips.com, nicolas.frattaroli@collabora.com,
	linux.amoon@gmail.com, vidyas@nvidia.com, shuah@kernel.org,
	linux-omap@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-tegra@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v10 3/8] PCI: dwc: Advertise dynamic inbound mapping
 support
Message-ID: <abf-LKj8V2MpJFEE@ryzen>
References: <20260124145012.2794108-1-den@valinux.co.jp>
 <20260124145012.2794108-4-den@valinux.co.jp>
 <b2b03ebe-9482-4a13-b22f-7b44da096eed@foss.st.com>
 <tkfhaovpmaoodo35attvmbnpukcqgmwyrxmfgiwjy2dga65cgl@hmj4mx2n44ki>
 <5e485218-becf-499b-8a07-d25358504807@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e485218-becf-499b-8a07-d25358504807@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_055739_219145_5CD1582D 
X-CRM114-Status: GOOD (  21.50  )
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

On Mon, Mar 16, 2026 at 01:41:03PM +0100, Christian Bruel wrote:
> Hi Koichiro,
> 
> > 
> > If I understood the problem correctly, would something like the patch below
> > address it? My expectation is that the subrange mapping test would then fail
> > consistently on platforms that do not have enough free IB iATU regions.
> > 
> 
> Thank you for your patch. Yes, now the bar subrange tests fail consistently,
> so that is enough to say this is not a regression.
> 
> However, I think there was a clear BAR missing somewhere before running the
> tests in the EPF driver, as the BARs could be reallocated during the other
> tests. This is not due to the subrange tests, but the EPF test driver
> supposes a 1:1 BAR/ATU mapping. Now this assumption is broken. I'm wondering
> if this could be improved to make the subrange tests pass on all platforms

Normally, you want one inbound iATU per enabled BAR, since you want the host
to be able to access all the enabled BARs at any time.

If you are thinking that we should somehow temporarily disable inbound
address translation for one of the enabled BARs, such that we can do "steal"
that iATU to test inbound subrange mapping, then I think that is a bad idea.

I think we should just let the test fail. Possibly we could call some API that
tells us that all inbound iATUs are occupied, and then SKIP instead of FAIL
the inbound subrange test case.

If you really want to test/use inbound subrange mapping, even if your SoC has
a very limited number of inbound iATUs, then I think a better solution is to
mark one or multiple of your BARs as disabled:
https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git/commit/?h=endpoint&id=33642e9e36dc084e4fc9245a266c9843bc8303b9

Then you should have at least one more inbound iATU available, and should be
able to run the inbound subrange test case.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
