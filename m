Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9749C77B73
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 14:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2yjHxG01kKIHAPjBaAiBJ9zMsk4v0/PMTL5E5EGI/Vk=; b=Ra5CWna6jK6TIH
	ZRRb582SLnumPyY/Hdu0siMkmATiN3Prp8ohVHo/+XvHBzrNo3hUNS0b6quRvSLBDta67SKHetmp/
	7QiyZtQMEu03pPOyUFECOLMO42WhTBpMkeGKgfnRIhksnkIVAKU7rS7a3rV0omxurcsMMrgcIFXZ6
	8f6nGqEbmxbIWunJTFk+68on4buGNYqzAm4NrtE+SXRm+wgN+Iyx3Wm6NMDXCFZNRPvgWQG9ayE9E
	wUamXFIIfq/KntozJv0EoRWzywCKoH1pX/t2ayHWyBUfphXfPhCGCdu6M/hS/MimSJRe//y5Y7bzh
	5hl+KIJRkJon71cbFZ4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptqaX-001l9j-2R;
	Tue, 02 May 2023 14:02:41 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptqaT-001l7q-1M;
	Tue, 02 May 2023 14:02:39 +0000
Received: from [IPV6:2405:201:0:21ea:73f6:2283:f432:3936] (unknown [IPv6:2405:201:0:21ea:73f6:2283:f432:3936])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8A12B6603232;
	Tue,  2 May 2023 15:02:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1683036153;
	bh=xq+GCvhWDrpI4kqWLTSjKMKXim4TcqGGOuePu/Nq+us=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Mt6IWboNQ0mOLVpDukyzH4UNRI1F1ButfAO3t2pVQpqK0dNm87o1QXydpVJNNwMV2
	 CsgV8zzxN4MY6W+oLs1rqQztOBNk1tHs3vCCivnS1ri9bLC9l+gtKvrbn5ABYJdKZH
	 8uYRrlf21McuoEpn3kX0JQ22547y+gQnV5wKwTsPDHQr4wSrJMEuWpyOBhdX806MkE
	 aFcJiv6RMR9+ouhCse0WR/3uP6ZGOBmzihGpsoDEXQKcQcHHXgcWPD9bhukmCwex94
	 YZzPDFjUZ10zcZXXP8STALbsRodu7kd99cwh4qIw49SIgCZM0nbSMTX+RNf9t70Vje
	 Oe07oyFxXDyqg==
Message-ID: <5cfdd715-a59a-3bb2-1bec-1cc59e9b05c4@collabora.com>
Date: Tue, 2 May 2023 19:32:25 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v9 1/6] media: verisilicon: Do not set context src/dst
 formats in reset functions
To: Linux regressions mailing list <regressions@lists.linux.dev>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com, robert.mader@collabora.com,
 nicolas.dufresne@collabora.co.uk, ezequiel@vanguardiasur.com.ar,
 festevam@gmail.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, linux-imx@nxp.com, kernelci@lists.linux.dev,
 "gustavo.padovan@collabora.com" <gustavo.padovan@collabora.com>,
 ricardo.canuelo@collabora.com,
 Guillaume Charles Tucker <guillaume.tucker@collabora.com>,
 denys.f@collabora.com
References: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
 <20230220104849.398203-2-benjamin.gaignard@collabora.com>
 <26addb7d-bb9d-34e8-d4fe-e323ff488101@collabora.com>
 <dcd317db-3c24-895d-572b-1b139c370ff7@leemhuis.info>
 <05da00c0-2180-62ee-6276-8553ad9341c4@collabora.com>
 <5a070053-2151-56d7-26a2-03871e1e4e8e@leemhuis.info>
Content-Language: en-US
From: Shreeya Patel <shreeya.patel@collabora.com>
In-Reply-To: <5a070053-2151-56d7-26a2-03871e1e4e8e@leemhuis.info>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_070237_646894_45197207 
X-CRM114-Status: GOOD (  17.79  )
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

