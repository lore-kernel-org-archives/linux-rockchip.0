Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 373C5D0C5FD
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Oct 2024 10:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QX6rMhoKLVClCPfXxW1brOcqe8BBtGb6a1M1Hnc+3sY=; b=wP6U8cvu/vdSGm
	oR04X5ObfPEpaQ/iBVwId53qks2uE88eMddFAG2fYIrwz4LiV//Gtb82JY6VOFi/Yt5Be9zUlrkEF
	D1OGuwSoFhRZpBYobCkmOdfnmjfBBLrYQ43obenZuNhC/omtT/Kh7r1Ej6mNj7sxC0lBar7BVLTQh
	aPuzarYJpy1MPe4XVLb+Yi9Eu2S/GHuOqARgr1zaLuV76Dpi1gaimVOjAjzqNOC7fmIZbvYwC+EQI
	P4/JLdotHzh3U3W93KvYQ7Ct7l924N9Pj/PqmAI8rohOekmlvFnW0EL3rIEASDyBuOgwKYJBeblNH
	TekhQdz2DI0ln59OVLHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4HbA-00000003Mtt-1p1P;
	Fri, 25 Oct 2024 10:31:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4GTY-000000039BW-0ZVh
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Oct 2024 09:19:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=y+jm9ardZfDQqVqtaj+yn7oty3xNlqz/dKihmWT8xaE=; b=FYFaZyx+NfXBTA/kmDH+CvbKAT
	9G8SxA0/a14dY6GCNROeC8sI5TlH5eC5mp+KdcnxtAPmWtvUYHBrzjGROCSD1SHBUx0sOBLFmadWi
	8c7Wol6ijbwAKzVqKBS/ma7Wx6Jc0I98kOl8TkWZWMv1/PRL+rBqmuMadgL6UMd5cTsgqfgQlenSG
	5HlCExAuwXR5muP/9zFcgrrINeut+nWXd53zdJifo9WSmI6CP55o2mUPjo53BHqdOjMPAF0x/v14i
	LmdSguVRgkKIlEPmwZeG1DcWktKT1MvKyPEOgLCjJK9SOLqDcWDq9KCHFTmSry/n3UJUtaB45sTOq
	bAC4Ol9A==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t4GTJ-0008U9-V4; Fri, 25 Oct 2024 11:19:05 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Mark Brown <broonie@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 =?ISO-8859-1?Q?Adri=E1n_Mart=EDnez?= Larumbe <adrian.larumbe@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v3 0/7] Fix RK3588 GPU domain
Date: Fri, 25 Oct 2024 11:19:04 +0200
Message-ID: <16964583.geO5KgaWL5@diego>
In-Reply-To: <20241022154508.63563-1-sebastian.reichel@collabora.com>
References: <20241022154508.63563-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_021920_226598_A81E6B9C 
X-CRM114-Status: GOOD (  25.52  )
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

Am Dienstag, 22. Oktober 2024, 17:41:45 CEST schrieb Sebastian Reichel:
> Hi,
> 
> I got a report, that the Linux kernel crashes on Rock 5B when the panthor
> driver is loaded late after booting. The crash starts with the following
> shortened error print:
> 
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to set domain 'gpu', val=0
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to get ack on domain 'gpu', val=0xa9fff
> SError Interrupt on CPU4, code 0x00000000be000411 -- SError
> 
> This series first does some cleanups in the Rockchip power domain
> driver and changes the driver, so that it no longer tries to continue
> when it fails to enable a domain. This gets rid of the SError interrupt
> and long backtraces. But the kernel still hangs when it fails to enable
> a power domain. I have not done further analysis to check if that can
> be avoided.
> 
> Last but not least this provides a fix for the GPU power domain failing
> to get enabled - after some testing from my side it seems to require the
> GPU voltage supply to be enabled.
> 
> This series is now based on the pull request from Mark Brown:
> https://lore.kernel.org/linux-pm/ZvsVfQ1fuSVZpF6A@finisterre.sirena.org.uk/
> 
> I added one more patch, which adds devm_of_regulator_get without the
> _optional suffix, since that is more sensible for the Rockchip usecase.
> Longer explanation can be seen in patch 6, which adds the handling to
> the Rockchip driver. My merge suggestion would be that Mark adds the
> regulator patch on top of the immutable branch and creates a new pull
> request.
> 
> The last patch, which updates the RK3588 board files only covers the
> boards from 6.12-rc1. Any board missing the update will behave as before,
> so it is perfectly fine not to update all DT files at once.

My rk3588 jaguar somehow developed some delay when dhcp'ing for its nfs
root and with that actually started running into that gpu-regulator-issue.

With this series applied, that issue goes away:

Tested-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
