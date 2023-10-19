Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2806ACDB465
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 11:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEAeaglRD2iYho4yFcS1jGyBdM9vCVc9BineYClMBpQ=; b=BJYuIFGnZR9Wkq
	HMgk4GcRwH+VfaN/YpAaz4XFp1MmVIji0M9C1zziXTtWLgXl81YPDyd6AvR1dldX42ylQnIGXMIMx
	Vo/mvoxluxzU/6CrbPhbXlpbrQ47Qh14Ols/xU/ldDRSn+SXIuIJX4Ql3E1MsiCc9EM9UACU7KNT/
	oUPTV2vj2fD4Hktt3ywsijdeOZk9x/utodtRRnj5KTApJjz5iHj4f93oUDzT8fbbbK4zelyHwfdBv
	Sut2Nsic5aETZpY9HHyUVbULn/qsRpyeV+Vzg0AI2ZlgF8FYm9ALANMXFyaH9ILZSHAyqFdmkZdZW
	Kn1d7IEvApeg3Pswvq2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtREf-00HAR7-06;
	Thu, 19 Oct 2023 11:30:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtREd-00HAPt-1G;
	Thu, 19 Oct 2023 11:30:40 +0000
Received: from i5e861907.versanet.de ([94.134.25.7] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtREZ-0003E9-Ni; Thu, 19 Oct 2023 13:30:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [GIT PULL] Rockchip driver changes for 6.7
Date: Thu, 19 Oct 2023 13:30:34 +0200
Message-ID: <2435081.jE0xQCEvom@phil>
In-Reply-To: <2578684.Lt9SDvczpP@phil>
References: <2578684.Lt9SDvczpP@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_043039_427746_AF761039 
X-CRM114-Status: GOOD (  10.62  )
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

Am Montag, 16. Oktober 2023, 23:23:50 CEST schrieb Heiko Stuebner:
> The following changes since commit 0bb80ecc33a8fb5a682236443c1e740d5c917d=
1d:
> =

>   Linux 6.6-rc1 (2023-09-10 16:28:41 -0700)
> =

> are available in the Git repository at:
> =

>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git =
tags/v6.7-rockchip-drivers1

I've updated the tag and sent a v2 pull request separately.

Thanks
Heiko

> for you to fetch changes up to 20bd1191830478cfdc9be766a735923c5fbe5350:
> =

>   soc/rockchip: io-domain: Convert to platform remove callback returning =
void (2023-10-02 00:56:13 +0200)
> =

> ----------------------------------------------------------------
> Converting the io-domain driver to the new remove callback.
> =

> ----------------------------------------------------------------
> Uwe Kleine-K=F6nig (1):
>       soc/rockchip: io-domain: Convert to platform remove callback return=
ing void
> =

>  drivers/soc/rockchip/io-domain.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
