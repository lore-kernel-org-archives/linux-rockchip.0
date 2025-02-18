Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFBE5C021AA
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Feb 2025 10:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0k+84SOtorzUW76zHtSPLCXGt4lENQk0nyBbX1Yg2E=; b=vDMN/y+L6k9oGm
	qvyTpvYB5u7weJ0cE3Ew+MZz4m5Vt5CxRDYItPg2/zlgnTm+3n8WJs/Jc837tjc8PgbfHwS34moqC
	GgfzlEnr/Hvh6RPtuF3q8hT0k/1hX/6+bhRCYUGLqI8CPN8gduomKKRBvLmLf7pONtj+Eu1qNgfRY
	hS140tG0wFlMzW5YkdymnCQDhvQY+AYM/RnVxYYo1ufN6+i6FB06ksRFxnsoeHCA1zdZfwrA8UTwZ
	+6CxSSMi2qhwgouRSVM5E7O2iqfiHZ686IE8L5pAs6ymiy8gC5JbFgQx+cD89bRviG50LXw72ePoE
	t6mgeOz6MLUqIQ1TGNZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkKPc-00000007e2W-3tf9;
	Tue, 18 Feb 2025 10:01:08 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkKBO-00000007aA2-1HV7;
	Tue, 18 Feb 2025 09:46:27 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739871969; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=kEMoEGYx4odDVnsn3kMR/Xa8T58NL5/WmIxhiC1QmDbOw2kMQt/nIPfyAIekGWktvDCzSQAYuYhc5Abj436AfzGo5ngAIi5OCQ1jE670om64Fg/MjBH3P0wn0nzYUt5/m5cRmfADwsUCvAChuIJ8LczNcfwphDaeU3ImME8VvG8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739871969; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Q1RdT5eL57c25wsLGjqwv0tswd3r+m/iGHKhWU5vNkU=; 
	b=hLzq0fvMYDz4a5xxxexNYBS03rTRyJMvfImGjFHcBZXArSaI4gII1ayNbBOTGf9CaecoStJL/xfhCv2E69KTZGQtfvXuzjrABQJ5DT0E0ywS30UNAKqgSC9priy2c0ORkMYZGg0hpVISv8ZnwJ8TMHDFGsYFWAKuCRsFR/cih4o=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739871969;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=Q1RdT5eL57c25wsLGjqwv0tswd3r+m/iGHKhWU5vNkU=;
	b=g1utORNBtkSzGH4AGRNSLNihyapmNrQnpoMzHP+cBeRE9eEU2ZqtKp7oQcMfGo+Z
	TrnTvx/ncakBtybvu8lPzOEs+C+Shxev/I0KWei9noHHV1ypPzapSK4ZLfPqC4uFpGI
	+MAtfsBQlcrdwxeylDkOd7Jtj9TnrOERFBINv/+E=
Received: by mx.zohomail.com with SMTPS id 1739871967704282.7054777678519;
	Tue, 18 Feb 2025 01:46:07 -0800 (PST)
