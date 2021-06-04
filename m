Return-Path: <SRS0=fkR5=K6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCADC47425
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 16:33:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 920D7613C9
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 16:33:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 920D7613C9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsK87MJx4fjUVcmV1plfoUmuwTnmRSADFUxA6+nncek=; b=ZStfVYX7MXjQQb
	fIUuWTlbb3vc6g5QxFKDJqDP5QLv4FTO5NKbEghvamrp1Hmufwzu6U8qyZ3v8aSNjmBw0xpLQx+DS
	23Q2dlYpTF++efsf989AMNt33YSRwnFNdSuwnMwTz48I5EG6IK5dMfmC2c4+Zb9GXM5YO2+Nz8Jqe
	NUR2ur9Lm/Yww4SNhxe8vGeMsN59g286g+LPK0/8TZ+LvUb8QIDvPCT8u7N7uxIePPAy8zcH5PY5E
	tUlWmUUROalI9bIqmG8dZ3UJ/yn8n0GTuSc61bKkBbKnuyLzA+tFQYrX7LO8y6f7i9wrc2EgpFnZc
	hyzoMzNlKWhfZfKXwJAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpCkl-00ENIg-IV; Fri, 04 Jun 2021 16:32:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lpCkX-00ENBX-07
 for linux-rockchip@lists.infradead.org; Fri, 04 Jun 2021 16:32:46 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 316C8613F4;
 Fri,  4 Jun 2021 16:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622824364;
 bh=TFY60E/1BpH2r3cBnHpES2AH6tjaTWJgbyVIU0ro3zk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZDU5/z4qpZDo7IZNacM6DjmipnyNqBKKI7IpLx0zl7aFiClbBeR8n5y0CPsNP36Hq
 3PaR4vhhd/WL7nF//zcrpYc7JZoz7SkUxKe0uJmiyNax5glLHNPrI2/YNjyYGfhp/u
 e+Rjg9LahFSCtHsZf/A3H4jGmwpImYyCm9X+YEQB8OMLJxnaGCVCEn2gLDzQcR8fVG
 CReGOgckvOD30QPFdt5/QpSgwnR5bvFd6oLQN7mEoxEQEyA9vgbrcFfATLbPf5wol+
 1Fyl+4+G9hFyzjws5f/KTPp57kXh7iAvJRXxX9N4NvXiGWhSpHfh2SjQUQ9FN+oM3u
 75eM1OteVuELQ==
From: Mark Brown <broonie@kernel.org>
To: linux-kernel@vger.kernel.org, Rudi Heitbaum <rudi@heitbaum.com>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Mark Brown <broonie@kernel.org>, chenjh@rock-chips.com,
 pgwipeout@gmail.com, ezequiel@collabora.com
Subject: Re: [PATCH 2/2 v2] regulator: fan53555: add tcs4526
Date: Fri,  4 Jun 2021 17:32:25 +0100
Message-Id: <162282428736.39035.1786506812708182335.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210602112943.GA119@5f9be87369f8>
References: <20210602112452.GA98@5f9be87369f8>
 <20210602112943.GA119@5f9be87369f8>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_093245_087252_C582F09E 
X-CRM114-Status: GOOD (  11.89  )
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

On Wed, 2 Jun 2021 11:29:47 +0000, Rudi Heitbaum wrote:
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

[2/2] regulator: fan53555: add tcs4526
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
