Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 808A1C88E50
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2026 12:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K2tTmsXI9dqhxTYiSN4vtwVIzTVHom7hnbueglMFNk0=; b=LnanYXnChhWbQw
	yLlozHpE/PXoTkEq6aseTntIFdNaRFxEvgPVUORpIKg/oCTfrlfVumo35IsF5cMTzRiUsx/hk2X5Z
	1h2hc0gdK5tR+LjzCEEXcNhyrvkIrcyfRJZXVU2wrpWICIgtoSOFzILKIBRny5rx4u9H6H4AhbL6J
	HAVWNj4ktpy83Lke5rerOHdKngqhkbgeLJBuMFrFedAsCUD761WBHNDfugawIbNzZJ+G4SLjxmUea
	1AFEjILbYelUToDUdT3D4TXtLGLfJEADXThxR+/LTYxli2x7Fh+J/XykQTcJImn9bKiEJroEtZdsp
	GFy4KhWPm/v2Y4zHndjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x50N2-0000000GdLn-2jN8;
	Fri, 11 Sep 2026 12:28:44 +0000
Received: from fout-b7-smtp.messagingengine.com ([202.12.124.150])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x50Mz-0000000GdLN-1P32
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Sep 2026 12:28:43 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfout.stl.internal (Postfix) with ESMTP id 5C2341D000D4;
	Fri, 11 Sep 2026 08:28:38 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Fri, 11 Sep 2026 08:28:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1789129718; x=1789216118; bh=AxIoCKz1yyOSLbMtsd8JqYfnrAUlEyRE
	EcynxoQinI8=; b=mBHXKstgOIb+9zqZmdPcgW8QZPm+Seyc4JfIavD+XgGiPapr
	+WOkKpJjqaPNRo1JmzcSLDTyEKJeV3n45CgY4AjIHQ4ReGb/557dEDHnf/1/nnV7
	IEA4MUin8DiA5yN+PEb2W3mPsDESCWvOEHhGJ4Yp0biyP7osfRO7SaBbUPVELNIU
	GCad5QeDUPJQ5xgqlNp94sa0ZwVIhbIYgrhpN5u1uV3x9PCwyiymIykF4XEPmPKv
	TfWic/xYwgGNDf1BEsgGPPKb35B0DtEQNfgXJoSHwQhs3DO7VA+PmZoD0rkH2pXk
	Ip0Ec21t7ooiQGaJrFWyhiPr0VCToRKoP5UoXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1789129718; x=
	1789216118; bh=AxIoCKz1yyOSLbMtsd8JqYfnrAUlEyREEcynxoQinI8=; b=P
	I9cm4GT7H9gZOXsfmAmWHYj6tNwLL71dk6vRUh2++NJF6n/Hh+RVYmXQWwYnhLq0
	+/E8HtB3/VYCJy0zPSvcn7olOGjWZFFFbZDF4gwhi0OCwsbqYKdkP0CfoWNuAFun
	uqNLj47ORyuX6jTrSp/5sdS0FThLpzBx7glL+SYmuvD5exPrWDoCpxQcR0JQCRkY
	AdpE0MjhPdSHDEYpNjFznOAPjEQGLUMVtHZYR37PNB1ihscXStLiRK4qY+NSzd2H
	uwAUOhYSr2p+m5LWctClYukJA1XSL3HRXjbcRGnwUCit2mG0uKwNgUzRmz2RXQ2P
	JNi+0p7KYkSIMsrkleuXA==
X-ME-Sender: <xms:9fOjatP6ixP8qs3NDLmUvvpdv7iMfOAdfQa9EoNnsJFlns1hq2onow>
    <xme:9fOjatEajX-efmgtR9-OzNw2baMiMah9wwPEaumcmUwz2GjR80xBmcCPnP5Qzrf2Y
    FrNm-F6T0oj3vy1Ez9lP1TjaIiq-MhNvj9qPbmlFK2c_M-j9WLXfHAl>
