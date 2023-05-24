Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92362C7EE2C
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 09:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bt9DWQvw7uE6ylbdO0WutbeGQ5alitCKFBDi52Shaig=; b=de1ukpzakA5qMF
	n2gbJMj7vxucc7rXNv6mYW6kVB/hitIqBw1P6Kz8crmvBSMq7gihM8NwWHMNIWlsRGmlt0plelrSD
	AZkNt67PoFZxMopQ+19pEd1rC7vo+RdRJM80binXS3Z/M+cTqCn8Eyx6H7afTx/29svfxHNUz9whZ
	giNuZRVrfpo3XNLY9j7PTsozIIORXF1YcdgIKfnzGecVEvvQClD7knw4oJU/E/t9XphfpAfJW8dGu
	bXk00hqMUX4xiUqhXxOeu8IcAHiT3mayaC8c7C6R2IU6fJPdsJhR2rzzI0gL3LD3iHx/NLzOJjVL1
	2vtBNYHj48ob0T1DMKVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1kRm-00CtHO-0F;
	Wed, 24 May 2023 09:06:18 +0000
Received: from wp530.webpack.hosteurope.de ([80.237.130.52])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1kRi-00CtFP-2t
	for linux-rockchip@lists.infradead.org;
	Wed, 24 May 2023 09:06:16 +0000
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
	by wp530.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	id 1q1kRc-0004jf-Cx; Wed, 24 May 2023 11:06:08 +0200
Message-ID: <de161e23-1ec6-1c16-b1c4-f423a088b711@leemhuis.info>
Date: Wed, 24 May 2023 11:06:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] media: verisilicon: Additional fix for the crash when
 opening the driver
Content-Language: en-US, de-DE
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@vanguardiasur.com.ar, nicolas.dufresne@collabora.com,
 p.zabel@pengutronix.de, mchehab@kernel.org, m.szyprowski@samsung.com,
 m.tretter@pengutronix.de, didi.debian@cknow.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 hverkuil-cisco@xs4all.nl, kernel@pengutronix.de, regressions@lists.linux.dev
References: <20230523162515.993862-1-benjamin.gaignard@collabora.com>
 <c034db29-b664-793d-35e0-406fdfe2b145@collabora.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
In-Reply-To: <c034db29-b664-793d-35e0-406fdfe2b145@collabora.com>
X-bounce-key: webpack.hosteurope.de;regressions@leemhuis.info;1684919174;de824fcc;
X-HE-SMSGID: 1q1kRc-0004jf-Cx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_020615_078558_A97D16A0 
X-CRM114-Status: GOOD (  11.31  )
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

T24gMjMuMDUuMjMgMTg6MzYsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+IAo+IExlIDIzLzA1
LzIwMjMgw6AgMTg6MjUsIEJlbmphbWluIEdhaWduYXJkIGEgw6ljcml0wqA6Cj4+IFRoaXMgZml4
ZXMgdGhlIGZvbGxvd2luZyBpc3N1ZSBvYnNlcnZlZCBvbiBPZHJvaWQtTTEgYm9hcmQ6Cj4gWy4u
Ll0KPiBEaWVkZXJpY2ssIE1hcmVrLCBNaWNoYWVsLAo+IEkgaGF2ZSB0ZXN0ZWQgdGhpcyBwYXRj
aCBvbiBteSBib2FyZHMgYW5kIEkgc2VlIG5vIHJlZ3Jlc3Npb25zIG9uCj4gZGVjb2RlciBwYXJ0
IGFuZCBubyBtb3JlIGNyYXNoIHdoZW4gcHJvYmluZyB0aGUgZW5jb2Rlci4KPiBDb3VsZCB5b3Ug
dGVzdCBpdCBvbiB5b3VyIHNpZGUgdG8gY29uZmlybSBpdCBpcyBvayA/CgpUaGV5IGFsbCBkaWQs
IHNvIHRoYXQgaXMgZG9uZS4gVGh4IGZvciB5b3VyIGhlbHAsIGV2ZXJ5Ym9keSEKCi9tZSBub3cg
aG9wZXMgdGhpcyBwYXRjaCB3aWxsIGJlIHF1aWNrbHkgcmV2aWV3ZWQsIGFjY2VwdGVkIGFuZCBz
ZW50IHRvCkxpbnVzIHRvIHByZXZlbnQgZXZlbiBtb3JlIHBlb3BsZSBydW5uaW5nIGludG8gdGhp
cy4uLgoKPiBUaG9yc3RlbiwgSSB0cnkvdGVzdCByZWd6Ym90IGNvbW1hbmRzLCBwbGVhc2UgdGVs
bCBtZSBpZiBpdCBpcyBjb3JyZWN0Lgo+IAo+ICNyZWd6Ym90IF5pbnRyb2R1Y2VkIGRiNmY2OGI1
MWU1Ywo+ICNyZWd6Ym90IHRpdGxlIG1lZGlhOiB2ZXJpc2lsaWNvbjogbnVsbCBwb2ludGVyIGRl
cmVmZXJlbmNlIGluIHRyeV9mbXQKPiAjcmVnemJvdCBpZ25vcmUtYWN0aXZpdHkKClRoeCBmb3Ig
dGhpcywgd2UganVzdCBub3cgdHJhY2sgdGhpcyByZWdyZXNzaW9uIHR3byB0aW1lcy4gTm8gd29y
cmllcywKbGV0IG1lIGZpeCB0aGlzIGFuZCBhbHNvIHRlbGwgcmVnemJvdCBhYm91dCB0aGUgZml4
OgoKI3JlZ3pib3QgZHVwLW9mOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzQ5OTUyMTUu
THZGeDJxVlZJaEBiYWdlbmQvCiNyZWd6Ym90IGZpeDogbWVkaWE6IHZlcmlzaWxpY29uOiBBZGRp
dGlvbmFsIGZpeCBmb3IgdGhlIGNyYXNoIHdoZW4Kb3BlbmluZyB0aGUgZHJpdmVyCgpDaWFvLCBU
aG9yc3RlbiAod2VhcmluZyBoaXMgJ3RoZSBMaW51eCBrZXJuZWwncyByZWdyZXNzaW9uIHRyYWNr
ZXInIGhhdCkKLS0KRXZlcnl0aGluZyB5b3Ugd2FubmEga25vdyBhYm91dCBMaW51eCBrZXJuZWwg
cmVncmVzc2lvbiB0cmFja2luZzoKaHR0cHM6Ly9saW51eC1yZWd0cmFja2luZy5sZWVtaHVpcy5p
bmZvL2Fib3V0LyN0bGRyCklmIEkgZGlkIHNvbWV0aGluZyBzdHVwaWQsIHBsZWFzZSB0ZWxsIG1l
LCBhcyBleHBsYWluZWQgb24gdGhhdCBwYWdlLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
