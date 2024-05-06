Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35560C25B10
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 23:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8NHJvOHjAfl1vBf9Ve6CFCvATNLijRHUYc8BG0AK5Y4=; b=BAPVHD9t9miQ5p
	/wAxCpV/DF9m5lvmiaye5GXV/Hk7ZPZCeg4L4XIQsad7D1QpRhNEBnD7WbKyboZQhl366SHS/G7Y0
	S/N99c3is7v3D8OsDTeAXzT67sRn7zKZMPXT1ALX9dPCmLwZ1b+TgJBC3M0quFQd2SZYspIBiMjVy
	2d1rWOYUSf8zVtDQ+rFzPeFuoUdF+GrlgzZvfaEZ3/PIetmvl9sfaNwyFa01RSwNWxjVJpzBTluQs
	A2+Fv6sp92VMWQuuoHutLRLdoiE3YHeFQmjhCWnUaxvstYXy48d88Ek9G8YatmFxhuwUvAljbdbeu
	yb7qjxeVqBURto9FyK5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s489e-000000095X3-28CO;
	Mon, 06 May 2024 23:53:58 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s489c-000000095W5-0juT
	for linux-rockchip@lists.infradead.org;
	Mon, 06 May 2024 23:53:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5E6E9CE0BAD;
	Mon,  6 May 2024 23:53:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78DA6C116B1;
	Mon,  6 May 2024 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715039633;
	bh=oXNxRty5jBZYzk2LULzWX/+pxuJZEoNvf4lZmOqybxA=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=jhw1vEvh+BvQO/yy06X2g9UnMrVv5Uh5jFN3zoO+e0eFfVVz0L2uJh6xfQlxpibgh
	 XeYyyIvNGz+XI3kRzpCGXyCQWsb6ZXTsTlRfL6+aK1kBsXGKaRoyMyoaO3lHSyipSc
	 qbs7cvamquXqMAKP5zg3fnjvS/H76J18zfwM1RsCQTHiTFefcB7i/ljpZTgL2K5nx5
	 gxWUqnsiMnTuM3sqh0LxIVZDB2P4s+yr7tQGdLpz5MTCCStFGI+5kHQgwv15YpXn6j
	 1N/3p4zxoWEZVMsv4FzawyppVryPEOwc2gOxzLricVKE0WnGXG/rfqLpaGKNAiy0Ig
	 CY6q3TLDmL45A==
Message-ID: <aed58a87f30bb5717d4a874b7e86bdc4.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <7502061.LvFx2qVVIh@phil>
References: <7502061.LvFx2qVVIh@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.10 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Mon, 06 May 2024 16:53:51 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_165356_409747_3699CD37 
X-CRM114-Status: UNSURE (   7.97  )
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

Quoting Heiko Stuebner (2024-05-05 13:05:38)
> Hi Mike, Stephen,
> 
> please find below a pull-request with some Rockchip clock changes for 6.10
> 
> Nothing really stands out, it's just some small changes.
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 4cece764965020c22cff7665b18a012006359095:
> 
>   Linux 6.9-rc1 (2024-03-24 14:10:05 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.10-rockchip-clk1
> 
> for you to fetch changes up to f513991b69885025995dcb4ca75d2ee7261e1273:
> 
>   clk: rockchip: rk3568: Add PLL rate for 724 MHz (2024-05-04 12:38:13 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
