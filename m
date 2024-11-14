Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D45F0D6A249
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Nov 2024 22:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wctsnbq3ZebckiTQnpWMa8ItGWti+ZkC734tkqnOl5s=; b=okxsmpe/iovYZj
	/R2nQ0/8YyznOAmOR9DzYIu7EkLPqf5R9TIc2Qb609/Voi1LngSgDPnjUMLzKyFsbuDQwAYdf9564
	zfm14GMORf+MorhmAlFfl2XidoLzKa2FrMyx7+VNO8aSQB9I9hkvHOOvdGY41dmes8tHnPgn1PylQ
	SACNDAVCVg3qFLUrGt+fONcg4qm0Y7OJHGhNpUBQZBYJY0S8S4h0QEcdOdnWL1HRiz3Vu8ltinLPT
	6KGitEtELrKFZQVisX9yCzjS/XpUoQUTDDuSmhG7Yco2XxoH+D4mdRI84Jk6BDm3/9ltZDmB6jlvX
	bDMp0C/Mvnt5Ivy1BgQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBiYc-000000010x5-3MTH;
	Thu, 14 Nov 2024 22:43:22 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBiWy-000000010ia-2vrG
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Nov 2024 22:41:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id EB6C6A409B2;
	Thu, 14 Nov 2024 22:39:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8600CC4CECD;
	Thu, 14 Nov 2024 22:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731624099;
	bh=vQzEBRctSFfejRp8W+MgBC0e6t2pdFAweBbGFmzpxJU=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=kLt4E0ZDUrpuqpqUSBqWTTaLjAOxvvFhFu9lNSzYIpD31yLl6FMGWSVZiXBvzK1c6
	 ue5TXf7Gg3C0GfxD/lO9J3VUzEzQhap5bUDlX6GzOu+3xa7c9+jZ/H9uMUQ7rBTI3V
	 uBpWpBYLlEDcaEknRzjRRibxu/3vG0NyIlJH08UfCU0CbskTJ7xk4E51gxmKb3CF6b
	 BxQGSWk0Slvk3eZzTLyVT66enZZy3OAB/91TLJPGIB2zyI3S9kO7A5Y6aroCoeum4P
	 2PDHIWARKUlw12abYLfMKffYahuk/oz070V7immI6e9/Gzr35lkbGirankaXNXSVkr
	 W6C/4i4gRIotA==
Message-ID: <9168a704a7a09445fdc1d159511b25c3.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <3061836.mvXUDI8C0e@phil>
References: <3061836.mvXUDI8C0e@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.13 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Thu, 14 Nov 2024 14:41:37 -0800
User-Agent: alot/0.12.dev1+gaa8c22fdeedb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_144140_802192_63DC1C7F 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
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

Quoting Heiko Stuebner (2024-11-14 14:38:35)
> Hi Mike, Stephen,
> 
> please find below a pull-request with one Rockchip clock change for 6.13
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 9852d85ec9d492ebef56dc5f229416c925758edc:
> 
>   Linux 6.12-rc1 (2024-09-29 15:06:19 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.13-rockchip-clk1
> 
> for you to fetch changes up to 5011cc7ad9aeea98029385f8a0e81a0ebfc45bed:
> 
>   dt-bindings: clock: convert rockchip,rk3328-cru.txt to YAML (2024-10-08 21:11:29 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
