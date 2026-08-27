Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1064C61DC2
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Aug 2026 13:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ee1bE59/TTCWJG/i83A28fbVsM/utJDBxpFUdwWG7TU=; b=n2WXU87OEV+j4F
	oerguMJBtgiKChTHHu7wByV517nrkl1OFTtMG4Hry7FhQidBeOw1R2r+RcO8h/OOIQSPjBXBwG39N
	jVcV6pl4VqraNe1ZhGOjW7HNuCsOWKTEndtVath8dICl19qdR9TkoxdklAGnHZYoF6+8kyaPrKoJh
	M1PqEF9qM1rjHzcHqu1N33mAjX2n+QNzIxDy1H7600F+Ul0paoDIHjxnoTd1WlRB5ugOR0HGgga0e
	nGGNpscBrMtuEz9N1TrB9SB0nDJDVBJ2HH0bkO7B+BtENVARjiLcQ8kyKJti6mfB+t/W/p/qqV8Vp
	lMXLJxDE4z/CbbDESxjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzaYa-000000046AG-2ygl;
	Thu, 27 Aug 2026 13:54:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzaYW-0000000468L-3WPQ;
	Thu, 27 Aug 2026 13:54:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=rWfd5/uJ5kBo6WJGlskG3tntoc37IMd3ji7UZYIgyR8=; b=pXUzBDvEJRH2f1EWdSQVLIRPD0
	st02wJxpl1rJYqoYPw3CMLo+Fl6YPud3datM6GryS3PIFiX9JDkxm7vyVKCrzihH785halA13rKcE
	PTYnbuZIdWtycOfiSlFoqJS+OsCVWKQWD/2mXNbsJcnP900fCotQqRw78QseyYPdwLuCFLocWl9XR
	t1m/VMl8J2s7/pUoSzxMmYjM6TXt9Tj7awsN0vnz4ZBAphh1rBt8hAkjZ+g+SYyUumBnT1xHjSDIZ
	yip6AcM5B6C1XByK2mkGoM0Ihm1BVgPeT0j6RrYB7I4ZT/Wfyes2a/gKSVJUoEpmfRB19mCgE3WGz
	SEGjWgdA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Srinivas Kandagatla <srini@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH] nvmem: rockchip-otp: convert to runtime PM
Date: Thu, 27 Aug 2026 15:54:06 +0200
Message-ID: <2048906.PYKUYFuaPT@phil>
In-Reply-To: <20260819-rockchip-nvmem-pmruntime-v1-1-01f1acf80dba@pengutronix.de>
References: <20260819-rockchip-nvmem-pmruntime-v1-1-01f1acf80dba@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_065412_918664_247109D7 
X-CRM114-Status: GOOD (  15.34  )
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

