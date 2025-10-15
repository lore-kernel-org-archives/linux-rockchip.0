Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88785CCD193
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 10:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XzXPfN9yeDqjdmPcUbVJXfJ1qxrpYPTEWwp2OIVt2Es=; b=oQz0o7A+16kIEy
	At1UZt3rv7AEM2ZOuQq9vZ+oJELufG9CVtJ4+fLFVTzQnjqxAvgDLVfLBwMMdkCpmocSiKW1XPlZr
	jSFgkzkZ2S7XSgQ7audR6zn+jL6AT5KdtkrOaP62TUrMeaZV2mv5FzZLio4kzVjP9E5Wnh9Motc1h
	puypbuJI+Csc9Kb0lK7Syo3eofuAVXEKkN7QpmfB38hwfzqyfD6mvRG2/WWTznaG7Lg8F6qSM/ARt
	ZrplhLh/Vv3CCSXp5rc5AaVCUWyYTkdBWGgrY75PQEdiufCiDstJUDa2vWlhpnTcE+srBs3x87ocR
	WYP9jUouifrp66m5DlhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ySx-00000001Ekp-2WDX;
	Wed, 15 Oct 2025 10:10:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ySt-00000001Eip-3bv0;
	Wed, 15 Oct 2025 10:10:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=WziRWtAQDPOgqfcKKpsG/YJDdpUVFZowmRQABd+4UVY=; b=m0ZZqw7QOv1LxvPy6+OiudHA/o
	72d/SeDprr4jod1xW6uBoB5b7acxzePtVNTn+GrZkVkT0ZvJcsXUN9fci5HfTDGoEF8d5NbOpf1YR
	YQrh215wAqbtV1oHp8i5sH0nGbNrDEpqT3qPNXoZZJDWkF/uvHwG/yY85c1SGeiUkndx9lxkKey3T
	cKfZB+6OKPr79BJ4/gdZ1u0+1JLmBmYMgFHHPREiwjoE9k2icQKx2UaZHJ/RLW3k2N+qNTB32iPvc
	hZhCODQElGacGtgBAg0oxvJVTS41Aj+EEajYn40wLJOsOhlbjafPFl+8nZJv4kLnNz25mO2EUXs1U
	1Hmo3Qew==;
Received: from i53875a40.versanet.de ([83.135.90.64] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v8ySo-0006Qp-Ej; Wed, 15 Oct 2025 12:10:34 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: mturquette@baylibre.com, sboyd@kernel.org, sugar.zhang@rock-chips.com,
 zhangqing@rock-chips.com, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com
Subject: Re: [PATCH v1 1/5] clk: rockchip: Implement rockchip_clk_register_armclk_v2()
Date: Wed, 15 Oct 2025 12:10:33 +0200
Message-ID: <2271625.NgBsaNRSFp@diego>
In-Reply-To: <20251015091325.71333-2-zhangqing@rock-chips.com>
References: <20251015091325.71333-1-zhangqing@rock-chips.com>
 <20251015091325.71333-2-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_031039_921265_C813137A 
X-CRM114-Status: GOOD (  17.35  )
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

SGkgRWxhaW5lLAoKQW0gTWl0dHdvY2gsIDE1LiBPa3RvYmVyIDIwMjUsIDExOjEzOjIxIE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRWxhaW5lIFpoYW5nOgo+IFRoZSBjbG9j
ayBwYXRoIG9mIENQVSBtYXkgYmUgc2ltcGxpZmllZCBhcyBmb2xsb3dzOgo+IAo+ICAgICAtLWdw
bGwtLXwtLVwKPiAgICAgICAgICAgICB8ICAgXAo+ICAgICAgICAgICAgIHwgICAgXAo+ICAgICAg
ICAgICAgIHwgICAgIFwKPiAgICAtLXYwcGxsLS18IG11eCB8LS1bZ2F0ZV0tLVtkaXZdLS1jbGtf
Y29yZS0tCj4gICAgICAgICAgICAgfCAgICAgLwo+ICAgICAgICAgICAgIHwgICAgLwo+ICAgIC0t
djFwbGwtLXwgICAvCj4gICAgICAgICAgICAgfC0tLwo+IAoKd2hlbiBpbnRyb2R1Y2luZyBuZXcg
Y29yZSBjb25jZXB0cywgcGxlYXNlIHJlYWxseSB0cnkgdG8gZXhwbGFpbiB0aGUKY29uY2VwdCBh
bmQgYWxzbyBpbiBkZXRhaWwgd2h5IHRoZSBvbGQgY29kZSBjYW5ub3QgZnVsbGZpbGwgdGhlIG5l
dwpyZXF1aXJlbWVudHMuCgpGcm9tIHdoYXQgSSBnYXRoZXJlZCwgdGhlIG1haW4gZGlmZmVyZW5j
ZSBpcyB0aGF0IG9uIHRoZSBiaWdnZXIgc29jcyB3ZQpoYXZlIG9uZSBzb3J0IG9mIGRlZGljYXRl
ZCBQTEwgZm9yIGVhY2ggYXJtY2xrIChpLmUuIEIwUExMLCBCMVBMTCwgTFBMTApvbiByazM1ODgp
IHdpdGggdGhlIG90aGVyIHBhcmVudHMgYmVpbmcgdXNlZCBhcyBhbiBpbnRlcmltIHNvdXJjZSB3
aGlsZQp3ZSBhZGp1c3QgdGhlIG1haW4gb25lLgoKSGVyZSB0aGUgcnYxMTI2YiAoYW5kIHJrMzUw
NikgZG9uJ3QgaGF2ZSB0aGF0LCBidXQgaW5zdGVhZCBjYW4gc2VsZWN0CmZyb20gYSBudW1iZXIg
b2YgImVxdWFsLWJ1dC1zaGFyZWQiIFBMTCBzb3VyY2VzLgoKSXMgbXkgcmVhZGluZyBjb3JyZWN0
IGhlcmU/CgoKPiBTaWduZWQtb2ZmLWJ5OiBFbGFpbmUgWmhhbmcgPHpoYW5ncWluZ0Byb2NrLWNo
aXBzLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLWNwdS5jIHwgMTY1ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2Nsay9yb2NrY2hpcC9j
bGsuYyAgICAgfCAgMjQgKysrKysKPiAgZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLmggICAgIHwg
IDE1ICsrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDIwNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1jcHUuYyBiL2RyaXZlcnMvY2xrL3JvY2tj
aGlwL2Nsay1jcHUuYwo+IGluZGV4IGRjYzlkY2I1OTdhZS4uYTQ4NjI4ZTVjMDk1IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1jcHUuYwo+ICsrKyBiL2RyaXZlcnMvY2xr
L3JvY2tjaGlwL2Nsay1jcHUuYwoKWy4uLl0KCj4gK3N0cnVjdCBjbGsgKnJvY2tjaGlwX2Nsa19y
ZWdpc3Rlcl9jcHVjbGtfdjIoY29uc3QgY2hhciAqbmFtZSwKCmNhbiB3ZSBwbGVhc2UgZmluZCBh
IGRlc2NyaXB0aXZlIG5hbWUgaW5zdGVhZCBvZiAiX3YyIgoKSSBndWVzcyBpZiBteSByZWFkaW5n
IGFib3ZlIGlzIGNvcnJlY3Qgc29tZXRoaW5nIGxpa2UgIl9tdWx0aV9wbGwiIG9yIHNvCm1pZ2h0
IGJlIG5pY2UuCgoKVGhhbmtzCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
