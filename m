Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26250C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 20:05:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E11FD6121D
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 20:05:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E11FD6121D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JWJbRoiKtq2ITE6iPC3mrE/GDFhUVGGqrE3QCH1c5Gc=; b=fSO7ZH+geVcPG6HowxTkHrzMc
	pnQ5E5ZervEdnkpd82zTj1hgUeytWyqNDCNvyAuD8x+cgCm4cLPZ6DAuYmsUhjsu9Bo5ZvyEyq3I3
	XvJtqQTucb6YQCgw+PWghW+9og3USX3WVYuN8SYx/0Q7/xdKbAfJw3c1pfQ+O9KCnE+Ij+YCgR/U0
	ugJrIq8fvc63L3nezhWj/LEjF1SD8LOH0r6JfZnDRJPGGAuD0zgm76zg4XLgmNrzXOQBxqu6a/BMb
	gvRTCezVNqe9OMbt/M4lDIwdFvENkhdQw2AVD9O+qWJ6sXhjo1LX5+Ab2tMzhh36y2zvOXPWD80Cy
	MqIyH7A7A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW2nv-007aWX-9p; Mon, 12 Apr 2021 20:05:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW2nr-007aVW-F3
 for linux-rockchip@desiato.infradead.org; Mon, 12 Apr 2021 20:04:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-ID:Date:To:Cc:From:Subject:
 References:In-Reply-To:Content-Transfer-Encoding:MIME-Version:Content-Type:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=C9vity1xnD/2/Gi28z+NLBnymCh73Q3pd21lP59EtDo=; b=U9qBoJRIawJC2lX3HjAVIL/5+3
 c/DvcM+FByTtwFlioUMaZYUNqAbtJDRmuQFPEY1+apk7/3lBHmCyiE2k4NFFaKWhlk9gUXSvQxgml
 n4Y2VfZsqUuEQznsRVkRjAqhTHuHWjIMcRn44LPHRgoVdNQVZ/bB0TkCI3LxYZWVtALqRGH9a/aRx
 eYGS8CxGHRNDIIFkSj+gX5NGhsq/CZQ4WmcveoJ/Nw0uoR9ImJtRy+ydIUIh6rqT3V/G5StRYFJOj
 2fBBFbEImECiezhzJWwTlWirP6XHWwTn8gesqCieeDkC0f90RX9HxV0m7PTjhTPUqV2Fj3+Hu/BwG
 xFyjkzlw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW2np-006WjZ-2h
 for linux-rockchip@lists.infradead.org; Mon, 12 Apr 2021 20:04:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id ECC6A6121F;
 Mon, 12 Apr 2021 20:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618257896;
 bh=YY9pKz2vlhmxdkKlhUIcO4njNqcmfLlMsmhh2me8RrY=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=XPutQQbLgcBF/3gznPrDZs/wm+xdjEMA+c3FbSJxPbkd1caWmmruW/QmmcWvi7ptA
 XxXtn3wcM6zGETB/M0zNsWJmv2cu9BMOKMKd3lGt5BGJn49toMCY2mI3yGulf0XOsi
 X1L+rKKcPYgBeDVmljvPOw5QA+EIzybn/y5/zm9WNkaZ23msFyrD6AxANsvUu6Jhnr
 LrM33axZDcxatv5vkHAZw5dw3T0/BQ/3DTTlTcbT3enI7BQlGkpPqrg+7M+Y2zvH4m
 rwT9jJHR8s1nJn1cPEVTstNRdyyV7Dn3kmEuVaQFtROUtNkaf99wB8IwlkK2iziPj2
 lE2KASY6aUYNg==
MIME-Version: 1.0
In-Reply-To: <5450499.DvuYhMxLoT@phil>
References: <5450499.DvuYhMxLoT@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 5.13
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Mon, 12 Apr 2021 13:04:54 -0700
Message-ID: <161825789457.3764895.15448626758621267117@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_130457_157096_B27B2B98 
X-CRM114-Status: UNSURE (   6.21  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Quoting Heiko Stuebner (2021-04-11 02:42:05)
> Hi Mike, Stephen,
> 
> please find below Rockchip clock changes for 5.13
> 
> Please pull, thanks
> Heiko
> 
> The following changes since commit a38fd8748464831584a19438cbb3082b5a2dab15:
> 
>   Linux 5.12-rc2 (2021-03-05 17:33:41 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.13-rockchip-clocks
> 
> for you to fetch changes up to 40f29839d8bef5aecaa772afa8e5f2ff8434b49f:
> 
>   clk: rockchip: drop MODULE_ALIAS from rk3399 clock controller (2021-03-21 11:13:30 +0100)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
