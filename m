Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 385B9C3DA49
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 10:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sCPsCa1FEyyoRgu3iMaY1SZM3cmMTtw0yzhoMMqlcL4=; b=d6/GftEH9lWDI4
	KifaFE2C4+YM3/8YFjBadwpWVfTUQG9jOGJCnkVpzOyXLkc0tG5N1LH3UvxtATsLKSiyPXO0ili8R
	0MpgOOOyeuAV6L5G+3aO0UJrCfDHVOrLuIQYAoWQfOydRVPtUYQkH2GovHs8ffgJr01PDRJ31cKby
	dUXiWkTv33KnVLNGSY/GwazLP1IlNrzXXoDpUEDzkX4RqoccosqTk75ZtTS27W75JpbhIxAPq8FdA
	LfY+qrSW/5/4Fc7R7kiNZo9uo3ox22Gwai/nT74Pzeo9DNRxGAiFS/BF8C1Cs0t7uhuDrySjgGH64
	zfBdPHO7HnYFtLD6k+2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZpAa-00000008Ov9-3fFy;
	Fri, 02 Aug 2024 10:05:56 +0000
Received: from xn--80adja5bqm.su ([198.44.140.76])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZpA5-00000008Opd-45tT;
	Fri, 02 Aug 2024 10:05:27 +0000
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id C661B40050C0; Fri,  2 Aug 2024 10:04:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 xn--80adja5bqm.su C661B40050C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mediatomb.cc;
	s=default; t=1722593087;
	bh=QsN5/NZ66aTtsFvoL5pLZIv6o50us0fY8Yrb52ESz6k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gMdc5ivB/L+PDFudBOPTqscH5VEN4eYzXm6s23rVgX+fdPcqY5haJ1MmKpJ9mUvda
	 RIcP5kGJQOnLh2aMpmcQtnMgHDwGI+FU61ntph7HeLxrmaND+cn1+oUPwyERoRe6U0
	 7DXT4SvM5K8VtaFtL5+9C1vVk9GJUrXnrhyvCe8X/VP//PqodmM135l01bX5/Cfb8h
	 g9vXafFqVm3KTm5zRepfQqrDNaWCafKlnIBZr5qhwRlh6+Cb4a3MGiZTudmvTZoevy
	 hBIW+QAEKn45YG4k+5+EU9uiaiTi7LlsW06KpxpG0qp9MT1IeHrBh16vGS/WVmL1Ck
	 eQdcuyuh7xfEw==
Date: Fri, 2 Aug 2024 10:04:47 +0000
From: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>
To: "Bjoern A. Zeeb" <bzeeb-lists@lists.zabbadoz.net>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 0/2 RESEND] Add DTS for NanoPi R2S Plus
Message-ID: <20240802100447.GB18509@ветеран.su>
References: <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org>
 <20240801175736.16591-1-jin@mediatomb.cc>
 <756p9487-56pr-88p2-6o79-7oron3q8462n@yvfgf.mnoonqbm.arg>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <756p9487-56pr-88p2-6o79-7oron3q8462n@yvfgf.mnoonqbm.arg>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_030526_091704_D718BC37 
X-CRM114-Status: GOOD (  16.36  )
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

Hi,

On Fri, Aug 02, 2024 at 09:46:40AM +0000, Bjoern A. Zeeb wrote:
> >I noticed, that a DTS for the R2S Plus is not yet available, while the
> >R2S is already there. The only difference is, that the Plus version has an
> >eMMC, so we can reuse the R2S definitions and only add an eMMC block, which
> >I copied from the DTS in the friendlyarm/uboot-rockchip repo.
> 
> The original has a
> 	// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> 
> please don't lose the OR MIT as other projects outside Linux do use the
> same dts files;  and the original r2s file also preserved it.

Uhm... I am confused now, I copy-pasted the emmc block from this file:
https://github.com/friendlyarm/uboot-rockchip/blob/nanopi4-v2017.09/arch/arm/dts/rk3328-nanopi-r2.dts#L7

The header does not have the "OR MIT" in there, it's just
"SPDX-License-Identifier:     GPL-2.0+" which is what I also copied
over, together with the (c) part.

The source which I was using is described in the commit message:

The eMMC configuration for the DTS has been extracted and copied from
rk3328-nanopi-r2.dts, v2017.09 branch from the friendlyarm/uboot-rockchip 
repository.

Maybe you looked at a different branch? Shall I still add the "OR
MIT" or leave it as in the original file which I copied it from?

Kind regards,
Sergey

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
