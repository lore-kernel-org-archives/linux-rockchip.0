Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C84D6CCD1A7
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 13:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fWP60PG0dFIXMOJK9zgCGPp0NIT8IA+nLK/kYMc6Rg=; b=qZpdjhYdayFls2
	JhtiyLc7Azvf0qHtLBRjwPXfTUaL1B2uOHerCe5MLnUhzxrItYsMOeVj3F6HLiuWJG8u6+A+Pmd5d
	w/UQqn4Jdba86oBzd+pZCUkYaSYg8CTdoEmj9fDpIiLVRpW91wvlfGWg80EDGpiIslYZ10UgLWsI5
	+gRYVNAriE8nRd7bjSfioN261N7qI9aWuXEAAhTQicjz+IVCYshMc2zItlGElcRFQtDpLV6tEApfr
	wBHtN7g1gJqivODYsrBMMiCoglgiYMm7goJwMWCpJhTxsqZNXVjWimtXzFbsO5A2mYlN0sPfo16Ue
	8FG3y5JhxzloKHbabdYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBChr-0000000HCUV-1BiL;
	Tue, 21 Oct 2025 13:47:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBCho-0000000HCTX-1Be9;
	Tue, 21 Oct 2025 13:47:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=aok4Q7VCeJwiry1qOMn1QTGAWgJx8h8keP6SSm7tHlQ=; b=Mlh89lu7wtQLx4mdH9MuwJQYFv
	XjIltf3atCUoXi+p5e7lCcYpM4UyPbUFJm+8eFFY+UGuhKQeQyluZp0Rp4Gf4KwNQsQVqVsmdQKY+
	QfyOik/etf8+aeNaxMM/M03AgFlf+oK63yjolN12SLXGnWrPaev6B6BdbNe2fOhTph+snLAMKMkhY
	tcRNX0V96K6d+lekXsAm4R1AqXuq0oeJ40GsiSjyl8xqwkVAVmp1V1ul5J5fikDlL9QxhJDmoJg67
	DL6D3FDSRj9khpecMAgByuCCTkYyfhzqrDg4gHSGMBAQLBa3rTWPA0cNDLF1L2DZ2nEzDHOmZ2UG1
	ltdW8tjw==;