X-ME-Received: <xmr:9fOjarSK1A-dhFEPgNt-LAlfXrt-8Za1gxAd3n2vU7OcLwDwOZprug58s48nCWVG8BcW_fRAFA>
X-ME-Proxy-Cause: dmFkZTEC7DY9vvYQjeiSkR25MRA1DOJZ3ovd8QcyXQQdSSrFDKPjvfnOr0rOFxEvcnz2AX
    CDeub2noA69X+cISN1KvI0M3SDAZzQPTMr08OL5oiufzteTfHMPFycuW96aLnwnK0j7G7g
    mhScvUblXhIENvh9mXFfECZpuytodTmEs9SJjhKWG/9dRq7QdYR/GQmKirMQRPNSTReuON
    wPSKXxLB8CZnInNY+74Kl2R3HUxBC0cRXn8D5ZGRmzG7GJompv4OJmIffcK9WhJjq6+JAn
    jlXT1woR9/J9ItM+WRyO6pDrrtp4dVXt1Nov8FtCwmYITPSj6TBtTeiKswl77PFcGhSfoV
    M5Mo6LviwFO1+3qCSkFPqy+9IFlvTHhNK8Dziq2xcdH3AfQHh22bjetXq7wCGHPQf7lvjr
    PKJfzBq5pTRuUpG9Tn+/dOVBSb4VsUBt8aqs6L+BP38D5M+JPNyuiBM/XDFB+Stm1Kz2al
    lyVRxLPHvWnKHDM0dp85j3TXBxHmcQHa4r4/Z19//X2NcWsVGaxXXnSsyEnJYidSbHQQeH
    Fkl5ttYHz2HQZaIz4zl2xitISQen9JPZJnUPz8PVPo2ut9oI0t4DrK6HF4+skoq2gE3sQV
    821rgf20ZA7twEQiJXUTaI9yrlio+020kvHZB6LhmOXv8nfHYQifsgL8Qfgg
X-ME-Proxy: <xmx:9fOjaqsORv4yFg15fCdOkPsGcWuKZJ1p9zcbITSHox2VolsyyXpHZw>
    <xmx:9fOjajIiF_xGPO69p0SHPgEw9SXZGvK4JY4EDDYwDJfMd-NIP0_N0A>
    <xmx:9fOjavnVbUnfr32S_sPeW4lKFffeaQTn4bOL9ztP8R4EWrKQAbCOVw>
    <xmx:9fOjasJAewU8cY3ntNL7jfdOVy25QzJQQBRjK47yqXvirh4Z4-wXOQ>
    <xmx:9vOjanjDHmCaBKpNihM5Za0Mqfn3Tge7jydt-tm1fulrIJ3TLx6fypJV>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 11 Sep 2026 08:28:36 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: royalnet026@gmail.com
Cc: tomeu@tomeuvizoso.net,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v10 00/13] accel/rocket: RK3576 NPU (RKNN) enablement
Date: Sat, 12 Sep 2026 00:28:32 +1200
Message-ID: <20260911122832.1364839-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260831040804.24111-1-gahing@gahingwoo.com>
References: <20260831040804.24111-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_052841_541518_92C466D8 
X-CRM114-Status: UNSURE (   6.80  )
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

Hi Igor,

A correction to what this cover said about your differential run, and to
what I said to you about it on 27 August.

The cover said a job had signalled completion with its output buffer
never written, all 48 channels 0x80, and that across 102 induced resets
in nine runs it appeared only on the arm without 1/13 and 2/13. None of
that is what you reported.

Your table is 12 + 8 + 12 + 13 = 45 resets, two passes per kernel, and
you wrote that the race did not manifest in the 45 on either kernel,
with the oracle 48/48 on both arms. The 0x80 is ours: on RK3576 a fresh
shmem BO is zeroed and teflon's readback adds 0x80, so an output buffer
that was never written reads back as a uniform 128. I carried our own
signature onto your RK3588 run, which never reported it.

The patch text is the part that was right, and it is the only form of
your result I will use: 45 induced resets across three cores, the domain
dropping every time with no MMU message on either kernel, so this is not
rocket-wide. You were careful to say your protocol could not settle
whether a genuinely hung block behaves differently. I turned a bounding
result into a reproduction.

Jiaxing

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
