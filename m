Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 410CCC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 20:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:References:In-Reply-To:
	Message-ID:To:From:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CroyzZC0JeSYI28KT7JwqZOe6r2e0J5q13AxKUXDl2U=; b=0ojHCyES4e78Sg
	UZOhstJ8shkMjYvedDHv21DaW2cM/UHDFdIlwRGiC7PXRO7aqALr98ns1Qcne34zMpgzv+TUJgDL8
	CP2tXDomFtARmSvxY73+EQ3FcmNfDNcKOWB+OMvr7jfJdlcFPArznYkqdNiRYV8WNhKZpM3mXbY7d
	8hoMf37D75P+GQ44gCnYxunK0awwrnusYovj2AsCP1IflWsRdAFexIkmRPAoGWBwYAL3PbMKOwxzs
	+ZIcViAPnv8T2xlrWPo+fpKM09gEGRLHxW4gI/qWinpv9adNj6U6a+8dDoqdaO06w5spiyPe83pMU
	ISxJ2IZ4k3Dnze2G56GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjmqR-002lP7-1s;
	Tue, 04 Apr 2023 20:01:31 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjmqN-002lNz-1l;
	Tue, 04 Apr 2023 20:01:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 266B46346E;
	Tue,  4 Apr 2023 20:01:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88FA3C433EF;
	Tue,  4 Apr 2023 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680638485;
	bh=rCdo7Uzp26R9Y0y5u5Xtz/JGD2lAQBywE0PagiehKkU=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=PBZUuPbHfslB9ZYUrrd9ezrtMJW3GdsEZ3rcG1v5yVlgoweRFkLxuDUoMQrZgHsWD
	 Vbe9XVNRgqFN3x45rfyF+ZVVdHLuCw2GZnhHMBoNByNhtCtzBCIG/2oRTm+bWVwIC3
	 PcUuqIf7f8XYD/l8k89/L857o1TUqi1yD2UIMeEK+KELWr1NjJBrqscj3EPDbVw/OI
	 WE7oRwriS9I9PaPRJzY+U0/zeXg0mGi2xPGj+eZElD2AFACEHuPWGVkUZE5rxRaxjC
	 619J0ZoA8xoVA+jxNGrDnOwFdmHgvDBQ1UnybrPhokKr72el83Runim3KSkxzkIm5i
	 KK5HHr5yZlrUA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 6A4B4C395C5;
	Tue,  4 Apr 2023 20:01:25 +0000 (UTC)
MIME-Version: 1.0
From: "Kernel.org Bugbot" <bugbot@kernel.org>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 bugs@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 clabbe.montjoie@gmail.com, heiko@sntech.de
Message-ID: <20230404-b217298-17108437c21e@bugzilla.kernel.org>
In-Reply-To: <ZCx5eVJvXaE1dDvt@Red>
References: <ZCx5eVJvXaE1dDvt@Red>
Subject: Re: missing crypto power domain on rk3588 ?
X-Bugzilla-Product: Linux
X-Bugzilla-Component: Kernel
X-Mailer: peebz 0.1
Date: Tue,  4 Apr 2023 20:01:25 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_130127_645838_175C159A 
X-CRM114-Status: UNSURE (   6.49  )
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

Hello:

This conversation is now tracked by Kernel.org Bugzilla:
https://bugzilla.kernel.org/show_bug.cgi?id=217298

There is no need to do anything else, just keep talking.
-- 
Deet-doot-dot, I am a bot.
Kernel.org Bugzilla (peebz 0.1)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
