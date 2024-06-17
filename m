Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5F21C27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 21:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDz1zZHQAQUhVWdFH+lEtW2BbJrjg3UaEP26FRYMKxg=; b=iXlM+9M5fOxhFo
	QHFxdPLn2ECHd8d6amyO5OxXaCoqYmVInSYYNlVh4VFSJMufyEt4Y/s6cJ4ykE6lLwlBarA7NbCkn
	S/JOgMcSsVuRNO30/wkpTJFau9Pc3v+5mGGTZZbJIwQKJrIcYMMRyetmnTXhR1AMx4l2Y3O7YsMaK
	0QWkoYGskT4rrt8Sg3CPSsOE27veiJ7diDpJzLVK5i/utsY8oEw2MTFXXE9Vg6hTZDN80qImMBPvF
	oxueM2Jlb0W3IXuVj8ofSr3S2WFiBjL2J7cMhyjJla2A55N5VzB7VjkeTSLrB2mA3Zd/eAbFIy8Xh
	P29qudby26TMDB2+uErA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJJjQ-0000000CfFS-3B8G;
	Mon, 17 Jun 2024 21:17:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJJjM-0000000CfEo-44Gz
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jun 2024 21:17:39 +0000
Received: from i5e8616c2.versanet.de ([94.134.22.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sJJjI-0004PL-4y; Mon, 17 Jun 2024 23:17:32 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>
Subject: Re: [PATCH v3] arm64: dts: rockchip: make poweroff(8) work on Radxa ROCK 5A
Date: Mon, 17 Jun 2024 23:17:31 +0200
Message-ID: <1880842.R1toDxpfAE@diego>
In-Reply-To: <20240612033523.37166-1-naoki@radxa.com>
References: <20240612011221.822-1-naoki@radxa.com>
 <20240612033523.37166-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_141737_873727_22612173 
X-CRM114-Status: UNSURE (   8.75  )
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

Am Mittwoch, 12. Juni 2024, 05:35:23 CEST schrieb FUKAUMI Naoki:
> Designate the RK806 PMIC on the Radxa ROCK 5A as the system power
> controller, so the board shuts down properly on poweroff(8).
> 
> Fixes: 75fdcbc8f4c1 ("arm64: dts: rockchip: add PMIC to rock-5a")
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

applied as fix for 6.10

Same comment about patch-versions in mail-threads like on the
cd-gpios revert.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
