Return-Path: <SRS0=0WH/=FX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CE1AC4361B
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Dec 2020 20:32:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EE49F235FA
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Dec 2020 20:32:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EE49F235FA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:Date:References:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e5aZZwpM7leSvTk1kg3USqnlp7mRmUQRIoDahHbNpek=; b=A9cEZAJMidHifL7xZuQecc951
	1tMckJwPCt8/Sx+aQh+2l2nnmr+mRmW6zJ6Rc3VCBQrsFBF8C8fn9qGATU2S73Bvjkjj7mXBFGOqP
	Czs5rnBmmh/qydm9C0I6tSi5QvvgwpOsqfQOnNoC+W+WudnS3s2H670EWkuAdQPLK2Ai+Yb4EP9xU
	x0mFv17TogNnwTvAyF8R9H/qK3aMS44L5hS/A/rt30GopsfhAz0XIU9ulpGx2e7W+oLcsPuOHdWUM
	wVJpzjq1hhvPDBorufnqmabRM6qnLDq1FH+RsrAhsHLDJmSAqUgnfh4P0fJsmxNkwaM7ldL+axzeu
	W9jRRzrhQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kqits-0000UJ-7Z; Sat, 19 Dec 2020 20:32:24 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqito-0000Tg-Es; Sat, 19 Dec 2020 20:32:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 33568C295C;
 Sat, 19 Dec 2020 20:32:19 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo04-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo04-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tEBBVf50JcDw; Sat, 19 Dec 2020 20:32:18 +0000 (UTC)
Received: from jupiter (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id 46553C2902;
 Sat, 19 Dec 2020 20:32:06 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] pwm: rockchip: Eliminate potential race condition when
 probing
References: <875z5nof46.fsf@simonsouth.net>
 <20201130004419.1714-1-simon@simonsouth.net> <X9JfbpTnfqUVk6iN@ulmo>
Date: Sat, 19 Dec 2020 15:32:06 -0500
In-Reply-To: <X9JfbpTnfqUVk6iN@ulmo> (Thierry Reding's message of "Thu, 10 Dec
 2020 18:48:30 +0100")
Message-ID: <875z4x5ygp.fsf@simonsouth.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201219_153220_532429_7F924EC0 
X-CRM114-Status: GOOD (  12.54  )
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
Cc: linux-pwm@vger.kernel.org, heiko@sntech.de, bbrezillon@kernel.org,
 linux-rockchip@lists.infradead.org, u.kleine-koenig@pengutronix.de,
 tpiepho@gmail.com, lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Thierry, Trent and Robin, thanks for reviewing this and for your
comments. I think I understand a lot better now how this code needs to
work.

Trent Piepho <tpiepho@gmail.com> writes:
> Anyway, from the existing code, it seems clear that pc->pclk needs to
> be enabled for register access and pc->clk to generate a signal.  The
> call to clk_prepare(pc->pclk) should become
> clk_prepare_enable(pc->pclk) and moved to before the enabled_conf
> check.  Then clk_disable(pc->pclk) afterward.

I'll follow up with a revised set of patches that implement this. (I've
split it into multiple changes as they seem logically distinct and I
find the progression easier to see this way.)

-- 
Simon South
simon@simonsouth.net

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
