Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31337D7831C
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 17:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9OybNTp9wIGhBW8zDt6rKLxS5YzZUzPsWD3Fskz/Sg=; b=c361OpzEJ8lrX8
	u0+O+K7I0zCcho3HtPvqxLE8Oi7OhQv60wT7gcb4V9KIfM64gKlsWEucxRwFZdOMzskBBbdw4iJUh
	Bo9+4dm/Y5SAgPBjTNQsqwROo3fgG8HJ0tktkkPDgiYMEPmhDePTcaOKi8W5QscRJQ00Qx4uQI6w+
	d+LNKJdmQxtFdXawfcHPfJZ+/sfE24G3zPaWw6kgBX6zbfPu1xvqTQ/78+Vi8vd0zLyY8CPwHyeGH
	r3854clAiP5YqNE/b8HM6B5RVNguckmTGzgR+JSFP9jNRFCP3XDpzFFDc1cA8l44J4kXwNeD6maxL
	znrBE4BOKIhVDORrx3IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIAhf-000000076EZ-0JKK;
	Mon, 02 Dec 2024 17:59:23 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIAge-0000000763r-1IpH;
	Mon, 02 Dec 2024 17:58:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 32920A40CBA;
	Mon,  2 Dec 2024 17:56:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BD91C4CED1;
	Mon,  2 Dec 2024 17:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733162299;
	bh=bJXHhv1125KrcH8q0sNs+ESdxa4r7njPfil1NuS7//A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Dxz/NeTUoIAnlz4vAj6C9KKzvQtSbUU6WtoHAu8iLkZlmOnxVaXaFYG1rhiMeqzDz
	 rZDgv5XsmDpZZRowHBN1zLxUYkeddWh7TNZXK+PlceuAXTWSo7X1gOawVhIFOn1RKP
	 X1gVSeEK/YgT/+3I6O65NQcMq+vtnsEPiSEjN/sUbXgT+sRxK+lBHFt2mGsRwkxEdO
	 J6F8P+i4Kt7YpEKQsbdHAbcF2fT7ID+Lq2TrxINt5Aq9OaMC5AhQgGIaUQD90q3stV
	 Y4qu7OYXEOBr9Se06hMfLiLdyhQ0+/5m/Wkf4UCLiRsNdAjHLRssmh5PXDELgRl2DQ
	 Ea3QEzsPTnsIw==
From: Mark Brown <broonie@kernel.org>
To: frattaroli.nicolas@gmail.com, linux-rockchip@lists.infradead.org, 
 Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
Cc: lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, heiko@sntech.de, 
 linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20241118045605.48440-1-dheeraj.linuxdev@gmail.com>
References: <20241118045605.48440-1-dheeraj.linuxdev@gmail.com>
Subject: Re: [PATCHv2,sound-next] ASoC: rockchip: i2s-tdm: Fix a useless
 call issue
Message-Id: <173316229709.189181.1009410834028591581.b4-ty@kernel.org>
Date: Mon, 02 Dec 2024 17:58:17 +0000
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-9b746
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_095820_419411_1EA15107 
X-CRM114-Status: GOOD (  11.28  )
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

On Mon, 18 Nov 2024 10:26:05 +0530, Dheeraj Reddy Jonnalagadda wrote:
> This commit fixes a useless call issue detected by Coverity
> (CID 1507978). The call to rockchip_i2s_ch_to_io is unnecessary as its
> return value is never checked or used. As a result, the function
> definition and call is removed.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: i2s-tdm: Fix a useless call issue
      commit: 42c7af046aaf35c42ef864cbd96df025c48ce50f

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
