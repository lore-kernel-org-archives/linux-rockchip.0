Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55FD8D0EE17
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 16:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8oZIV4NSXOU/nDEwF1IAOvpG8i4o2OtvHs0Pd5tMGM=; b=uh6fRM1JMFlllO
	h3Sbsh95f9GQaAZF+PzAMYQ188iE7/T+5OvcoD3ID94OUXI7vzkq0JFzs8JHGUl8c9iAsScbybh2o
	ktZTYU/nwy4lt1lpesNOg18WWBf1fW7iRVHC1cnJXwhIHd8q5hWLm9YnnJawz1e1Y+RiGA7mSwOuZ
	Uh22PxJqA+4ywRxShoclY8MwmPAGNHz06oxX+Cg1yoiDrv9b7qBZsOCqsqZ2nP3t1yrn9JMREjfgA
	soOkXDw1jZ8V/u7RL8mtYQ3N76opxOtkxadVKlZ0rLGsQdhvDbouhBl2wcXrqQ0vTp5bFWcXJ3qRr
	KwIA6zG1rNsN78H+aajQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szIbx-0000000Gyis-1hiV;
	Fri, 11 Oct 2024 16:35:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szIbq-0000000Gygk-0HNN;
	Fri, 11 Oct 2024 16:35:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bUYpKd1S8uep3qSusAJs52M2QZgjsVJCe2Klh66jzFE=; b=IKiP8E9aWJBg3G2HiMKZOaudPc
	VFPo4QEkc1RSMj9/vpLobPl7uIq+2oBrltwqcARRR6m4w6D6DqUdTzNITDofNozwJ8duuef80IOjK
	d9M+duanqyqU1AZ52xkTqEAHZB+yfHxUeO1V9AzLXU75uA0JC3Xok0RlLKbdpgAxDbITeFJLZ3ro1
	nCdveq5mg3mqW7u2DdXL2Em7xyMrvZxvb7hAL0dHxCXM28z3bmskwx+qYe9ugDyE2GvpXsu7vlhte
	lGsAzinkBiV86h+ezE4RGFmepyx71SCLyS/nZmsuz9ORWZTjQ/8fpqT+UfieQc9WVE/m/l9RJPzUg
	BsJh86hw==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1szIbg-0008Aq-34; Fri, 11 Oct 2024 18:35:12 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Dragan Simic <dsimic@manjaro.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 stable@vger.kernel.org, linux-kernel@vger.kernel.org, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Prevent thermal runaways in RK3308 SoC dtsi
Date: Fri, 11 Oct 2024 18:35:11 +0200
Message-ID: <3125164.CbtlEUcBR6@diego>
In-Reply-To: <172859192266.2746127.3378168630215627036.b4-ty@sntech.de>
References: <d3e9dc4201d38894b09f3198368428153a3af1a4.1728555461.git.dsimic@manjaro.org>
 <172859192266.2746127.3378168630215627036.b4-ty@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_093522_166181_C395E44F 
X-CRM114-Status: GOOD (  13.44  )
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

Am Donnerstag, 10. Oktober 2024, 22:27:44 CEST schrieb Heiko Stuebner:
> On Thu, 10 Oct 2024 12:19:41 +0200, Dragan Simic wrote:
> > Until the TSADC, thermal zones, thermal trips and cooling maps are defined
> > in the RK3308 SoC dtsi, none of the CPU OPPs except the slowest one may be
> > enabled under any circumstances.  Allowing the DVFS to scale the CPU cores
> > up without even just the critical CPU thermal trip in place can rather easily
> > result in thermal runaways and damaged SoCs, which is bad.
> > 
> > Thus, leave only the lowest available CPU OPP enabled for now.
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: Prevent thermal runaways in RK3308 SoC dtsi
>       commit: 864f1a5b390278a4a8d4a6d7425c7022477c6c9f

as discussed in the other replies, I've dropped the patch again


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
