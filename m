Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74009606A321
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 08:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uAbemZ4v;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=S17o6Tvx
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/io/k15dqA5PEEFYzAmTt3JcvqyQyvRkzmHiaT/u5z4=; b=uAbemZ4vSZji0d4OgeO66Qzq6l
	oez/lFigkchZg63Tma2j+cvvJR9o1LFNuB7KHkA655jPQM3EnLyKrOYs8Cdrbm4A5XMpp46kf24+/
	gtLl8KrDmdgizSyKWkdOKaZzTTiUe92IEUvuoyLOgHd2pxxeY2rtwZ1ECreCIxp5FTjZA7bUc5btZ
	/pLK6IrUlQnPauA3Z41a95k/JjDiw6AAuRWe+2Acd2KOOVvyrB3huE58Gy9RtWapaOMDpDQ0kYquW
	X2t4KqokhGIITO7BHKolIz/UNKM971yWRUfG3bTViOqwEkvKPMy3MVVj0j9vNXoc3M2STo3binqxm
	4OHKjyMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRmuJ-0000000C7rn-280O;
	Fri, 13 Nov 2026 08:45:15 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRmty-0000000C7iz-2Ogp
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 08:44:56 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5c14c0503dfso60895e87.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 00:44:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794559490; cv=none;
        d=google.com; s=arc-20260327;
        b=ijGhbvgj2DbzWsMp/Jl7Y5vkG96Je9fQMMGNM8bpu4099zzm6ucIuWs7+x9Pn47xsE
         T+I+53GkXSv0cHCRq9WU4Q6+n4Sv1Of24FK1RR31AvTAswd6gddQAK+TBtAPsZyqkRg6
         jE1j5nr/TJDu7q0Tnpg7j6v1x89X1a83rzYPP/3x6ll01gSiEaoVz4pM9ge8Np4uy7Xw
         xv0pvh7KsIOg9AKN+G1SwXHgaANQDzV3nHrmtZXMNu6e88U0rv4VMoaIhSHS7+grzrhK
         Il6f3L2GDQfLPMkqVCSb6RieamYiP8ON72ikuyzmfEam8b2MWu7UfJKZtiSOMMd5rqSN
         F5hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=x+fjXvjMRilqC/1PD9XiiBtX4xwfGR8XcMAZq+mM81o=;
        fh=sqpzdGNrGYsoMMrrh3E7T4nc8oIR+YWKrq1ZfDE9nVc=;
        b=OXAkS3gkNRf3q5SdFUH0SYlguNiuGDIhKlLb8sK7XZL7Hpmfsck7JFkOmykENMt6Mk
         zpKpcng/Vd7ZGkNn30i7WXrKvD04ZVD282xcHW6L8qIOjVAP7QK1VdQwN89YWZcUpBH1
         0Ds59pOKqOQqy1FdJ2Dnnt9giC8R3RdIKukObEo/Falg3qrO6V84S2bFCyAkSt8AaFT7
         +2v9EP2qHCJsQ7dSFTFigHlwLGoBXtk/VrFveQV9loCINPaaWlndDiLU9D6foJUiUUoX
         CBkfeuWfsDi9jcg8Vp8iFonb1QqPnxLnafEu6WI3SU8/IzpaHTISlR8xB6sx3UfF90C4
         89HQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794559490; x=1795164290; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=x+fjXvjMRilqC/1PD9XiiBtX4xwfGR8XcMAZq+mM81o=;
        b=S17o6TvxfOO+60dDgrcDGeAJ/2zOZFTTd94FCsv6dQPTHy9/d4FVOvPa1NIMdEt+sR
         nPZJjzScywRuIN/rpu0pSVYZdY6LfOMMI7edHwaAF9pBwTcxmUWjz3EdcFNwmMUXvEsR
         RfsDFZb5qCKYpZHkl6vgNtzFph9tgw6HRRad7GyG3Tzjk6xsoMhjkKg9UuL8MabaKuak
         fV8DIIkDzdx3RCu8xpkrLNkZOah5ivRPojS16r0ZcX67qyQ7OK7cMwzVaK74M/HUsfSc
         mfGnFSxdtWPbiwzTsn0mKI6s9ofHcPtXkk98LDMLjZbE/zean5/AVAd8ovZAr6XJOV86
         exQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794559490; x=1795164290;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=x+fjXvjMRilqC/1PD9XiiBtX4xwfGR8XcMAZq+mM81o=;
        b=QYuVCIQZXT94ADN/XwjUsX789cbVTZ72mpvjHHCEPGnl4JMERWTxsBdtWhapYyqvKa
         8Aog+7JW9cG5hl7vmm07DLIlOxMUArsHlQDIhR0fBhZKxpj9m5ban+QH/UOSB08jpnIN
         Wv4lQZAuSK483/v3ZzNsVyEZrN6VpdkgMYZlpqjwIu1hoO2TaBzI7f0aUraUXInkpvF3
         dGA/GB4D7iuhx/a8PtV4qJZZwJDeK0dJXOyXnbLm0MbTTWGkhzOGbyGV0qnU2sM/VPQ8
         SdP7ir6GWYscHUFGQRgaSJGN7SnBNoquLkRMSZYO65zf0LIJaLsyqq5P19mQ9H484O6E
         xUYA==
