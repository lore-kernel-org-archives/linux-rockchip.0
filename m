Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB3E3D2ECE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 14:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ed5OYNcMb/Xz43btGgq9YxfdJ7lEEAo+CNj54WBenv8=; b=a6wJRAgUmLRcgj
	gvDkZsQFakIDtIuc3EYTlI7tES2bkdikDAYyhGp9v7s8jVuR2SXCinum+2EMsQ95n/IkFf6jg6iEo
	0hhqgdTucWuqmuKYQ7S177HKaDSK6xlQY1GjGcMPA28pdhsICOFGROiVNFsWYiroAwK5RGf4Ynlc2
	9b7fHVtml9Ff7Nw+Fr+lYzmQvAW4wWR2FlI9mpiuTaDxQKUhIgxoA+hx+rIj1okRFOkmxhryGNb1b
	xEyuheHtKMrraW2vUA3rktLcBI6S5tV7Rwrxetjej12NOz0Y5nE6rzDrE9XnQUBXYbyyr/TUk3xoN
	wwbjoGQp4UpDLfvVWHog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viCv6-000000040dl-0JLS;
	Tue, 20 Jan 2026 14:41:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viCv1-000000040au-0OSh;
	Tue, 20 Jan 2026 14:41:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Sag+H/BhPZ45KSkJ6zCyuoYRKvuE9xHt5nOXwQMVW40=; b=wlp0I5GKmkHGAajTVUbav838z3
	6hqseOEREYnEOKPj/nmBZZi/VZDgF5D6MNyxqFPU0be0Ids+mGYNL/DbmmjFKW4UL4X6Tf1IlNKzw
	2JzL/ufy7vBtteFvAA/uIQ5jhdJxU2d6EgQCECbgueW+iOAHk4zaAZpdf2gq4EPJEkAonK0ZmGJor
	q/T/DsRgoreG3A+qEK9gcRNjJr1I2sbYzd4U6W28Wat5tRGRkkLU4d7BIM9N9WbUzE1uQBE5g4FIL
	GgmOdXHfV96fRHsRrGuSGsgbYEwHLdEDX/quh3UR2izo/uXGz5y4QsnuixAmOxjB3EjGTaqorYDcZ
	cG+3jzaA==;