Received: from i53875b19.versanet.de ([83.135.91.25] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vBChk-0003Zt-HY; Tue, 21 Oct 2025 15:47:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, sboyd@kernel.org, sugar.zhang@rock-chips.com,
 zhangqing@rock-chips.com, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
 finley.xiao@rock-chips.com
Subject: Re: [PATCH v4 5/7] clk: rockchip: add support for pvtpll clk
Date: Tue, 21 Oct 2025 15:47:11 +0200
Message-ID: <13871591.dW097sEU6C@phil>
In-Reply-To: <20251021065232.2201500-6-zhangqing@rock-chips.com>
References: <20251021065232.2201500-1-zhangqing@rock-chips.com>
 <20251021065232.2201500-6-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_064716_349399_9AA29B41 
X-CRM114-Status: GOOD (  18.76  )
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

QW0gRGllbnN0YWcsIDIxLiBPa3RvYmVyIDIwMjUsIDA4OjUyOjMwIE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRWxhaW5lIFpoYW5nOgo+IFN1cHBvcnQgdG8gYWRqdXN0IHB2
dHBsbCBieSB2b2x0LXNlbCBhbmQgb3RwLgo+IFN1cHBvcnQgY2FsaWJyYXRlIHB2dHBsbCBpbml0
IGZyZXF1ZW5jeS4KPiAKPiBQVlRQTEwgaXMgdXNlZCB0byBtb25pdG9yIHRoZSBjaGlwIHBlcmZv
cm1hbmNlIHZhcmlhbmNlIGNhdXNlZCBieSBjaGlwCj4gcHJvY2Vzcywgdm9sdGFnZSBhbmQgdGVt
cGVyYXR1cmUsIGFuZCBnZW5lcmF0ZSBhIHNldCBvZiByZWZlcmVuY2Ugc2lnbmFscwo+IGZvciBh
ZGp1c3RpbmcgdGhlIHZvbHRhZ2Ugb2YgdGhlIGNoaXAuCj4gCj4gUFZUUExMIHN1cHBvcnRzIHRo
ZSBmb2xsb3dpbmcgZmVhdHVyZXM6Cj4gCj4gMS4gQSBjbG9jayBvc2NpbGxhdGlvbiByaW5nIGlz
IGludGVncmF0ZWQgYW5kIHVzZWQgdG8gZ2VuZXJhdGUgYSBjbG9jawo+IGxpa2Ugc2lnbmFsIChv
c2NfY2xrKSx0aGUgZnJlcXVlbmN5IG9mIHRoaXMgY2xvY2sgaXMgZGV0ZXJtaW5lZAo+IGJ5IHRo
ZSBjZWxsIGRlbGF5IHZhbHVlIG9mIGNsb2NrIG9zY2lsbGF0aW9uIHJpbmcgY2lyY3VpdAo+IAo+
IDIuIEEgZnJlcXVlbmN5IGNvdW50ZXIob3NjX2NudCkgaXMgdXNlZCB0byBtZWFzdXJlIHRoZSBm
cmVxdWVuY3kgb2Ygb3NjX2Nsay4KPiAKPiAzLiBBIGV4dGVybmFsbHkgaW5wdXQgY2xvY2sgKHJl
Zl9jbGspIGlzIHVzZWQgYXMgYSByZWZlcmVuY2UgY2xvY2sgZm9yCj4gZGV0ZWN0aW5nIHRoZSBm
cmVxdWVuY3kgb2Ygb3NjX2Nsay4KPiAKPiA0LiBBIGNhbGN1bGF0aW9uIGNvdW50ZXIgdXNlcyBy
ZWZfY2xrIHRvIGdlbmVyYXRlIGEgY29uZmlndXJhYmxlCj4gcGVyaW9kaWMgdGltaW5nIHdpbmRv
dy4KPiAKPiA1LiBUd28gY2xvY2sgY291bnRlcnMgYXJlIHVzZWQgdG8gbWVhc3VyZSB0aGUgZnJl
cXVlbmN5IG9mIHRoZSBjbG9jawo+IGdlbmVyYXRlZCBieSBPU0NfV1JBUFBFUj8KPiAKPiA2LiBT
dXBwb3J0IGZvciBkaXZpZGluZyB0aGUgcmVmX2NsayBhbmQgb3NjX2Nsawo+IAo+IDcuIFN1cHBv
cnQgZm9yIGNvbmZpZ3VyaW5nIHRoZSBlZmZlY3RpdmUgcG9sYXJpdHkgb2YgdGhlIHZvbHRhZ2UK
PiByZWd1bGF0b3Igc2lnbmFsICdPVVQnCj4gCj4gVGhlIGNsb2NrIHBhdGggb2YgY3B1IHVzZWQg
cHZ0cGxsOgo+IAo+ICAgICAtLWdwbGwtLXwtLVwKPiAgICAgICAgICAgICB8ICAgXCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgXAo+ICAgICAgICAgICAgIHwgICAgXCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgXAo+ICAgICAgICAgICAgIHwgICAgIFwgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgIFwKPiAgICAtLXYwcGxsLS18IG11eCB8LS1bZ2F0
ZV0tLVtkaXZdLS1jbGtfY29yZV9zcmMtLXxtdXggfC0tY2xrX2NvcmUKPiAgICAgICAgICAgICB8
ICAgICAvICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAvCj4gICAgICAgICAgICAg
fCAgICAvICAgLS1yZWZfY2xrLS1bZGl2XS1jcHVfcHZ0cGxsLS18ICAvCj4gICAgLS12MXBsbC0t
fCAgIC8gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IC8KPiAgICAgICAgICAgICB8
LS0vCj4gCj4gU2lnbmVkLW9mZi1ieTogRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlw
cy5jb20+CgpbLi4uXQoKPiArCXB2dHBsbC0+cmVnbWFwX2NydSA9IHN5c2Nvbl9yZWdtYXBfbG9v
a3VwX2J5X3BoYW5kbGVfb3B0aW9uYWwobnAsICJyb2NrY2hpcCxjcnUiKTsKCk5vdCBjb252aW5j
ZWQgYWJvdXQgdGhhdCA6LSkgLgoKKDEpIHRoZSBjcnUgaXRzZWxmIGFscmVhZHkgaW9yZW1hcHMg
dGhlIENSVSBtZW1vcnksIHNvIGhhdmluZyBhIHN5c2NvbgogICAgdGhlcmUgd291bGQgaW9yZW1h
cCB0aGF0IG1lbW9yeSBhIHNlY29uZCB0aW1lLgooMikgd2Ugc2hvdWxkIGRlZmluaXRseSBub3Qg
ZXhwb3NlIHRoZSB3aG9sZSBDUlUgaW8tbWVtb3J5IHRvIG90aGVyCiAgICBkcml2ZXJzIHRvIHdy
aXRlICJyYW5kb20iIHN0dWZmIHRvLiBUaGlzIHdpbGwganVzdCBpbnZpdGVkIGZ1cnRoZXIKICAg
IGhhY2tzLCB3aGVyZSBwZW9wbGUgd2FudCB0byB0YWtlIHNob3J0Y3V0cyB3aXRoIGNsb2NrIHNl
dHRpbmdzLgoKQWxzbyB0aGlzIHNlZW1zIGhpZ2hseSBzcGVjaWZpYyB0byB0aGUgcnYxMTI2Yi4K
Ckxvb2tpbmcgYXQgdGhlIHJlZ2lzdGVycywgdGhpcyBpcyBhIGNsay1tdXggYmV0d2VlbiB0aGF0
IGRlZXBzbG93IGNsb2NrCmFuZCB0aGUgYWN0dWFsIHB2dHBsbCBvdXRwdXQgYW5kIHRoZSBjb25m
aWcgZnVuY3Rpb24gcmVhbGx5IG9ubHkKcmVwYXJlbnRzIHRvIHRoZSBwdnRwbGwgaW4gYWxsIGNh
c2VzLgoKU28gSSBiZWxpZXZlIHRoaXMgc2hvdWxkIGluIHRoZSB3b3JzdCBjYXNlIGp1c3QgYmUg
bXV4IGNsb2NrLCBidXQgYWxzbwpJIHNlZSB0aGF0IHRoZSAiY29ycmVjdCIgc2V0dGluZyB3aWxs
IGFscmVhZHkgYmUgc2V0IGJ5IHRoZQoKICAgICAgICAvKiBwdnRwbGwgc3JjIGluaXQgKi8KICAg
ICAgICB3cml0ZWxfcmVsYXhlZChQVlRQTExfU1JDX1NFTF9QVlRQTEwsIHJlZ19iYXNlICsgUlYx
MTI2Ql9DT1JFQ0xLU0VMX0NPTigwKSk7CiAgICAgICAgd3JpdGVsX3JlbGF4ZWQoUFZUUExMX1NS
Q19TRUxfUFZUUExMLCByZWdfYmFzZSArIFJWMTEyNkJfTlBVQ0xLU0VMX0NPTigwKSk7CiAgICAg
ICAgd3JpdGVsX3JlbGF4ZWQoUFZUUExMX1NSQ19TRUxfUFZUUExMLCByZWdfYmFzZSArIFJWMTEy
NkJfVklDTEtTRUxfQ09OKDApKTsKICAgICAgICB3cml0ZWxfcmVsYXhlZChQVlRQTExfU1JDX1NF
TF9QVlRQTEwsIHJlZ19iYXNlICsgUlYxMTI2Ql9WRVBVQ0xLU0VMX0NPTigwKSk7CiAgICAgICAg
d3JpdGVsX3JlbGF4ZWQoUFZUUExMX1NSQ19TRUxfUFZUUExMLCByZWdfYmFzZSArIFJWMTEyNkJf
VkNQQ0xLU0VMX0NPTigwKSk7CgppbiB0aGUgcnYxMTI2YiBjbG9jayBkcml2ZXI/CgpTbyB0aGF0
IHdob2xlIG1vZGUgc2V0dGluZyBzaG91bGQgbm90IGJlIG5lY2Vzc2FyeSBhdCBhbGwgbWF5YmU/
CgpUaGFua3MKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
