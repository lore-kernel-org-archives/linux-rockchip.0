Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D04DBC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Nov 2021 08:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gM6S2ZCpuYUlD8IVbgAlsgNMeF7MhSw16afUJuW4iRM=; b=JUuNUbt6YTJJFdi3FL4KbqaW45
	chK8ogCfIOzY2DW3kFlxYZp7z8nkEjVdr0zNUiV4bp++TdGk1IYiq6uh1dztdKjxjWHA+3oWRrAOl
	FM3dPonIjhfmoJDVAPHlrhDiZd+Rg38PuauwQNh/9utdSg411QwVA8eLR2iONlUThHkfd+HhKw0ZS
	6e4Kshnw/+udeH9/td7FgW1DQTSowpFNHvmpRmD94cVr34pBT7nDJRyJfLkgJECGunOq0B8wCRClZ
	8a/jZDFPDowBIFaW8Y1YWjNzIsfrcdtp3EH1/RFb/MxALv4LHVvlcrDKl+6gHuC3s+gd2u1SV+KAp
	9iwntpEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqAND-006l61-Od; Thu, 25 Nov 2021 08:44:55 +0000
Received: from lb2-smtp-cloud9.xs4all.net ([2001:888:0:108::2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqAN9-006l4y-Tf
 for linux-rockchip@lists.infradead.org; Thu, 25 Nov 2021 08:44:53 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id qAN3m651R1HGJqAN7m2pWs; Thu, 25 Nov 2021 09:44:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1637829889; bh=lwsKr77FArwR6lJ1Nnqu0OKRhMTMQX8pT5I1Nx81v/s=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=F/0MRKaEesAd9gfaojnhRm3o9PuqQiF385eoewyExkM77AIQ0kJ1fxT1Sgp8r8sCC
 z2qrxOf1F9SSvJs6Nt2qvnPmEAEJJLpnm54JBGm1gwpQs4oloo+v+bby/Edw46Jo6c
 WiUTgErNDxWeYIa3OYFqXsIlzZWvgGUxygioayI+YfEcQK7mhhXeNCkBj9sF4PyKyq
 xDuEEO5OLMyLKG69FHiOvNty0h0jWMhYB9Tp9ia7eWJOOeBC6z9qccZFkCHA+NfkaP
 J+ZbXbHnfYm3JkqQiMKR1TwznO+2Za0TfI3Iuyr6jeOV2M+z0QtUmFcrQrT0j5Fg/m
 xv1Qux7+cIngA==
Subject: Re: [PATCH] media: hantro: Hook up RK3399 JPEG encoder output
To: Nicolas Dufresne <nicolas@ndufresne.ca>, Chen-Yu Tsai <wenst@chromium.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20211119074654.470729-1-wenst@chromium.org>
 <5d23258a954eb0076cacf89d6c88b5e6ef13695f.camel@ndufresne.ca>
 <CAGXv+5Gf-gsB7JXnLiZF_R=0RdxXS7CDZaFftyZ+aESXLXy1Ew@mail.gmail.com>
 <85e9830ff0c2ed5eb77ce52ec7fde82a08368a2a.camel@ndufresne.ca>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <41d75ec1-b3b6-b991-33f0-7188869eb59c@xs4all.nl>
Date: Thu, 25 Nov 2021 09:44:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <85e9830ff0c2ed5eb77ce52ec7fde82a08368a2a.camel@ndufresne.ca>
Content-Language: en-US
X-CMAE-Envelope: MS4xfPq/gDjwsOnpUfhjx4+PkATU+2KVcCHyUa6STjsIrmw7KiLNj2dEomLAQHepTcySgRGrW2QQip808Mr1BCj42l/U1wt2H/qSUJ72BX2QU97vUbjMYZfJ
 xTBW+Cwz59QoWW+Ke0I94s56cuO1qcXD2z1LO0KJy4cinnN1pTb+0Zn8T9rwmWDc7A44IJhmnPRsIhBA/88fZhLHu2pX/5JoD2GFetvrZHL2fFBYyOikF3+f
 RAtNrcjNab/cdNiHaV4jAgQHYaLHEiHAaqWUqPjCbKfDkZsp5QTrms3I8MAqd4g6yyJYg9e5Kyb0XyIIJVJ0pi5LYlqnlcYl3HfYWqOMm0IgM/07INsysi5H
 HaGdxZryUPVdm2QaIbUjXtAZJHwB1c/IRoVGep1sQIt1DKze+MIfq35rMDY6AUTTsJFG8Rp0lKQhjdchDwyjHsdWCwaB5YLQgA0/e0mygZklIBacwDP43hSM
 IJzl8TtIgm8M8z3MvyTbhLb+nDxhSbfkYQlHn/PtxFLiMGhjFaekjUy2DL0UT6B63jWJ1f+8sdN8P4yp
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_004452_414706_CFBE2447 
X-CRM114-Status: GOOD (  20.52  )
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

T24gMjMvMTEvMjAyMSAyMDozOSwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPiBMZSBsdW5kaSAy
MiBub3ZlbWJyZSAyMDIxIMOgIDExOjU3ICswODAwLCBDaGVuLVl1IFRzYWkgYSDDqWNyaXTCoDoK
Pj4gT24gU2F0LCBOb3YgMjAsIDIwMjEgYXQgMTI6MDAgQU0gTmljb2xhcyBEdWZyZXNuZSA8bmlj
b2xhc0BuZHVmcmVzbmUuY2E+IHdyb3RlOgo+Pj4KPj4+IExlIHZlbmRyZWRpIDE5IG5vdmVtYnJl
IDIwMjEgw6AgMTU6NDYgKzA4MDAsIENoZW4tWXUgVHNhaSBhIMOpY3JpdCA6Cj4+Pj4gVGhlIEpQ
RUcgZW5jb2RlciBmb3VuZCBpbiB0aGUgSGFudHJvIEgxIGVuY29kZXIgYmxvY2sgb25seSBwcm9k
dWNlcyBhCj4+Pj4gcmF3IGVudHJvcHktZW5jb2RlZCBzY2FuLiBUaGUgZHJpdmVyIGlzIHJlc3Bv
bnNpYmxlIGZvciBidWlsZGluZyBhIEpQRUcKPj4+PiBjb21wbGlhbnQgYml0c3RyZWFtIGFuZCBw
bGFjaW5nIHRoZSBlbnRyb3B5LWVuY29kZWQgc2NhbiBpbiBpdC4gUmlnaHQKPj4+PiBub3cgdGhl
IGRyaXZlciB1c2VzIGEgYm91bmNlIGJ1ZmZlciBmb3IgdGhlIGhhcmR3YXJlIHRvIG91dHB1dCB0
aGUgcmF3Cj4+Pj4gc2NhbiB0by4KPj4+Pgo+Pj4+IEluIGNvbW1pdCBlNzY1ZGJhMTFlYzIgKCJo
YW50cm86IE1vdmUgaGFudHJvX2VuY19idWZfZmluaXNoIHRvIEpQRUcKPj4+PiBjb2RlY19vcHMu
ZG9uZSIpLCB0aGUgY29kZSB0aGF0IGNvcGllcyB0aGUgcmF3IHNjYW4gZnJvbSB0aGUgYm91bmNl
Cj4+Pj4gYnVmZmVyIHRvIHRoZSBjYXB0dXJlIGJ1ZmZlciB3YXMgbW92ZWQsIGJ1dCB3YXMgb25s
eSBob29rZWQgdXAgZm9yIHRoZQo+Pj4+IEhhbnRybyBIMSAodGhlbiBSSzMyODgpIHZhcmlhbnQu
IFRoZSBSSzMzOTkgdmFyaWFudCB3YXMgYnJva2VuLAo+Pj4+IHByb2R1Y2luZyBhIEpQRUcgYml0
c3RyZWFtIHdpdGhvdXQgdGhlIHNjYW4sIGFuZCB0aGUgY2FwdHVyZSBidWZmZXIncwo+Pj4+IC5i
eXRlc3VzZWQgZmllbGQgdW5zZXQuCj4+Pj4KPj4+PiBGaXggdGhpcyBieSBkdXBsaWNhdGluZyB0
aGUgY29kZSB0aGF0IGlzIGV4ZWN1dGVkIHdoZW4gdGhlIEpQRUcgZW5jb2Rlcgo+Pj4+IGZpbmlz
aGVzIGVuY29kaW5nIGEgZnJhbWUuIEFzIHRoZSBlbmNvZGVkIGxlbmd0aCBpcyByZWFkIGJhY2sg
ZnJvbQo+Pj4+IGhhcmR3YXJlLCBhbmQgdGhlIHZhcmlhbnRzIGhhdmluZyBkaWZmZXJlbnQgcmVn
aXN0ZXIgbGF5b3V0cywgdGhlCj4+Pj4gY29kZSBpcyBkdXBsaWNhdGVkIHJhdGhlciB0aGFuIHNo
YXJlZC4KPj4+Pgo+Pj4+IEZpeGVzOiBlNzY1ZGJhMTFlYzIgKCJoYW50cm86IE1vdmUgaGFudHJv
X2VuY19idWZfZmluaXNoIHRvIEpQRUcgY29kZWNfb3BzLmRvbmUiKQo+Pj4+IFNpZ25lZC1vZmYt
Ynk6IENoZW4tWXUgVHNhaSA8d2Vuc3RAY2hyb21pdW0ub3JnPgo+Pj4+IC0tLQo+Pj4+IFRoaXMg
d2FzIGRldmVsb3BlZCBvbiB0aGUgZG93bnN0cmVhbSBDaHJvbWVPUyA1LjEwIGtlcm5lbCAod2l0
aCBhIGhhY2sKPj4+PiBmb3IgLmRhdGFfb2Zmc2V0KSBhbmQgdGVzdGVkIHdpdGggQ2hyb21lT1Mn
cyBqcGVnX2VuY29kZV9hY2NlbGVyYXRvcl91bml0dGVzdAo+Pj4+IHBhdGNoZWQgdG8gYWNjZXB0
IG5vbi1KRklGIEpQRUcgc3RyZWFtcyAoaHR0cHM6Ly9jcnJldi5jb20vYy8zMjkxNDgwKS4KPj4+
Pgo+Pj4+IFRoaXMgd2FzIHRoZW4gZm9yd2FyZC1wb3J0ZWQgdG8gbWFpbmxpbmUgKG5hbWUgYW5k
IGZpbGVuYW1lIGNoYW5nZXMpIGFuZAo+Pj4+IGNvbXBpbGUgdGVzdGVkIG9ubHkuCj4+Pgo+Pj4g
VGVzdGVkIHdpdGggR1N0cmVhbWVyIG9uIHRvcCBvZiA1LjE2LXJjMSBmcm9tIG1lZGlhX3N0YWdl
LmdpdC4gTm90IHBlcmZlY3QgYnV0Cj4+PiBhdCBsZWFzdCB0aGUgdGhlIG91dHB1dCBpdCB2YWxp
ZC4gVGVzdCBjb21tYW5kIHdhczoKPj4+Cj4+PiAgIGdzdC1sYXVuY2gtMS4wIHZpZGVvdGVzdHNy
YyBudW0tYnVmZmVycz0yICEgdjRsMmpwZWdlbmMgISBmaWxlc2luawo+Pj4gbG9jYXRpb249dGVz
dC5qcGcKPj4+Cj4+PiBOb3RpY2UgdGhhdCBJIGVuY29kZSB0d28gZnJhbWVzLCBpdCBzZWVtcyBs
aWtlIHRoZSBkcmFpbmluZyBmbG93IGlzIGJyb2tlbiBpbgo+Pj4gdGhpcyBkcml2ZXIuIEdTdHJl
YW1lciB3aWxsIHF1ZXVlIHRoZSBmcmFtZSBhbmQgaXNzdWUgQ01EX1NUQVJUIGltbWVkaWF0ZWx5
LCB0aGUKPj4+IGRyaXZlciB3aWxsIHNraXAgdGhlIGVuY29kZSwgbGVhdmluZyBtZSB3aXRoIGFu
IGVtcHR5IGZpbGUuCj4+Cj4+IFRoZSBoYW50cm8gZHJpdmVyIGRvZXNuJ3QgaW1wbGVtZW50IEVO
Q19DTUQsIHdoaWNoIElJUkMgaXMgdXNlZCBmb3IgdGhlCj4+IGRyYWluaW5nIGZsb3cuIEkgZ3Vl
c3MgdGhhdCdzIHNvbWV0aGluZyB0byBmaXgsIHNpbmNlIHRoZSBtZW0ybWVtIHN0YXRlZnVsCj4+
IGVuY29kZXIgc3BlYyBzZWVtcyB0byByZXF1aXJlIGl0LiBPciBkb2VzIHRoYXQgc3BlYyBub3Qg
YXBwbHkgdG8gdGhlIEpQRUcKPj4gZW5jb2RlcnM/Cj4gCj4gSSdtIHByZXR0eSBzdXJlIGl0cyBy
ZXF1aXJlZC4gQnV0IHRoaXMgaXNuJ3QgYSByZWdyZXNzaW9uIGZyb20gdGhpcyBwYXRjaC4KCkkg
ZG9uJ3QgdGhpbmsgaXQgaXMgcmVxdWlyZWQgZm9yIEpQRUcgZW5jb2RlcnMgdG9kYXkuIEVhY2gg
ZnJhbWUgaXMgaW5kZXBlbmRlbnQgb2YKYW55IG90aGVyLCBzbyBpdCBiZWhhdmVzIGp1c3QgbGlr
ZSBhIG0ybSBzY2FsZXIgZm9yIGV4YW1wbGUuCgpJdCBkb2Vzbid0IGh1cnQgdG8gc3VwcG9ydCBp
dCwgYnV0IGl0IHNob3VsZG4ndCBiZSBuZWNlc3NhcnkgZm9yIGpwZWcgY29kZWNzLgoKSWYgdGhl
cmUgaXMgYSByZWFzb24gd2h5IHRoaXMgaXMgbmVlZGVkLCB0aGVuIGl0IHdvdWxkIGxpa2VseSBh
bHNvIGJlIG5lZWRlZCBmb3IKbTJtIGRldmljZXMgbGlrZSBzY2FsZXJzLgoKUmVnYXJkcywKCglI
YW5zCgo+IAo+Pgo+Pj4gVGVzdGVkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJl
c25lQGNvbGxhYm9yYS5jb20+Cj4+Cj4+IFRoYW5rcyEKPj4KPj4gQ2hlbll1Cj4gCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
