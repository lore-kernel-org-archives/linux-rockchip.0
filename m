Return-Path: <SRS0=B9YW=DE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 837BDC4346E
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2020 11:05:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 307DE22207
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2020 11:05:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="i29adEcy";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="Io696w7H"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 307DE22207
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GJxW5XwE2GIM5FFwochuNTJA3CT0XcxIIxyMTCQFNWE=; b=i29adEcyGdgPKknb9uvvsKs8A
	KqmYCUmhGmr3JU1+ijNtOEjgf73LeccL2GMuamO1gtFwsUYI0hYo7GtTro2vlpErf2Wn7fcDZPbRn
	gkdXPLY8Qz9Zo/ALyZKtjEhSaqbCUopyVHt3Jsj18tmiDxOFwnWnHs/rSdBDEoZctiHCtF93qMtTZ
	8qAOPXvtBACd+j5wfj0bT8inj0y9uhe53dzyUEDNXCDt2nfdjCCbkD9unbVOW7mbn0bIHc297K+qs
	+nN7O4/XJsmcNWPoR2XgeGB/XNVzHJk2l6i1p+DdQ84YzGri8+FLeGdajeLJRgN29QbzQezpts4kb
	ChKD/SexA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kMUUu-00053K-Ep; Sun, 27 Sep 2020 11:05:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMUUr-00052x-QO
 for linux-rockchip@lists.infradead.org; Sun, 27 Sep 2020 11:05:39 +0000
Received: from coco.lan (ip5f5ad5c3.dynamic.kabel-deutschland.de
 [95.90.213.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 08633221EC;
 Sun, 27 Sep 2020 11:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601204735;
 bh=csgnXel9n0hDsR7RqcpD0iELpaB86a7qOohf3UehOUI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Io696w7HC9Kx3d/XolIEVtO3GHO8YzpXQfnE5zJbF3J4vO81nK0883PRjGast9quI
 nWqx3r4Ara+PfVbiJ5SA8GzHGwxAmdKh68O1MBon40FJcMRHjxN1rmC2xUTDLEci+J
 qFcyI7u+LkerdL93pyCT4rZ1O/l7q2ZZK3l69Gzw=
Date: Sun, 27 Sep 2020 13:05:28 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v3 12/12] media: staging: rkisp1: cap: protect access to
 buf with the spin lock
Message-ID: <20200927130528.374342ef@coco.lan>
In-Reply-To: <672c5ca3-a5d1-a1dc-5cc8-3a802208310e@collabora.com>
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
 <20200922113402.12442-13-dafna.hirschfeld@collabora.com>
 <20200927114326.7446d970@coco.lan>
 <672c5ca3-a5d1-a1dc-5cc8-3a802208310e@collabora.com>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200927_070537_937311_29F6F3B4 
X-CRM114-Status: GOOD (  25.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: dafna3@gmail.com, tfiga@chromium.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Em Sun, 27 Sep 2020 11:54:10 +0200
Dafna Hirschfeld <dafna.hirschfeld@collabora.com> escreveu:

> Am 27.09.20 um 11:43 schrieb Mauro Carvalho Chehab:
> > Em Tue, 22 Sep 2020 13:34:02 +0200
> > Dafna Hirschfeld <dafna.hirschfeld@collabora.com> escreveu:
> >   
> >> The function 'rkisp1_stream_start' calls 'rkisp1_set_next_buf'
> >> which access the buffers, so the call should be protected by
> >> taking the cap->buf.lock.
> >> After this patch, all locks are reviewed and commented so remove
> >> the TODO item "review and comment every lock"
> >>
> >> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >> ---
> >>   drivers/staging/media/rkisp1/TODO             | 1 -
> >>   drivers/staging/media/rkisp1/rkisp1-capture.c | 2 ++
> >>   2 files changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
> >> index f0c90d1c86a8..9662e9b51c7f 100644
> >> --- a/drivers/staging/media/rkisp1/TODO
> >> +++ b/drivers/staging/media/rkisp1/TODO
> >> @@ -1,6 +1,5 @@
> >>   * Fix pad format size for statistics and parameters entities.
> >>   * Fix checkpatch errors.
> >> -* Review and comment every lock
> >>   * Handle quantization
> >>   * streaming paths (mainpath and selfpath) check if the other path is streaming
> >>   in several places of the code, review this, specially that it doesn't seem it  
> > 
> > 
> > FYI,
> > 
> > There was a trivial context conflict here. Basically, the upstream
> > version has this:
> > 
> > 
> > 	 * Add uapi docs. Remember to add documentation of how quantization is handled.
> > 
> > I solved the conflict, but as some patches for rkisp1 got merged
> > on a different pull request, and there were some uapi docs at the
> > other PR, maybe this would need to be revisited.  
> 
> I added the "Configuring Quantization" documentation in Documentation/admin-guide/media/rkisp1.rst
> so the TODO item
> "* Add uapi docs. Remember to add documentation of how quantization is handled."
> can be removed.

Ok. Please send a followup patch with a "fixes: " tag mentioned the
commit that added it.

Thanks,
Mauro

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
