Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BCAC433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 11:50:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF26620848
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 11:50:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="r9fopqgB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AF26620848
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sEwmBsatiExkeXr6pCtHEgqe8XI3kNaRzFkdGAazmrc=; b=r9fopqgBe4C45MVJXZghBUCzQ
	QgzqTlvFwENJRqe0G42LXMiu1QTuv09jaD/DE2/JQk/+e8GV/cQjatSIPUFaiUCHH/Zq/ZqE608Zd
	4449ARiaCoNwgAcKQ7+1oK1q+si+e4AdetA+fDdU09omH1+ULBfsgoVf4bB6+ft+Ju9YRcFGpaIBn
	A6NScR7SsB19VPk4s8jD+Ieu19zZ9LFL1XBJsE6N2NFVxkAT6rmjQuhE4gQX7S+dyeb8OSkDfycls
	+BF4cI+ReNA5Ubxby0cGDA26rXy/h5v/DRpfYS1xbWo/KfvOAkMgU83FuPx83LRAAVph/C6rLv+Xp
	fN88oJAsQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSfIR-00014h-DJ; Wed, 14 Oct 2020 11:50:19 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSfIN-000139-1G
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 11:50:17 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 1FFD51F40ED4
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Mark Brown <broonie@kernel.org>, Adrian Ratiu <adrian.ratiu@collabora.com>
Subject: Re: [PATCH 07/18] regmap: mmio: add config option to allow relaxed
 MMIO accesses
In-Reply-To: <20201013102656.GA5425@sirena.org.uk>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
 <20201012205957.889185-8-adrian.ratiu@collabora.com>
 <20201013102656.GA5425@sirena.org.uk>
Date: Wed, 14 Oct 2020 14:51:14 +0300
Message-ID: <87o8l581ql.fsf@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201014_075015_175175_517FF891 
X-CRM114-Status: GOOD (  13.55  )
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
Cc: Fruehberger Peter <Peter.Fruehberger@de.bosch.com>, kernel@collabora.com,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kuhanh.murugasen.krishnan@intel.com,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Mark,

On Tue, 13 Oct 2020, Mark Brown <broonie@kernel.org> wrote:
> On Mon, Oct 12, 2020 at 11:59:46PM +0300, Adrian Ratiu wrote: 
> 
>> -	writeb(val, ctx->regs + reg); +	if (ctx->relaxed_mmio) + 
>> writeb_relaxed(val, ctx->regs + reg); +	else + 
>> writeb(val, ctx->regs + reg); 
> 
> There is no point in doing a conditional operation on every I/O, 
> it'd be better to register a different set of ops when doing 
> relaxed I/O. 

Indeed I have considered adding new functions but went with this 
solution because it's easier for the users to only have to define 
a "relaxed" config then test the regmap ctx as above.

Thinking a bit more about it, yes, it makes more sense to have 
dedicated ops: this way users don't have to be explicit about 
adding membarriers and can combine relaxed and non-relaxed more 
easily, so it's also a better API trade-off in addition to 
avoiding the conditional. Thanks!

Question: Do you want me to split this patch from the series and 
send it separately just for the regmap subsystem to be easier to 
review / apply?

Kind regards,
Adrian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
