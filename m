Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23606CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 11:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=usdD6gILklD8hJYUZ21bVNmM19bumZiDbplCtWXYPyI=; b=W1al4I56stvDab
	gEhruPEy7FzxtK63NnAyXLrCx+9iNwb1vK4YEqLKZzy0yKooUDOQarodlVXyHxq5MR9c4Sl9tXbE2
	rSZPOd4TRtyqxXak0MxBg/rhQNz+AAcszSpn+fNeIwccgYvTJMwwbpRwefNNjq5GiuLf+e2ohVMtB
	W3ZL8+AJpEaJs8Gh5JZEQwivLM+P3xYn+eUaMPcBP4N/Ds87bf/IXV4igsdR+Uy6UWJE4bvzOXBiy
	pBVNQMh04334TnEAuStldPHar9hRAyuzepxqLwjatyJTUCcoeX+HgwrcHYp9cN9KbWoMllTCOSTrK
	LNUtYP9Kk1fyBGnP2Kdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoVf-0000000D8zt-3DrK;
	Mon, 20 Oct 2025 11:57:07 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsyTj-00000009hZe-0cQb;
	Sat, 06 Apr 2024 05:20:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0D4D5CE2777;
	Sat,  6 Apr 2024 05:20:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3C5A9C433C7;
	Sat,  6 Apr 2024 05:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712380828;
	bh=TBj/hcnPrvS19ZOluMZ12evt8AeDaDrUTBeM5kaTuKY=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=HYazYNypOS+iPe/PmwIZVgrP0OAjOmuWcCZaXmQBd5/DF3DU2Cm7HK1KTLKVM8W2j
	 EfdrhznuDsHvbEh7NeV1r2EDMVkxTqo+hmKt5MdFIcqj68UTB4u7gvHG6geAe3ArfV
	 cYxb7yc2nqhO3pPj8ToTFIgL78NntzPlzi3tNk1u8F7N5z7SqSGJ1Z/QhHbUaQaR1j
	 GTv/7bDPNNXqFXoXNMGCl3bjIAtmML/lX++bgYkRjXumLNf6dEzpQPrpxdPeyVgSKh
	 czfxRuHIWxcuBJ6wGSXEzVfHmRCYmRJdToESEDFulu3u4HF5IZUSSU3tkxxLhyQRAI
	 TbkNIwkM8MMRA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 19C9BD84BAC;
	Sat,  6 Apr 2024 05:20:28 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH 00/34] address all -Wunused-const warnings
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <171238082809.31617.17365732495689756509.git-patchwork-notify@kernel.org>
Date: Sat, 06 Apr 2024 05:20:28 +0000
References: <20240403080702.3509288-1-arnd@kernel.org>
In-Reply-To: <20240403080702.3509288-1-arnd@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: linux-kernel@vger.kernel.org, arnd@arndb.de, mpe@ellerman.id.au,
 christophe.leroy@csgroup.eu, dlemoal@kernel.org, jikos@kernel.org,
 gregkh@linuxfoundation.org, minyard@acm.org, peterhuewe@gmx.de,
 jarkko@kernel.org, kristo@kernel.org, sboyd@kernel.org, abbotti@mev.co.uk,
 hsweeten@visionengravers.com, srinivas.pandruvada@linux.intel.com,
 lenb@kernel.org, rafael@kernel.org, john.allen@amd.com,
 herbert@gondor.apana.org.au, vkoul@kernel.org, ardb@kernel.org,
 andersson@kernel.org, mdf@kernel.org, liviu.dudau@arm.com,
 benjamin.tissoires@redhat.com, andi.shyti@kernel.org,
 michael.hennerich@analog.com, peda@axentia.se, lars@metafoo.de,
 jic23@kernel.org, dmitry.torokhov@gmail.com, markuss.broks@gmail.com,
 alexandre.torgue@foss.st.com, lee@kernel.org, kuba@kernel.org,
 Shyam-sundar.S-k@amd.com, iyappan@os.amperecomputing.com,
 yisen.zhuang@huawei.com, stf_xl@wp.pl, kvalo@kernel.org, sre@kernel.org,
 tony@atomide.com, broonie@kernel.org, alexandre.belloni@bootlin.com,
 chenxiang66@hisilicon.com, martin.petersen@oracle.com,
 neil.armstrong@linaro.org, heiko@sntech.de, krzysztof.kozlowski@linaro.org,
 hvaibhav.linux@gmail.com, elder@kernel.org, jirislaby@kernel.org,
 ychuang3@nuvoton.com, deller@gmx.de, hch@lst.de, robin.murphy@arm.com,
 rostedt@goodmis.org, mhiramat@kernel.org, akpm@linux-foundation.org,
 keescook@chromium.org, trond.myklebust@hammerspace.com, anna@kernel.org,
 masahiroy@kernel.org, nathan@kernel.org, tiwai@suse.com,
 linuxppc-dev@lists.ozlabs.org, linux-ide@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-integrity@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-crypto@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-efi@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-fpga@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-input@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev,
 linux-serial@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-fbdev@vger.kernel.org, iommu@lists.linux.dev,
 linux-trace-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 linux-hardening@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-kbuild@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-sound@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_222035_544886_98E08931 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 20 Oct 2025 04:56:03 -0700
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

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed,  3 Apr 2024 10:06:18 +0200 you wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Compilers traditionally warn for unused 'static' variables, but not
> if they are constant. The reason here is a custom for C++ programmers
> to define named constants as 'static const' variables in header files
> instead of using macros or enums.
> 
> [...]

Here is the summary with links:
  - [05/34] 3c515: remove unused 'mtu' variable
    https://git.kernel.org/netdev/net-next/c/17b35355c2c6
  - [19/34] sunrpc: suppress warnings for unused procfs functions
    (no matching commit)
  - [26/34] isdn: kcapi: don't build unused procfs code
    https://git.kernel.org/netdev/net-next/c/91188544af06
  - [28/34] net: xgbe: remove extraneous #ifdef checks
    https://git.kernel.org/netdev/net-next/c/0ef416e045ad
  - [33/34] drivers: remove incorrect of_match_ptr/ACPI_PTR annotations
    (no matching commit)

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
