Return-Path: <SRS0=faov=GK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_2 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C267BC433E0
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 11:41:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 679C822CF8
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 11:41:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 679C822CF8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ul1uMM3BdfByWB0/oA5XG4wYurUrwpXmGa+TF5Cxvug=; b=UvzUkX9zB58jlcPVBn39Q1DGH
	9HhnHLfs74YUc9jUsbgX5EihSXLBav0kfhVI9kdXSKBsmToI+9yCURrPxuz0yhGqlTgDY6YxXgyaz
	2yb6BF6SlWpD8QWtjmjKc41/4xqMaHQYR/BSlq1IIxgPz822wSwctngrvlGWSZEP3q8eV56pMSUfv
	BPyTmU48xnBTc2V+jbV3nucyIKfacUqhLejIsG73isuOMOvL9Js/GHazNbDZJWLzZFcEySnhmj+6K
	9ofTfCKNmFJjUHrHSghFDRWGHiOR4X+pGQqxeTBF3XevsjCkHwMAmJO+MX0Xn6l47vdfD5inEtHDe
	c+06suHLQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxTfj-0005qI-GF; Thu, 07 Jan 2021 11:41:43 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxTfh-0005pn-76
 for linux-rockchip@lists.infradead.org; Thu, 07 Jan 2021 11:41:42 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6BB471F4107E;
 Thu,  7 Jan 2021 11:41:38 +0000 (GMT)
Date: Thu, 7 Jan 2021 12:41:32 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH] media: rkvdec: silence ktest bot build warning
Message-ID: <20210107124132.3648e789@collabora.com>
In-Reply-To: <76b5569c-bc19-3d11-4da7-cf0dbb244433@xs4all.nl>
References: <20201208155540.340583-1-adrian.ratiu@collabora.com>
 <76b5569c-bc19-3d11-4da7-cf0dbb244433@xs4all.nl>
Organization: Collabora
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210107_064141_367571_8EF39AA4 
X-CRM114-Status: GOOD (  20.81  )
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 kernel test robot <lkp@intel.com>, Adrian Ratiu <adrian.ratiu@collabora.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 7 Jan 2021 10:13:43 +0100
Hans Verkuil <hverkuil@xs4all.nl> wrote:

> On 08/12/2020 16:55, Adrian Ratiu wrote:
> > Some configurations built by the ktest bot produce the following
> > warn, so mark the struct as __maybe_unused to avoid unnecessary
> > ML spam.
> >   
> >>> drivers/staging/media/rkvdec/rkvdec.c:967:34: warning: unused variable 'of_rkvdec_match' [-Wunused-const-variable]  
> >    static const struct of_device_id of_rkvdec_match[] = {
> > 				    ^
> >    1 warning generated.  
> 
> I suspect that this is because there is no 'depends on OF' in the Kconfig.
> 
> '__maybe_unused' isn't used for this anywhere else, so this does not seem like the
> right approach.

It's not uncommon to do that, especially when you want the driver to be
compile-tested (`git grep -C2 __maybe_unused|grep of_device_id` even
reports 2 drivers in the media tree :P). A `depends on OF` or an
`#ifdef CONFIG_OF` section surrounding the of_rkvdec_match declaration
would also do the trick.

> 
> Regards,
> 
> 	Hans
> 
> > 
> > vim +/of_rkvdec_match +967 drivers/staging/media/rkvdec/rkvdec.c
> > 
> >    966  
> >  > 967	static const struct of_device_id of_rkvdec_match[] = {  
> >    968		{ .compatible = "rockchip,rk3399-vdec" },
> >    969		{ /* sentinel */ }
> >    970	};
> >    971	MODULE_DEVICE_TABLE(of, of_rkvdec_match);
> >    972
> > 
> > Cc: Boris Brezillon <boris.brezillon@collabora.com>
> > Cc: Ezequiel Garcia <ezequiel@collabora.com>
> > Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> > ---
> >  drivers/staging/media/rkvdec/rkvdec.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> > index aa4f8c287618..3af0f02ec59b 100644
> > --- a/drivers/staging/media/rkvdec/rkvdec.c
> > +++ b/drivers/staging/media/rkvdec/rkvdec.c
> > @@ -992,7 +992,7 @@ static void rkvdec_watchdog_func(struct work_struct *work)
> >  	}
> >  }
> >  
> > -static const struct of_device_id of_rkvdec_match[] = {
> > +static const struct of_device_id __maybe_unused of_rkvdec_match[] = {
> >  	{ .compatible = "rockchip,rk3399-vdec" },
> >  	{ /* sentinel */ }
> >  };
> >   
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
