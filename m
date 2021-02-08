Return-Path: <SRS0=M6n8=HK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C5F3C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 20:25:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43E6264E6C
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 20:25:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 43E6264E6C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/5FkduRwCEXK3H9JybbqURYq3LyMcHUWJYf/f3bMeS4=; b=IbVNy3skEQOKvPYGV2eh7xIWE
	E82goAHTqEkMVMD/pV8XQh+WXRU1HxZ+MYp7XBQ8oqgN0sf/318enQdjmu0f6Nqdo9lxcy86Ec0+U
	RCFKJQSGK7MecSjRv+fRxMIDjFjI/wjoN5WHd0SGh9jL8jgYcTYmqXoMiwQTMTVPTIKUTIA7E2U1l
	sYKeP39AUhICHoSWlkpaS5O+wHJQcSBZr02NdNh2c/OipcrIXY8dqqfQ3/EQgmI+qGDPhfAA2ZKSn
	x7gfQ25RoZj60dO150weDW9ik9kXk9Id/rvn83qytmQhqnCpGg38yA//K8J0jhfKwwf6l7rq2byX3
	J8JK/CdcQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9D5c-0003jY-6w; Mon, 08 Feb 2021 20:24:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9D5a-0003jA-7w
 for linux-rockchip@lists.infradead.org; Mon, 08 Feb 2021 20:24:54 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6F42D64E59;
 Mon,  8 Feb 2021 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612815893;
 bh=EgVQ2aD/dOIXjsVeJJ6GqrtPMXdfFfaEEN9hx6jcINg=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=J8j4XJE+MX+yMAr/qZpZMCwnk/XnaUBdpcYImtZVkdAt/Itjay1eAY5F2czbOnRJL
 nBypw2SUvs+R3gcGZkCudlAzQEh3sY6Sv7nEJ5QgZ5SoP5R9rDvewjdzreR1nzjxNO
 cO3zx1KpcCdO1KXpvH1wcwz4TgwW1qQt4lqlh0QZmiHooief8z3yXrpA2d1NKIvDQq
 C03pJIBfa9q9TYIOta9qVAUBNnRGmOEke4SaUBQaAPGQrb0lrDpdIqnaJco4oL3gsp
 Ki0mE2aVMVXXAqRLne6erBnp6K6tIkKE85IAQBvV2pXlZdeSuZhJ4w+Xs0y4vyvnFN
 EXGHrWB2HcmsQ==
MIME-Version: 1.0
In-Reply-To: <3091603.aeNJFYEL58@phil>
References: <3091603.aeNJFYEL58@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 5.12
From: Stephen Boyd <sboyd@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Mon, 08 Feb 2021 12:24:52 -0800
Message-ID: <161281589209.76967.2910492621269978365@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210208_152454_396000_4A3FA6BD 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Quoting Heiko Stuebner (2021-02-07 16:50:45)
> Hi Mike, Stephen,
> 
> please find below Rockchip clock changes for 5.12
> 
> Please pull, thanks
> Heiko
> 
> The following changes since commit 5c8fe583cce542aa0b84adc939ce85293de36e5e:
> 
>   Linux 5.11-rc1 (2020-12-27 15:30:22 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.12-rockchip-clk1
> 
> for you to fetch changes up to 4bc23b3c83c9a3fc0a7dd8f2f11f451aa92c85cd:
> 
>   clk: rockchip: fix DPHY gate locations on rk3368 (2021-02-06 01:05:04 +0100)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
