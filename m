Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30493C624A5
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2026 08:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6f265EQsq/eIkrCr0aSkr8Y1OYWEftxu148yCN62FB4=; b=SZYdssUN/fJkik
	TPzziZypWRI5VaIh9/5KN9DZZ5Rko7ZfXiXL64hXFonIamLNPWeeyZnuQ40wnM7t8FHk5aUWS4ndn
	sASOs7UNFNYfz1CgEljZHdBdqaATAhaZPZGQK4HOZIUhas4V5DYAG3id/WRDl3OOCCASynqkCtEc2
	/ZBAvXQWZj6bFtGB6Nokc9BM+lJurn3ltAZtQYL7QMUTpBt/s3s58lpquvdqsZTEXNHmLMM399jCB
	BgL15oSWG1Vynh3WD9sc18qSYq4Cn5jAMqLGcI4r9Ymb1lxR86m4sTv32CfUtieJbxoxg+1StA9W7
	Pycmh0duqN7w1IFmmp9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wzs-00000008mlb-3Hy3;
	Mon, 31 Aug 2026 08:04:04 +0000
Received: from flow-a4-smtp.messagingengine.com ([103.168.172.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wzp-00000008ml5-3xyx
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Aug 2026 08:04:03 +0000
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
	by mailflow.phl.internal (Postfix) with ESMTP id 92CB913801BC;
	Mon, 31 Aug 2026 04:04:00 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-11.internal (MEProxy); Mon, 31 Aug 2026 04:04:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1788163440; x=
	1788170640; bh=dsm6f3Hxa7PpHhgY5bQojBV20QvcNEc71Hr3FPczx/I=; b=i
	8pDxd1H9p4sPqg1LpBCk0Iz+0xp0HKMnWRFpHneiHzFnYA3NCDAzJui98T0Ml6BQ
	benoAGopiekaPlMg4Xgx+CAJ+8aX8lzS7rnylzwUoAx/FgOOrMCVM+tt9q5/sFU3
	mudHRvWr5K+BWIqDH5zy0xWwnHVes1aA41T6LDdnMfmF53f0b4iNBRbn01tGpbMC
	K4jrwXyJBn/odopMUQ/QDX0Jx1yEoC/5goSUeRoCOamvGdebyi5H84nZQn+Br3o2
	ABxyDgeeY5rb+vlbwfQC7wxDAKBL1c5gDJVBU9e8GthZo12u6uZO+an74licoDcS
	Y3jL0UkxANKLQLxMC7mSw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1788163440; x=1788170640; bh=d
	sm6f3Hxa7PpHhgY5bQojBV20QvcNEc71Hr3FPczx/I=; b=QlY/tOo5t3KyH//Ws
	fc6w6Vgo98chiQEhxCvp1kHIzWJz9Cg/DWLHrvpwtphvx6owqSnO/SF4HAGgW1Zx
	tUB4LmstVpsVGw9Fdv8x4jfODvP38FbRdOCgWoPW1z4PRFpoNtNgCoD+XQLuQH2v
	/9jagtf1BHVmjMdfTX0eM+owMvF6gN3UZtER2hM9Ux84hSExjkILE8MOu77ie+Xl
	FGn/x5+5yIuaWmjUsY5tFtt+mh7+vS9Apm0fz0D9wM5HIOFPc6gLIESpv43iXZqh
	K9F9x4ZAnGf6BZ++8WRdeeNGU2nRTnCKOOTWSOxnwzlS6wl/ZFddYD+0qr/Z25YV
	RYQRw==
X-ME-Sender: <xms:cDWVav3NXM7fMXdFslDuDnS5n5tjYROIrMEflys0hYOo5UARqajlfg>
    <xme:cDWVavkscg-J-nZaIUSGgCfFS-UDvGQ4yUuu_gN9jvJKwHkmBrfh6i7NHdSdqvosn
    mayEoddNDa4nktfmZQ0jM7rqOUIdAJIWyXOh9uuo0cG7vghwKE2_g19>
X-ME-Received: <xmr:cDWVav-YpsD0b78i10ClPThYDLVTIO7OmzG4LZuvXg093tnRpJpi0hglhS8DGq85sJdISgDDVw>
X-ME-Proxy-Cause: dmFkZTGwK3R3O+pasDkxiLW1+1sO0SHZLL84GGOeroV06YjTGYyTwjk/GX5FoCR4WIE529
    YYNMm/aeKdHa7ig/EFLlnKNGRRbGtPW+g5WVUxWB47OWDpPu+oupOoLBSW2GysuIx9C7xM
    e+uY1B6gA0ScorGB3Ybd1esKEbEUBBUREQ6BiCEG85SYPu38dLDkfC8i1FkeJuvkfTHoQr
    QmNkkKNwTs4k4uxzYqFCPW0cPiAgcVI29YS9Gxb9iSk2csLJ4ixadk+Ytyk9TC689PySGx
    aIn46hYKQ447LVHHtzJnwe5jsjSlt26Uwkc8WlQ7N/+GDiUndN+ku1G3r2vrcKI7ns9SFL
    rRAIV9idI8m/6Z+WjqRfbG7D13CkIqsqPz74DN2HBuhPzDC7aMBrFfb/pDfR0sbVyJROIj
    vnNjW0PafJrKTfkiwrdQm8EIzGIUxpJQBznrGxIWbgwk/k9PIO/mrAzYVLCB1jCuLiDuGw
    uOe7vI1E64dctkEXUvj5Cv6ncTmdPnneT6PFYRGgYNfDKI04m5HNigJ1j4LqavHky6gBRM
    ngNkzy1NpdqBSvR47cVEjzz1u9wZ3cBkNO61iOyLWNIoLjt0/1f1Y+0iKziCrBUUsMK471
    oMQ0/xUvenSPPJ/zWQpEEhzFTTq0++Rb9/pXlu7POyo3DVW+MGfisld+KOvQ
X-ME-Proxy: <xmx:cDWVakqYdOWUja6sj_4HFdjPLCOI824KVTdGdwoFSXW8LVjrRDfI7g>
    <xmx:cDWVaomb6FlJzwXzVZKRcqeaFezE9I2mqblQ6DTXH_2rUasE0jNY2w>
    <xmx:cDWVariQhGu70IwKtbN9HBWRQ-cNxFjI59S5YyiUOtE8AUJYj_kUBg>
    <xmx:cDWVagdJ2iOl5RWoVaViCdzJdbxy50yqpluRyhdFwoVW8rAvs7P46w>
    <xmx:cDWVapNG5VDOdD7xZb__4N6jYh_tra-9AqUx7GmJTaICW_TBn74xLvu1>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 31 Aug 2026 04:03:58 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: royalnet026@gmail.com
Cc: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	tomeu@tomeuvizoso.net
Subject: Re: [PATCH v2] accel/rocket: request the core clocks by name
Date: Mon, 31 Aug 2026 20:03:56 +1200
Message-ID: <20260831080356.80952-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260729130743.128876-1-royalnet026@gmail.com>
References: <20260729130743.128876-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_010402_365180_D0630562 
X-CRM114-Status: UNSURE (   5.73  )
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

Heads up before you see this patch arrive as 01/14 of my series.

Tomeu asked for it on the v10 cover:

  "Sashiko is not reviewing this series because it doesn't not understand
   yet prerequisite-patch-id. Can you please resubmit the series with
   Igor's (presumably) patches bundled in it?"

So v11 carries it as 01/14. Unchanged, under your name, your Signed-off-by
first and mine underneath as the person passing it on, with the four tags
it has collected.

Regards,
Jiaxing

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
