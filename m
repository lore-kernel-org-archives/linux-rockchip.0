Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 570CACF2567
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 07:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DhwMxykzNO+5WaMLS5vjdRP3Zo6ASwvziAzHjZ/9Ks=; b=5Fgv2/7ju/Wkv7
	vLf+fFQYX+Wsrrw5WMIrm3w+84znLt/JcTfwDWL7Q6HqOFUGwQEcAe7F3dehZp7ol59FvGLkMNjtm
	hkRV6bOVr88iTxwgZBt+TrKo+RZrS/bzNW1nAx/LtizWFJhcm2fcgb/EbckrjCSQS8FnGhV8XHgzd
	uS9C9kBKnIy2Jvjh37RXPbTJiVLrAQGb/wDrTS4rPWyt6FBKOarWMG+wdgSRhUkkywx9MvK22ukRO
	LQgoVzKVrBceSxolmVH2bykogTFalpJPvalP1AB0hX4LT37ccjo76R63QfpO8yrZA6Z5xGy8RxzHP
	2Ga05WSzm/6FWVR5NekQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLccT-00000002hlq-3eCB;
	Wed, 19 Nov 2025 07:28:49 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLccQ-00000002hkv-38dr;
	Wed, 19 Nov 2025 07:28:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id C25E54103E;
	Wed, 19 Nov 2025 08:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763537324; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=h4MyhiUrRVJoFNGk2D4bpUeiUKWMgtxnDIhB2j6Wz40=;
	b=EcsPZ0hM4pFqxttaBdH9EvxyMJnbZvzyZyp9mNtz212SHspBhfRhqUIQWSkXCzOLtBjCeM
	ZwacH1LDlOPxxEae8HtZ8AX/gd6V+8mTVQct3ZUm5yTh8fwKe3Ser1lvSZ2PNxzqN9Cwmt
	37CKvcAdhagZtstAzXwyo1MZPaA7v11abSVAfZuJALMPM5Pug5oD5u4Poa9z0fACmGCuLy
	NEvRLHHiODf/s1TrbLWHkl7QRUk/PJ4IDxX35X38pls3SdipUcCh1jW67UWpRkfal4CFWP
	ay0c0tHfscXICGgzHSyuAb/kEvfUbVgAVR6pZCl8icA7bWWsVxkrNd7Zv8Cc3A==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <8fce39e0-62f7-4a79-83b8-e3a63af10e2f@rootcommit.com>
References: <e4cd11d0-463c-e707-5110-6b92899b1ba3@manjaro.org>
 <0c224662-b3c2-4075-8b68-c0ae27421ba8@rootcommit.com>
 <3c96ee6b-dca7-1a0a-792b-f8c165ec997d@manjaro.org> <8fce39e0-62f7-4a79-83b8-e3a63af10e2f@rootcommit.com>
Date: Wed, 19 Nov 2025 08:28:43 +0100
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>
MIME-Version: 1.0
Message-ID: <3d5ed2bc-038c-0808-56f3-411652b5ed6d@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 1/2] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3 and 3S
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_232846_942771_E71B3B99 
X-CRM114-Status: GOOD (  15.08  )
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

T24gV2VkbmVzZGF5LCBOb3ZlbWJlciAxOSwgMjAyNSAwODoyNSBDRVQsIE1pY2hhZWwgT3BkZW5h
Y2tlciA8bWljaGFlbC5vcGRlbmFja2VyQHJvb3Rjb21taXQuY29tPiB3cm90ZToKPiA+IFRoaXMg
c2hvdWxkIGxldCB1cyBrZWVwIHRoZSAiYXN1cyxyazM1NjYtdGlua2VyLWJvYXJkLTMiIGNvbXBh
dGlibGUKPiA+IGluIHRoZSBuZXcgcmszNTY2LXRpbmtlci1ib2FyZC0zcy5kdHMgYm9hcmQgZHRz
IHdoaWxlIHNhdGlzZnlpbmcgdGhlCj4gPiB2YWxpZGF0aW9uIHByb3Blcmx5Ogo+ID4KPiA+ICAg
IC0gZGVzY3JpcHRpb246IEFzdXMgVGlua2VyIEJvYXJkIDMvM1MKPiA+ICAgICAgaXRlbXM6Cj4g
PiAgICAgIC0gZW51bToKPiA+ICAgICAgICAgIC0gYXN1cyxyazM1NjYtdGlua2VyLWJvYXJkLTNz
Cj4gPiAgICAgIC0gY29uc3Q6IGFzdXMscmszNTY2LXRpbmtlci1ib2FyZC0zCj4gPiAgICAgIC0g
Y29uc3Q6IHJvY2tjaGlwLHJrMzU2Ngo+ID4KPiA+IEknbSBxdWl0ZSBidXN5IGF0IHRoZSBtb21l
bnQsIGhlbmNlIG15IGRlbGF5ZWQgcmVzcG9uc2UsIGFuZCBJIGFsc28KPiA+IGFwb2xvZ2l6ZSBm
b3Igbm90IHJ1bm5pbmcgdGhlIGNoZWNrcyBvbiB0aGUgYWJvdmUtcHJvcG9zZWQgc29sdXRpb24s
Cj4gPiBidXQgSSB0aGluayBpdCBzaG91bGQgd29yayBhcyBleHBlY3RlZC4KPiAKPiBJIGFjdHVh
bGx5IGFscmVhZHkgdHJpZWQgdGhpcywgYnV0IGl0IGRvZXNuJ3QgcGFzcyAibWFrZSBkdGJzX2No
ZWNrIjoKPiAKPiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni10aW5rZXItYm9h
cmQtMy5kdGI6IC8gCj4gKGFzdXMscmszNTY2LXRpbmtlci1ib2FyZC0zKTogY29tcGF0aWJsZTog
J29uZU9mJyBjb25kaXRpb25hbCBmYWlsZWQsIAo+IG9uZSBtdXN0IGJlIGZpeGVkOgo+ICDCoCDC
oCBbJ2FzdXMscmszNTY2LXRpbmtlci1ib2FyZC0zJywgJ3JvY2tjaGlwLHJrMzU2NiddIGlzIHRv
byBzaG9ydAo+IAo+IFRoZSAiZW51bSIgc3RhdGVtZW50IHNlZW1zIHRvIG1lYW4gdGhhdCB0aGVy
ZSBpcyBhdCBsZWFzdCBvbmUgb2YgdGhlIAo+IGl0ZW1zLCB3aGljaCBpcyBub3QgdGhlIGNhc2Ug
Zm9yIHJrMzU2Ni10aW5rZXItYm9hcmQtMy5kdHMgdGhhdCBkb2Vzbid0IAo+IGhhdmUgaXQuCj4g
Cj4gU28sIG15IFYzIHNlZW1zIGxpa2UgdGhlIHdheSB0byBnbyBpZiB3ZSBkb24ndCB3YW50IHRv
IGR1cGxpY2F0ZSBlbnRyaWVzIAo+IGluIHJvY2tjaGlwLnlhbWwuCgpJIHNlZSwgdGhhbmtzIGZv
ciB0aGUgY2xhcmlmaWNhdGlvbi4gIFRoZW4gdGhlIHYzIGlzIHRoZSB3YXkgdG8gZ28uCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
