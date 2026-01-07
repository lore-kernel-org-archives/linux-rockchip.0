Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31E9FCE9D48
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 12:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UbHh0pQ9qctl2Guk6Nq7sLR8/XYYsJO2IDfE8hxBWmY=; b=IlYYf7FICpBvzC
	nMbM84M8eClJZhrPwXVkB2Pl1VNWc+5atk66mo0cEqHkGJjUziqtaaZOrRQ4bjM7oiflVMSmONL8Y
	OAz5hhHRUHkA5uifamQzcvEDcNtsN6F6f+z4ZY9//U4FqNcdczHnKK/2EO2tmssuAl12YQL6ePr8L
	zJg0VUjv76iijS4rQSI5aaDvB/1c/Vx+NlEPNfEwv3bWwxkv7CrFzb2G54h4zMwbojPezPGglaC12
	mbCe59zFeQ6nm825GJMeO/4FgXPRDSVaGWp7B9Xd2qLUkzftWPyjwezMR4zRyVPi2VvHCv51mN7gB
	dBrpYX/7KYlAFHQYJ2Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdSUY-0000000EsyP-3rVD;
	Wed, 07 Jan 2026 12:18:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdSUW-0000000EsxK-3UvU
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Jan 2026 12:18:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=4h8Jx2ZI8h/J6LJOiYzY01rdWQD1J3ZD0e23g8rEcw4=; b=XXQItyR+AdD0pBYgPF6Xvj4Ow7
	qVZOgNkle+9jo8i8Vrmxs2aPlmBET7SSe7eF1OyAsbpZmXDYFdQOw7+UjPjy+MB1FNcK8+KGyBHAj
	lyX3GYOFpi8vsm0+nW2cbIU9XLyqg2hx0VCDgDEQYWAu9Dv+EBeR0V6WPutjl2ZH7UoZRzc4J4qRS
	bVwkenez8q1yPufdg/gj+AjqpfyClU8FBqwMzgyKNtOVEL5w33UgeeOFivWUjkgcAY6DmTfVXuq/x
	VDxNcY3GmGT0IYvNagOZ7j7OAViKwnspI7C59ef5+zG0p5e+w+lcjJ9Z4w+lVs7F5ynNIpWXDz7Z2
	/hkApNAg==;
