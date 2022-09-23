Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 578EAECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 07:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=31cW6t3VMzsNkOdOkdU3uMXBMWyGdcbEszDPK8YPqGg=; b=QiYKr77GK+10SR
	e0GeMMp6CwAN62um0AOxi1ODTCjXe6rh+Y6iQqN96Lv0CqKzTh7SJc2HshPxOmVbwzKuHwNBC4GqT
	WTGA11MQCH3YJfWrzWWSAbs85YCKekmDN+dRey9PjV6Q8NH8OG/I9kt1kwdfXfgwpRJyA4xyayTEl
	o4fVD3kwsoFbwwUVnTIC0xd1jsMxAN9x4ggTRy6v8iYZpJEY/uFYXzuHFVB4fgOFaWRo/OR6PiAnf
	cSRNtNA3ym3qtUoVIVLpULm+rZIvsKwz05KIzCFBaBn18DWCygH2V6KBsK2quHZiJcEGiy/SRTmEX
	QzczXfloccRT6BJSfYBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obdHh-002k6D-IN; Fri, 23 Sep 2022 07:39:41 +0000
Received: from mail.fadrush.pl ([54.37.225.211])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obdHe-002k3B-8A
	for linux-rockchip@lists.infradead.org; Fri, 23 Sep 2022 07:39:39 +0000
Received: by mail.fadrush.pl (Postfix, from userid 1002)
	id 275A7231FB; Fri, 23 Sep 2022 07:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fadrush.pl; s=mail;
	t=1663918772; bh=bD6j9gIFU6CLTaCGl0Ow9oeIxtirvTfMeNZSfLEZQ+I=;
	h=Date:From:To:Subject:From;
	b=meAgOwqaOGIu/VvG9g7PT4SBRgLWsi8ZBHcLafufloEYbmHbMrrCclcDZymrL6/yn
	 pK/EAWA1Ry3EuTcqYzGAk0fn7o1AyZ8j1L9vla0Lu+TRQJr8cMtkeggPQt4aiFCpbw
	 fJrztqHN30Vo3/0ewaFU3syIInO5PeV5eT70HR2jYXikcyvObFZZZ4ssyCbqXLKcpT
	 DZ9RBEhIeDjZ0Vc10JEuYZodx5uk3ML15mMwRE4jbrdazpJQrwL1rkP5zTlFhEy7Z5
	 SnqdRN83FfXEY533LXD3cCT4cNSWWU4jsWBLanI5IdaFMn9+g12o4WvV0mDOGmd744
	 Jr33XAOdUZkHw==
Received: by mail.fadrush.pl for <linux-rockchip@lists.infradead.org>; Fri, 23 Sep 2022 07:36:05 GMT
Message-ID: <20220923064500-0.1.1t.h9ks.0.qpdvjeedsb@fadrush.pl>
Date: Fri, 23 Sep 2022 07:36:05 GMT
From: "Jakub Olejniczak" <jakub.olejniczak@fadrush.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Zwi=C4=99kszenie_p=C5=82ynno=C5=9Bci_finansowej?=
X-Mailer: mail.fadrush.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_003938_472585_118E70C2 
X-CRM114-Status: UNSURE (   1.17  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKa29udGFrdHVqxJkgc2nEmSB6IFBhxYRzdHdlbSwgcG9uaWV3YcW8IGNo
Y2lhxYJieW0gemFwcm9wb25vd2HEhyB3eWdvZG5lIHJvendpxIV6YW5pZSwga3TDs3JlIHVtb8W8
bGl3aSBQYcWEc3R3YSBmaXJtaWUgc3RhYmlsbnkgcm96d8Ozai4gCgpLb25rdXJlbmN5am5lIG90
b2N6ZW5pZSB3eW1hZ2EgY2nEhWfFgmVnbyB1bGVwc3phbmlhIGkgcG9zemVyemVuaWEgb2ZlcnR5
LCBjbyB6IGtvbGVpIHdpxIXFvGUgc2nEmSB6IGtvbmllY3pub8WbY2nEhSBpbndlc3Rvd2FuaWEu
IEJyYWsgb2Rwb3dpZWRuaWVnbyBrYXBpdGHFgnUgcG93YcW8bmllIG9ncmFuaWN6YSB0ZW1wbyBy
b3p3b2p1IGZpcm15LgoKT2Qgd2llbHUgbGF0IHogcG93b2R6ZW5pZW0gcG9tYWdhbSBmaXJtb20g
dyB1enlza2FuaXUgbmFqbGVwc3plaiBmb3JteSBmaW5hbnNvd2FuaWEgeiBiYW5rdSBvcmF6IFVF
LiBNYW0gc3RhxYJ5Y2ggS2xpZW50w7N3LCBrdMOzcnp5IG5hZGFsIGNoxJl0bmllIGtvcnp5c3Rh
asSFIHogbW9pY2ggdXPFgnVnLCBhIHRha8W8ZSBwb2xlY2FqxIUgamUgaW5ueW0uCgpDenkgY2hj
aWVsaWJ5IFBhxYRzdHdvIHNrb3J6eXN0YcSHIHogcG9tb2N5IHd5a3dhbGlmaWtvd2FuZWdvIGkg
ZG/Fm3dpYWRjem9uZWdvIGRvcmFkY3kgZmluYW5zb3dlZ28/CgoKUG96ZHJhd2lhbQpKYWt1YiBP
bGVqbmljemFrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
