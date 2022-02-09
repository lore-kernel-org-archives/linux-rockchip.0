Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D363C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 20:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPxxo99W4CQKQwvSGG6LTUT42e51Ee7j8CKLou2zW1c=; b=sYHfjKj9B4Hjtv
	B/EaWnvjz3O2z1lKbCP6G+lj0jGwpohvpAF2r6gBbB1YrrvdCi1Fuv/DzbCZSEMqGHpElWxQTN74u
	ofXvfh/oSA/brvW55TbS8zIY7xhHruWjdIrF8c3fsgnx3n/G3tbnj2qOrhJPUdvLVvu3Ng6BOGvqS
	38bBJRVJFMvv5WtVWILCpo3LWSLGJDpJ55xp6ROqBn1XH/YDeOtAB4dBf1oLDYs+gADWvT7l6JlIP
	pUp8Qfg5SRhB7H7N0O/wqYVxlA+QfXUPDaehobIX7kCTYb1tJ+p0D+dfuSee/bqXDxZECIpwc8Ml9
	6qRtfCX6jpmdQ3a/RPkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHtOX-001WDr-B5; Wed, 09 Feb 2022 20:16:53 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHtOV-001WCz-1p; Wed, 09 Feb 2022 20:16:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1644437788;
 bh=23VcDO1UBkUQfDfSRRv997yJv60exeA4uC8n5A+TDxE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=GFpdwyvw6jk+CwQGSkk3D9wChoMDqRUJka1eqU+GoOHTza3Zqa35ROyQmhmAqRFCl
 AIMQH2o7XvuprNwS3pe1XSQhWQZLWUASSqQPq377gCeEitfJFGRdccja0CgzDN7DiY
 Abog9Vjz7BoSm9gdfvLohJ8SZxlCLf7uFRZjXM48=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.77.2] ([80.245.77.2]) by web-mail.gmx.net
 (3c-app-gmx-bs62.server.lan [172.19.170.146]) (via HTTP); Wed, 9 Feb 2022
 21:16:28 +0100
MIME-Version: 1.0
Message-ID: <trinity-5a9379ec-3c81-4459-809f-7d0c8bd67d5b-1644437788730@3c-app-gmx-bs62>
From: Frank Wunderlich <frank-w@public-files.de>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, jbx6244@gmail.com,
 devicetree@vger.kernel.org, vkoul@kernel.org,
 michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kishon@ti.com, p.zabel@pengutronix.de,
 cl@rock-chips.com, kever.yang@rock-chips.com, lee.jones@linaro.org,
 wulf@rock-chips.com, david.wu@rock-chips.com, Yifeng Zhao
 <yifeng.zhao@rock-chips.com>
Subject: Aw: [PATCH v8 4/4] arm64: dts: rockchip: add naneng combo phy nodes
 for rk3568
Date: Wed, 9 Feb 2022 21:16:28 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220208091326.12495-5-yifeng.zhao@rock-chips.com>
References: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
 <20220208091326.12495-5-yifeng.zhao@rock-chips.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:9+TRw0BVUlgbzdQz4c/U8MCWL0dkdLvBqsfMaJL1wl7G+RYBTmCeniFA7SGXJtAHcV0h2
 9GF3k3FhOR+9+X2SyUDlD4x/+5UYhlKnxyslUNR+kysThy2Sh96YZSrqTtPTnZTKFt/aqdRWLw9+
 lR4F6K6QnSHqtEQDpOeceO2tzOYdj7Y/NnrakFZmwOFwMxS1JziRjPrCeYTrQEOkx4v5vlic0H7g
 qDh0C7AMFMvR5YOo6nxFFNUjWeyn+uKuGNDnNy2Qv8BbxoNYGNowWHDi03fv8rTe0KMAXJj5K12x
 kw=
X-UI-Out-Filterresults: notjunk:1;V03:K0:1v9qC6GmU5M=:WoCQW60Ifega36V6LGuu9S
 ZmcEsnN8VYUU3nue9s6WMtZLakScL5f//LsZ/4UhCu2PEqur0PcX6nsb7BFfMFGJD+Nmk9M13
 3Ftma+qfNnBRYiuS4sZIAoJzxNJ18Ipxij4op29wer+cAhTHGDnyI+Qpphq5+n8QoFBx5IKmV
 tXkE7ghgrf5ZRyM1dhOYHdQmqG+E5fhJA1ijfqVr/iq59XjAu6xo/d7p9aeYpyG2d84/Lz2L9
 JLLEubMCuMVO643LnHeTcxe54MQMc6S2Cv0qNFPf9gWG2S3Uge3M7trOxBtDhnLuZHZMTb+n3
 6qTaaVzHcz8TuHqObP6f7lRaXbcTRbwvNHPcUt22mw3DoChSz3c60fJtUAZ8+sy8n9MwZJEA3
 rtcaSdXclp5EgDW0GpmSjpmJZdvtp/s0uH2DDioMpwO8m9L3ZBNo5pcNDRuU2VMvH+JqWIErI
 G35Aq0lpsJFd4rFLTz4wQLM6wvbvTpA7ByJkAfnRwZtoUj1aRLbCtkkQa4Q1ofTGAet0V0sY0
 94CEnAeUJ+JnPFl63iO+77kXNKgREyQ/GA/LNiyngkwqW9hkB/A44f0R+uH8x5kf5GPVkeN4T
 FpaK75JavjxDUel/aHhJNEK/gs3Zofzuu1yo2NSrlvG38IpuVizjYVHtDIKZaTaIC7yCHeWMU
 rCQtOs/s+73BQhkfwR5zkuMAVxEfitFmjAGXI31f7FbR1BzoCR0GPpfzyKvV9GVqh1fAm64wL
 E1KCHwB7lPVt2F4dg3PUzOEvUzPprbXr5w4lb/RnO75faEWISFG7rAebhTvrpA+vuACvzbA/g
 H1gHKLV
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_121651_401565_A219BFBD 
X-CRM114-Status: UNSURE (   5.27  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi

Tested complete series on rk3568 based Bananapi R2 Pro

combphy0: usb3 (usbdrd3_0)
combphy1: usb3 (usbdrd3_1)
combphy2: sata (sata2)

Tested-by: Frank Wunderlich <frank-w@public-files.de>

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
