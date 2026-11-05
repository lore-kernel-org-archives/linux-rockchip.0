Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD169606A31B
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 11:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yuXuPtwQ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=Hvnzdb5d;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=ovcCqlh7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=92cAEpriwrn1nNj1+iiI2G3I8Pje9MalLPm0kqNymoU=; b=yuXuPtwQCPLWnU6tHajosO8XZv
	PiJ8SsUHbvAqXRRcuet3NxQ19Wo/hmw9935KXM1MBBkQmlSxM1P8/d9faXTU0lPFiU/q+HGTfnDEl
	AxtwJukllmvRsySsvq9WR6ThdZBY3F1He3ovDuUL465MMqQrgrI1aictLi6G5V+T5gbn639LWfbNR
	CFmaJ0p00usZHmZ6snCas1qkexxZGNd8RIE2NJUuQzqPEUA3kmicG/n3um9X5+4fzSWaBWkMxOq8z
	F2JGYuFsxsTDAjy949+AjTfMWckhC+ciImblI/t4/hE1VhPZmI6s6kpKOsU0GZXFh5kIoJhiyH9LD
	xhw4lNjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOvmb-00000008gOI-3JGU;
	Thu, 05 Nov 2026 11:37:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOvmX-00000008gL6-0Whq;
	Thu, 05 Nov 2026 11:37:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=VMhnWUVSQ2tILOB4G/emtQlgU+NR+argJ27mPCGNL+4=; b=Hvnzdb5dFEhacdePPuhGFZXXkR
	+zIDqrPcAlMb2DiyrPfZgYOfycgYybM9QIVT26m4iPUeMEdnUV5qi3Li1xVk8k4lnKqznuAA2hppH
	YDG0e8tnV7NCo6Rxp2ZU6gehnr4uWTDaptAK25bCVYr6lx2DuIbCrMoUCEer6+7lGx4r40dWYM2Rn
	t8rOVptU5ABcihrhWHZ0Q51v1RbhvIbM5yR1XDLybLG1thWRREjHQryKZpbstR1sm/Yybm+f51CTi
	3qxHHX/cHnds0lfrhbcipvt8pm4UPb8gpXKzrWK0ZFp+KEKzFplncmrOfhn2vlHFJ1pqVSvaosi7j
	YWtbm2QA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOvmU-00000002tnW-0gAK;
	Thu, 05 Nov 2026 11:37:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=VMhnWUVSQ2tILOB4G/emtQlgU+NR+argJ27mPCGNL+4=; b=ovcCqlh7VrjwANEc7//D13mAC7
	VksmRuZHZ/2GBLXZhGPO/i9gLDz/Uh4ZlTcJfTilOWw4jrcidB6sCY0aa2IDhhiBXBMCcei44br/N
	xQcZJKGqIHwaf9qXFMnN9G1DRw6VnLyoS0iZFFUu2jLH/Xz4t1VU84HUJEOlSjsk5uPc1FSiF9//a
	lEDTZWM7pNflmGJh4AhEWFG4WpBUlVTUQzFQLASEFPXmGwpbNlEcFN5iFwV1S8Ysu/S4uFy6V6NOx
	jycjBSr6knqI86H0o3xwoslL8tbZgX14BtXg+ll1GWEPWB5wwgB5v+5iErkUTxlZlxEbrwGuHsdB/
	Qt56sqfg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Yaozhong Li <yaozhonguwl@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Yaozhong Li <yaozhonguwl@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable SD UHS-I on Firefly-RK3399
