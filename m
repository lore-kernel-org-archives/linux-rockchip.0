Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EE92CAC58E
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Sep 2025 14:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rnuqTSNL99HuwugYWHQ5/b8aDlc2oYKCsKuUnoDtM/4=; b=R06vXV8ROVoLwb8KZ25U9xN3Dn
	8kpGmc+aKM5IxrqkEFcWd8E1GTLvUnVFoKhx4SsKMujjYjYB6pBHiRZM7Q51puSNZ6FfQgFUwDzgI
	Cz0ykHyjOM8qq6kmBdjT2XSBd2c63Utf+B8Vh6wWFF5Vb/3KsZ7yLj9j/LHFPkIBZvHo1G/G9X3vj
	iCPCjwDJ8ZnTlS4yMuuKOxOvEEkpchwjRP7dmIlkZJhZvpH8J83SruFyod/Kq/bj/f/pP76nwxAnQ
	jN3c7tagSiH9T7S+2OwT2iR4fMSHhYEA9VfpWCs63XmJzWxgV3pStuzOUW8tZ4Q3uJgZihW/XmvUJ
	mIJy+vjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxRiN-0000000F9wF-3dzY;
	Sat, 13 Sep 2025 14:58:59 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxRiL-0000000F9vb-0H5P
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Sep 2025 14:58:58 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1757775533;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+5jwSKeeVhbyxCeZDjneeFIe3fHalvS3K5R1Gi0JYkE=;
	b=vtGDzGIHWoL0W1ocEKrmPntnGS1MpZBrd/8cU5FUGqFIO9yR0W2oaOW/koFh+aDdCAF1sU
	57JYHCmQjXoIRI+zrj5f7MpiP27jBlRJ/pbYz91PHm3mGGmQlAfITfAcomhVcJJOrzQxKl
	I1bqRH4qDnUjwxqBhfoOr6VMNLxPTlh1Y7vwg2PorwyZv4pRA45HLZ8WqPGoIpRxFx4JY0
	gKwz3Xb0I5GkaO3f1uXcYKCtFLx9EH1JpdueyfV6/olwCepof6Mpy0xqNwPp8zV3oPQxXe
	xmoVeLfMBA7do/U+U85UELoGSqzk+sAEjfeAMFlvnA6I5BRZRxDkLEJz6ftRCg==
Date: Sat, 13 Sep 2025 16:58:52 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Andrey Leonchikov <andreil499@gmail.com>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: [v2,PATCH 5/5] RK356x - Add OTP description.
In-Reply-To: <20250912124945.2300498-1-andreil499@gmail.com>
References: <20250910215451.2244192-6-andreil499@gmail.com>
 <20250912124945.2300498-1-andreil499@gmail.com>
Message-ID: <36fbeabf43ffab99255061512073f70e@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250913_075857_339431_B1209E31 
X-CRM114-Status: UNSURE (   7.00  )
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

Hello Andrey,

On 2025-09-12 14:49, Andrey Leonchikov wrote:
> Ok, I will work on this patches a more and send a v3 soon.
> About v1 - I immediatelly archive it - this messages don't have any
> descriptions.

I'm sorry, but that's not the way the patch versioning works.
When you send patches to mailing lists, the version numbers refer
to the versions sent to the mailing list, instead of referring
to your internal patch versions.

Thus, the first version sent to a mailing list cannot be v2.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
