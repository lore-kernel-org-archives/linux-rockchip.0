Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8306E7BDA2
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Feb 2026 22:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VqaagXsStLJ8e6Br3SlO16DNSxeh/wXLVXg3tgbCkRo=; b=r02VrhZFpmI2eJ
	YfxBWCODBsFzbZWuKpyCxt6rql9JbibcFp7upGOclnSkSnaJCTUqWUPj8SmFzXuANqLPkqgp9axJi
	dCuUTrYVkHtCf7pn6g3hjod9qU6xTj3E7+dfgzOugko0zkf0jeU6leobVGyrmfBKCByELrl4oI5W0
	IENYN5HnH/SwvZMobUU5hmOYaLa/QuAeqX1h4Xnk7ih5KRN18WkaZsXaMv8e32YnllzJEYP8/1B8j
	bGiN/qLkQnkTRJYnQ6re0D/5szyZfDyeFdZI+uTq0yGrhwvNSsy+b7JT0YGAg1bERRK0b4aT8Izla
	HHgwSd7qX2C5RgV4bzzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuI6t-0000000Gzxs-3sUN;
	Sun, 22 Feb 2026 22:39:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuI6o-0000000Gzts-1nMJ;
	Sun, 22 Feb 2026 22:39:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=8FR6aRRNDgHmvF9VbyRy1R5NhPhdZwyQ7h4RicWaFHQ=; b=cLQ/0pFSts499AqKxk/JdNVHsX
	jRjjZCTyxlcw7TSgh4Mtg+Obi0LYEFqK9McahiSGRmtswB8EGZwY66CS55zJC4M+8/C4vg55nTndv
	GxMeOILAE1PB+KKGbMoS5mrM0faJc/68uG2tT9PNNZzbSwZ4zir0kfI40jn//IzLKUBkr6/kiNVKV
	aq4uYRBTV8AMM8OKYyG7LLQfUW8zKKY5OKJtNxHVoMdAFguilq/soaZ8of0HJfipsxuW56CVpitP4
	YOUlWQdyDOI3BIjiIY9kumqjBdVNV0ldw4g0bwEIRAEU+ovStClQ+97f9tTrpG9wEUfMka+aeRKMS
	188g284A==;
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Describe HDMI supplies for nanopi4 boards
Date: Sun, 22 Feb 2026 23:39:09 +0100
Message-ID: <177179992308.1861430.9894023788574826966.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <8c1837976937a0ef03811109ca12f353c4d5e67d.1767111968.git.robin.murphy@arm.com>
References: <8c1837976937a0ef03811109ca12f353c4d5e67d.1767111968.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260222_143926_471069_847F7469 
X-CRM114-Status: UNSURE (   8.81  )
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


On Mon, 26 Jan 2026 12:32:05 +0000, Robin Murphy wrote:
> We already describe the 0v9 and 1v8 rails used for analog supplies on
> the nanopi4 boards, so hook them up to make the HDMI driver happy too.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Describe HDMI supplies for nanopi4 boards
      commit: 99372d2430c07476e36a1964cb6f21334183db44

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