SGkgVGhvcnN0ZW4sCgpPbiAwMi8wNS8yMyAxNjo0MiwgTGludXggcmVncmVzc2lvbiB0cmFja2lu
ZyAoVGhvcnN0ZW4gTGVlbWh1aXMpIHdyb3RlOgo+IE9uIDAyLjA1LjIzIDA4OjU2LCBCZW5qYW1p
biBHYWlnbmFyZCB3cm90ZToKPj4gTGUgMDEvMDUvMjAyMyDDoCAwOToyMSwgVGhvcnN0ZW4gTGVl
bWh1aXMgYSDDqWNyaXTCoDoKPj4+IE9uIDI3LjA0LjIzIDAwOjE5LCBTaHJlZXlhIFBhdGVsIHdy
b3RlOgo+Pj4+IE9uIDIwLzAyLzIzIDE2OjE4LCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4+
Pj4gU2V0dGluZyBjb250ZXh0IHNvdXJjZSBhbmQgZGVzdGluYXRpb24gZm9ybWF0cyBzaG91bGQg
b25seSBiZSBkb25lCj4+Pj4+IGluIGhhbnRyb19zZXRfZm10X291dCgpIGFuZCBoYW50cm9fc2V0
X2ZtdF9jYXAoKSBhZnRlciBjaGVjayB0aGF0Cj4+Pj4+IHRoZSB0YXJnZXRlZCBxdWV1ZSBpcyBu
b3QgYnVzeS4KPj4+Pj4gUmVtb3ZlIHRoZXNlIGNhbGxzIGZyb20gaGFudHJvX3Jlc2V0X2VuY29k
ZWRfZm10KCkgYW5kCj4+Pj4+IGhhbnRyb19yZXNldF9yYXdfZm10KCkgdG8gY2xlYW4gdGhlIGRy
aXZlci4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmph
bWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+Pj4gS2VybmVsQ0kgZm91bmQgdGhpcyBwYXRj
aCBjYXVzZXMgYSByZWdyZXNzaW9uIGluIHRoZQo+Pj4+IGJhc2VsaW5lLmRtZXNnLmFsZXJ0IHRl
c3QgWzFdIG9uIHJrMzM5OS1yb2NrLXBpLTRiIFsyXSwKPj4+PiBzZWUgdGhlIGJpc2VjdGlvbiBy
ZXBvcnQgZm9yIG1vcmUgZGV0YWlscyBbM10uCj4+Pj4KPj4+PiBMZXQgdXMga25vdyBpZiB5b3Ug
aGF2ZSBhbnkgcXVlc3Rpb25zLgo+Pj4+Cj4+Pj4gWzFdCj4+Pj4gaHR0cHM6Ly9naXRodWIuY29t
L2tlcm5lbGNpL2tlcm5lbGNpLWNvcmUvYmxvYi9tYWluL2NvbmZpZy9yb290ZnMvZGVib3Mvb3Zl
cmxheXMvYmFzZWxpbmUvb3B0L2tlcm5lbGNpL2RtZXNnLnNoCj4+Pj4gWzJdIGh0dHBzOi8vbGlu
dXgua2VybmVsY2kub3JnL3Rlc3QvY2FzZS9pZC82NDQyZTgyNWYxOTEzNGQ3NGMyZTg2NWQvCj4+
Pj4gWzNdIGh0dHBzOi8vZ3JvdXBzLmlvL2cva2VybmVsY2ktcmVzdWx0cy9tZXNzYWdlLzQwNzQw
Cj4+PiBUaHggZm9yIHRoZSByZXBvcnQuIEZXSVcsIHJlZ3pib3Qgbm90aWNlZCB0aGVyZSBpcyBh
IHBhdGNoIHRoYXQgcmVmZXJzCj4+PiB0byB0aGUgY3VscHJpdCB0aGF0IG1pZ2h0IGhhdmUgYmVl
biBsYW5kZWQgaW4gbmV4dCBhZnRlciB5b3VyIHRlc3QgcmFuCj4+PiBmb3IgdGhlIGxhc3QgdGlt
ZSAoYW5kIG1lYW53aGlsZSBpdCB3YXMgbWFpbmxpbmVkKTogZjEwMGNlM2JiZDYgKCJtZWRpYToK
Pj4+IHZlcmlzaWxpY29uOiBGaXggY3Jhc2ggd2hlbiBwcm9iaW5nIGVuY29kZXIiKQo+PiBZZXMg
dGhhdCBwYXRjaCBzaG91bGQgZml4IHRoZSBwcm9iaW5nIGlzc3VlLgo+PiBNYXJlayBpcyB3b3Jr
aW5nIG9uIGFuIGFkZGl0aW9uYWwgb25lIHRvIGZpeCBwaXhlbCBmb3JtYXQgbmVnb3RpYXRpb24K
Pj4gYnV0IHRoYXQgZG9lc24ndCBpbXBhY3QgdGhlIGJvb3QuCj4gR3JlYXQsIHRoeCBmb3IgdGhl
IHJlcGx5Lgo+Cj4gU2hyZWV5YSwgbm9ybWFsbHkgSSBiZWxpZXZlIGRldmVsb3BlcnMgaW4gY2Fz
ZXMgbGlrZSB0aGlzIGFuZCB3b3VsZCBoYXZlCj4gaW5jbHVkZWQKPgo+ICAgI3JlZ3pib3QgZml4
OiBmMTAwY2UzYmJkNgo+Cj4gaW4gdGhpcyBtYWlsICh3aXRob3V0IHRoZSBzcGFjZSBpbiBmcm9u
dCBvZiB0aGUgIykgdG8gbWFyayB0aGUKPiByZWdyZXNzaW9uIGFzIHJlc29sdmVkLiBXb3VsZCB0
aGF0IGJlIG9rYXkgZm9yIHlvdSBhbmQgb3RoZXIga2VybmVsLmNpCj4gcGVvcGxlPyBPciBkbyB5
b3Ugd2FudCB0byBjb25maXJtIHRoaXMgZmlyc3Q/CgpJIGNoZWNrZWQgdGhlIGNvbW1pdCBwb2lu
dGVkIG91dCBhbmQgYWxzbyBkb3VibGUgY2hlY2tlZCB3aXRoIEJlbmphbWluIAppbnRlcm5hbGx5
IHNvCndlIGFyZSBnb29kIHRvIG1hcmsgdGhpcyBhcyBmaXhlZC4KCgojcmVnemJvdCBmaXg6IGYx
MDBjZTNiYmQ2YQoKClRoYW5rcywKU2hyZWV5YSBQYXRlbAoKPgo+IENpYW8sIFRob3JzdGVuICh3
ZWFyaW5nIGhpcyAndGhlIExpbnV4IGtlcm5lbCdzIHJlZ3Jlc3Npb24gdHJhY2tlcicgaGF0KQo+
IC0tCj4gRXZlcnl0aGluZyB5b3Ugd2FubmEga25vdyBhYm91dCBMaW51eCBrZXJuZWwgcmVncmVz
c2lvbiB0cmFja2luZzoKPiBodHRwczovL2xpbnV4LXJlZ3RyYWNraW5nLmxlZW1odWlzLmluZm8v
YWJvdXQvI3RsZHIKPiBJZiBJIGRpZCBzb21ldGhpbmcgc3R1cGlkLCBwbGVhc2UgdGVsbCBtZSwg
YXMgZXhwbGFpbmVkIG9uIHRoYXQgcGFnZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
