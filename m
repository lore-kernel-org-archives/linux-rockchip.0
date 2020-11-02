Return-Path: <SRS0=PFct=EI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08890C00A89
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 08:20:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 85E15206B7
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 08:20:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="FdFZgU31"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 85E15206B7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tHzKztUai+VxIpmEVk5WHllxJJm1CFF3Qo2AP8Pej38=; b=FdFZgU315uZdmitfgbdNeJfQJ
	4trVWvw+gq+U00lxgv1Jqp4WIGBqR6FBwK834UJjl+LNpBJSSdn2YOnjgFDjg3wNCxE/ftb7x+c4Y
	9TrUWWyUVAMd93noybBL5Bdu0gjH6PHygbQ+ZhqJ+dL/Zlx3X434vw2DwPd9QuzkpNu25y1IumQhj
	A+gwv2hIXQ1KPPvutYapSqyOdp7AD2EtzdqcZp9fln7O2FYVPI384P0pCsQ8sbEcWggFtPHUClalq
	Y+r2DdmjFrBC6Jp5BeOhqj9kEf1e926g6z9bL5086xoaA86/4c03S9E/lxbU6VxTv2LYL1ofHwREE
	qfnkE9W4A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZV4u-0004Mw-1o; Mon, 02 Nov 2020 08:20:36 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZV4l-0004KW-0a; Mon, 02 Nov 2020 08:20:27 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 50205200015;
 Mon,  2 Nov 2020 08:20:22 +0000 (UTC)
Date: Mon, 2 Nov 2020 09:20:21 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?6LW15Luq5bOw?= <yifeng.zhao@rock-chips.com>
Subject: Re: [PATCH v13 2/8] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK2928 and others
Message-ID: <20201102092021.14159c03@xps13>
In-Reply-To: <20201102161300764203144@rock-chips.com>
References: <20201028095326.15562-1-yifeng.zhao@rock-chips.com>
 <20201028095326.15562-3-yifeng.zhao@rock-chips.com>
 <a8a7875b-f08b-62c6-a630-245687e0df3b@gmail.com>
 <0dabd80e-b281-be65-b8e2-da00f46964fb@gmail.com>
 <20201102114503679684135@rock-chips.com>
 <20201102083258.3a748c44@xps13>
 <20201102161300764203144@rock-chips.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201102_032027_199392_20B69CC1 
X-CRM114-Status: GOOD (  11.24  )
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
Cc: devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?B?SGVpa29TdMO8Ym5lcg==?= <heiko@sntech.de>, richard <richard@nod.at>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 robh+dt <robh+dt@kernel.org>, linux-mtd <linux-mtd@lists.infradead.org>,
 Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 vigneshr <vigneshr@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgWWlmZW5nLAoK6LW15Luq5bOwIDx5aWZlbmcuemhhb0Byb2NrLWNoaXBzLmNvbT4gd3JvdGUg
b24gTW9uLCAyIE5vdiAyMDIwIDE2OjE0OjAxCiswODAwOgoKPiBIaSBNaXF1ZWwsCj4gCj4gVGhl
IG5hbmRfYmFzZS5jIHdpbGwgY2FsbMKgbmFuZF9kZXNlbGVjdF90YXJnZXQgYWZ0ZXIgTkFORCBy
ZWFkL3Byb2dyYW0uLi4gb3BzIGRvbmUsIGFuZCBzZXTCoHZhcmlhYmxlIGNoaXAtPmN1cl9jcyA9
IC0xLAo+IGJ1dCB0aGUgbmFuZCBjb250cm9sbGVyIGRvIG5vdGhpbmcgYW5kIHRoZSBjcyBvZiB0
aGUgTkFORCBkZXZpY2UgaXMgc3RpbGwgc2VsZWN0ZWQsIAo+IHNvIHRoZSBOQU5EIGRldmljZSDC
oHdpbGwgbm90IGVudGVyIGF1dG8gcG93ZXIgc2F2ZSBtb2RlLgoKWWVzLCBJIG5lZWQgdG8gdGhp
bmsgYWJvdXQgaXQgYWdhaW4uCgpXaGF0IEkgYW0gc2F5aW5nIGlzIHRoYXQgdGhpcyBoYXMgKm5v
dGhpbmcqIHRvIGRvIHdpdGggdGhlIGNvbnRyb2xsZXIKZHJpdmVyIHlvdXIgYXJlIHRyeWluZyB0
byBtZXJnZS4gUGxlYXNlIGZvY3VzIG9uIHRoZSBiYXJlIGZlYXR1cmVzLgpPbmNlIHRoZXNlIHdp
bGwgYmUgbWVyZ2VkLCBpdCB3aWxsIGJlIGVhc2llciB0byBwcm9wb3NlIGNoYW5nZXMgb24gdG9w
Cm9mIGl0IHRvIGJyaW5nIG1vcmUgZmluZSBncmFpbmVkIGZlYXR1cmVzLgoKSXQncyB2MTMgYWxy
ZWFkeSwgcGxlYXNlIGZvY3VzIG9uIHRoZSBjb250cm9sbGVyJ3MgYmFzaWMgZmVhdHVyZXMsCmlt
cGxlbWVudCB0aGVtIGNvcnJlY3RseSBhbmQgaW4gYSBzZWNvbmQgdGltZSB3ZSdsbCB0aGluayBh
Ym91dCB0aGUKcG93ZXIgY29uc3VtcHRpb24sIHdoYXQgZG8geW91IHRoaW5rPwoKVGhhbmtzLApN
aXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