Received: from i53875b57.versanet.de ([83.135.91.87] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdSUC-001NDi-JT; Wed, 07 Jan 2026 13:18:01 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Chaoyi Chen <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: [PATCH] drm/mipi-dsi: Only remove child devices that match the dsi device
 type
Date: Wed, 07 Jan 2026 13:18:00 +0100
Message-ID: <2718437.9Mp67QZiUf@diego>
In-Reply-To: <20251203115028.133-1-kernel@airkyi.com>
References: <20251203115028.133-1-kernel@airkyi.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_041820_934013_4B9E67DE 
X-CRM114-Status: GOOD (  22.76  )
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

QW0gTWl0dHdvY2gsIDMuIERlemVtYmVyIDIwMjUsIDEyOjUwOjI4IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgQ2hhb3lpIENoZW46Cj4gRnJvbTogQ2hhb3lpIENoZW4gPGNo
YW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+IAo+IFRoaXMgcGF0Y2ggY2hlY2tzIHdoZXRoZXIg
dGhlIGRldmljZSBpcyBhIHZhbGlkIG1pcGlfZHNpX2RldmljZSBiZWZvcmUKPiBhY2Nlc3Npbmcg
aXQgaW4gbWlwaV9kc2lfcmVtb3ZlX2RldmljZV9mbigpLgo+IAo+IFRoZSBtaXBpX2RzaV9ob3N0
X3VucmVnaXN0ZXIoKSBhc3N1bWVzIHRoYXQgYWxsIGNoaWxkIGRldmljZXMgb2YgdGhlCj4gaG9z
dCBkZXZpY2UgYXJlIG1pcGlfZHNpX2RldmljZXMgYW5kIHVzZXMgbWlwaV9kc2lfcmVtb3ZlX2Rl
dmljZV9mbigpCj4gdG8gcGVyZm9ybSBzdWJzZXF1ZW50IG9wZXJhdGlvbnMgc3BlY2lmaWMgdG8g
bWlwaV9kc2lfZGV2aWNlLgo+IAo+IEluIHJvY2tjaGlwIHBsYXRmb3JtLCBmb3IgZHctbWlwaS1k
c2ktcm9ja2NoaXAuYywgaXQgY3JlYXRlcyBhIGRwaHkKPiBkZXZpY2UsIGFuZCBpdCB1c2UgdGhl
IGRzaSBob3N0IGRldmljZSBhcyBpdHMgcGFyZW50IGRldmljZS4KPiAKPiBBbmQgd2hlbiB3ZSBj
YWxsIGR3X21pcGlfZHNpX3JlbW92ZSgpIGluCj4gZHdfbWlwaV9kc2lfcm9ja2NoaXBfcmVtb3Zl
KCksIG1pcGlfZHNpX2hvc3RfdW5yZWdpc3RlcigpIHdpbGwgZ2V0Cj4gc3VjaCBhIGRwaHkgY2hp
bGQgZGV2aWNlIGFuZCB0cmVhdCBpdCBhcyBhbiBtaXBpX2RzaV9kZXZpY2UsIHdoaWNoCj4gd2ls
bCBsZWFkIHRvIGEgZnVydGhlciBwYW5pYy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaGFveWkgQ2hl
biA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9k
cm1fbWlwaV9kc2kuYyB8IDcgKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
bWlwaV9kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fbWlwaV9kc2kuYwo+IGluZGV4IGE3MTJl
MTc3YjM1MC4uNWI5Y2M3OTllYjg3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
bWlwaV9kc2kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fbWlwaV9kc2kuYwo+IEBAIC0z
NDksNyArMzQ5LDEyIEBAIEVYUE9SVF9TWU1CT0wobWlwaV9kc2lfaG9zdF9yZWdpc3Rlcik7Cj4g
IAo+ICBzdGF0aWMgaW50IG1pcGlfZHNpX3JlbW92ZV9kZXZpY2VfZm4oc3RydWN0IGRldmljZSAq
ZGV2LCB2b2lkICpwcml2KQo+ICB7Cj4gLQlzdHJ1Y3QgbWlwaV9kc2lfZGV2aWNlICpkc2kgPSB0
b19taXBpX2RzaV9kZXZpY2UoZGV2KTsKPiArCXN0cnVjdCBtaXBpX2RzaV9kZXZpY2UgKmRzaTsK
PiArCj4gKwlpZiAoIWRldl9pc19taXBpX2RzaShkZXYpKQo+ICsJCXJldHVybiAwOwo+ICsKPiAr
CWRzaSA9IHRvX21pcGlfZHNpX2RldmljZShkZXYpOwo+ICAKPiAgCWlmIChkc2ktPmF0dGFjaGVk
KQo+ICAJCW1pcGlfZHNpX2RldGFjaChkc2kpOwo+IAoKVGhpcyBtYWtlcyBhIGxvdCBvZiBzZW5z
ZS4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCkZvciBw
ZW9wbGUgcmVhZGluZyBhbG9uZzoKVGhlIERTSSBjb250cm9sbGVycyBvbiB0aGUgUkszMzk5IHVz
ZXMgYSBwaHkgdGhhdCBpcyBfaW5zaWRlXyB0aGUKRFctRFNJIGNvbnRyb2xsZXIsIGluc3RlYWQg
b2YgYSBzZXBhcmF0ZSBJUCBibG9jay4KCkJ1dCB0aGlzIGludGVybmFsIFBIWSBjYW4gYWxzbyB3
b3JrIGFzIGEgcmVjZWl2ZXIgZm9yIGNhbWVyYSBkYXRhCmZvciB0aGUgSVNQIGJsb2NrIGluIHRo
ZSBSSzMzOTkuCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
