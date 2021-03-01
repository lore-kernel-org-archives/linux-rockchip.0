Return-Path: <SRS0=+1u9=H7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D072C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 23:39:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5D8AD60295
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 23:39:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5D8AD60295
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:References:
	In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XgX4QdcfkRH2+jgdi6dZkjXApUgg6aZ0Q3EdQFSaTQM=; b=0k8lROhPnTWGKwNIPQXZZ9Y7L
	18uKFZ9RuHx/oc7wJ+HsISjZQSYUdAkSdEvPjlCKWX02KjMBPE3nDE35EHceQu11lzfxcIZco4tqk
	68sXIkb7ZWyeBLF8rNiSEu9vHWm8wD8KSUAme1FySFiCPjMvr9fMQac87+UG+kiiUKFCjYCxgI0Zy
	LFsKtJv2B3YikVcPdpk0wzjwETZ9ry1uIDH4kKQpk58fYCNgqKJKQOWcQJY03ol3PTjVCJArXtsM/
	kGFrRqpZj83TIZG8IpcWngeKkD1JLUOaR3bwVuO6AF9QcNvvvsarUNg4dNWvJHILRQQ4tcFylqPhA
	4wABBrOmQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGs84-0005ck-Dx; Mon, 01 Mar 2021 23:39:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGs80-0005bm-He; Mon, 01 Mar 2021 23:39:05 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 498E460240;
 Mon,  1 Mar 2021 23:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614641943;
 bh=11tc3XCd4ttATWcpDw1lCPmytuMBwWlibLxpQSnMXC4=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=GcmFDVy/XO0MF3h2k+3kRlAYVcIjZhsNdcaOD1aAC0d++PaSK8FIatnNxc2asVRH1
 KVsQlpwfgQC7AlTMuhmxCj7cTSJoNagR8eincqRB258X1vTWmc20y6Eh/orJRkm7BT
 tU2yWjneoN24CCcSFhLKsMydQrYBj6sTAcBzf0b/KJF6ASjwClDudoGWvn0Vj3poy0
 6ZXZMQ6zZlSh72LdObtMK5FSbcyPwvtKbI2KEvz4wuV1FTyi4R0EvjU6qiBGIevc9a
 leyq4vLdyN2PesuaeeJoc3P+1qvqxF1y43zQjNvycpgY/ewF1s9mrBeeGrxO4V/T1O
 aMP/TBHCfCuPg==
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@kernel.org>
In-Reply-To: <20210226140109.3477093-1-arnd@kernel.org>
References: <20210226140109.3477093-1-arnd@kernel.org>
Subject: Re: [PATCH] [v2] spi: rockchip: avoid objtool warning
Message-Id: <161464187231.31555.9991392584243139110.b4-ty@kernel.org>
Date: Mon, 01 Mar 2021 23:37:52 +0000
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_183904_649022_942B99D3 
X-CRM114-Status: GOOD (  13.22  )
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
Cc: Emil Renner Berthing <kernel@esmil.dk>, Arnd Bergmann <arnd@arndb.de>,
 clang-built-linux@googlegroups.com, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>, linux-rockchip@lists.infradead.org,
 Jon Lin <jon.lin@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Pratyush Yadav <p.yadav@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 26 Feb 2021 15:00:48 +0100, Arnd Bergmann wrote:
> Building this file with clang leads to a an unreachable code path
> causing a warning from objtool:
> 
> drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
> 
> Change the unreachable() into an error return that can be
> handled if it ever happens, rather than silently crashing
> the kernel.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: rockchip: avoid objtool warning
      commit: d86e880f7a7c5b64a650146a1353f98750863f21

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
