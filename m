Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31461C79F82
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 20:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TcrTbclxDIQwvBQ08vHpncpOTF5tu49ryiK27+JdZQg=; b=FkAgp1TUUhZavz
	H7MiuA41/HNTaLLLcmJiuIGt14BJ59S3xyajSjPssfRRmWP1Xj97S/f1kmXpiU9mOBK8b3tTBSSnG
	hrlN2UBsc/QXtBDETMytezl7S5e3iva2sHwWF/9DGxrMQuPcSFzIQ+z46SF5uE2aqgi5haYY6gH5q
	vwYVl+MhMnT5iZgHXyJoOOL/TvKi1X6Ydw/pm1nB75sqfXJ2qiibQ4If55sNTQ+bUHqiBSZwxnrqs
	sIxMESJnBZkzXxtS7ouhdm2Bq/y9FJ/n0VeoOwwQlpuhLmYaFL552FrsvU4PQan/vUOtrl025vtzG
	OZz3kQWO/XKwuw7JVmnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2aGG-00000003Eul-1P9f;
	Fri, 04 Sep 2026 20:11:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2aGE-00000003EuY-4A7f
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Sep 2026 20:11:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5B1CE412ED;
	Fri,  4 Sep 2026 20:11:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 707841F00A3D;
	Fri,  4 Sep 2026 20:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788552702;
	bh=YhgoeMH2mlO0KR6C9C/IXzyhZk9dXM8agxKda5kT4Xc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Q28qFf3Zxw2q4w3Pt9mx5Jd/+eVUNBfN6oWL79TYrKJvw5lWURicntlljg1xdv5+z
	 XxabJ29ez9QLdrp7/l44X8c7SX+0lvDtlSTYEDSZVKkHTmxPeKaNw9ORI3gwbYBH6R
	 B8XawKumSs8K/BptS3+qghekYAvRULz5eH4c20Yca2yA7BMykXADAyOj3xgLrnfLyw
	 ZHvIJnLs9DHbprj1RAYZXr4/tdprxlfMLw3+rneFiYGmUzS2ez+KWJ7xVTJO31hJeY
	 zDXsoX3DYC0/YmIZDWeWC0UBSsDfnTaOOtdbVkvgLmtYC6UFm7Nj9f+rwO3GNYqjFH
	 vY/uhRrCUYHAg==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>
Cc: linux-kernel@vger.kernel.org, Andreas Kemnade <andreas@kemnade.info>, 
 Yufan Chen <ericterminal@gmail.com>, 
 Surendra Singh Chouhan <kr494167@gmail.com>, 
 Mario Rugiero <mrugiero@gmail.com>, linux-rockchip@lists.infradead.org
In-Reply-To: <20260904144728.1629471-1-diederik@cknow-tech.com>
References: <20260904144728.1629471-1-diederik@cknow-tech.com>
Subject: Re: [PATCH] regulator: tps65185: Remove redundant dev_err_probe()
Message-Id: <178853989858.632048.13657280228879604798.b4-ty@b4>
Date: Fri, 04 Sep 2026 17:38:18 +0100
MIME-Version: 1.0
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1136; i=broonie@kernel.org;
 h=from:subject:message-id; bh=tBgfHBdFaeHVulrE8oTTOyLS+2jY8CUbxzkSED5Fe14=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqmyX5dNG4OS5eph1ssfUGGn5p4JZl1mVH5mkkQ
 oazdDv14aSJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCapsl+QAKCRAk1otyXVSH
 0P5gB/wJd73agvz/tRJsNifvwj3c2l+NwKuqlaVu23v8HGtYeD8mmDQODZ+Bsq+ntpLYwWTb/pv
 liECMctBYMsIFMXAuTC4sHJX9M8hTuZjatmHKks0rtxUlGu6vETDggxp/U6rwi/xSMf29A/lfdF
 UJck4xQ40Ime6mG7RTu9DkLEDyDXbFnEHQPUnXQJLunHBw5uSVWaWJltsv7A5op7au01OpuY2Xo
 ksEdRQUo0B8v204oxM80q2/j5GSixpu3ME806wjnaIe/mYtKVXoJIhg+RFc06Yc82Tj1eeMi8e/
 Sm/pzmWSTVRAHTWiUyud+uOMRvAfNhDBHcazDdTv9YDJ2CDm
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
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

On Fri, 04 Sep 2026 16:46:31 +0200, Diederik de Haas wrote:
> regulator: tps65185: Remove redundant dev_err_probe()

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-7.4

Thanks!

[1/1] regulator: tps65185: Remove redundant dev_err_probe()
      https://git.kernel.org/broonie/regulator/c/761f34e333ac

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
