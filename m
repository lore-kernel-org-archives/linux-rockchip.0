Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E06BC00140
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Aug 2022 12:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oZ+/I8svvJixLTqXZqcu1Zv7kz24GyFQkRmLASChHh4=; b=gKpn2tLJfoD6Ds
	/YpbTVWl9rHlaKomHgeBU/DkKXCuJn+Y+hvT/6EiLBu5YcS+Lp1xQGKTucn8U/CZYSsCQdYNZPkaC
	9XcxoFqoxdAJx0aEYbzt4J93U1hesmH6WzCn0enIObP+D87SvfqRNlFpegdQBw6PURKcs8o4Tnhdv
	4L2lveUMGL8Yph7VmH90mECqnIfOAMqb30N3JNn/knA1gKcp09vP3mciSTNdPp+TsR2yWLairv4Hu
	6y5HgEU6QSSn4KWg1rU94pgpvJEb4D4XP6PUeRc3bKdXNOpBfbDccBnvYq3No3CiXvRZMSlHBBku/
	9ynDYO1DDTA20cDOhv2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNZFP-00G8J1-Nk; Mon, 15 Aug 2022 12:31:11 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNZEu-00G7zw-NN; Mon, 15 Aug 2022 12:30:42 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 73D3B320085B;
	Mon, 15 Aug 2022 08:30:33 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Mon, 15 Aug 2022 08:30:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1660566632; x=1660653032; bh=ft/HTScHUvg3VioWNZbgX4bOjJi4Bt1Y13i
	HegmHnek=; b=q7dfuxVx2GUKeLzhtNlqnZpCQrJbLCLH80JqEgpsa3si5/YXEvX
	3CdBEnfyidryKjSH+t3Zr7OOxxykaq7dolOHbuF0W1ZUgoprsRZ8aTLt8IUo495c
	L+3sPsVRA4I9qXO5o7W0FrxmvcFilgs8oGl5FPHZMKtpI8Et6sPylK20sixqFhV1
	GN3F6ufi3toiZvri37zc6qlBramJNRQTS+VMgKv/PddkB25BGJjxGNi4nzab6k5C
	XFdWQjfT+okgA4qgLY4Jvr7i7Qm6Kr/auwzrbb4MxVxpVxAA83dZvrGJ2lp5z6pc
	NOdLUe9AjxQW7m5RRu6D9OOw+D1nDEghGCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1660566632; x=1660653032; bh=ft/HTScHUvg3V
	ioWNZbgX4bOjJi4Bt1Y13iHegmHnek=; b=swrrsxKembsBRw6KX/aqCZwfKEAz8
	MSpaCspalARwXAVWWnoxOVvj1kS1Kn9DDA+cxr3oZRm5Cf9US/BB/EvKdjhMZm8G
	jO6DYAg/mhXG3dHk488fmO5KaxN54LawLARXJ2DO7EIEn20djHTwNtP+pS6h6An8
	v8QsQf8RyYFeX0fpXNHxnvA+ZXMX8OSRQKGcYIPWeg+n9LN3CzMLDIYtMfUeiee9
	o+K1tDcha6/i2FdRaySHmnmmolZPs2UrSAGmTffnbdD8ASfAz0EDQ89ALwz5216R
	LU+33nplSKDBNC53DgIAlEMsBNV/UbcOoWVgRYeGvwfSKbNltiNli037w==
X-ME-Sender: <xms:aDz6YqCUmR5Su7flga6xmmxVsfPCFxAYim6LbJXny4GTbpl16SPIFA>
    <xme:aDz6YkgkYg6Wwd_2p3lWeRWJf9yMqOpW7zM2koY-3vlgylgofcghrvY39wXNk_Uyt
    qZcQ78GsmjZ5qQRxA>
X-ME-Received: <xmr:aDz6Ytl6IiZYrKZm-s3DU1xEgDCsldmHZlSt6ZLnKGba8F9EhBjV4lLJFCxzUtqiPI7C5SRSgSMJj6_HUFeG_iC30XYFGHTmoYk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdehvddgheefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffogggtgfesthekre
    dtredtjeenucfhrhhomhepvfhomhcuhfhithiihhgvnhhrhicuoehtohhmsehtohhmqdhf
    ihhtiihhvghnrhihrdhmvgdruhhkqeenucggtffrrghtthgvrhhnpedtgfetudehleejie
    eiudevhefhgfefleevvdejhfduteduheduffelfeffueehieenucevlhhushhtvghrufhi
    iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtohhmsehtohhmqdhfihhtiihhvg
    hnrhihrdhmvgdruhhk
X-ME-Proxy: <xmx:aDz6Yoyw_OnE3t2Ggkh3sOQEZj1rDkJ7bDZv8vjwXzUUfDMAxdNAvg>
    <xmx:aDz6YvS3iAwDvDUzsXkbXd4YdR3MjXJQEW-T15tZgl3eUxlsK1N1SA>
    <xmx:aDz6YjYnUtldjeN2A4Y1rnKb75AUQ8dc4asMhYVncJj3AcMa3Gjmjw>
    <xmx:aDz6YrpEBNmhqWEonygYqW3w5rkujwEL80uaAGrrDCmJYo3WUunWsg>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Aug 2022 08:30:28 -0400 (EDT)
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de
Cc: martijn@brixit.nl,
	ayufan@ayufan.eu,
	megi@xff.cz,
	tom@tom-fitzhenry.me.uk,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	phone-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] Add support for the Pine64 PinePhone Pro phone
Date: Mon, 15 Aug 2022 22:30:02 +1000
Message-Id: <20220815123004.252014-1-tom@tom-fitzhenry.me.uk>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_053041_171744_FC07BFFA 
X-CRM114-Status: UNSURE (   9.31  )
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

PinePhone Pro is a RK3399 based phone produced by Pine64.

Add a basic DTS for it. This is a working base that will allow myself and
others to add more nodes.

Changes since v2:
* Used rk3399-opp.dtsi (+ disabled) rather than introducing rk3399-t-opp.dtsi
* Removed superfluous comments.
* Followed DT Generic Names Recommendation
* Set 'From:' of DTS patch to be Martijn, the primary contributor to the DT.

Changes since v1:
* Simplified the DT to a minimal base.
* Introduced the RK3399-T OPPs.

Martijn Braam (1):
  arm64: dts: rockchip: Add initial support for Pine64 PinePhone Pro

Tom Fitzhenry (1):
  dt-bindings: arm: rockchip: Add PinePhone Pro bindings

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3399-pinephone-pro.dts     | 394 ++++++++++++++++++
 3 files changed, 400 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts


base-commit: 2e1170c71ec0c0fb785ce76fca7c682e930af2b8
-- 
2.37.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
