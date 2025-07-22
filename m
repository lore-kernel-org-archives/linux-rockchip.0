Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61B62C83F25
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jul 2025 00:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4BCkStOU8OqpwzqIblMsMTUPPgFiQ2r4T8D314/G1uk=; b=VykGFezIz0/rkW
	mo4hhiqjky+XSGaWwdiwUeG2c/YNcsB7fCEfxyoeONUpiogRO7TlsLkUEj5UCXHahW0SknzTL3yTE
	Xm1fnDZHLr7gNty0yjPcrFsxgxMtuZxWGrv+0xiqUzzr1BPiTjNWEK1vAkVK0aPv/jps5zHHU86vt
	hZn8eaPzcDDGNzVCa/NPjDahMrUbF4mQryFHqkkTZgpaNe8+CzR0k0VHmM11AxbppGMlXfuQPEAPm
	58a2u6xu3cHqFoN9aMmpiq+8NykLCWG45r0o6wvVhRPhSmOtqaWfZqcH91hG+CXHJvzOqu6rcduZW
	PkGzC77E1MrWI2zoBJVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue0nB-00000000wpf-42bI;
	Tue, 22 Jul 2025 00:23:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue0kx-00000000wgX-0i24
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Jul 2025 00:21:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 903F95C6393;
	Tue, 22 Jul 2025 00:21:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26608C4CEED;
	Tue, 22 Jul 2025 00:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753143678;
	bh=+mLBhEzMvbH2b1qWZhdNH+Bt/zTqoN/FLVEOzmv3fNU=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=Plz27BxPZAQSqAldMb9xeV2pAdre2DclZ4pxgO36K8er0p709pdfTjsLnm+r3NTVG
	 h3CUKBgdgslf8BZnuG3in1ViZCndznX8B7sWnElh7I0gd++c61LMMX+SBfuTCDOgo6
	 53sdGHEOYNreS+bmQiNm6e89yMTGGkXKu+Z2tZnD3hHf9WrpyZGJRUFRYJq7iN20jd
	 wlk8YfoEjYbE5bQc2LuGHxizVn+pbZACJjHZxIsyURdjWkxL0DeO4RRcpwgYCjnO8t
	 eWnDAnRYBD47TeDupbqFgtt7F6R3j8GKugyXvRn+pFDmjQiEAhXQW9Tbh+QIhgYIWf
	 aFAFeS6A/xgiA==
MIME-Version: 1.0
In-Reply-To: <6515302.QJadu78ljV@phil>
References: <6515302.QJadu78ljV@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.17 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Mon, 21 Jul 2025 17:21:12 -0700
Message-ID: <175314367207.3513.432381120008342441@lazor>
User-Agent: alot/0.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_172119_277959_03FE4F1A 
X-CRM114-Status: UNSURE (   8.83  )
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

Quoting Heiko Stuebner (2025-07-18 14:08:17)
> Hi Mike, Stephen,
> 
> please find below a pull-request with Rockchip clock change for 6.17
> Just a single new PLL rate for rk3588 this time.
> 
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 19272b37aa4f83ca52bdf9c16d5d81bdd1354494:
> 
>   Linux 6.16-rc1 (2025-06-08 13:44:43 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.17-rockchip-clk1
> 
> for you to fetch changes up to 132b62280a9dbe38c627183ae7f1611de3ee0d9a:
> 
>   clk: rockchip: rk3568: Add PLL rate for 132MHz (2025-07-10 13:47:36 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
