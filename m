Return-Path: <SRS0=NLp6=JV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27FCDC433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 23:21:35 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D4350611AB
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 23:21:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D4350611AB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NYLBlJjND+3gH0LJ8n5z773bFKPYQzVGQLeLpYj3UX0=; b=pJZIfTNtuYdOcXLmcmF/t6IeT
	C7syMBuvaIaib/QWF3zJU9g31cRRZWPZI212sQ5j0ZWyjaYt7jz/C8UZT1SIiW+WaePXIo712Kw5T
	GxBg4cVUBoJtieyB5CzBqLcfD2oIn1iSzTs2rv4K5dIq2GGNYM99ubWZdLQ5XOfhNTFailOAPqyOw
	wgEvNMaFzBU0nfBOLXYr50fZ531SeFR0Oo7pUhJ4XRrboFjRIUsLXoCgoZ04lcIGcpTmDez3mx+ph
	OSfZRqXM41jHaYaiMTVxj/LZZhsM29/If+ktj/o/gzwl3FeMu6tPlU/Q0a5MJYX4SDQ09phkW7e01
	qSSzTR9tA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laRaX-004bz5-7N; Sat, 24 Apr 2021 23:21:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laRaR-004byc-Jl
 for linux-rockchip@desiato.infradead.org; Sat, 24 Apr 2021 23:21:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=Z99nSH8ftQGRXRL/HA4fzxxKn6bM97/EazoD0WIZDFg=; b=d1IrV7GTN3BXPpIXNXCTCBphJN
 Sc4ZR9a143n9sOrhAFmctOx5sXIXxnzVbMG1zLlyMecOC8H564XpKsCRhJrY9EeWLRuR00bWmAkUv
 qpZR+C3cWHZA4nfF+NhAWypJ/WoW36duXM7ySn0tOMixShejeMl0JIGDhcQ1F58QsdnutgVI9SdJH
 JsNs771I3LDPKrVheUH4D4aTLAqYsuPUpvrFM3i/MEMCXHX3oKPRkKQ0FNW7gPDYJi+hGPHOLjY98
 H6FM8kCSrrvGg3W6pyNrTKLE3+yE+EUw9aR7ZbecPknriDp8mz9l7oSDTYESUREw6ClbgYi2VHGB3
 vTdIa05Q==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laRaM-00FBzC-3P
 for linux-rockchip@lists.infradead.org; Sat, 24 Apr 2021 23:21:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 4C6201F42EA5
Message-ID: <a43aa8ef1f3b198a5a3c3e9196eb945f88d2108a.camel@collabora.com>
Subject: Re: [PATCH 11/78] staging: media: rkvdec: fix pm_runtime_get_sync()
 usage count
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Date: Sat, 24 Apr 2021 20:20:53 -0300
In-Reply-To: <978ba3b7acceb858870c8029f761ae47ea59563d.1619191723.git.mchehab+huawei@kernel.org>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
 <978ba3b7acceb858870c8029f761ae47ea59563d.1619191723.git.mchehab+huawei@kernel.org>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210424_162114_283308_1B38C2AB 
X-CRM114-Status: UNSURE (   7.56  )
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

On Sat, 2021-04-24 at 08:44 +0200, Mauro Carvalho Chehab wrote:
> The pm_runtime_get_sync() internally increments the
> dev->power.usage_count without decrementing it, even on errors.
> replace it by the new pm_runtime_resume_and_get(), introduced by:
> commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
> in order to properly decrement the usage counter and avoid memory
> leaks.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>

Thanks a lot for taking care of this.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
