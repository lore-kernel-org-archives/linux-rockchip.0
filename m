Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86CEFC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Mar 2022 18:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQk6Z6D6O2oLgQNydU2APq9curSXUqwpWDwv0fBUxVA=; b=azyrqbPwRYLmfj
	XwN9yg7w1G94ZMj0wZK9glBMuqeoRWLvVlCLl1vwVV81B6Gabr2a43xPZRv3m5pQ6XNcPQnIXctj2
	JCBdsQsfk7wN66PGmgEHTOFopkwFx3W1Mj1BQkr2IHcxit55klzFPkcmFxL1bHcvgp+JTo/uBz+lg
	jBZM4kaGJwksZ+9KVcG3yYobXBih7tChBlfrELAXYM31Bgsv+qlRnZsW2R5aBLpH0BbCw6UKe3GEY
	LwmZqtZedVGtusdEYNSOaYGYCqXzIGAO12yWJ/cLA4dwPmL2sb7R2DHjQlGPSOTQOUJNToj9ttchG
	2f4kXaMawJ8lqTRA9Qtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUCJF-00AMoh-3W; Tue, 15 Mar 2022 18:54:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUCIw-00AMks-NN; Tue, 15 Mar 2022 18:54:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2834B1474;
 Tue, 15 Mar 2022 11:53:58 -0700 (PDT)
Received: from [10.57.42.204] (unknown [10.57.42.204])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 954693F66F;
 Tue, 15 Mar 2022 11:53:57 -0700 (PDT)
Message-ID: <55a6f736-88c9-6be2-86cb-82fb8bd9f0ca@arm.com>
Date: Tue, 15 Mar 2022 18:53:52 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH] arm64: dts: rockchip: Add some pins for NanoPi4
Content-Language: en-GB
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <f02b2410663150e68cb9e402e910bb2c2f53549c.1647352379.git.robin.murphy@arm.com>
 <1958426.K55CUjniD9@diego>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <1958426.K55CUjniD9@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220315_115358_857967_943FCDEA 
X-CRM114-Status: GOOD (  15.24  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMi0wMy0xNSAxODo0MywgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRGllbnN0YWcs
IDE1LiBNw6RyeiAyMDIyLCAxNDo1Mjo1OSBDRVQgc2NocmllYiBSb2JpbiBNdXJwaHk6Cj4+IFRo
ZSBOYW5vUGk0IGJvYXJkcyBoYXZlIHRoZSBSSzgwOCdzIGFsd2F5cy1vbiAzMktIeiBjbG9jayB3
aXJlZCB0byB0aGUKPj4gU29DLCBzbyBoYXZlIGl0IGNsYWltIHRoZSByZWxldmFudCBwaW5jdHJs
IHRvIGFjdHVhbGx5IGVuYWJsZSB0aGUKPj4gQ0xLMzJLX0lOIGlucHV0LiBUaGUgUks4MDgncyBT
TEVFUCBwaW4gaXMgYWxzbyB3aXJlZCB0byB0aGUgU29DJ3MKPj4gQVBfUFdST0ZGIG91dHB1dCwg
c28gd2UgbWF5IGFzIHdlbGwgY2xhaW0gdGhhdCB0b28uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFJv
YmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+Cj4+IC0tLQo+PiAgIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaSB8IDIgKy0KPj4gICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaSBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaQo+PiBpbmRleCA4YzBm
ZjZjOTZlMDMuLmNiYjEyY2ZkNDBiZSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaQo+PiBAQCAtMjY3LDcgKzI2Nyw3IEBAIHJr
ODA4OiBwbWljQDFiIHsKPj4gICAJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8xPjsKPj4gICAJ
CWludGVycnVwdHMgPSA8MjEgSVJRX1RZUEVfTEVWRUxfTE9XPjsKPj4gICAJCXBpbmN0cmwtbmFt
ZXMgPSAiZGVmYXVsdCI7Cj4+IC0JCXBpbmN0cmwtMCA9IDwmcG1pY19pbnRfbD47Cj4+ICsJCXBp
bmN0cmwtMCA9IDwmcG1pY19pbnRfbD4sIDwmYXBfcHdyb2ZmPiwgPCZ4aW4zMms+Owo+IAo+IGht
bSB0aGF0IHhpbjMyayBpc24ndCBwcmVzZW50LiBJcyB0aGlzIG1pc3Npbmcgc29tZSBwcmV2aW91
cyBwYXRjaD8KCkVyci4uLiBubywgdGhhdCBzaG91bGQgb2YgY291cnNlIGJlICZjbGtfMzJrIDoo
CgpUaGF0J3Mgd2hhdCBoYXBwZW5zIHdoZW4gSSBsZWF2ZSB+MjQgaG91cnMgYmV0d2VlbiBoYWNr
aW5nIGFib3V0IHdpdGggCnRoZSBib2FyZCB0aGVuIHR5cGluZyB1cCBhIHByb3BlciBwYXRjaCBm
cm9tIG1lbW9yeSBvbiBhIGRpZmZlcmVudCAKbWFjaGluZSwgdGhlbiAiZ2l0IHNlbmQtZW1haWwg
QH4xIiB3aXRob3V0IGV2ZW4gYnVpbGQtdGVzdGluZyBiZWNhdXNlIAppdCdzIHNvIHNpbXBsZSBp
dCBjYW4ndCBwb3NzaWJseSBnbyB3cm9uZywgcmlnaHQ/CgoqU2lnaCogc29ycnkgZm9yIHRoZSBu
b2lzZSwgbGV0IG1lIHNwaW4gdXAgYSB2MiBhbmQgcHJvcGVybHkgdGVzdCBpdCAKdGhpcyB0aW1l
Li4uCgpSb2Jpbi4KCj4gCj4+ICAgCQlyb2NrY2hpcCxzeXN0ZW0tcG93ZXItY29udHJvbGxlcjsK
Pj4gICAJCXdha2V1cC1zb3VyY2U7Cj4+ICAgCj4+Cj4gCj4gCj4gCj4gCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
