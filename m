Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F8E0C77B61
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Mar 2023 16:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4r7fWaH8NlTUSwPoqO6Qgma6rXJeTXoZavAQRywX64M=; b=Or2zL+yfmYLdUP
	DduFC5z+SQu4UDkQVWi7YzibfQH9SUBW7BUM8PnOotJjndvEwxnWJn5b/VkOQfxxRpA03Z6xwudUW
	QTI9sD7Ukjuc2ph1bvyGFjjFsScsClHaoXDLyW5OAtHUgQ+EfqQWX1fntTCzjsWY3mo56mQxhJLqE
	idAXQtTH2Zq6lwzpjHbpSwe5XQMuq15f+wrMWgrpoarss/EFNI6qP6a1OLKFvDmQq8YsgFYVk7eCw
	ICn/FXwwg6rV2I1wurgCsJY0vTMrWjxdgMv36cYS4wRPwCcXANZr7KZ2OmwvZQIX27K1CglDAVvl/
	DL1hWRBjXTwaDgMliYsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phZ0r-001BIU-2p;
	Wed, 29 Mar 2023 16:51:05 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phZ0n-001BGN-36;
	Wed, 29 Mar 2023 16:51:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4546661DC8;
	Wed, 29 Mar 2023 16:51:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9250EC433D2;
	Wed, 29 Mar 2023 16:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680108660;
	bh=gfR+Av/dK1tTf1rXGgKZU7TIYCGAdnShcte6WdNtArA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=pOGp8cWzppB2no8EGLqn3n9hF3bsKQ1HCdG3RlGcKmcJiPtalMqY1Y+TD7BucRgOQ
	 Ll6eM2U/LX/NxPeJVYw2aUahOGQA4fBfW84pukfz/LPUQY0buMdFAWMlvjNYWmph9T
	 faiDfYVksxh6xsD6pF7fe29QlEBmvR68xHb7NVpYRUqUz2l3FhZU8PTw8MrzSRT9fi
	 RH0oHqsSomDyuc7UOOnLrNCzDHUOJUlXpyyBNG9C+qc9xJ+l4NAlB+EXIhXWIaRGdR
	 rRZhF07ZUS44pL++/vHx4pku7soDzVSJnZAyuXAlboQi1ki6VAc9nYB7/GMV73Wz2+
	 6zlj7fDkrvW8w==
From: Mark Brown <broonie@kernel.org>
To: tudor.ambarus@linaro.org, Yang Li <yang.lee@linux.alibaba.com>
Cc: heiko@sntech.de, linux-spi@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20230329062450.58924-1-yang.lee@linux.alibaba.com>
References: <20230329062450.58924-1-yang.lee@linux.alibaba.com>
Subject: Re: [PATCH -next v2] spi: rockchip-sfc: Use
 devm_platform_ioremap_resource()
Message-Id: <168010865827.3244769.13335044779439529619.b4-ty@kernel.org>
Date: Wed, 29 Mar 2023 17:50:58 +0100
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-2eb1a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230329_095102_037035_2B94A67C 
X-CRM114-Status: GOOD (  12.21  )
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

On Wed, 29 Mar 2023 14:24:50 +0800, Yang Li wrote:
> Convert platform_get_resource(), devm_ioremap_resource() to a single
> call to devm_platform_ioremap_resource(), as this is exactly what this
> function does.
> 
> 

Applied to

   broonie/spi.git for-6.4

Thanks!

[1/1] spi: rockchip-sfc: Use devm_platform_ioremap_resource()
      commit: 526c2966fca3337f01c513b1f0d85c839f8d8175

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
