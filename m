Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F296CA101F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 10:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P8nzSP0iGpByFtOGSnvzK1HzdDSfd+xtHM7oYSVGs+Q=; b=KTdQFibMS9LTpuutfWDzWWnjKK
	/ipU28TqOyVXw8MXY1q0TP8ZMi6/au/os0Zv63APNWnCvBAtQHyvoA9QYg0SsfG3WMce+WQdoKqf6
	fvM/sYmAipTvTchdA7ulgEPspMHpJmb899YjppwPW4jOx9P9GlNQfZ+UlTcjqqVb05W/2f4/nBH/5
	UNOw8hk4qRWp+6gnwxckjoSYySUS3SjwZUwnIMF/LGznDPKvXmgoH0FShPVDnioHsFkayI36cppQs
	0Qm1ZJf5R8Dzli2sgMKtDK+EAs2vTSSKATlm0Oc1DLvbaVG2ry1YhKQVZ/OR2XAN8NPBvqRD8v7z2
	l5akgDQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux1Hg-00000008fVe-222S;
	Fri, 12 Sep 2025 10:45:40 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux1Hd-00000008fUt-3Pf6
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Sep 2025 10:45:39 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1757673934;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Y2AzaB9arJwKg1b2Ez7Fl7QVLbSzZ7fIjKtQQKsOM2I=;
	b=SVuyCMCcymKmPmpLbdI1rdu6vGQUnFm4UyDzIVUTcrSBTWfA+Buz85Y+saNgMnEuIUQJUz
	n4FYVUsd5jGRZ6HYxQvOmuEvPKVGVnUDaLdqUX2KdrVJk3NDvmdZxD16riSArNChiNB5N5
	sbEQ13dP0BFdsvsqH5yaWskS9Bs3iQMIb/GtYNzgCkVLaQ2A8TDnwiuMYSOfq7H1zGLqum
	OGuEJuC9IjcH7RJWIxJNVnrIQX0Qi+btJd9kNk9Phx/6OBbMCff7PzuhvZpC5xDVYCLERI
	TK6vfvIfAsV2nsHUN6lHI0Xudg+Ktw6u8XDTWghQayzn7WDvbhF9MwhgI2PZxg==
Date: Fri, 12 Sep 2025 12:45:33 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Andrey Leonchikov <andreil499@gmail.com>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: [v2,PATCH 5/5] RK356x - Add OTP description.
In-Reply-To: <20250910215451.2244192-6-andreil499@gmail.com>
References: <20250910215451.2244192-1-andreil499@gmail.com>
 <20250910215451.2244192-6-andreil499@gmail.com>
Message-ID: <d2c86c0da199eaeb49cf3463e3eb9a77@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_034538_069347_BE5CDB36 
X-CRM114-Status: GOOD (  10.24  )
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

Thanks for your patch series.  Please note that this patch (i.e. 5/5)
doesn't belong to the series, because it addresses a completely separate
topic, so please resend it as a separate patch and Cc me;  I'll then be
happy to review this patch in detail.

On 2025-09-10 23:54, Andrey Leonchikov wrote:
> OTP mapping, based on RK3568 datasheet and BIQU DTS.

Please note that an empty line is required between the patch description
and the tag(s), which applies to all patches in your series.

> Signed-off-by: Andrey Leonchikov <andreil499@gmail.com>

Next, patch summaries/subjects require a proper prefix, which in this 
case
is "arm64: dts: rockchip:".  You can always have a look at the Git log 
for
the file you're changing, to determine what's the right prefix to use.

You're also missing some of the required recipients in the To and Cc 
lists.
Please, have a look at Documentation/process/submitting-patches.rst and
scripts/get_maintainer.pl in the kernel source for more details.

Finally, both the patch summaries and the patch descriptions in your 
series
require a bit of rewording, to conform to the usual language and to 
provide
more details.  Having a look at the Git log also helps there.

Oh, and where's the v1 of this series?  Am I missing something?


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