X-Forwarded-Encrypted: i=1; AL+hErFxq1HkBNk+3mJJt/dAbFTobPyGmIoXtWP2YseLKEbFKaSwtoHeHqQhQeevgPqxDhpjpOZ1q4bXaPGtbjU4Nw==@lists.infradead.org
X-Gm-Message-State: APuU4Z/8XMwYtKEM+efiXy8Ju7szjlOhQ4b7iU8Z8Nj5r3aDWCrXvU4P
	JhK/yI8HV/+VWnA0AiZop4pnC3SwFufYl5O3Ysj4Z8M0sOttZ1owv0drB8b9n6HrL0NlSRM2ckv
	mnlinbMeYHNEWjI7rAnIWY7CzczW0XNo=
X-Gm-Gg: AYBFou0VxXhBkBEHcbLSLQasdHJKvTm01Avj/XiWuaY8le1RXcxs0XvKzNiFINBqocc
	RyuJB7PvwdFdTF65mugWsJ9YKCi4eP0Pvu2jBUHTWPEKWR3wCkT2LTeKm+J9+sKQ75GiFA5FktE
	qpF9klaAEuZlp6d3+myA5Qt45sRQDI8iPoH+3ne6TE3NGx1B9T4YCPRvkXSe/Ej2/JKrHMTMuf/
	SK3R5AVop5ThlV5Y/DJIN4QgXHB+ZebCO18bvnyYyf5DjOCro7/oapR1Ap+NnMEu63hz6kZHCVc
	0y6dW4XYD6KDga+E35c4g3qmzsswTGBX+fuO+ufEXfAwD6rpRsjxilr6LrUaQkWZ8pr/QfhaILi
	U8/qbve6WMKVjlopF/2tgwawhrbTIM26G/M8bjJH2G1ypIQHoEOCnqsNJ/IlH2vBii/U84Fh0S7
	Z4k0rlHD9vKpW/bYgm
X-Received: by 2002:a05:6512:3e0d:b0:5bf:a66f:e5e with SMTP id
 2adb3069b0e04-5c17058b108mr873253e87.0.1794559490194; Fri, 13 Nov 2026
 00:44:50 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261110-smmu-v3-pcie-pd-v1-0-628819ca44b9@gmail.com>
 <10924894.NyiUUSuA9g@diego> <ea8fa04c-4a8c-4c55-b4fa-f37d74267e93@rock-chips.com>
 <9_7qTfdNSViwtNUGq9D13w@sntech.de> <avU2I_QzCiBPVTDC@venus>
In-Reply-To: <avU2I_QzCiBPVTDC@venus>
From: Arun Iyengar <aiyengar1990@gmail.com>
Date: Fri, 13 Nov 2026 00:44:38 -0800
X-Gm-Features: AclHuK8fX0XCl2Od3Qw3inFMre3WawrBORUXKfjsC28PcE94ozVVaEPRCoHPifo
Message-ID: <CAEy9hNX8fmEZsy-RfTDQz8Th-H8Z+o5tQN4WseiK_+RpZkbTNg@mail.gmail.com>
Subject: Re: [PATCH 0/5] iommu/arm-smmu-v3: power domain and clock of the
 RK3588 PCIe SMMU
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	"Joerg Roedel (AMD)" <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Niklas Cassel <cassel@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Simon Xue <xxm@rock-chips.com>, 
	"finley.xiao" <finley.xiao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_004454_673845_286B654A 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> And yes, I think the other smmu should also use the same handling.

I'll send a series that enables mmu600_php with its clock; it is tested
on an Orange Pi 5.

> @Arun care to also add a runtime-pm patch? :-)

As Sebastian wrote, Pranjal's v11 adds it. I've tested its system sleep
ops on mmu600_php (not runtime PM) and sent a Tested-by there.

Arun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
