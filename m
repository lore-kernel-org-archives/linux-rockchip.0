Return-Path: <SRS0=l1tV=KI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E179C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 May 2021 22:28:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D0FE261396
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 May 2021 22:28:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D0FE261396
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yKW567NzIN4k/hFRy7969q7yJ7b3Hqx6I2RNUzXqeMo=; b=CekXSg4lLAksK+rC78ohNIR3a
	C0p+J3rql/rIVs/C4COCY2ollb31mrJkJOyox4BWoILONBAVEhhEiqj477UlxSPyMPrno1fpFleDu
	cgcqMfimcxAHWXOVEcBPf+z8JNP0wjZPqMcUJgbNp6HF+PJg25TphX7WkI3JL3LdrqYr/MaQl39Cr
	gWZ1VJg67Y2JXAqd54HBek1hYeRbrexyDUHGgCqoW5Z1k60We9LIr+j+i4f3Pm2WIJAz1RoQk3Ir+
	4zJfLzHmBCah8OpyBEkxaedW0QO2qjh8H758PAjCBDhPXqAwxk/wo5qwsXrsEsgmWngC1veV/fxCR
	4aGlCx8Ag==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhJoO-006Y8U-My; Thu, 13 May 2021 22:28:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhJoD-006Y7E-7B; Thu, 13 May 2021 22:27:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=jLKxJp2qhCxwlod3aeholsu27afniMv8PfPzYNsAohg=; b=Ty5xvjmXJcLuRuU31QLyZy1tvg
 uniSkAC5T5WdlvwQIIa4f+RU03NkgApVvZrRrAK7wRf2SXhYvpmX6/+Q5EJSHPRKckvYI2k7gvrDY
 sOLSlm11xRDzWDOIgxj+CnlaXYuSoRhOzxOEHxh+vHCFrdsips1IohQco/fXh4vnyFCGoZ6+koKYB
 uovBASS9j43sqAzFOVxzyouSNdaxn/RQbdxMp3TP/geC+77hsAiZpARk0pAapZDedl3ZX4dyk7w9X
 YHhMA756M6MvqU3Cn6frPVGDGC5Eu/vHH1rbBbXp+9wypOKKZ02EVCbU7Gvko34sjW2guZ5Dv62F6
 RDL2bjxg==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhJoA-00BZ1x-Px; Thu, 13 May 2021 22:27:55 +0000
Received: from p5b127fd3.dip0.t-ipconnect.de ([91.18.127.211]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lhJo2-0007L6-7Y; Fri, 14 May 2021 00:27:46 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Helen Koike <helen.koike@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 17/25] media: rkisp1: use pm_runtime_resume_and_get()
Date: Fri, 14 May 2021 00:27:45 +0200
Message-ID: <4108655.ElGaqSPkdT@phil>
In-Reply-To: <cd3a667a75a34288a72ba4da5952076a82620520.1620314616.git.mchehab+huawei@kernel.org>
References: <cover.1620314616.git.mchehab+huawei@kernel.org>
 <cd3a667a75a34288a72ba4da5952076a82620520.1620314616.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210513_152754_850728_619DBC83 
X-CRM114-Status: UNSURE (   8.95  )
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

Am Donnerstag, 6. Mai 2021, 17:25:55 CEST schrieb Mauro Carvalho Chehab:
> Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
> added pm_runtime_resume_and_get() in order to automatically handle
> dev->power.usage_count decrement on errors.
> 
> Use the new API, in order to cleanup the error check logic.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
