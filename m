Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DBEFC77B7E
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 14:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvrOqogcJzWwm1xz2FfAEVdeOw88Tz8C3hj6y4UZtLo=; b=ZstehxVFD2qZkT
	M45lDp7+T5651G4LwV1PxnKty1YKgdpvWLe7jzR5XzcRheZfN3lCYtEiflpOOajdVjYLCp/l7rc62
	IDUTd8IJn3YX8lI75S9jdwx/1OE6RZHd1/Baydu/2vSXpP3WACQqPzyq8h4BBFHS00tPVLIwrfxEa
	ljuqWsbKlRgMuSavZQZcs5RXr8heqy8jy7IKBBmi13pWc1J+Oldtd+h0aoCSOUCyEMGnHWqfWo9IS
	BAGBbNzbROKPqyH+riP56kFwmIq9Z5c1OPEaMOEw2bGtW0pJ7/F4+nJJa87jIsCuRo5oVejjEfPlO
	rptPQRJzf2MqD6eGTJrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2C10-00GqY4-1G;
	Thu, 25 May 2023 14:32:30 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2C0w-00GqXG-2S
	for linux-rockchip@lists.infradead.org;
	Thu, 25 May 2023 14:32:28 +0000
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:17:6c0::7a9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AEDD2660571B;
	Thu, 25 May 2023 15:32:23 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685025145;
	bh=bKbvtkUjIXfSUWM6dkyu+X6aQMMPjIEiQFqcy9qp028=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=JfIV8qpz5SLjVJ59PNVTZZJKHSNSvUS5Qug+7PWKXWK3wTXxSIJY5c4PC7gRBwS9j
	 i/CM0SrFbAzLeHEJAdyE0mwU5YD5or8yLv3+YsQ/ef8SfwKU7YmB40bwlIjdgb0ACb
	 /YMKtddMmPscABm5Yifra7az7Qqsy7Cr1by9umc4ww5dzAa9Fhfw1I5S3FMA2YBTHL
	 3UFEqPcdqYwEUEFbkTdK+vHRJHLyb3ZYTwFORVXMPI7izlYGcnMjiV+aOf943gGK2S
	 qrPNPUIS2cWepzogDg3nbzsRP33PIcXVMiEzuzATfX18D762xmZxepZRw9a0x/GtNp
	 M2oV4aNp56RIA==
Message-ID: <bec8c0b0decc16b3533fadec8ad0f6d5c2f37d98.camel@collabora.com>
Subject: Re: [PATCH v2] media: verisilicon: Fix crash when probing encoder
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Michael Tretter <m.tretter@pengutronix.de>, Linux regressions mailing
	list <regressions@lists.linux.dev>
Cc: Diederik de Haas <didi.debian@cknow.org>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, p.zabel@pengutronix.de,
 mchehab@kernel.org,  m.szyprowski@samsung.com, linux-media@vger.kernel.org,
  linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, hverkuil-cisco@xs4all.nl, Pengutronix Kernel Team
 <kernel@pengutronix.de>
Date: Thu, 25 May 2023 10:32:15 -0400
In-Reply-To: <20230523145430.GB9943@pengutronix.de>
References: <20230413104756.356695-1-benjamin.gaignard@collabora.com>
	 <4995215.LvFx2qVVIh@bagend>
	 <7c1bf9c4-f14b-30cd-2610-871f5f512d06@collabora.com>
	 <12724349.O9o76ZdvQC@bagend>
	 <5d871928-dcd5-3f27-e975-d1639525dad0@leemhuis.info>
	 <20230523145430.GB9943@pengutronix.de>
