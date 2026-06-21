Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFE77CDB46C
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jun 2026 17:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AFd5fG9WBfqrimGj4CkrZR1J5DNYuYaOnAL4tejDyV8=; b=K6+d33o9EDS37F
	5eH+1Af0HXWYHR11bVEUfFBg6C06Ta+HPlvQn4EpYMOsonRuu4PtQEz4TUjPxCLClpPvLouMmOqYQ
	9YQcnJGpH/6JaPhB/yMEqFrH5+n52hkKIWaRTkzwagFLlSq9By89hgqdENrayrqDT/DfTJheT1bGB
	PXf4iYe6/ud4LwhhEyVP8kQjFbq2pgg0FwI6gTT/RY3skz0cMi+PCOZqTwDRWYfhOm7asq12TKKnY
	NKK3t2lgWQl72MsnHv50jJZg/2BfkBjjnYLidUrd1dhe6l4c7p9bMM4XD3auxtMxKmar8IgshBml+
	PwLmjxiivYcp4RQ3VTSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbM5v-000000045ZI-2GTB;
	Sun, 21 Jun 2026 17:36:31 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbM5t-000000045ZA-3wNF
	for linux-rockchip@lists.infradead.org;
	Sun, 21 Jun 2026 17:36:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 47B06400D8;
	Sun, 21 Jun 2026 17:36:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71FCA1F000E9;
	Sun, 21 Jun 2026 17:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782063389;
	bh=79ag9ElUJF477aZhr5OqDggdcMTsrOOZX7Pg2ovv39o=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=HQcWocXvj3L0AOIzcVvPkIJ8sOIA/qzKcJr/CWadhi8d6EMtKLRR6Vmvw5EYSj9vv
	 qZ0sngjyy0Ru1793mg3j10i1LOfhD6oCGef6F3PcvNqEYqwGIRmeDVk2yWexE6Fyuj
	 7WO7Xd58A3WUIOwbEieAr9Tu9fA23j1xJDePlMrFuih4eENrLNC5Kta227nmMQWjVS
	 fS0QDIQKYwcCtLV47MtLU/X9UrRXkFYkry069Sg2jt/TRatJYWXPulgPm8B9pYtAdI
	 QZrCzNFe2cxt3zD4jBYcXLoOr+3bG5ECAu1cjTnqWt4dG2h4rYC6LwPMqgqCizL9dJ
	 vWsYVOh99wDEw==
Date: Sun, 21 Jun 2026 18:36:18 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V13 7/9] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
Message-ID: <20260621183618.31e8d704@jic23-huawei>
In-Reply-To: <20260615172554.160910-8-macroalpha82@gmail.com>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
	<20260615172554.160910-8-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Mon, 15 Jun 2026 12:25:50 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add icm42607 accelerometer sensor for icm42607.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
FWIW I think this has the same issue as the gyro patch around
management of the cache of what is enabled, but
this one sashiko gave a clean bill of health...

:)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
