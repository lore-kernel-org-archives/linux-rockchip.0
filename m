Return-Path: <SRS0=fkR5=K6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BBFC47424
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 16:33:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D49C613C9
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 16:33:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7D49C613C9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1PKKKACn5jR8RTCKuElI1Fo3fRvg/wcpObR6+cVwSc=; b=0ynpYHGjdaYSVo
	S4NfNZ/121ZmNynOhIGYZBSxk7r0wDXYqvl/TBwIIcDf8+pMRAv9WJmZ97bTH86oCJtC+BDXwP37o
	+EpwEMcAibLCaOpPvKVQ8fsOfg1ErxKhVPFH5h47cK5C2p+2CB03hc3uAH2ml9FsnJ6OCmqLqY59q
	QVyB2qjbuiM/jqixXatad5H+e2gS+ksb4FQ8ZDSsanlRk7vjwL4/V6O/xXPdDLInULiTLWIPESRVD
	CtPWDoDOR/EvQC24qB6OwfzgpbEblGyGQe+pMPJv04YUoE/WfHZpdaWQPwQgDr+cb9sbdCWbut5z6
	DEHbiYXt7NUmGZ9ZQN+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpCkm-00ENJ2-8f; Fri, 04 Jun 2021 16:33:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lpCkZ-00ENDJ-O7
 for linux-rockchip@lists.infradead.org; Fri, 04 Jun 2021 16:32:49 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D5DAD610E7;
 Fri,  4 Jun 2021 16:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622824367;
 bh=+mORFr4TKbRDcsYrdc//w+GSAs3hIZH24GdNLhvPoG8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JiCYlFN+zDuaPswynU17hKBmUKP2DVhnmVRrSXXwsae+xFdbzXY+qq+JnQrn1Gb6/
 CFwVbknuUnjYqIShfnOshVDqSb9pKBMczpTcC1d0+9iJetrqVGreGFZkZ53L22eK9/
 /Qb9leOb0iww1atVXTnlDUFYiXLAKSVCSjixU18zogZZXPnfVC6NiFHSr05unWfGeM
 ISuqcR/t/NcKswslUCo3qhAyOVjPAuIJdpGB+kh8SH7nnINn76+4Kh9uyPQjvz1nGf
 LaSFbErXddVrtVIou00wFMdB2d27xE6ATPXNG9ScOkr0lFfSx0/7P0XyOLUw1bv7v7
 qM3xBrhN6545Q==
From: Mark Brown <broonie@kernel.org>
To: linux-kernel@vger.kernel.org, Rudi Heitbaum <rudi@heitbaum.com>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Mark Brown <broonie@kernel.org>, pgwipeout@gmail.com,
 chenjh@rock-chips.com, ezequiel@collabora.com
Subject: Re: [PATCH v2] regulator: fan53555: add tcs4526
Date: Fri,  4 Jun 2021 17:32:26 +0100
Message-Id: <162282428736.39035.5966034693466191501.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210528101946.GA418765@96e513df87d1>
References: <20210526162342.GA20@8bbba9ba63a4>
 <20210528101946.GA418765@96e513df87d1>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_093247_842740_B5F9EFD1 
X-CRM114-Status: GOOD (  11.32  )
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

On Fri, 28 May 2021 10:19:50 +0000, Rudi Heitbaum wrote:
> For rk3399pro boards the tcs4526 regulator supports the vdd_gpu
> regulator. The tcs4526 regulator has a chip id of <0>.
> Add the compatibile tcs,tcs4526
> 
> without this patch, the dmesg output is:
>   fan53555-regulator 0-0010: Chip ID 0 not supported!
>   fan53555-regulator 0-0010: Failed to setup device!
>   fan53555-regulator: probe of 0-0010 failed with error -22
> with this patch, the dmesg output is:
>   vdd_gpu: supplied by vcc5v0_sys
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/1] regulator: fan53555: add tcs4526
      commit: 5eee5eced95f1b35c8567688ed52932b7e58deee

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