QW0gTWl0dHdvY2gsIDE5LiBBdWd1c3QgMjAyNiwgMTQ6MzM6NDUgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBTYXNjaGEgSGF1ZXI6Cj4gRnJvbTogU3RlZmFuIEtlcmttYW5u
IDxzLmtlcmttYW5uQHBlbmd1dHJvbml4LmRlPgo+IAo+IFRoZSBkcml2ZXIgZW5hYmxlcyB0aGUg
T1RQIGNsb2NrcyBpbnNpZGUgcm9ja2NoaXBfb3RwX3JlYWQoKSBhbmQgZHJvcHMKPiB0aGVtIGFn
YWluIGJlZm9yZSByZXR1cm5pbmcsIHNvIHRoZSBjb250cm9sbGVyIGlzIG9ubHkgYWxpdmUgZm9y
IHRoZQo+IGR1cmF0aW9uIG9mIGEgbnZtZW0gcmVhZCBpc3N1ZWQgYnkgTGludXguCj4gCj4gT24g
UkszNTg4IHRoYXQgaXMgbm90IHN1ZmZpY2llbnQuIFBhcnQgb2YgdGhlIE9UUCBhcnJheSBpcyBy
ZWFkYWJsZSBvbmx5Cj4gZnJvbSB0aGUgc2VjdXJlIHdvcmxkLCBhbmQgT1AtVEVFIHJlYWRzIGl0
IHRocm91Z2ggdGhpcyBzYW1lIGNvbnRyb2xsZXIuCj4gSXRzIGNsb2NrcyBhcmUgaW4gdGhlIG5v
cm1hbCB3b3JsZCdzIENSVSBhbmQgYXJlIHBsYWluIGdhdGVzLCBzbyBhbiBTTUMKPiBpbnRvIE9Q
LVRFRSBoaXRzIGEgY2xvY2stZ2F0ZWQgY29udHJvbGxlciB1bmxlc3MgTGludXggdHVybnMgdGhl
bSBvbgo+IGZpcnN0LiBPUC1URUUgY2Fubm90IGRvIHRoYXQgd2l0aG91dCBhIENSVSBkcml2ZXIg
b2YgaXRzIG93biwgd2hpY2gKPiB3b3VsZCBwdXQgYm90aCB3b3JsZHMgb24gdGhlIHNhbWUgZ2F0
ZSByZWdpc3RlcnMuCj4gCj4gTW92ZSB0aGUgY2xvY2sgaGFuZGxpbmcgaW50byBydW50aW1lIFBN
IGNhbGxiYWNrcy4gQSBjb25zdW1lciBjYW4gdGhlbgo+IHRha2UgYSBETF9GTEFHX1BNX1JVTlRJ
TUUgZGV2aWNlIGxpbmsgb24gdGhlIE9UUCBhbmQgaG9sZCBhIHJlZmVyZW5jZQo+IGZvciBhcyBs
b25nIGFzIGl0IG5lZWRzIHRoZSBjb250cm9sbGVyLCB3aXRob3V0IGtub3dpbmcgYW55dGhpbmcg
YWJvdXQKPiBpdHMgY2xvY2sgbGlzdC4gREVGSU5FX1JVTlRJTUVfREVWX1BNX09QUygpIHN1cHBs
aWVzIHRoZSBzeXN0ZW0gc2xlZXAKPiBjYWxsYmFja3MgdG9vLCBzbyBob2xkaW5nIG9uZSBkb2Vz
IG5vdCBrZWVwIHRoZSBjbG9ja3Mgb24gb3ZlciBzdXNwZW5kLgo+IAo+IEVuYWJsaW5nIHRoZSBj
bG9ja3MgaXMgbm93IHRoZSBjYWxsYmFja3MnIGpvYiBhbG9uZSwgaGVuY2UgdGhlIGRlcGVuZGVu
Y3kKPiBvbiBQTTogd2l0aCBDT05GSUdfUE09biB0aGV5IG5ldmVyIHJ1biBhbmQgYSByZWFkIHdv
dWxkIGdvIG91dCB0byBhIGdhdGVkCj4gY29udHJvbGxlci4gUmVhZHMgYXJlIG90aGVyd2lzZSB1
bmNoYW5nZWQuCj4gCj4gQXNzaXN0ZWQtYnk6IENsYXVkZTpjbGF1ZGUtb3B1cy01Cj4gU2lnbmVk
LW9mZi1ieTogU3RlZmFuIEtlcmttYW5uIDxzLmtlcmttYW5uQHBlbmd1dHJvbml4LmRlPgo+IFNp
Z25lZC1vZmYtYnk6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KClJldmll
d2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKPiAtLS0KPiBUaGUgZHJp
dmVyIGVuYWJsZXMgdGhlIE9UUCBjbG9ja3MgaW5zaWRlIHJvY2tjaGlwX290cF9yZWFkKCkgYW5k
IGRyb3BzCj4gdGhlbSBhZ2FpbiBiZWZvcmUgcmV0dXJuaW5nLCBzbyB0aGUgY29udHJvbGxlciBp
cyBvbmx5IGFsaXZlIGZvciB0aGUKPiBkdXJhdGlvbiBvZiBhIG52bWVtIHJlYWQgaXNzdWVkIGJ5
IExpbnV4LgoKeW91ciBjb21taXQgbWVzc2FnZSBnb3QgZHVwbGljYXRlZCBoZXJlLgoKCkhlaWtv
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
