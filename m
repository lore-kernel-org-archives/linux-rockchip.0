Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95C3DCD4F21
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 19:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GF0PNkwHpV/AqRMJaOuSW+JO4BXkKmI/z+RbhUX15oE=; b=MgMS8cK7x0JUii
	yBxoeh/GzGMbV6OIsFJ1QaJ4eCIoZfz1kTU47g8NKmzjqlNc7+evCKKLaItSIs/FrXM3xQshItXXo
	jFIvnR6SGVOXobV3W6rQwdM7rm6kv5bYu0yS7WVmEar3eRIqdmLcD8fLxRZVEixxWEkxuacx19DzP
	ios0vfjtAmxRPFdivEIcyNbjSUAfGh173liMo58BoXvfI8TzCfFk2yY12TvgiOTT80x0b9xMPyYoc
	a+HEQXiPDVV/GmgqCLtsd+jqeBMRHxaD/CQ1iVjy/vX04GdYa2mw98o8ATU09OExZtIdaPr0oiPxy
	PYS6J5JFD2eRr/EAdh+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slvOd-00000005l5R-3ZXb;
	Wed, 04 Sep 2024 19:10:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slvLn-00000005k8m-3oRq;
	Wed, 04 Sep 2024 19:07:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=YLYNjnT/IKCKvjMfxNgrcLACsIljWuuAqppXEoSA080=; b=jhLp3WHsxJv+bA8hQ7QijhyMsi
	JSqQkzGb2x4zr/eujOXTcxTSPNHs5COFt/Kp5mspKLCM/837+Mp2SSMmnvJ7ytuEUnqD7HRDizIqs
	vAZRUwQCAo9hfF4GsKweU3oY4dKXMoEQb1GYSYU06csphLoke4TZQH0a5InJN8P5p6ivebJkRyO+4
	t0Q4doz1cNpTcKVXbB2DN0OTF1ayG2o6+QYTZ6/hR+GfIHX2Jatqid+S0g9XyGD9vHcsAiWudw6yH
	aZ29bPJ28URCVKVtJ5njXRMihG7ANKMzJ0iGQaamUzKv9DSUhRV/tDngV96ELtUsRia4t8X5q7ezO
	lUOgSvmA==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1slvLY-0002Po-D9; Wed, 04 Sep 2024 21:07:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jianfeng Liu <liujianfeng1994@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 0/1] media: rockchip: rga: Add rk3588 support
Date: Wed,  4 Sep 2024 21:07:01 +0200
Message-ID: <172547678275.2721598.8597776431776777488.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240831182424.758816-1-liujianfeng1994@gmail.com>
References: <20240831182424.758816-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_120731_965158_6A333094 
X-CRM114-Status: GOOD (  11.10  )
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

On Sun, 1 Sep 2024 02:24:23 +0800, Jianfeng Liu wrote:
> This enables support for rga2 in the RK3588 base devicetree.
> Dt-binding of rockchip,rk3588-rga is already merged to v6.11.
> 
> Changes in v3:
> - Rebase commit to next-20240830
> 
> Changes in v2:
> - Sort node by bus-address based on next-20240604
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add RGA2 support to rk3588
      commit: 13066fc101ca2deec1c9619e2f82ca437f38a6da

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
