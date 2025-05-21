Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3776C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 May 2025 05:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2zuWgDP/FCBjMNmyIxiF/zPhN/HY5KtOE79GLcVsR4Q=; b=mzdl9M189EK58O
	zHhdxuP+xu6ac/J9OR+Y9XH4jNcIB5Y1L4Uth0Ap58/snCunSbPESX/mIoy/H6DAylmhF9JH2q5gF
	yEHvrfQ0TjkZgxayLUakMVNz5FfODOjy47vGHWMmFZqHohs9PHRPNaVurb+UaqyLnM434QbQscvUm
	t+Sr/ynzv3vQvJqRPCI/cHIC/I4ioLpzCKTvNFA8cdy/wNIKlaQjM+L2rw/UkLA7js7tVl/My42GQ
	2U0SimhU3iVvNKGSN1m8NArC3x+GQZ72wR5wxxiUxXfO4nYoLNyjJLgSluMIgCmf47me89vTPgolP
	Tcy4F0cac0G7qC1IVJ9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHbgB-0000000Ep7U-1cYT;
	Wed, 21 May 2025 05:07:47 +0000
Received: from mail-24422.protonmail.ch ([109.224.244.22])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHbg8-0000000Ep6l-2RAV
	for linux-rockchip@lists.infradead.org;
	Wed, 21 May 2025 05:07:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=urja.dev;
	s=protonmail; t=1747804060; x=1748063260;
	bh=EHxwybSUUWqWZkmGzW4LoBuZlYYgTXkmblF+vx8sHE8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=4Xq574aWdnHwt9sC49d6+zrJn3m8rufK3gzf9q1131XQH5eXxpkqsKvgM9Uu4wNs/
	 WIzEzrxSof5Kf7YhpMDOhnNoaXIOCJxwNsdy2D5a2CatXvqNlvOH7J2LrCYbskTcV2
	 8ptXlT2fCAYGStfvTuBwvo1ypENOD+ArtktUUWDIUVjrAycSZcT09T20tYfxodNKr7
	 maaqT6CCOkQbgWzJyzMWlqBBDOfH6Phvo0SWuRY0XYQc52aLY6tGNAaE3njFmTtBz+
	 nNVGoITaINvADL7SdwzveJqRmoUIzPsvLaEjjpW4zJufXpUtPkAAZ6CyhwxTG4QbpM
	 PKT/A8hPeK5oQ==
Date: Wed, 21 May 2025 05:07:33 +0000
To: Robin Murphy <robin.murphy@arm.com>
From: Urja <urja@urja.dev>
Cc: ulf.hansson@linaro.org, heiko@sntech.de, mark.rutland@arm.com, lpieralisi@kernel.org, sudeep.holla@arm.com, linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] pmdomain: rockchip: Relax SMCCC dependency
Message-ID: <shEYjcWUZ7485Ciik1zpXjOB8tWrdsemjjp3iOtj_OY54peVvLcRI6-AVZARFoQxjUb0QcwFfYcHGiCrPSX-589ZistaFvVfVEG1M73a3is=@urja.dev>
In-Reply-To: <6f0a38e596c0727d0de13a29c9224f71bc7d30f1.1747760015.git.robin.murphy@arm.com>
References: <ab0476382e3342161beda94a45ddadb49b026dcd.1747760015.git.robin.murphy@arm.com> <6f0a38e596c0727d0de13a29c9224f71bc7d30f1.1747760015.git.robin.murphy@arm.com>
Feedback-ID: 82529409:user:proton
X-Pm-Message-ID: 23b511119bb5f75ff22627dfce245ca18591df6c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_220745_217056_8F7AEFF7 
X-CRM114-Status: UNSURE (   2.59  )
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

Hi,

Applied these, disabled PSCI, built it, ran it, the system works, so:

This patchset is
Tested-by: Urja Rannikko <urja@urja.dev>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
