Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3561FC10F16
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 14:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPPMMdyx8iQvliSEbVYZjiFcXmcSXCj9v6P7XsA7mVE=; b=A2MQYf7GHWRwz3
	HxJTEis0SiWH3p4foG8f6XnseyV4sEjff8bi/qTMqoPUWWDibSpkHRP+uROV3XJPC/FjZz2pbH7RQ
	InATSN4YontxhoC4bCwDAa2jWszvzrOclvCEq66Vf5mOJXx6FlpdbrcavZ5S9baNLgpfpIQUhyyGn
	620d5zchM/NQBUsstn5sWAd1VRD3UqKz6BvSLTEh0sfD5GdCpxFfI3qR8ERcBZynuM8O7IGw559t1
	CSaC2pgY8KFtRgWFVpy9XFHTANSNIZvphjQXu9izOJ1dj4A2lzhvvrlw23lCWeBA2EXb5tyUbtD3/
	RboR/XMkgkUYHZrNJCtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3zUZ-00000007hFZ-3bkl;
	Mon, 06 May 2024 14:38:59 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3zUV-00000007hCg-2oZr;
	Mon, 06 May 2024 14:38:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715006334;
	bh=27tHSW1zl7ehj6fVxvf4O5x37/NDiU0iDr5TcXznQAQ=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=Ka6OY6yZfrHN6wP/B4YWxipAoFoi4Gv2tqTmEd/8d+1NsD0nmxJS9fg566Yje1GWu
	 Ov6JBpMQ6fIf+G1MtReBJd+Yisz9KbLOUplNZX6oa8ATXWh1DQxmCKyslvXX8xYBuX
	 f0yVrQUcqvtEK1waV2VSjhhsvyqcRZhxu6j3vJxXdEFTSt3BEON7TTN250+4gdW2j2
	 ZGbNtR/J0mMe7HZFeYYZZaDTWJ5wRQuR3OxdAWV6Igx9Gk2v1UetPWZG/svFB+TIq8
	 +O6SExrzXZFBwYs32v5f4ZlRlZCgul90qSSsZXG8Ubxk2JkJ7oHqyIL+Xz77oGpywA
	 MgQEiWHCdS+0A==
Received: from [100.93.89.217] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E804E3781107;
	Mon,  6 May 2024 14:38:53 +0000 (UTC)
Message-ID: <c747a5e6-e3f2-4bea-87e2-92b71501db9a@collabora.com>
Date: Mon, 6 May 2024 16:38:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: verisilicon: AV1: Be more fexible on postproc
 capabilities
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, mchehab@kernel.org, heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20240328093439.18712-1-benjamin.gaignard@collabora.com>
 <e4d01c27aa976c44e0b7122e39111be062a4deb4.camel@ndufresne.ca>
 <ebbe249f-bce6-4e81-969f-c63ab4b063f3@collabora.com>
Content-Language: en-US
In-Reply-To: <ebbe249f-bce6-4e81-969f-c63ab4b063f3@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_073855_860218_92356E56 
X-CRM114-Status: GOOD (  14.81  )
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