Received: from i53875a75.versanet.de ([83.135.90.117] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1viCuo-003T50-Vr; Tue, 20 Jan 2026 15:41:07 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>,
 Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Manivannan Sadhasivam <mani@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Explicitly request UFS reset pin on
 RK3576
Date: Tue, 20 Jan 2026 15:41:06 +0100
Message-ID: <4830042.taCxCBeP46@diego>
In-Reply-To: <CABjd4YwAMbH21jcjhks7ThoXzcF8GeOzBPYDvN+7cip0iA6stg@mail.gmail.com>
References: <20260120-ufs-rst-v2-1-b5735f1996f6@gmail.com>
 <9e51b504-e0f0-4d17-baa2-387339507c86@cherry.de>
 <CABjd4YwAMbH21jcjhks7ThoXzcF8GeOzBPYDvN+7cip0iA6stg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_064119_225071_14A3F9D6 
X-CRM114-Status: GOOD (  23.37  )
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

QW0gRGllbnN0YWcsIDIwLiBKYW51YXIgMjAyNiwgMTQ6MTQ6NDggTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBBbGV4ZXkgQ2hhcmtvdjoKPiBPbiBUdWUsIEphbiAyMCwgMjAy
NiBhdCA1OjAw4oCvUE0gUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QGNoZXJyeS5kZT4g
d3JvdGU6Cj4gPgo+ID4gSGkgQWxleGV5LAo+ID4KPiA+IE9uIDEvMjAvMjYgMTo1MyBQTSwgQWxl
eGV5IENoYXJrb3Ygd3JvdGU6Cj4gPiA+IFJvY2tjaGlwIFJLMzU3NiBVRlMgY29udHJvbGxlciB1
c2VzIGEgZGVkaWNhdGVkIHBpbiB0byByZXNldCB0aGUgY29ubmVjdGVkCj4gPiA+IFVGUyBkZXZp
Y2UsIHdoaWNoIGNhbiBvcGVyYXRlIGVpdGhlciBpbiBhIGhhcmR3YXJlIGNvbnRyb2xsZWQgbW9k
ZSBvciBhcyBhCj4gPiA+IEdQSU8gcGluLgo+ID4gPgo+ID4gPiBQb3dlci1vbiBkZWZhdWx0IGlz
IEdQSU8gbW9kZSwgYnV0IHRoZSBib290IFJPTSByZWNvbmZpZ3VyZXMgaXQgdG8gYQo+ID4gPiBo
YXJkd2FyZSBjb250cm9sbGVkIG1vZGUgaWYgaXQgdXNlcyBVRlMgdG8gbG9hZCB0aGUgbmV4dCBi
b290IHN0YWdlLgo+ID4gPgo+ID4gPiBHaXZlbiB0aGF0IGV4aXN0aW5nIGJpbmRpbmdzIChhbmQg
cmszNTc2LmR0c2kpIGV4cGVjdCBhIEdQSU8tY29udHJvbGxlZAo+ID4gPiBkZXZpY2UgcmVzZXQs
IHJlcXVlc3QgdGhlIHJlcXVpcmVkIHBpbiBjb25maWcgZXhwbGljaXRseS4KPiA+ID4KPiA+ID4g
VGhpcyBkb2Vzbid0IGFwcGVhciB0byBhZmZlY3QgTGludXgsIGJ1dCBpdCBkb2VzIGFmZmVjdCBV
LWJvb3Q6Cj4gPiA+Cj4gPiA+IEJlZm9yZToKPiA+ID4gPT4gbWQubCAweDI2MDRiMzk4Cj4gPiA+
IDI2MDRiMzk4OiAwMDAwMDAxMSAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAgLi4uLi4uLi4u
Li4uLi4uLgo+ID4gPiA8IC4uLiBzbmlwIC4uLiA+Cj4gPiA+ID0+IHVmcyBpbml0Cj4gPiA+IHVm
c2hjZC1yb2NrY2hpcCB1ZnNoY0AyYTJkMDAwMDogW1JYLCBUWF06IGdlYXI9WzMsIDNdLCBsYW5l
WzIsIDJdLCBwd3JbRkFTVEFVVE9fTU9ERSwgRkFTVEFVVE9fTU9ERV0sIHJhdGUgPSAyCj4gPiA+
ID0+IG1kLmwgMHgyNjA0YjM5OAo+ID4gPiAyNjA0YjM5ODogMDAwMDAwMTEgMDAwMDAwMDAgMDAw
MDAwMDAgMDAwMDAwMDAgIC4uLi4uLi4uLi4uLi4uLi4KPiA+ID4KPiA+ID4gQWZ0ZXI6Cj4gPiA+
ID0+IG1kLmwgMHgyNjA0YjM5OAo+ID4gPiAyNjA0YjM5ODogMDAwMDAwMTEgMDAwMDAwMDAgMDAw
MDAwMDAgMDAwMDAwMDAgIC4uLi4uLi4uLi4uLi4uLi4KPiA+ID4gPCAuLi4gc25pcCAuLi4+Cj4g
PiA+ID0+IHVmcyBpbml0Cj4gPiA+IHVmc2hjZC1yb2NrY2hpcCB1ZnNoY0AyYTJkMDAwMDogW1JY
LCBUWF06IGdlYXI9WzMsIDNdLCBsYW5lWzIsIDJdLCBwd3JbRkFTVEFVVE9fTU9ERSwgRkFTVEFV
VE9fTU9ERV0sIHJhdGUgPSAyCj4gPiA+ID0+IG1kLmwgMHgyNjA0YjM5OAo+ID4gPiAyNjA0YjM5
ODogMDAwMDAwMTAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgIC4uLi4uLi4uLi4uLi4uLi4K
PiA+ID4KPiA+ID4gKDB4MjYwNGIzOTggaXMgdGhlIHJlc3BlY3RpdmUgcGluIG11eCByZWdpc3Rl
ciwgd2l0aCBpdHMgQklUMCBkcml2aW5nIHRoZQo+ID4gPiBtb2RlIG9mIFVGU19SU1Q6IHVuc2V0
ID0gR1BJTywgc2V0ID0gaGFyZHdhcmUgY29udHJvbGxlZCBVRlNfUlNUKQo+ID4gPgo+ID4gPiBU
aGlzIGhlbHBzIGVuc3VyZSB0aGF0IEdQSU8tZHJpdmVuIGRldmljZSByZXNldCBhY3R1YWxseSBm
aXJlcyB3aGVuIHRoZQo+ID4gPiBzeXN0ZW0gcmVxdWVzdHMgaXQsIG5vdCB3aGVuIHdoYXRldmVy
IGJsYWNrIGJveCBtYWdpYyBpbnNpZGUgdGhlIFVGU0hDCj4gPiA+IGRlY2lkZXMgdG8gcmVzZXQg
dGhlIGZsYXNoIGNoaXAuCj4gPiA+Cj4gPgo+ID4gV291bGQgaGF2ZSBsaWtlZCBhIG1lbnRpb24g
b24gd2h5IHB1bGwtZG93biBpbiB0aGUgY29tbWl0IGxvZy4KPiAKPiBJbmRlZWQuIEhlaWtvLCBp
ZiB5b3UncmUgZ29pbmcgdG8gYXBwbHkgdGhpcyB0byB5b3VyIHRyZWUsIHdvdWxkIHlvdQo+IG1p
bmQgYW1lbmRpbmcgdGhlIGNvbW1pdCBkZXNjcmlwdGlvbiB3aXRoIHNvbWV0aGluZyBsaWtlIHRo
ZQo+IGZvbGxvd2luZz8KPiAKPiBUaGUgcGluIGlzIHJlcXVlc3RlZCB3aXRoIHB1bGwtZG93biBl
bmFibGVkLCB3aGljaCBpcyBpbiBsaW5lIHdpdGggdGhlCj4gU29DIHBvd2VyLW9uIGRlZmF1bHQg
YW5kIGhlbHBzIGVuc3VyZSB0aGF0IHRoZSBhdHRhY2hlZCBVRlMgY2hpcCBzdGF5cwo+IGluIHJl
c2V0IHVudGlsIHRoZSBkcml2ZXIgdGFrZXMgb3ZlciB0aGUgY29udHJvbCBvZiB0aGUgcmVzcGVj
dGl2ZQo+IEdQSU8gbGluZS4KCldpbGwgZG8gOi0pCgpIZWlrbwoKCj4gPiBJbiBhbnkgY2FzZSwK
PiA+Cj4gPiBSZXZpZXdlZC1ieTogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QGNoZXJy
eS5kZT4KPiAKPiBUaGFua3MgYSBsb3QhCj4gCj4gQmVzdCByZWdhcmRzLAo+IEFsZXhleQo+IAoK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
