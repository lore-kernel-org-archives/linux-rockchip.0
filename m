Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA102C79F9F
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2026 10:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ipWLx9uTUcqV47MpnUcety2jN7o0j1+Cmn3z/BdcuWY=; b=DWV9D+A/bCVMKd
	mFUclbG5P6bu8xn/mt+xxfdCjSXrtjj25zIxLghrUjcGzeu0+axGqAfvS2HnQCaaymalHZitN4Kt6
	CdFIkqe5ek79HjZWFs3fBnIjdSLpcuPEIcaLHHnY6Cgj6woCv+IEad0DR32DoQqFi+JbA25n7fMcw
	vbJKO44dmOEawQzHclzYWtdVq+i1rSbBdiJy3P6NSXVDLBilbNcHpiQncN4V23hpDVSHKijdGqcqq
	gzZ8cxpeQ3e8NLN5raSm2+50iC6ZgJrE79gnnJEcWjKuf2py8aNtDNLvVPzPyshH+HAqECOQ2G2OD
	LtLSN0RFuaVz3pN90y1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4cOW-0000000E70d-1Qg3;
	Thu, 10 Sep 2026 10:52:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4cOU-0000000E705-35rc;
	Thu, 10 Sep 2026 10:52:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0D428600CB;
	Thu, 10 Sep 2026 10:52:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98D741F000FF;
	Thu, 10 Sep 2026 10:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789037557;
	bh=/6bLEU8N8u5u4X1B/jW1e/oTDaB/QQhtr46eS9kTY1A=;
	h=From:To:In-Reply-To:References:Subject:Date;
	b=W+vGaeHlZSeR2FfCcoQFlCCbmjLh0zv0aHXJCDCXomWBO4VjNlIm1wDr53iT6PvG6
	 0iBG1IQ6LjbXsJ9SO5RxE0H1Qgtzm3wBdLbz4e/uihjsK2Gx8bEDpOqngWGz/bfhzT
	 bHfDYM7pN/jbiewpG6JPVF+CaWGadsi69EmROCBi88rbuko9vKQcN/Kh/7hYlI/oQo
	 zlEhWwnm1/lyjSrxukvjvyzE07wKAX01qctM0i9ZR8p2tyQ1uumNR4e09a0epDfy4I
	 N0/oeXwpWP5+YxKmjghkMIOj4zZQd7DFvR0CgwkckwhTVpgzqlSJqhv6wn4QisIua/
	 sDn86WEHusFKw==
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, linux-spi@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jiawen Liu <1298662399@qq.com>
In-Reply-To: <tencent_DD16C0EEDFEF4ACAFAB5A23EC8235D462707@qq.com>
References: <tencent_DD16C0EEDFEF4ACAFAB5A23EC8235D462707@qq.com>
Subject: Re: [PATCH] spi: rockchip-sfc: disable runtime PM in remove
Message-Id: <178896790450.151853.16995360553937973952.b4-ty@b4>
Date: Wed, 09 Sep 2026 16:31:44 +0100
MIME-Version: 1.0
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1106; i=broonie@kernel.org;
 h=from:subject:message-id; bh=gWyC1RooIVOqxZQ+/ACWD8MJUFBcBpF7Fxh1Lm+3OUo=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqoovydzWhB8EcVlc+rCytQ/FylKrTWHnZ2Qb/f
 79+pF/fQ8aJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCaqKL8gAKCRAk1otyXVSH
 0GOoB/0cE76ty2WLGTc9YNo/NSPeLHlkAEgOzZ0qJgKqDdjIWhg3JAMQQbrHTa3SerIMi0jbAdE
 LwQMxTQjYHLfy4FhU4gfNfb8LjCxMcexdrs9GikjjLjnya7zBG6taciGxWILTByOGwt7FoCLVuq
 WSylERmytm6+LzhkAlicaF/a9zDHDQYTbVCm+JHxBuy7WaKzWbsNlzTdMnuUr5Yigt1fh6cQpgP
 gIgoJCLST0OWA3MbWv5CAsqK/JuiZFuIxjKvcox3IRXTKQxj28nIhSVUWmr2v6gp7HPup6mbQnW
 gDdyleao2HxW61qrv/RO+60g1ZHxxVLeBTqhWQMb7j6E3suj
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

On Tue, 18 Aug 2026 17:05:50 +0400, Jiawen Liu wrote:
> spi: rockchip-sfc: disable runtime PM in remove

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-7.4

Thanks!

[1/1] spi: rockchip-sfc: disable runtime PM in remove
      https://git.kernel.org/broonie/spi/c/34e32e9ade58

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
