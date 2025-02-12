Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D21E0C02198
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Feb 2025 12:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ip088P3kgFRGYgz70T/PhkrvIXGOCRlc6rkgHwoXX/A=; b=AkSjozVFnGctpt
	U+vHJZBpLs9GpcjuNZxrsOGIURAAeJS3BXlnjMaWm+n3XCW9aFyqoq84h9TVwi6IXHTMaYtzafi+F
	K+QJYLw/bK+1DABTkEmHSQh92VKSQc0e72jWEf3wU4jTaTWlRjTVJ6abP4vEqiyBoj1udN2aX5MH8
	ckLj6CrC7UaVX6zInYnsbARqUqeGoPNGNFKdPR+81lJnUNXYfSU0kihNkcxSMd65xItjt95ZC5tJu
	uRSsoln1E6ruEFNo4ivGbJLJeQgiAO2K2HqhT/ieDV/z+AMXN1qcungfQR5/BEiyOKQHIfCCusJKm
	Y8CrY0x+hevLusNX3NjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiC6U-00000007ODX-0jIp;
	Wed, 12 Feb 2025 12:44:34 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiC6Q-00000007OD3-3hpU;
	Wed, 12 Feb 2025 12:44:32 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739364264; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=mhTek3LMOXWwE7inMGdFBQrsJZznqdEbQDauKdZXlGwi+Z9MfxqqTNkuHAcqwwYCDxnV0OG+NVNWOmAJNe3ZTxx0FgUVdwAggVNMkDGmmTrTWv61fR9qzmbcuE2iSJ8837Uhmy+oBFxF/9JpQCQJlTsODE+Z0ubmulW2P0qxMBM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739364264; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=k0u7MCkVugkCYytrZIZnLSDOJ7P6+i9SZvRkCovv5zU=; 
	b=ACA9jmkQalqYV3VPWJ07o8K0WZJpck8qONiPpOHlxLC9EQdGe+FwSaDn2g/7DmX9GLqCRFfkwlY6G2tUU/LycXHcUbjNxmisOKulgmG8/LCIKmcatAYvnyDlxhekL5/iyMarYWHVfjWSo455Zdb11lq6+qqBN1a/wHX0Y9wHDd4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739364263;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=k0u7MCkVugkCYytrZIZnLSDOJ7P6+i9SZvRkCovv5zU=;
	b=KFDIojn1akvvSLIMtBtS1j/gY6cML0WKSgoRHfeomaqwixBDGRWuFchtvI/GL5aB
	KFl2p63f+Y8wIG9/MErZmEYc1IbDoGL1bs/sXhr9Rx2Vb6+10JW4a3dM6uSV5ry2Nij
	jOnTZh89SkxlPkYr/fKxBSsT1UfvNsyfdB4psLKo=
Received: by mx.zohomail.com with SMTPS id 1739364260281358.8015360119805;
	Wed, 12 Feb 2025 04:44:20 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: srinivas.kandagatla@linaro.org, linux-rockchip@lists.infradead.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, detlev.casanova@collabora.com,
 sebastian.reichel@collabora.com, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH RESEND v2 0/6] RK3576 OTP support
Date: Wed, 12 Feb 2025 13:44:15 +0100
Message-ID: <5943191.DvuYhMxLoT@workhorse>
In-Reply-To: <20250210224510.1194963-1-heiko@sntech.de>
References: <20250210224510.1194963-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_044430_998654_EDD003A4 
X-CRM114-Status: GOOD (  18.37  )
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

On Monday, 10 February 2025 23:45:04 Central European Standard Time Heiko 
Stuebner wrote:
> This enables OTP support in the nvmem driver for rk3576.
> 
> I expect to pick the clock patch (patch1) and the arm64-dts patch (patch6)
> myself, after the nvmem-driver and -binding patches have been applied
> (patches 2-5).
> 
> But kept them together for people wanting to try this series.
> 
> changes in v2:
> - fix register constant in clock definition (Diederik)
> - add patch to set limits on variant-specific clock-names
> - use correct limits for clocks + resets on rk3576 binding
> 
> 
> RESEND, because I messed up my git-send-email which caused it to include
> the list of patches 2 times, duplicating everything :-( .
> 
> Heiko Stuebner (6):
>   clk: rockchip: rk3576: define clk_otp_phy_g
>   nvmem: rockchip-otp: Move read-offset into variant-data
>   dt-bindings: nvmem: rockchip,otp: add missing limits for clock-names
>   dt-bindings: nvmem: rockchip,otp: Add compatible for RK3576
>   nvmem: rockchip-otp: add rk3576 variant data
>   arm64: dts: rockchip: add rk3576 otp node
> 
>  .../bindings/nvmem/rockchip,otp.yaml          | 25 ++++++++++++
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 39 +++++++++++++++++++
>  drivers/clk/rockchip/clk-rk3576.c             |  2 +
>  drivers/nvmem/rockchip-otp.c                  | 17 +++++++-
>  4 files changed, 81 insertions(+), 2 deletions(-)

Hi Heiko,

for the entire series:

Tested-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

OTPs show up on my Sige5 RK3576 board and read fine. Also compared the OTP 
nodes to downstream and the values look consistent with that. The OTPs aren't 
documented in the TRM I have, so unfortunately I can't cross-reference that.

NB: patchwork's "Series" download for this series somehow lacks patch 2/6, 
which tripped me up at first. Not sure if that's a problem with patchwork or 
with how you sent the series out, but I thought I'd let others know who run 
into this.

Regards,
Nicolas Frattaroli




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
