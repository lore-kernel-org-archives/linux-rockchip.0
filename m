Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF52CC021A0
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Feb 2025 12:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HrIBal0B8/VHWi56/uyRRm2CS5/Nh1yuWEfvGh/zxHg=; b=GDpS/tx+e+Ry/A
	2WrVKbSNqb/N1LnqpCrbL9kuWRdyGa9RGGh0c6UEI5N0lKG+9aOb5/vI5eLZ23tqFzh20UTCvCc5l
	xiLPfjEt0y3/ESgJ9p6zdVVWfyyio4kaIv/QVhtMAFkyh+KEc8XPoWpTd87LD5ezLlBiZ1iJJOm32
	XU0v986Wj7gqaWsY5Pm3eEBfvQchoOpEh0mBEWsCD8m02gei7R2OPNsoahkfXdbCrX9laAyet/xNm
	wuCWCjGAXGa8qF2qtaOX0PNIWgPwMGsVV1xQjVig8RV/LevH6RuiIOxJqrPIeaReiFV8I4MzkB38H
	B8r1hEvJzZqpny6n/BFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiCI4-00000007QCU-14fm;
	Wed, 12 Feb 2025 12:56:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiCI2-00000007QC5-0zqb;
	Wed, 12 Feb 2025 12:56:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=P6iyi8LYf2Q9nhUpNA4gW7Tp0oyXZ3Nz5g0u6VN9kfw=; b=bNQmCJ/EraMnyAIhwDcPnCGe+1
	V/g+yJrQjMHOKoLvOHESl16Zg6JPZ+yzVFSaiJMfZFL0JfsZNrjKR5Ud9fTeRUmu4e4FypJ/c8OEe
	abmtxosmPCFTN+WXsOuEK4I0A6ZPOm/Xgk6ggqNTFk9UlVDCgt2FCrXdsu6hL7el7N0kG4jGr8vzU
	4gGFR5ylsgbPJ/i6Xb4YHiOKqIrPJk4O9PX+mOTqPG81mTYjxuX4FCeVqOnGI3YjSxCWu9EreX6Qd
	MwRW3HM7sdXqD18e9d4Qt/JPLycBKn0G3wOyiRkuKQ4wocm9BT01jZHE4ZZO+gEMzk0L9rEUeTDnu
	MTMUVunA==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tiCHz-0004Kn-Va; Wed, 12 Feb 2025 13:56:28 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: srinivas.kandagatla@linaro.org, linux-rockchip@lists.infradead.org,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, detlev.casanova@collabora.com,
 sebastian.reichel@collabora.com
Subject: Re: [PATCH RESEND v2 0/6] RK3576 OTP support
Date: Wed, 12 Feb 2025 13:56:27 +0100
Message-ID: <2965867.ZfL8zNpBrT@diego>
In-Reply-To: <5943191.DvuYhMxLoT@workhorse>
References: <20250210224510.1194963-1-heiko@sntech.de> <5943191.DvuYhMxLoT@workhorse>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_045630_302632_F105866C 
X-CRM114-Status: GOOD (  28.38  )
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

Am Mittwoch, 12. Februar 2025, 13:44:15 MEZ schrieb Nicolas Frattaroli:
> On Monday, 10 February 2025 23:45:04 Central European Standard Time Heiko 
> Stuebner wrote:
> > This enables OTP support in the nvmem driver for rk3576.
> > 
> > I expect to pick the clock patch (patch1) and the arm64-dts patch (patch6)
> > myself, after the nvmem-driver and -binding patches have been applied
> > (patches 2-5).
> > 
> > But kept them together for people wanting to try this series.
> > 
> > changes in v2:
> > - fix register constant in clock definition (Diederik)
> > - add patch to set limits on variant-specific clock-names
> > - use correct limits for clocks + resets on rk3576 binding
> > 
> > 
> > RESEND, because I messed up my git-send-email which caused it to include
> > the list of patches 2 times, duplicating everything :-( .
> > 
> > Heiko Stuebner (6):
> >   clk: rockchip: rk3576: define clk_otp_phy_g
> >   nvmem: rockchip-otp: Move read-offset into variant-data
> >   dt-bindings: nvmem: rockchip,otp: add missing limits for clock-names
> >   dt-bindings: nvmem: rockchip,otp: Add compatible for RK3576
> >   nvmem: rockchip-otp: add rk3576 variant data
> >   arm64: dts: rockchip: add rk3576 otp node
> > 
> >  .../bindings/nvmem/rockchip,otp.yaml          | 25 ++++++++++++
> >  arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 39 +++++++++++++++++++
> >  drivers/clk/rockchip/clk-rk3576.c             |  2 +
> >  drivers/nvmem/rockchip-otp.c                  | 17 +++++++-
> >  4 files changed, 81 insertions(+), 2 deletions(-)
> 
> Hi Heiko,
> 
> for the entire series:
> 
> Tested-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> OTPs show up on my Sige5 RK3576 board and read fine. Also compared the OTP 
> nodes to downstream and the values look consistent with that. The OTPs aren't 
> documented in the TRM I have, so unfortunately I can't cross-reference that.

thanks a lot for the testing :-)

> NB: patchwork's "Series" download for this series somehow lacks patch 2/6, 
> which tripped me up at first. Not sure if that's a problem with patchwork or 
> with how you sent the series out, but I thought I'd let others know who run 
> into this.

It looks like patchwork had a bigger hickup with my series.
Looking at the cover-letter in the Rockchip area of patchwork, it is
missing _all_ patches attached to it [0].

At least on the mainling list, everything seems to have arrived ok [1],
so would assume that's a patchwork thing.


[0] https://patchwork.kernel.org/project/linux-rockchip/cover/20250210224510.1194963-1-heiko@sntech.de/
[1] https://lore.kernel.org/all/20250210224510.1194963-1-heiko@sntech.de/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
