Return-Path: <SRS0=KV8+=EO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB15C55178
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 00:31:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D46820702
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 00:31:37 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="wgwu1bf/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0D46820702
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KvORpyz7U2Z5F67WHGeYb3cw5S/MxsJF1zdattasJgo=; b=wgwu1bf//kDXWBhG/uRiJ4trw
	kJXlqhSR3DYkw9Z4FfJVLzD0GBlvXWSBHrALNyyKAr/zvmjTBTnYUrDwpuEiGtdudRtG1S4rDffJX
	vbLcDmfZRA2HQK8gci4C9HYc097dpVtUKUSnOPjOGU8vodta7iCNPI53YW9Wq6FdwjxZxPEMm6Obg
	I3rYZjNyAImM87nJjSEqOTfTPFEotHmJEXGcuG9d+5yaR7EqDa01T6eqT0NxXlIfqx9p/JSb+o2j8
	kGqpKFcHjdrvfvLhitSZgAX3a/qEcbuCTRvw3JLZ1LbsWiR9S+gyCA/F5wcb/Ci2GR8Z9V1zjHUgh
	NhCGXySKw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbYcE-00049L-MO; Sun, 08 Nov 2020 00:31:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbYcC-00048I-Hp; Sun, 08 Nov 2020 00:31:29 +0000
Received: from p508fc3ee.dip0.t-ipconnect.de ([80.143.195.238]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kbYc8-0008Lx-HA; Sun, 08 Nov 2020 01:31:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Aditya Prayoga <aditya@kobol.io>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH] dt-bindings: arm: rockchip: Add Kobol Helios64
Date: Sun,  8 Nov 2020 01:31:21 +0100
Message-Id: <160479547333.328385.5009987146654676702.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201102150658.167161-1-uwe@kleine-koenig.org>
References: <20201102150658.167161-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201107_193128_648937_E2C04EAC 
X-CRM114-Status: GOOD (  10.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCAyIE5vdiAyMDIwIDE2OjA2OjU4ICswMTAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90
ZToKPiBEb2N1bWVudCB0aGUgbmV3IGJvYXJkIGJ5IEtvYm9sIGludHJvZHVjZWQgcmVjZW50bHkg
aW4KPiByb2NrY2hpcC9yazMzOTkta29ib2wtaGVsaW9zNjQuZHRzLgoKQXBwbGllZCwgdGhhbmtz
IQoKWzEvMV0gZHQtYmluZGluZ3M6IGFybTogcm9ja2NoaXA6IEFkZCBLb2JvbCBIZWxpb3M2NAog
ICAgICBjb21taXQ6IDYyZGJmODBmYzU4MWE4ZWVkNzI4OGVkN2FjYTI0NDQ2MDU0ZWI2MTYKCkJl
c3QgcmVnYXJkcywKLS0gCkhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
