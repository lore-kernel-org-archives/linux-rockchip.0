Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE263C52D7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 11:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBVqMqvqwieZ1C1ZpYBpzHh9ap6ZzKjr7jZI437escY=; b=ftjIH99BBGMfKk
	8iHRsYIYkR8BexbeXptA1d7LpNRukKw0ih7itjYN5dmpMkn0zFVsXBa+bJTPiaLrtcGDCGLqtg4f3
	JvgtpX4rc6kQJzFyPnpuVCUJ0s1b8HAw28VkbWcErpdXfc3PLWd+S5Fq+Kce92USRXCcp4/Y7TdYJ
	gfJWcBE5pPBi26WZRHrxq7wfkJ/YDnL6DNuQUp9wpLbpls1bccgk1jDbrvK2UUy6JusiqmlODi1ld
	8q7ndmppLUsKlY/BQuYYOBox0llQXmPu2+BDg+E5orSEmxJY9aJDfcnQS5mOG0lLoXm3K9qomeLRM
	/O95i9T/PhgQCL5HTMQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seCFC-00000006mPs-02TG;
	Wed, 14 Aug 2024 11:32:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seCF8-00000006mP6-1xa5
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 11:32:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=sOVvFlHrAg9KDMCVJRh3goR+VCE/fL2weWP62/Msblo=; b=Gmf22vrFYBIz9eDFozqNDL9A3i
	RkAVYQ7WG7Pf/Jvm+mI6UOr9DYAXmlX5jF+06CL9/mIm44pU1ZQLcVMXFtLCM/0hnDrsQ6oR63ENm
	RQ479ITAf8c4uNMMCkiu5ciLUHclubGq3mzip2iUzY0qcv48MOJ3lK6rucIWARvOBDXix6UWt9kw4
	iPs6LSDMbYtY2XnuTNScWGbd4NT9dNNxASPYb5TWPKcX7JlUTM+Grc8pFkb2sU95AZdviMfy8OV/h
	2l/SYqobyCRetQyx8FvNhan4lT33l0I+TkUff9WOKIzRs1Jmu17UvZfFL8Jn+g48/JvfaYn4y8iLT
	hbby+WpA==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seCF3-0002kT-O0; Wed, 14 Aug 2024 13:32:37 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add support for Radxa ROCK Pi
 E v3.0
Date: Wed, 14 Aug 2024 13:32:36 +0200
Message-ID: <10385642.ICPdZLu4VQ@diego>
In-Reply-To: <8FF4228B18A1DFEE+d359188b-64e9-4ce6-8796-f3fecd6a0781@radxa.com>
References: <20240814095727.1662908-1-naoki@radxa.com>
 <8FF4228B18A1DFEE+d359188b-64e9-4ce6-8796-f3fecd6a0781@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_043242_541192_53BD9A42 
X-CRM114-Status: GOOD (  11.96  )
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

Am Mittwoch, 14. August 2024, 12:25:54 CEST schrieb FUKAUMI Naoki:
> Hi,
> 
> On 8/14/24 18:57, FUKAUMI Naoki wrote:
> > Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> > RK3328 chip.
> > 
> > [1] https://radxa.com/products/rockpi/pie
> > 
> > Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> > ---
> > Changes in v4:
> > - update compatible string for OpenWrt
> 
> this is for https://github.com/openwrt/openwrt/issues/16168

I this because openwrt used some out-of-tree devicetree?

For people reading along, all the other rockpi devices follow a

	radxa,rockpi-foo

naming scheme in their compatibles while _this_ new entry uses

	 radxa,rock-pi-e-v3


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