Date: Thu, 05 Nov 2026 12:37:13 +0100
Message-ID: <3342569.D8ZAKjAxdT@diego>
In-Reply-To: <20261105102556.1365-1-yaozhonguwl@gmail.com>
References: <20261105102556.1365-1-yaozhonguwl@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_113722_105157_8AE2521A 
X-CRM114-Status: GOOD (  27.22  )
X-Spam-Score: -0.2 (/)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRG9ubmVyc3RhZywgNS4gTm92ZW1iZXIgMjAyNiwgMTE6MjU6NTYgTWl0dGVsZXVyb3DDpGlz
Y2hlIE5vcm1hbHplaXQgc2NocmllYiBZYW96aG9uZyBMaToKPiBDb250cmFyeSB0byBpdHMgbmFt
ZSwgdmNjX3NkaW8gaXMgdGhlIElPIHN1cHBseSBvZiB0aGUgU0QgY2FyZCBzbG90OiB0aGUKPiBz
Y2hlbWF0aWNzIHJvdXRlIGl0IHRvIFNETU1DMF9WREQuIEl0IGlzIGxpc3RlZCBhcyB0aGUgdm1t
Yy1zdXBwbHkKPiBvZiB0aGUgV2lGaSBTRElPIG5vZGUgaW5zdGVhZCwgYW5kIHRoYXQgY29uc3Vt
ZXIga2VlcHMgdGhlIHJhaWwgZnJvbQo+IHN3aXRjaGluZyB0byAxLjhWLgo+IAo+IFRoZSBXaUZp
IG1vZHVsZSdzIG1haW4gVkJBVCBpbnB1dCBjb21lcyBmcm9tIHZjYzN2M19zeXMsIGFuZCBpdHMg
SU8KPiBzdXBwbHkgc3RheXMgdmNjMXY4X3MzLgo+IAo+IEZpeCB0aGUgc3VwcGxpZXMgb2Ygc2Rp
bzAgYW5kIHNkbW1jIGFjY29yZGluZ2x5IGFuZCBlbmFibGUgU0RSMTA0LCB3aGljaAo+IG5vdyBi
ZWNvbWVzIHBvc3NpYmxlLgo+IAo+IFdpdGggVUhTIGVuYWJsZWQsIHNlcXVlbnRpYWwgcmVhZCBm
cm9tIGEgNjRHQiBTRFhDIGNhcmQgaW5zZXJ0ZWQgYWZ0ZXIKPiBib290IGdvZXMgZnJvbSAyMiBN
Qi9zIHRvIDYwIE1CL3MuIFdpRmkgcmVtYWluZWQgYXNzb2NpYXRlZCBhdCA1IEdIeiwKPiB3aXRo
IG5vIFdpRmkgZXJyb3JzLgo+IAo+IEFzc2lzdGVkLWJ5OiBMTE0KPiBTaWduZWQtb2ZmLWJ5OiBZ
YW96aG9uZyBMaSA8eWFvemhvbmd1d2xAZ21haWwuY29tPgo+IC0tLQo+IENoYW5nZXMgaW4gdjI6
Cj4gLSBQb2ludCB0aGUgc2RpbzAgdm1tYy1zdXBwbHkgYXQgdmNjM3YzX3N5cywgdGhlIFdpRmkg
bW9kdWxlJ3MgVkJBVCBpbnB1dCwKPiAgIGluc3RlYWQgb2YgZHJvcHBpbmcgaXQgKEhlaWtvKQo+
IC0gUmV3cml0ZSB0aGUgY29tbWl0IG1lc3NhZ2UgKEhlaWtvKQo+IC0gTGluayB0byB2MTogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwOTIyMDU1MDExLjE0OTcyLTEteWFvemhvbmd1
d2xAZ21haWwuY29tLwo+IAo+IEEgbm90ZSBvbiB0ZXN0aW5nOiB3aXRoIGEgY2FyZCBpbiB0aGUg
c2xvdCBhdCBib290LCB0aGUgZmlyc3QKPiBpbml0aWFsaXNhdGlvbiBmYWlscyB0dW5pbmcgKCJB
bGwgcGhhc2VzIGJhZCIpIGFuZCB0aGUgY2FyZCBjb21lcyB1cCBpbgo+IGhpZ2ggc3BlZWQgbW9k
ZSwgYXMgaXQgZG9lcyB3aXRob3V0IHRoaXMgcGF0Y2guIEEgY2FyZCBpbnNlcnRlZCBhZnRlcgo+
IGJvb3QsIG9yIGEgcmViaW5kIG9mIHRoZSBjb250cm9sbGVyLCBjb21lcyB1cCBpbiBTRFIxMDQ7
IHRoZSBudW1iZXJzCj4gYWJvdmUgd2VyZSB0YWtlbiB0aGF0IHdheS4KPiAKPiBUaGUgR1JGIGlv
LWRvbWFpbiBkZXZpY2UgYmluZHMgYWJvdXQgMjUwIG1zIGFmdGVyIGZlMzIwMDAwLm1tYyBoZXJl
LCBzbwo+IFNETU1DMF9WREQgaXMgc3RpbGwgY29uZmlndXJlZCBmb3IgMy4zViB3aGVuIHRoZSBj
YXJkIHN3aXRjaGVzIHRvIDEuOFYuCj4gRm9yY2luZyB0aGF0IEdSRl9JT19WU0VMIGJpdCB0byAz
LjNWIHdpdGggdGhlIGlvLWRvbWFpbiBkcml2ZXIgdW5ib3VuZAo+IHJlcHJvZHVjZXMgdGhlIHNh
bWUgZmFpbHVyZSBvbiBkZW1hbmQuIFRoaXMgbG9va3MgbGlrZSB0aGUgcHJvYmUKPiBvcmRlcmlu
ZyBpc3N1ZSBKb25hcyBkZXNjcmliZWQgZm9yIHRoZSBST0NLIDNCIFsxXS4gSXQgYWxzbyBoYXBw
ZW5zIHdpdGgKPiBTRFI1MCwgd2l0aCBhIHNlY29uZCBjYXJkLCBhbmQgd2l0aCBzZGlvMCBsZWZ0
IHdpdGhvdXQgYSB2bW1jLXN1cHBseSBhcwo+IGluIHYxLgo+IAo+IElmIHlvdSB3b3VsZCByYXRo
ZXIgbm90IGVuYWJsZSBVSFMgdW50aWwgdGhhdCBpcyBzb2x2ZWQsIEkgY2FuIHNlbmQgdGhlCj4g
c3VwcGx5IGNoYW5nZXMgb24gdGhlaXIgb3duLgo+IAo+IFsxXSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvZTlmZjUzODctYjNjMS00MWE3LWIyNTEtYTEyNzg5ZDI1YTcwQGt3aWJvby5zZS8K
PiAKPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZmlyZWZseS5kdHMgfCA0
ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+
IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1maXJl
Zmx5LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWZpcmVmbHkuZHRz
Cj4gaW5kZXggMDU2OGRmYS4uZmUxZjhkNyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1maXJlZmx5LmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LWZpcmVmbHkuZHRzCj4gQEAgLTc3Nyw3ICs3NzcsNyBAQCAmc2Rp
bzAgewo+ICAKPiAgCS8qIFBvd2VyIHN1cHBseSAqLwo+ICAJdnFtbWMtc3VwcGx5ID0gPCZ2Y2Mx
djhfczM+OwkvKiBJTyBsaW5lICovCj4gLQl2bW1jLXN1cHBseSA9IDwmdmNjX3NkaW8+OwkvKiBj
YXJkJ3MgcG93ZXIgKi8KPiArCXZtbWMtc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsJLyogY2FyZCdz
IHBvd2VyICovCj4gIAo+ICAJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gIAkjc2l6ZS1jZWxscyA9
IDwwPjsKPiBAQCAtODA0LDYgKzgwNCw4IEBAICZzZG1tYyB7Cj4gIAltYXgtZnJlcXVlbmN5ID0g
PDE1MDAwMDAwMD47Cj4gIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICAJcGluY3RybC0w
ID0gPCZzZG1tY19jbGsgJnNkbW1jX2NtZCAmc2RtbWNfYnVzND47Cj4gKwlzZC11aHMtc2RyMTA0
OwoKRnJvbSB0aGUgc2NoZW1hdGljcyB2Y2MzdjNfc3lzIGFsc28gc3VwcGxpZXMgdGhlIHNkLXNs
b3QgKHZpYSBhbgphbHdheXMtb24gcmVndWxhdG9yIC8gcGFnZSAyMCBmb3IgbWUpLCAgc28gYWRk
aW5nCgoJdm1tYy1zdXBwbHkgPSA8JnZjYzN2M19zeXM+OwoKd291bGQgYmUgbmljZSwgc28gdGhh
dCB0aGUgZGVjbGFyYXRpb24gYmVjb21lcyBtb3JlIGNvbXBsZXRlLgoKPiArCXZxbW1jLXN1cHBs
eSA9IDwmdmNjX3NkaW8+Owo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICB9OwoKClRoYW5rcwpIZWlr
bwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