User-Agent: Evolution 3.48.1 (3.48.1-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_073226_934538_8CDEE9CD 
X-CRM114-Status: GOOD (  29.32  )
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

SGkgTWljaGVhbCwKCkxlIG1hcmRpIDIzIG1haSAyMDIzIMOgIDE2OjU0ICswMjAwLCBNaWNoYWVs
IFRyZXR0ZXIgYSDDqWNyaXTCoDoKPiBPbiBUdWUsIDIzIE1heSAyMDIzIDEyOjUwOjQyICswMjAw
LCBMaW51eCByZWdyZXNzaW9uIHRyYWNraW5nIChUaG9yc3RlbiBMZWVtaHVpcykgd3JvdGU6Cj4g
PiBDQ2luZyB0aGUgUmVncmVzc2lvbiBsaXN0IGFuZCBhIGJ1bmNoIG9mIG90aGVyIHBlb3BsZSB0
aGF0IHdlcmUgQ0NlZCBpbgo+ID4gdGhyZWFkcyB0aGF0IGxvb2sgcmVsYXRlZDoKPiAKPiBUaGFu
a3MhCj4gCj4gPiAKPiA+IE9uIDIzLjA1LjIzIDAwOjM4LCBEaWVkZXJpayBkZSBIYWFzIHdyb3Rl
Ogo+ID4gPiBPbiBNb25kYXksIDIyIE1heSAyMDIzIDE4OjE3OjM5IENFU1QgQmVuamFtaW4gR2Fp
Z25hcmQgd3JvdGU6Cj4gPiA+ID4gTGUgMjAvMDUvMjAyMyDDoCAwMDozNCwgRGllZGVyaWsgZGUg
SGFhcyBhIMOpY3JpdCA6Cj4gPiA+ID4gPiBPbiBUaHVyc2RheSwgMTMgQXByaWwgMjAyMyAyMTo1
Mjo1MCBDRVNUIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4gPiA+IFsuLi5dCj4gPiA+ID4gPiBX
aGVuIEkgYm9vdGVkIGludG8gbXkgNi40LXJjMSAoYnV0IGFsc28gcmMyKSBrZXJuZWwgb24gbXkK
PiA+ID4gPiA+IFBpbmU2NCBRdWFydHo2NCBNb2RlbCBBLCBJIG5vdGljZWQgYSBjcmFzaCB3aGlj
aCBzZWVtcyB0aGUgc2FtZSBhcwo+ID4gPiA+ID4gYWJvdmUsIGJ1dCBJIGRpZG4ndCBoYXZlIHN1
Y2ggYSBjcmFzaCB3aXRoIG15IDYuMyBrZXJuZWwuCj4gPiA+ID4gPiBTZWFyY2hpbmcgZm9yICdo
YW50cm8nIGxlZCBtZSB0byB0aGlzIGNvbW1pdCBhcyB0aGUgbW9zdCBsaWtlbHkgY3VscHJpdAo+
ID4gPiA+ID4gYnV0IHdoZW4gSSBidWlsZCBhIG5ldyA2LjQtcmNYIGtlcm5lbCB3aXRoIHRoaXMg
Y29tbWl0IHJldmVydGVkLAo+ID4gPiA+ID4gSSBzdGlsbCBoYWQgdGhpcyBjcmFzaC4KPiA+ID4g
PiA+IERvIHlvdSBoYXZlIHN1Z2dlc3Rpb25zIHdoaWNoIGNvbW1pdCB3b3VsZCB0aGVuIGJlIHRo
ZSBsaWtlbHkgY3VscHJpdD8KPiA+ID4gPiAKPiA+ID4gPiBUaGlzIHBhdGNoIGZpeCB0aGUgY3Jh
c2ggYXQgYm9vdCB0aW1lLCByZXZlcnQgaXQgZG9lc24ndCBzZWVtIHRvIGJlIHRoZQo+ID4gPiA+
IHNvbHV0aW9uLiBNYXliZSB0aGlzIHByb3Bvc2FsIGZyb20gTWFyZWsgY2FuIGhlbHAgeW91ID8K
PiA+ID4gPiAKPiA+ID4gPiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGlu
dXgtbWVkaWEvcGF0Y2gvMjAyMzA0MjExMDQ3NTkuMjIzNjQ2My0xLW0uc3p5cHJvd3NraUBzYW1z
dW5nLmNvbS8KPiA+ID4gCj4gPiA+IFRoYXQgaGVscGVkIDopIEFmdGVyIGFwcGx5aW5nIHRoYXQg
cGF0Y2ggSSBubyBsb25nZXIgaGF2ZSB0aGUgY3Jhc2guCj4gPiA+IFRoYW5rcyEKPiA+IAo+ID4g
VGhhdCByZWdyZXNzaW9uIGZpeCBpcyBub3cgYSBtb250aCBvbGQsIGJ1dCBub3QgeWV0IG1lcmdl
ZCBhZmFpY3MgLS0KPiA+IGd1ZXNzIGR1ZSB0byBOaWNvbGFzIGNvbW1lbnQgdGhhdCB3YXNuJ3Qg
YWRkcmVzc2VkIHlldCBhbmQgbGlrZWx5Cj4gPiByZXF1aXJlcyBhIHVwZGF0ZWQgcGF0Y2guCj4g
Cj4gSSBhZ3JlZSB3aXRoIE5pY29sYXMgY29tbWVudCBvbiB0aGF0IHBhdGNoIGFuZCBpdCBuZWVk
cyB0byBiZSB1cGRhdGVkLgo+IAo+ID4gCj4gPiBNaWNoYWVsIGFmYWljcyBhIHdlZWsgYWdvIHBv
c3RlZCBhIHBhdGNoIHRoYXQgdG8gbXkgKnZlcnkgbGltaXRlZAo+ID4gdW5kZXJzdGFuZGluZyBv
ZiB0aGluZ3MqIChJIGhvcGUgSSBkb24ndCBjb25mdXNlIG1hdHRlcnMgaGVyZSEpIHNlZW1zIHRv
Cj4gPiBhZGRyZXNzIHRoZSBzYW1lIHByb2JsZW0sIGJ1dCBzbGlnaHRseSBkaWZmZXJlbnRseToK
PiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIzMDUxNjA5MTIwOS4zMDk4MjYyLTEt
bS50cmV0dGVyQHBlbmd1dHJvbml4LmRlLwo+IAo+IENvcnJlY3QsIG15IHBhdGNoIGFkZHJlc3Nl
cyB0aGUgc2FtZSBwcm9ibGVtLgoKU29ycnksIGp1c3QgZ290IHJlYWxseSBidXN5IGFuZCBtaXNz
ZWQgdGhlIHNlY29uZCBmaXguIEZyb20gYSBob3QgZml4IHN0YW5kCnBvaW50LCB5b3VyIHBhdGNo
IHNlZW1zIGEgbG90IHNhZmVyLiBJdCBkb2VzIG5vdCBnbyBhcyBmYXIsIGFuZCBwcm9iYWJseSBk
b2VzCm5vdCBtYWtlIHRoZSBkcml2ZXIgYmV0dGVyLCBidXQgY29uc2lkZXJpbmcgd2UgaGFkIHN1
Y2ggYSBzbG93IHJlc3BvbnNlIHdlIG5lZWQKdG8gZG8gc29tZXRoaW5nIGFib3V0IGl0LgoKRXpl
cXVpZWwsIHdpbGwgeW91IGJlIGZpbmUgd2l0aCB0aGUgYXBwcm9hY2ggPwoKPiAKPiA+IAo+ID4g
Tm8gcmVwbHkgeWV0Lgo+ID4gCj4gPiBUaGF0J3MgYWxsIGEgYml0IHVuZm9ydHVuYXRlLCBhcyBp
dCdzIG5vdCBob3cgcmVncmVzc2lvbiBmaXhlcyBzaG91bGQgYmUKPiA+IGRlYWx0IHdpdGggLS0g
YW5kIGNhdXNlZCBtdWx0aXBsZSBwZW9wbGUgaGVhZGFjaGVzIHRoYXQgY291bGQgaGF2ZSBiZWVu
Cj4gPiBhdm9pZGVkLiA6LS8KPiA+IAo+ID4gQnV0IHdlbGwsIHRoaW5ncyBoYXBwZW4uIEJ1dCBp
dCBsZWFkcyB0byB0aGUgcXVlc3Rpb246Cj4gPiAKPiA+IEhvdyBjYW4gd2UgZmluYWxseSBhZGRy
ZXNzIHRoZSBpc3N1ZSBxdWlja2x5IG5vdyB0byBlbnN1cmUgaXMgZG9lc24ndAo+ID4gY2F1c2Ug
aGVhZGFjaGVzIGZvciBldmVuIG1vcmUgcGVvcGxlPwo+ID4gCj4gPiBNYXJlaywgTWljaGFlbCwg
Y291bGQgeW91IHdvcmsgb24gYSBwYXRjaCB0b2dldGhlciB0aGF0IHdlIHRoZW4gZ2V0Cj4gPiBz
b21ld2hhdCBmYXN0LXRyYWNrZWQgdG8gTGludXMgdG8gYXZvaWQgaGltIGdldHRpbmcgZXZlbiBt
b3JlIHVuaGFwcHkKPiA+IGFib3V0IHRoZSBzdGF0ZSBvZiB0aGluZ3NbMV0/Cj4gCj4gTWFyZWss
IGlmIHlvdSBoYXZlIGFuIHVwZGF0ZWQgcGF0Y2gsIEkgd2lsbCBoYXBwaWx5IHRlc3QgYW5kIHJl
dmlldyBpdC4KPiBPdGhlcndpc2UsIHBsZWFzZSB0YWtlIGEgbG9vayBhdCBteSBwYXRjaC4KPiAK
PiBNaWNoYWVsCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
