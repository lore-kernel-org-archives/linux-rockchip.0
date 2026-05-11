Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2F0BCD4840
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 May 2026 18:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIcDFYqIolMJplotB9nzfmnm3jpf0yukWTePZ7cvBvg=; b=abjOW+YcYWuE7d
	wgEnImLdxqd/MPeeNDOQO0y4r3GuLB2XyKUPtPE3U3POMDYspHarZClTfPm2etCKythC/BFCwYRnO
	l+RPbfHj90vh6mx3zslpRXFghBSKg9l+klzoK3rjoEri15+1bbAYApksONn82Hm1fzOnQd2rxges+
	bvJlTwe3mtgYRELh+Zz4e2RWdim+JF4frO7FFze8BIeY4NjOWKIopAgNIcO4Wwd+dClkQFRyd4QJG
	iN7vLoI5HD2kQCSvQVoyh1hS/CJK8yVv2/1bFtOm7LOGTdO2jRcjM8hz0zKgZ+lvUuUo79J6CyJpV
	bXgVRvY4mVQ7DSH5urPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMVCK-0000000ETNL-1e9i;
	Mon, 11 May 2026 18:17:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMVCI-0000000ETMo-0MyB
	for linux-rockchip@lists.infradead.org;
	Mon, 11 May 2026 18:17:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 291696001A;
	Mon, 11 May 2026 18:17:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14EBEC2BCB0;
	Mon, 11 May 2026 18:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778523460;
	bh=lbURAKti2CzpwsVQhG3cs4u+CeZLlfqHQLKrPBlxm0A=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=fYoeCKofqFa1PyhhiAlSmCaF6Ac+bBHg9sH8kfm7lIk6BK0OtQJq0r+EiWfPAkeHr
	 AVtlO/keiy8D+jl0Oa40NQUF2qYMFcK6ahne5MNJeX/2rqYQlBGk2bZ36wZkCjUnpa
	 CPVhKgH3HvM7gzuTbdJNY+D1amMprHPv5MBnBs+poQJEoM1o9DKYe/291RNjJSPEl0
	 xKGTjkf2njxEUMaTIPX3W0tG9UTNoboNj+eCyD74X10hHMktexCoGGU4DRITBTQbrU
	 qU47SgK2fZtMVe/BCnRJalmSL9aQGPzyM2TXF4w9ZCvOtybm6cxPI7OLPWLSxOxTYq
	 vyuOHG4t+i9kg==
Date: Mon, 11 May 2026 19:17:33 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V5 06/11] iio: imu: inv_icm42607: Add Buffer support for
 icm42607
Message-ID: <20260511191733.1c53e757@jic23-huawei>
In-Reply-To: <20260509191907.24734-7-macroalpha82@gmail.com>
References: <20260509191907.24734-1-macroalpha82@gmail.com>
	<20260509191907.24734-7-macroalpha82@gmail.com>
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

On Sat,  9 May 2026 14:19:00 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add all FIFO parsing and reading functions to support
> inv_icm42607 hardware.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Sashiko was busy on this one as well.

Not all necessary valid but at least some are.
Given I'm way behind with reviews and it's getting late I'm going to
stop look at this series for now. Please take a close look at:
https://sashiko.dev/#/patchset/20260509191907.24734-1-macroalpha82%40gmail.com

If there are things you disagree with that's  fine but it
has a bunch of things in there that are definitely correct.

Thanks

J

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