Message-ID: <4a04b12c-8765-47bb-af61-c6b47133f2af@collabora.com>
Date: Tue, 18 Feb 2025 10:46:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] media: verisilicon: Fix AV1 decoder clock frequency
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 kernel@collabora.com, stable@vger.kernel.org
References: <20250217-b4-hantro-av1-clock-rate-v2-1-e179fad52641@collabora.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20250217-b4-hantro-av1-clock-rate-v2-1-e179fad52641@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_014626_436229_8E611098 
X-CRM114-Status: GOOD (  22.04  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDE3LzAyLzIwMjUgw6AgMjI6NDYsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPiBU
aGUgZGVzaXJlZCBjbG9jayBmcmVxdWVuY3kgd2FzIGNvcnJlY3RseSBzZXQgdG8gNDAwTUh6IGlu
IHRoZSBkZXZpY2UgdHJlZQo+IGJ1dCB3YXMgbG93ZXJlZCBieSB0aGUgZHJpdmVyIHRvIDMwME1I
eiBicmVha2luZyA0SyA2MEh6IGNvbnRlbnQgcGxheWJhY2suCj4gRml4IHRoZSBpc3N1ZSBieSBy
ZW1vdmluZyB0aGUgZHJpdmVyIGNhbGwgdG8gY2xrX3NldF9yYXRlKCksIHdoaWNoIHJlZHVjZQo+
IHRoZSBhbW91bnQgb2YgYm9hcmQgc3BlY2lmaWMgY29kZS4KPgo+IEZpeGVzOiAwMDNhZmRhOTdj
NjUgKCJtZWRpYTogdmVyaXNpbGljb246IEVuYWJsZSBBVjEgZGVjb2RlciBvbiByazM1ODgiKQo+
IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogTmljb2xhcyBEdWZy
ZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IEJlbmph
bWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoKPiAtLS0KPiBU
aGlzIHBhdGNoIGZpeGVzIHVzZXIgcmVwb3J0IG9mIEFWMSA0SzYwIGRlY29kZXIgbm90IGJlaW5n
IGZhc3QgZW5vdWdoCj4gb24gUkszNTg4IGJhc2VkIFNvQy4gVGhpcyBpcyBhIGJyZWFrIGZyb20g
SGFudHJvIG9yaWdpbmFsIGF1dGhvcnMKPiBoYWJiaXQgb2YgY29kaW5nIHRoZSBmcmVxdWVuY2ll
cyBpbiB0aGUgZHJpdmVyIGluc3RlYWQgb2Ygc3BlY2lmeWluZyB0aGlzCj4gZnJlcXVlbmN5IGlu
IHRoZSBkZXZpY2UgdHJlZS4gVGhlIG90aGVyIGNhbGxzIHRvIGNsa19zZXRfcmF0ZSgpIGFyZSBs
ZWZ0Cj4gc2luY2UgdGhpcyB3b3VsZCByZXF1aXJlIG1vZGlmeWluZyBtYW55IGR0c2kgZmlsZXMs
IHdoaWNoIHdvdWxkIHRoZW4gYmUKPiB1bnN1aXRhYmxlIGZvciBiYWNrcG9ydC4KPiAtLS0KPiBD
aGFuZ2VzIGluIHYyOgo+IC0gQ29tcGxldGVseSByZW1vdmUgdGhlIHVudXNlZCBpbml0IGZ1bmN0
aW9uLCB0aGUgZHJpdmVyIGlzIG51bGwtc2FmZQo+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvci8yMDI1MDIxNy1iNC1oYW50cm8tYXYxLWNsb2NrLXJhdGUtdjEtMS02NWI5
MTEzMmM1NTFAY29sbGFib3JhLmNvbQo+IC0tLQo+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHVfaHcuYyB8IDkgLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hh
bmdlZCwgOSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdV9ody5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHVfaHcuYwo+IGluZGV4IDk2NDEyMmU3YzM1NTkzNGNk
ODBlYjQ0MjIxOWY2YmE1MWJiYThiNzEuLjg0MjA0MGY3MTNjMTVlNmZmMjk1NzcxYmM5ZmE1YTdi
NjZlNTg0YjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9yb2NrY2hpcF92cHVfaHcuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNp
bGljb24vcm9ja2NoaXBfdnB1X2h3LmMKPiBAQCAtMTcsNyArMTcsNiBAQAo+ICAgCj4gICAjZGVm
aW5lIFJLMzA2Nl9BQ0xLX01BWF9GUkVRICgzMDAgKiAxMDAwICogMTAwMCkKPiAgICNkZWZpbmUg
UkszMjg4X0FDTEtfTUFYX0ZSRVEgKDQwMCAqIDEwMDAgKiAxMDAwKQo+IC0jZGVmaW5lIFJLMzU4
OF9BQ0xLX01BWF9GUkVRICgzMDAgKiAxMDAwICogMTAwMCkKPiAgIAo+ICAgI2RlZmluZSBST0NL
Q0hJUF9WUFU5ODFfTUlOX1NJWkUgNjQKPiAgIAo+IEBAIC00NDAsMTMgKzQzOSw2IEBAIHN0YXRp
YyBpbnQgcmszMDY2X3ZwdV9od19pbml0KHN0cnVjdCBoYW50cm9fZGV2ICp2cHUpCj4gICAJcmV0
dXJuIDA7Cj4gICB9Cj4gICAKPiAtc3RhdGljIGludCByazM1ODhfdnB1OTgxX2h3X2luaXQoc3Ry
dWN0IGhhbnRyb19kZXYgKnZwdSkKPiAtewo+IC0JLyogQnVtcCBBQ0xLcyB0byBtYXguIHBvc3Np
YmxlIGZyZXEuIHRvIGltcHJvdmUgcGVyZm9ybWFuY2UuICovCj4gLQljbGtfc2V0X3JhdGUodnB1
LT5jbG9ja3NbMF0uY2xrLCBSSzM1ODhfQUNMS19NQVhfRlJFUSk7Cj4gLQlyZXR1cm4gMDsKPiAt
fQo+IC0KPiAgIHN0YXRpYyBpbnQgcm9ja2NoaXBfdnB1X2h3X2luaXQoc3RydWN0IGhhbnRyb19k
ZXYgKnZwdSkKPiAgIHsKPiAgIAkvKiBCdW1wIEFDTEsgdG8gbWF4LiBwb3NzaWJsZSBmcmVxLiB0
byBpbXByb3ZlIHBlcmZvcm1hbmNlLiAqLwo+IEBAIC04MDcsNyArNzk5LDYgQEAgY29uc3Qgc3Ry
dWN0IGhhbnRyb192YXJpYW50IHJrMzU4OF92cHU5ODFfdmFyaWFudCA9IHsKPiAgIAkuY29kZWNf
b3BzID0gcmszNTg4X3ZwdTk4MV9jb2RlY19vcHMsCj4gICAJLmlycXMgPSByazM1ODhfdnB1OTgx
X2lycXMsCj4gICAJLm51bV9pcnFzID0gQVJSQVlfU0laRShyazM1ODhfdnB1OTgxX2lycXMpLAo+
IC0JLmluaXQgPSByazM1ODhfdnB1OTgxX2h3X2luaXQsCj4gICAJLmNsa19uYW1lcyA9IHJrMzU4
OF92cHU5ODFfdnB1X2Nsa19uYW1lcywKPiAgIAkubnVtX2Nsb2NrcyA9IEFSUkFZX1NJWkUocmsz
NTg4X3ZwdTk4MV92cHVfY2xrX25hbWVzKQo+ICAgfTsKPgo+IC0tLQo+IGJhc2UtY29tbWl0OiAy
MDE0Yzk1YWZlY2VlM2U3NmNhNGE1Njk1NmE5MzZlMjMyODNmMDViCj4gY2hhbmdlLWlkOiAyMDI1
MDIxNy1iNC1oYW50cm8tYXYxLWNsb2NrLXJhdGUtZTU0OTdmMTQ5OWRmCj4KPiBCZXN0IHJlZ2Fy
ZHMsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
