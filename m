Return-Path: <SRS0=DwMt=J2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9975C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 07:38:20 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6C7CE61440
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 07:38:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6C7CE61440
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pbboHQgYwXMlweuq2t9sf4X3TgAhVsa/+FW0yl4p+nY=; b=kt3x7J2Og6ACBchrgzPz8ABgv
	fLCO8HKnrk6NuODKwHHi/s5l/o671F/JIq4vM0oDr7jypkavmWa32YWfrdb2JPrf+lspMgudTE1u0
	dUyWwZhGQYga7NuhDaoapNvQ4Yb7oTpaXe3ClFG0kJ1zdMGqiKg33qt5sOu7nVTckZHFCRRNIl1or
	MZ8rLPhdmusGdR0qFS2/VoaYu3zBtvoyru+lneFgyZQXtCXyeo2zxGBaJzkc84ATm8UOqKWPjWlYT
	e+3hVeBlY5dh0sNJhqfA5bO4IaO+RPoSIA6QQw/eNf7LiZukwH7X7N6Rmo0of2ZljfFvdR5MLUN5h
	pHMuTsIdg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lc1FU-005Dss-Vt; Thu, 29 Apr 2021 07:38:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc1FT-005Dsh-EJ
 for linux-rockchip@desiato.infradead.org; Thu, 29 Apr 2021 07:38:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=fhvb63wLHkwtHD6eVlFdL9l4GhmzCm8fgEB+JwcLOnk=; b=l4+3hmIfJ91cNwixorbM4gs9S1
 BSEDJOU+AGUyvPueOPMCSOhTCCGx3vLRq7Js6qlOu+RU+4Pt7nkQ+HmnGHOUq0TUXrtK/3lH+NqFI
 ZrEjg/m6sBiiNwEse72w09JBLOTOQ5tQVk2kxGkP7P/3PxlmdbRe5++vtqNfFoLQ7d1voT7lau8jx
 mRg5asubjv86oJwW9V0PHogi+kGMtwnl+I31r06S0eouviBtC8ghv9qimeL8ysD0ryhhxUpaBEGjC
 Co0LvZvAXcSMQG7dbplS3s/F2wDaLiSDyb8dWx2TGDB5Qd3jLLbJEXvfIJt2KG+aByVdPvltkaTg+
 fnJDARMg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc1FR-000SNn-1v
 for linux-rockchip@lists.infradead.org; Thu, 29 Apr 2021 07:38:10 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8702661440;
 Thu, 29 Apr 2021 07:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619681888;
 bh=Y5crhDIS0X94Stj4taWISifyBjWiDlyEREug0v7j/OI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OJG3pGxq/gzp0qcJrK4Fp3ViY6gx1JeLW4gLq02MzOAna5k0LzekaFNduyW/6MpFZ
 YHYx3csBuKFHZJjC/szlyuF3hqyxcn3CxAN/CGNX+DOalvNJ8opf5pzLWng53xz5TE
 6JkilcpcSTSw8JKfB8cEwyhhdpdvGcOFq6svZDHUaqi/ukE5+Hk010w5flQET5Xxku
 1gVmS+IapfAj0A8ehu3xge59x/Hny23j0dVjkWVJLI1y3LssOgBbbKUdVs4fzm1M2J
 VtGHDACSlzatSWaFXsEpxaotb6LFQ4W4/CYm9bVK7ohLllaaDYmiaZEs0hQXoH78A3
 Y/e9p2bFdDoEw==
Date: Thu, 29 Apr 2021 09:38:02 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Subject: Re: [PATCH v4 20/79] staging: media: rkvdec: fix
 pm_runtime_get_sync() usage count
Message-ID: <20210429093802.01ed6980@coco.lan>
In-Reply-To: <YIl6xZegj9o5m8EF@hovoldconsulting.com>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <4bc46252a7c7ae3612da6da8620ef7db775e27ca.1619621413.git.mchehab+huawei@kernel.org>
 <YIl6xZegj9o5m8EF@hovoldconsulting.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210429_003809_182503_B61268AF 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
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

Em Wed, 28 Apr 2021 17:09:57 +0200
Johan Hovold <johan@kernel.org> escreveu:

> On Wed, Apr 28, 2021 at 04:51:41PM +0200, Mauro Carvalho Chehab wrote:
> > The pm_runtime_get_sync() internally increments the
> > dev->power.usage_count without decrementing it, even on errors.
> > Replace it by the new pm_runtime_resume_and_get(), introduced by:
> > commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
> > in order to properly decrement the usage counter and avoid memory
> > leaks.  
> 
> Again, there is no memory leak here either. Just a potential PM usage
> counter leak.

True. Will fix it at the entire series with:

	FILTER_BRANCH_SQUELCH_WARNING=1 git filter-branch -f --msg-filter "cat|perl -0pe 's/ and avoid memory\n\s*leaks./, avoiding\na potential PM usage counter leak./igs'" BASE..

Regards,
Mauro

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
