Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55872C83F34
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jul 2025 13:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VsiotpXyM2qzpAqVOuJrxHMmmOeTLfF3JTkGkgB/DtM=; b=Z1e8TTTtuRipyQ
	jpGmk6FB9NHJjYXIWZjaSS+vRRxkayiN9Vnl8t8jmfa9M34030LC096Sje+b7x0x/T/FE5gSEjbvb
	blD/7A6UUslz9TNXrbzPI6hrlpJBysWe1Hi1v//w5Bw2flH02M1pedZlkayyOzGaNXanpeKiy/TQ4
	z7LgeQJumoE8waZvS+TsHcZm9NjtVzNzO9sfH37/9cPlQl5J4qJpRSrolNJJGqb1s9QbgcLpU6GEG
	ZYDMwMXGNW2guo4tsdoKe6PmY/gmnbXBjnkyMktDPVcBa5D3KjDFIVsXErP1yVI7LxxiWkaEQjU5X
	HTdpIRBO0r1EbX1yiEHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueD8O-00000002YvY-1Dal;
	Tue, 22 Jul 2025 13:34:20 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueCCh-00000002RfM-3Fub;
	Tue, 22 Jul 2025 12:34:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id ABB4044102;
	Tue, 22 Jul 2025 12:34:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BFB6C4CEEB;
	Tue, 22 Jul 2025 12:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753187682;
	bh=a70tJ26fYKY4q6tpubfdXTZO+/PdkIHK1Zjw5PmgqU4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U4Cb+XCJQVrf0JzVqRTC+Il6MWtUoddr+J9pbIYV84xcAARh7s2FHk4aoD4v8046T
	 aPleOJ5NiCD6+8Qq7FxcomIZ+a1WMoVocD2ItQpkel+Rh5z4IpRr/loKzYI5YZWobO
	 SI67AXvozJMV0D0X6JXCG52VUnWatgtWYF5o7KCraK8wyoexgdehalIvbFKRXo5MOe
	 0jIUF4G1RpXas3Lau8UqDCuD3Aiu0nyqfE01GrsjWkIsSvGMEWkpbQLcrjPUPKvU66
	 h/sL96eTLpKwHC5D9h84CGm5A6hC6wOjfgzAdCAM9AsfRdSn1v2ymnmESTiLWEgIZG
	 jh9r23oCUvCAg==
Date: Tue, 22 Jul 2025 18:04:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	rick.wertenbroek@heig-vd.ch, alberto.dassatti@heig-vd.ch,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: rockchip-snps-pcie3: add support for
 rockchip,phy-ref-use-pad
Message-ID: <aH-FXrb-qvF3ffv1@vaman>
References: <20250715105820.4037272-1-rick.wertenbroek@gmail.com>
 <5a7f47a7-c81e-4f70-9391-0dd1e3aa9f65@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5a7f47a7-c81e-4f70-9391-0dd1e3aa9f65@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_053443_830756_2BF6432A 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
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

On 16-07-25, 08:18, Damien Le Moal wrote:
> On 7/15/25 19:58, Rick Wertenbroek wrote:

> > &pcie30phy {
> >         rockchip,rx-common-refclk-mode = <0 0 1 1>;
> >         rockchip,phy-ref-use-pad = <0 1>;
> >         clocks = <&cru PCLK_PCIE_COMBO_PIPE_PHY>, <&cru CLK_PHY0_REF_ALT_P>,
> >                          <&cru CLK_PHY0_REF_ALT_M>, <&cru CLK_PHY1_REF_ALT_P>,
> >                          <&cru CLK_PHY1_REF_ALT_M>;
> >         clock-names = "pclk", "phy0_ref_alt_p",
> >                               "phy0_ref_alt_m", "phy1_ref_alt_p",
> >                               "phy1_ref_alt_m";
> > };
> > ---
> > 
> 
> This looks OK to me, but don't you need to also update the dt-bindings yaml to
> document this new "phy-ref-use-pad" property ?

Absolutely, without update to binding this is a no-go

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
