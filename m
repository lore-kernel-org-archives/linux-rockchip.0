Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12461C6FA82
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 13:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Cc:To:From:Message-Id:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0EAmzhykDrqF1HndQvzKZ83wOOlMwQL1VanaIhiF7Gs=; b=GE3xa5BMfY/N2u
	uQ4Phw84LkrKuK+fYqbypUeE5cTC8TU+g+isZTbENHjYyJ6ECj5A7go0/SxC3FrTm998yvPM6+aBi
	E5VLHsvzFb/K3pXU8qPeBf4EdT+YMNa5BlD7esOPaeB496Bn8z3eP/pHELsSpDZVAuT+ljCOpR6kI
	qzTN2nDecyHvsgnQ+pcFgAz7jLRVDw4sa8nRar8F7cqa2vPPbuqL6xDbflmDpdLq0Aygye4788KrI
	m7iR+FAaKV7ftZLlGeLx4QHWIyZRSZS3elVefMpNUTgTjzN8lsEaW0gWUvRTRJSp6xDFQIStoP5lX
	y3C5EsldxyWujhQyWSuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5y2-00AduC-Ig; Tue, 13 Sep 2022 13:28:46 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5xz-00Adec-1V
	for linux-rockchip@lists.infradead.org; Tue, 13 Sep 2022 13:28:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1663075718;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1Et0zb8O0jFoKIIsS+vBt3lmecoPkRv5j4XH+o6jQ54=;
	b=lMHd5FuzzzGS74xcAjICFvSRMS3KYKhxE62OrejCZ1rNOYzwJle/jcWZUxzcn/Aco5tsGc
	yoE7RzsS7baRl5XtmtpIH32+GESVYkR6MQhsHbKIXhnaJBJFvdPEDrSrfihHYO3kw77teT
	mWjluyk3hSJ+Ff3XBNk3cxvNch9d1Y4Gb1ij0Cz6BxzpXFfqVi6eKZG/GqBb92andv6v3W
	p951LzcW0ukzyM1QOPFMypM8W+bZBEzra0vycimSG7z8IrNwcrdgy4pzQELZH9WAiq9sXg
	7dmDBwT9H1a2XbuOZQrddvW3oDKyfMJgDinNWicg+VujF2WttMhZ+IWL52RNjw==
Message-Id: <1663075629734.2781062349.2866584137@manjaro.org>
From: Furkan Kardame <f.kardame@manjaro.org>
To: Vincent Legoll <vincent.legoll@gmail.com>, Heiko Stuebner
 <heiko@sntech.de>
Cc: pgwipeout@gmail.com, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable video output on Station
 M2
Date: Tue, 13 Sep 2022 13:28:36 +0000
In-Reply-To:  <CAEwRq=ryq3on+U+rqD_XiA0C9MkjFwxRhpLpdOf88yu=Vg-QrA@mail.gmail.com>
References:  <CAEwRq=ryq3on+U+rqD_XiA0C9MkjFwxRhpLpdOf88yu=Vg-QrA@mail.gmail.com>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_062843_641676_836791C7 
X-CRM114-Status: UNSURE (   9.15  )
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

Hello

On Tuesday 13 September 2022 16:26:11 (+03:00), Vincent Legoll wrote:

> Hello
>
> On Tue, Sep 13, 2022 at 2:10 PM Heiko Stuebner <heiko@sntech.de> wrote:
> > what is this "Station M2". You're changing the rk3566-roc-pc device,
> > which I think is "just" an SBC?
>
> I suppose this is it:
> https://www.firefly.store/goods.php?id=142
>
yes this is Station M2 = rk3566-roc-pc (Without case)  

-- 
--
With best regards
Furkan Kardame


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
