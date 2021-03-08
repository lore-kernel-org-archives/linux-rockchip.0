Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64572C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 15:25:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E2EE465269
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 15:25:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E2EE465269
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Slpr/QcP5DpGCf2X1wxHdlX6jvU4QRAl/w51H8mufl0=; b=EhCxuvcHpH/BrXE42j+aXnVOi
	paWWKqWWSHj94cbZ01VVwxyMiR7yIwEnVmmM4xm/Gzo+qcjaFOVS3XvZciJSbglAlv81tJWU/sLFQ
	q0hII3EUOvuYKPUBe7R+rZ6VLIIFu+LV9L6cnQr2RYXF1fOXQqCZwnWE9mZRT/hXQGOPz/REJVreX
	R6v9x0oSrhkRGltjbm2KEtpCwZda4MX4A81x5UiQ/FkZKiUxrl3jSoaL8M+IFLAPdJ2baMTesdgoe
	DFSWfA+6H9njdWfD4oBFTl+FBwqxyi16DQLGJFF7sRxNSedp9e/LgnUu/WSz+frXriD0FaCl5S7Zg
	haLstC45A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJHlH-000YyQ-Fx; Mon, 08 Mar 2021 15:25:36 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJHl8-000Yss-CF
 for linux-rockchip@lists.infradead.org; Mon, 08 Mar 2021 15:25:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 2D7A61F4513C
Message-ID: <12bd921ce856590f5a4426de45865ad007b791e9.camel@collabora.com>
Subject: Re: [PATCH 7/7] ARM: dts: at91: sama5d4: add vdec0 component
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Emil Velikov <emil.l.velikov@gmail.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>, kernel@collabora.com, 
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip <linux-rockchip@lists.infradead.org>, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>
Date: Mon, 08 Mar 2021 12:25:17 -0300
In-Reply-To: <CACvgo51peuKsuqx-NwZSWU4Ys1q5MuXb=BRx7GLo3tkWH+vb0w@mail.gmail.com>
References: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
 <20210305183924.1754026-8-emil.l.velikov@gmail.com>
 <915739c6fc01f17b00c4fac8b7fede1f25396286.camel@collabora.com>
 <CACvgo51peuKsuqx-NwZSWU4Ys1q5MuXb=BRx7GLo3tkWH+vb0w@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_152526_858612_4947CEFF 
X-CRM114-Status: GOOD (  18.11  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCAyMDIxLTAzLTA4IGF0IDEzOjA3ICswMDAwLCBFbWlsIFZlbGlrb3Ygd3JvdGU6Cj4g
wqBIaSBFemVxdWllbCwKPiAKPiBUaGFua3MgZm9yIHRoZSBwcm9tcHQgcmVwbHkKPiAKPiBPbiBT
YXQsIDYgTWFyIDIwMjEgYXQgMTE6MjUsIEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFi
b3JhLmNvbT4gd3JvdGU6Cj4gPiAKPiA+IChhZGRpbmcgYW5vdGhlciBOaWNvbGFzKQo+ID4gCj4g
PiBIaSBFbWlsLAo+ID4gCj4gPiBUaGFua3MgYSBsb3QgZm9yIHRoZSBwYXRjaC4KPiA+IAo+ID4g
T24gRnJpLCAyMDIxLTAzLTA1IGF0IDE4OjM5ICswMDAwLCBFbWlsIFZlbGlrb3Ygd3JvdGU6Cj4g
PiA+IEZyb206IEVtaWwgVmVsaWtvdiA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+Cj4gPiA+
IAo+ID4gPiBUaGUgU29DIGZlYXR1cmVzIGEgSGFudHJvIEcxIGNvbXBhdGlibGUgdmlkZW8gZGVj
b2Rlci4KPiA+ID4gCj4gPiA+IENjOiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9y
YS5jb20+Cj4gPiA+IENjOiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPgo+
ID4gPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gPiA+IENjOiBsaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEVtaWwgVmVsaWtv
diA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+ClsuLl0KPiA+ID4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3QgaGFudHJvX2ZtdCBzYW1hNWQ0X3ZkZWNfcG9zdHByb2NfZm10c1tdID0gewo+ID4gPiAr
wqDCoMKgwqDCoMKgIHsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLmZvdXJj
YyA9IFY0TDJfUElYX0ZNVF9ZVVlWLAo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAuY29kZWNfbW9kZSA9IEhBTlRST19NT0RFX05PTkUsCj4gPiA+ICvCoMKgwqDCoMKgwqAgfSwK
PiA+ID4gK307Cj4gPiA+ICsKPiA+IAo+ID4gSSBoYXZlbid0IGZvdW5kIGluZm9ybWF0aW9uIG9u
IGhvdyB0aGUgc2VyaWVzCj4gPiB3YXMgdGVzdGVkIGluIHRoZSBjb3ZlciBsZXR0ZXIsIGNvdWxk
IHlvdSBhZGQgdGhhdCB0byB0aGUgbmV4dAo+ID4gaXRlcmF0aW9uPwo+ID4gCj4gPiBQbGVhc2Ug
dGVzdCB0aGUgWVVZViBwb3N0LXByb2Nlc3NlZCBvdXRwdXQgYW5kIE1QRUctMiBkZWNvZGluZyBh
cyB3ZWxsLgo+ID4gCj4gQW55IHJlY29tbWVuZGF0aW9ucyBmb3IgTVBFRy0yIGFuZCBwb3N0LXBy
b2Nlc3NpbmcgdGVzdGluZz8gRm9yIHRoZQo+IGZvcm1lciBJIGNvdWxkIHVzZSBnc3RyZWFtZXIg
b24gQmlnIEJ1Y2sgQnVubnkgb3Igb3RoZXIgbWVkaWEsIHlldCBub3QKPiBzdXJlIGFib3V0IHRo
ZSBsYXR0ZXIuCj4gCgpUaGUgcG9zdC1wcm9jZXNzZWQgWVVZViBvdXRwdXQgY2FuIGJlIHJlcXVl
c3RlZCBsaWtlIHRoaXMgaW4KR1N0cmVhbWVyOgoKZ3N0LWxhdW5jaC0xLjAgLXYgZmlsZXNyYyBs
b2NhdGlvbj0kc29tZXRoaW5nICAhIHBhcnNlYmluICEgZGVjb2RlYmluICEgdmlkZW8veC1yYXcs
Zm9ybWF0PVlVWTIgISAuLi4KCkZvciBNUEVHLTIgdGVzdGluZywgSSdtIGFmcmFpZCB0aGVyZSdz
IG5vIEdTdHJlYW1lciB5ZXQgZm9yIHRoaXMsCmJ1dCBKb25hcycgZmZtcGVnIHNob3VsZCB3b3Jr
IGh0dHBzOi8vZ2l0aHViLmNvbS9Ld2lib28vRkZtcGVnL2NvbW1pdHMvdjRsMi1yZXF1ZXN0LWh3
YWNjZWwtNC4zLgoKVGhhbmtzLApFemVxdWllbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