CkxlIDA1LzA0LzIwMjQgw6AgMTA6MTcsIEJlbmphbWluIEdhaWduYXJkIGEgw6ljcml0wqA6Cj4K
PiBMZSAwNC8wNC8yMDI0IMOgIDE5OjU5LCBOaWNvbGFzIER1ZnJlc25lIGEgw6ljcml0wqA6Cj4+
IEhpLAo+Pgo+PiBMZSBqZXVkaSAyOCBtYXJzIDIwMjQgw6AgMTA6MzQgKzAxMDAsIEJlbmphbWlu
IEdhaWduYXJkIGEgw6ljcml0wqA6Cj4+PiBSSzM1ODggcG9zdC1wcm9jZXNzb3IgYmxvY2sgaXMg
YWJsZSB0byBjb252ZXJ0IDEwIGJpdHMgc3RyZWFtcwo+Pj4gaW50byA4IGJpdHMgcGl4ZWxzIGZv
cm1hdC4KPj4gRG9lcyBpdCBjb21lIHdpdGggYW55IEhEUiB0byBTRFIgY2FwYWJpbGl0aWVzID8g
Y2F1c2Ugc3RyaXBwaW5nIG9mZiAyIAo+PiBiaXRzIG1lYW5zCj4+IHRoYXQgdG9uZSBtYXBwaW5n
IHdpbGwgY2F1c2UgYSBsb3Qgb2YgYmFuZGluZyBhcyBpdCB3b24ndCBoYXZlIHRoZSAKPj4gZXhw
ZWN0ZWQKPj4gcHJlY2lzaW9uLiBJJ20gc2ltcGx5IHRyeWluZyB0byBtYWtlIHVwIHRoZSBiaWcg
cG9ydHJhaXQgc28gd2UgZG9uJ3QgCj4+IGp1c3Qgb2ZmZXIKPj4geWV0IGFub3RoZXIgZm9vdCBn
dW4uIEJ1dCBwZXJoYXBzIGl0cyBmaW5lIHRvIG9mZmVyIHRoaXMsIGl0cyBqdXN0IAo+PiB0aGF0
IHdlIGRvbid0Cj4+IGhhdmUgYSBtZWNoYW5pc20gdG8gcmVwb3J0IHdoaWNoIHBpeGVsIGZvcm1h
dCBpbiB0aGUgc2VsZWN0aW9uIHdpbGwgCj4+IGNhdXNlIGRhdGEKPj4gbG9zdC4KPgo+IE5vIGl0
IGp1c3QgdG8gZW5hYmxlIHBvc3QtcHJvY2Vzc29yIGNhcGFiaWxpdGllcyBsaWtlIHdlIGhhdmUg
YWxyZWFkeSAKPiBmb3IgRzIvSEVWQy4KPiBTaW5jZSBpdCBpcyBhIHBvc3QtcHJvY2Vzc29yIHBp
eGVsIGZvcm1hdCBpdCB3aWxsIGJlIGVudW1lcmF0ZWQgYWZ0ZXIgCj4gVjRMMl9QSVhfRk1UX05W
MTVfNEw0Cj4gc28gaXQgd2lsbCB1cGRhdGUgdG8gdXNlcmxhbmQgdG8gZGVjaWRlIHRvIHVzZSBp
dCBvciBub3QuCgpHZW50bGUgcGluZywKUmVnYXJkcywKQmVuamFtaW4KCj4KPiBCZW5qYW1pbgo+
Cj4+Cj4+IE5pY29sYXMKPj4KPj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxi
ZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+Pj4gRml4ZXM6IDAwM2FmZGE5N2M2NSAo
Im1lZGlhOiB2ZXJpc2lsaWNvbjogRW5hYmxlIEFWMSBkZWNvZGVyIG9uIAo+Pj4gcmszNTg4IikK
Pj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hp
cF92cHVfaHcuYyB8IDEgLQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKPj4+
Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2Nr
Y2hpcF92cHVfaHcuYyAKPj4+IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9y
b2NrY2hpcF92cHVfaHcuYwo+Pj4gaW5kZXggZjk3NTI3NjcwNzgzLi45NjQxMjJlN2MzNTUgMTAw
NjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlw
X3ZwdV9ody5jCj4+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3Jv
Y2tjaGlwX3ZwdV9ody5jCj4+PiBAQCAtODIsNyArODIsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IGhhbnRyb19mbXQgCj4+PiByb2NrY2hpcF92cHU5ODFfcG9zdHByb2NfZm10c1tdID0gewo+Pj4g
wqDCoMKgwqDCoCB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLmZvdXJjYyA9IFY0TDJfUElYX0ZN
VF9OVjEyLAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC5jb2RlY19tb2RlID0gSEFOVFJPX01PREVf
Tk9ORSwKPj4+IC3CoMKgwqDCoMKgwqDCoCAubWF0Y2hfZGVwdGggPSB0cnVlLAo+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgIC5wb3N0cHJvY2Vzc2VkID0gdHJ1ZSwKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCAuZnJtc2l6ZSA9IHsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC5taW5fd2lkdGgg
PSBST0NLQ0hJUF9WUFU5ODFfTUlOX1NJWkUsCj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
