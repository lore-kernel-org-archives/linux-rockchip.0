Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3D16CEFC37
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 17:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dVLD0HKeKHjCZ0TqI4dpp/Mnf7UEIFVoIAs1qAOkOag=; b=NjqYGS5hKTkA0ohXFYWHl2r9jL
	jQXiFxN1aBiaiaDZ/iG301LZn5f5h3qreM/R1Vywj4DxwYJGqEOJteKBYZqbIkzyYC+/pS1v88l37
	N76QUctOI/OblSVPyo6rou3fSjy3X01RfNDDQNA2iP9czo41GlJow4FKdvy/4QaVubQGYuqXulTmR
	DVGFeS1zFGh4Ye8BGghU1TDZxMJDRYQ3xCdMI1YGsAex7p4FI1W0MFlKQ1scgu0PUvFLZYzqXE2Q3
	OCu7+iub7GpbD0orTwFVnXvuGc1BXKQhtb6KMpP2Ji5fwRccv8kdGmpiM0d6bbLLDdaa51OgbFfIi
	jYmhFvGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syE7A-00000006ez2-0yEe;
	Tue, 08 Oct 2024 17:35:16 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syE4K-00000006eVO-12Xs;
	Tue, 08 Oct 2024 17:33:52 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728408738;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nAixrU7GSsMe+W1yVXLY+I0OJDCjyT5Uy/xMHz0imeY=;
	b=tz0ZfTzGAdexz0k7aapj9QSybaLydKJHKWPqt43zHC5q0DxE4HoLkX4cDboT3jf2YuSqHF
	xKTYPoYZaTHB/O7XQVzISZx6L9BAf5z4qcYpKAGhmaTfFznJZdkk2lHr22UhIQXvdEnqPX
	Z/EkqrwKuqtov1lPA/i70zGo6WrNqpHygFltRiHspypx5ZALdjAKn2ju4jWtiDI7Cvte0g
	TVBbf9uguTPCCgmzy1WneWtC9w0WpFIDP0Gs4/qnbeQySSjJMvicy/2x2+Z7ctgM4cpcy1
	mFVrWaKNXO/XT3nKO2x2N5tfF+qJNAg6xiwMGosvm/rhT+fXNtZl/iR8OvJq1g==
Date: Tue, 08 Oct 2024 19:32:18 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Mark Brown <broonie@kernel.org>
Cc: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 heiko@sntech.de, gregkh@linuxfoundation.org, rafael@kernel.org,
 oss@helene.moe, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/5] driver core: Add device probe log helper
 dev_warn_probe()
In-Reply-To: <ZwVlE9bgHYNT8J7J@finisterre.sirena.org.uk>
References: <cover.1727601608.git.dsimic@manjaro.org>
 <2be0a28538bb2a3d1bcc91e2ca1f2d0dc09146d9.1727601608.git.dsimic@manjaro.org>
 <e8cbbf877cc0e6838afd2d6de3b7bfa1@manjaro.org>
 <ZwVlE9bgHYNT8J7J@finisterre.sirena.org.uk>
Message-ID: <c4a72fcf91b30a8eae2fff851f01d10a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_103220_477349_E8D5D3CA 
X-CRM114-Status: UNSURE (   8.83  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Mark,

On 2024-10-08 19:00, Mark Brown wrote:
> On Tue, Oct 08, 2024 at 06:18:46PM +0200, Dragan Simic wrote:
> 
>> I just spotted a couple of small typos, noted below, and I hope you 
>> won't
>> mind to apply the fixes by hand before applying this patch, please?
> 
> Sorry, your mail arrived after I'd already published the changes -
> please send an incremental patch for the one in the comments.

No worries.  I just sent the incremental patch, [1] please have a look.
Thanks for merging this patch series!

[1] 
https://lore.kernel.org/linux-spi/cec37f5568afaef8fca2d35bb01c90556ccbb4f4.1728408464.git.dsimic@manjaro.org/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
