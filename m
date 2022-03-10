Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 544CBC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Mar 2022 01:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MM7af6nOV+rzU2CEDkcstCOFz4+t/uIlfhMFtMSu1E4=; b=35i5/Vm9MHt96h
	OXOZaxCUXcl0aHh3p9G5c3A07Z4FFZPIQOdEY4MWVc9lsJBED8y3Du3z/zl0n/9oO0vcppYmYyIvV
	RK2XsD3Ddz6ZuMfx9aYObtOCUzNJf9aFim8ZCRQsh58IMyZIfptCG+fJ990OY6aFxispZg74DT8T9
	IIqb3QP/Hg5/EJuokppKFsUQXju2Q+lws9oFc7Jc+AUQaajnSYJ9/VP7nFFThYeqIYCnXgpr1+1Yw
	mnWk6lRNGjHmyaHpdqKiVAA0Tjs9LKJnTT8vCjnCJVK6GCkyj10/YlXN4Xo/GAEDBgOjnF16bpDgJ
	vYR71+EyWkt4Qe0ZF0Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nS7mV-00AzXM-SX; Thu, 10 Mar 2022 01:39:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nS7mT-00AzWE-GW; Thu, 10 Mar 2022 01:39:54 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nS7mS-0000Qc-F4; Thu, 10 Mar 2022 02:39:52 +0100
From: heiko@sntech.de
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [GIT PULL] Rockchip dts32 changes for 5.18 #1
Date: Thu, 10 Mar 2022 02:39:51 +0100
Message-ID: <37432054.P6GNo21ksS@phil>
In-Reply-To: <3788968.RB9BLzCXGK@phil>
References: <3788968.RB9BLzCXGK@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_173953_571323_BA7C4E5B 
X-CRM114-Status: GOOD (  12.17  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Correction: The mail subject was supposed to be "#2"

Heiko

Am Donnerstag, 10. M=E4rz 2022, 02:38:50 CET schrieb Heiko Stuebner:
> The following changes since commit 5a68ce0a7b89a7005a71d406435a45a24c7e86=
da:
> =

>   ARM: dts: rockchip: remove status from rk3288 crypto node (2022-02-15 0=
8:59:53 +0100)
> =

> are available in the Git repository at:
> =

>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git =
tags/v5.18-rockchip-dts32-2
> =

> for you to fetch changes up to c042639a70ed00ab2138f507ae1d6fa57c66ce11:
> =

>   ARM: dts: rockchip: Update regulator name for PX3 (2022-03-05 18:17:08 =
+0100)
> =

> ----------------------------------------------------------------
> Some fixes for rk8xx pmics to make them follow
> the dt-binding better.
> =

> ----------------------------------------------------------------
> Chris Morgan (2):
>       ARM: dts: rockchip: Add #clock-cells value for rk805
>       ARM: dts: rockchip: Update regulator name for PX3
> =

>  arch/arm/boot/dts/rk3188-px3-evb.dts  | 2 +-
>  arch/arm/boot/dts/rv1108-elgin-r1.dts | 1 +
>  arch/arm/boot/dts/rv1108-evb.dts      | 1 +
>  3 files changed, 3 insertions(+), 1 deletion(-)
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
