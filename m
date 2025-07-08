Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B13CAC83F15
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Jul 2025 19:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b00N91zzTFmaIyk5g9w52efzXRqxfBffW/ATwaYmF+Q=; b=oVL4co9HJZVxjD
	ZkBbeVGrO5zmV7dgSPijdw2m6DKrkEIcki5OuNyBJMk03ft2cgkc4W7NobQJXN9z7kCMl4DZ6t9Rm
	NOGV0TspUajw8aGXw8tr1jLEMO2sj5h57n4oL2TV1TFDw1+S/zP81PmPDaq5EeLdAoMaVN17Ql3I3
	ihkvgEjAzOuafBuOCr5nS8yQBx/zxUK/IbRNT2dq5QzGPsM+2MNU5NSlSGg5Xu4mSLqG0R9Lgxf94
	TpomzallIzylnuUnUxrTfIHZ2/I4KJdhTmrNS5JPFRIjMHal3Qr7WEWCcXw+yio6gAfpG23mf1w17
	XHDElP+8E5ycLov1YTsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZEAC-00000006MkQ-1ScW;
	Tue, 08 Jul 2025 19:39:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZCEI-000000068EA-2H7a;
	Tue, 08 Jul 2025 17:35:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=9oWcLDoMCvEUhMjZGQXzq2GF59iQ6vNkEPntVHdOxp0=; b=pF6c5dgnWJlBavfYGz32gBbfrN
	ycM+FNl+RmETZjWL0a8TYg9j0T/2Tye9cxzysRm7nQ5Yj2Vw5aNDQ386vfRz7T9PAjKSvKmTWeLSK
	ZqV/y1294umq3HS9kceThdvhgRvc2n1dI7L0/EpNKzGWqri+1xnt5NJCuHMGcbiz9JPsLkmI0cQ93
	Yc9aIRqf+JyyuI0yYgB6DiC/1Ulu4V01Bo2quxzbwuh7HpxOYsD5+dPeht6eW0JUByJpg8wABpRlQ
	dcAvQD5XinO4zELe+bIawOURpD+VVU3Kxi6TqxOjCdyIFl+YrnTTTn+sfLji32ZBrBAFdUuvlHO7p
	Y0Z7fa1w==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZCEE-00000008ldA-2YCN;
	Tue, 08 Jul 2025 17:35:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=9oWcLDoMCvEUhMjZGQXzq2GF59iQ6vNkEPntVHdOxp0=; b=Fn6XetXezplB/+ZprpRXlEgAQZ
	nU11Mdm+85LKQ8BPMBLxR7FCz5e6J0ZQzyqgV/rMzR37kVeZhp60UoKISwtDFQDOETctFYomjW9Gj
	qq1tGPXq7uhOxsWa8cKz6qLFLZzEtU1Yr69OVebDLdzvj6jG0arArRVwprsC4MDUebdrmfwVUfM4d
	mZQ4cqmxjamPmPmK8yEAtjF6RpDu/wWcNzVMuEWi66Und3UBG9y5ebiBiWTdOiAhHMuEugrxWJe4k
	/nilHLwDGmm9zkJh4f6adFhb43ANEspLMRXp6txQ+qLW456qseWnN/fRRSKvgtDwcRqbxg4z5rPBS
	GPQR5VJQ==;
Received: from i53875a8d.versanet.de ([83.135.90.141] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZCE4-0005cC-TX; Tue, 08 Jul 2025 19:35:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	daniel@fooishbar.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: vop2: Fix the update of LAYER/PORT select registers when there are multi display output on rk3588/rk3568
Date: Tue,  8 Jul 2025 19:35:12 +0200
Message-ID: <175199006061.1731917.645367019907326857.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250421102156.424480-1-andyshrk@163.com>
References: <20250421102156.424480-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_183538_736596_9B7D8901 
X-CRM114-Status: GOOD (  15.27  )
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


On Mon, 21 Apr 2025 18:21:54 +0800, Andy Yan wrote:
> The all video ports of rk3568/rk3588 share the same OVL_LAYER_SEL
> and OVL_PORT_SEL registers, and the configuration of these two registers
> can be set to take effect when the vsync signal arrives at a certain Video
> Port.
> 
> If two threads for two display output choose to update these two registers
> simultaneously to meet their own plane adjustment requirements(change plane
> zpos or switch plane from one crtc to another), then no matter which Video
> Port'svsync signal we choose to follow for these two registers, the display
> output of the other Video Port will be abnormal.
> This is because the configuration of this Video Port does not take
> effect at the right time (its configuration should take effect when its
> VSYNC signal arrives).
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: vop2: Fix the update of LAYER/PORT select registers when there are multi display output on rk3588/rk3568
      commit: 3e89a8c6835476aa782da80585dee9ddae651eea

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
