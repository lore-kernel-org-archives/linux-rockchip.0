Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA534C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 12:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RmISGd4sHzVYYaP14eb89iTR2iB8IGQzQvTmUSCEGhM=; b=1wewjtEAvy07lT
	QJu2sDWVLop9pra5YNf0kVHjs0DAybYK9ceDVHkQEjdceVtzFviy7j6OKUW4G8MzGqdb9s0zBF3w5
	gPgupOOEXVe8W3MLb2THbSc5hjYj+vKjfP6LvLb2eCV6m3wUQD0Pu6LyExTQViKUMOwOOz4ROiJ0t
	rqDIcSOXj8qnIl+DBpAIjUnu6Kwomv8ypeT1qH1j26UYrKocL4wP9pWV87KnxH22X3CWrcMfDuHrL
	dLwP/ga12OFpo+1Xral4MwJ1Ag1C9E7/HOxBYg0BI2oXQCTPpOs1eUppi7sXSHeBxSVHByE0wdta6
	okwcDaAZ6ambKkqu0Pcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2Ait-007YEs-Ry; Fri, 17 Jun 2022 12:05:11 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2Aia-007Y7K-6v; Fri, 17 Jun 2022 12:04:53 +0000
Received: from [IPV6:2a01:e0a:120:3210:faf2:1a12:f903:cc5e] (unknown [IPv6:2a01:e0a:120:3210:faf2:1a12:f903:cc5e])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 57E84660179A;
	Fri, 17 Jun 2022 13:04:50 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655467490;
	bh=9LT9TBmpX+iklRTLTEkirvb5pG6BvIzQn9IYxu2sTaw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NyJ3FZJq1G1P2Gl7/FhAwV7gF4sq+eOFpT62CN+8ZaTweGSe7f/u8//yPqBwvLmyY
	 nepzxZmDcbjFrbQSWrRGnx8uxyV+ZK0xB2MRnA172wWAX+kmxk3Rvuwh8C//cpYWwk
	 iL4OPgwfYE2uTtDrl3mmlQmrxow4Z4QtGlG8XOG0LfQzf3KTON6BAEMM5EkNZTsfWK
	 94+7C0CL+bzU+Jx+faW0V3bqDZKymVLud1zjEjDSFLTqxZ7OGoMePB2SjKz2p6lDNz
	 jPlW3YTbxRlLz2gey+pscn0n4ZzXQKoTr34W5lsN0qF1BJfSi7v3ct+J5WcFZC0FUS
	 29DL/ZJIr9MIA==
Message-ID: <5ad90377-a9b1-f73a-e15b-ae553202f2a8@collabora.com>
Date: Fri, 17 Jun 2022 14:04:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2 0/7] media: hantro: Add 10-bit support
Content-Language: en-US
To: Jernej Skrabec <jernej.skrabec@gmail.com>, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de
Cc: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com, gregkh@linuxfoundation.org,
 linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20220616202513.351039-1-jernej.skrabec@gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20220616202513.351039-1-jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_050452_402129_D38E480C 
X-CRM114-Status: GOOD (  15.68  )
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

CkxlIDE2LzA2LzIwMjIgw6AgMjI6MjUsIEplcm5laiBTa3JhYmVjIGEgw6ljcml0wqA6Cj4gVGhp
cyBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciAxMC1iaXQgZm9ybWF0IGhhbmRsaW5nIGluIEhhbnRy
byBkcml2ZXIuCj4gTW9zdCBwYXRjaGVzIGFkanVzdCBwb3N0cHJvYyBiZWhhdmlvdXIgdG8gYmUg
bW9yZSB1bml2ZXJzYWwuIFRoZXJlIGlzCj4gYSBsb3Qgb2YgYXNzdW1wdGlvbnMsIHdoaWNoIG5l
ZWQgdG8gYmUgcmVwbGFjZWQgd2l0aCBtb3JlIGdlbmVyYWxpemVkLgo+Cj4gVGVzdGVkIG9uIEFs
bHdpbm5lciBINi4gVGVzdGVkIHdpdGggdnA5Mi0yLTIwLTEwYml0LXl1djQyMC53ZWJtIHNhbXBs
ZSwKPiB3aGljaCBwcm9kdWNlcyBjb3JyZWN0IGNoZWNrc3VtLgo+Cj4gUGxlYXNlIHRha2UgYSBs
b29rLgoKSSBoYXZlIHNlbmQgYSBjb21wbGVtZW50YXJ5IHNlcmllcyB0byB0aGlzIG9uZSB0byBl
bmFibGUgMTAtYml0CmZvciBIRVZDIG9uIEhhbnRyby9HMiBvbiBJTVg4TVEuCldpdGggdGhlc2Ug
dHdvIHBhdGNoc2V0IEknbSBhYmxlIHRvIGRlY29kZSBhbGwgdGhlIDEwLWJpdCBjb25mb3JtYW5j
ZQp0ZXN0IGZpbGVzLgoKRm9yIHRoaXMgc2VyaWVzOgpUZXN0ZWQtYnk6IEJlbmphbWluIEdhaWdu
YXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoKPgo+IEJlc3QgcmVnYXJkcywK
PiBKZXJuZWoKPgo+IENoYW5nZXMgZnJvbSBSRkM6Cj4gLSBmaXhlZCB0eXBvIGluIGZ1bmN0aW9u
IG5hbWUKPiAtIHJlbW92ZWQgbWVyZ2VkIHBhdGNoIChQMDEwIGZvcm1hdCkKPiAtIHJlbW92ZWQg
YnJva2VuIHBhdGNoIChzdW54aSBmcmVxdWVuY3kgY2hhbmdlKQo+IC0gYWRkZWQgbmV3IHBhdGNo
IChtZWRpYTogaGFudHJvOiBwb3N0cHJvYzogUHJvcGVybHkgY2FsY3VsYXRlIGNocm9tYSBvZmZz
ZXQpCj4gLSBhZGRlZCByLWIgZnJvbSBFemVxdWllbAo+Cj4gRXplcXVpZWwgR2FyY2lhICgxKToK
PiAgICBtZWRpYTogQWRkIFAwMTAgdGlsZWQgZm9ybWF0Cj4KPiBKZXJuZWogU2tyYWJlYyAoNik6
Cj4gICAgbWVkaWE6IGhhbnRybzogU3VwcG9ydCBmb3JtYXQgZmlsdGVyaW5nIGJ5IGRlcHRoCj4g
ICAgbWVkaWE6IGhhbnRybzogcG9zdHByb2M6IEZpeCBidWZmZXIgc2l6ZSBjYWxjdWxhdGlvbgo+
ICAgIG1lZGlhOiBoYW50cm86IHBvc3Rwcm9jOiBGaXggbGVnYWN5IHJlZ3MgY29uZmlndXJhdGlv
bgo+ICAgIG1lZGlhOiBoYW50cm86IHBvc3Rwcm9jOiBQcm9wZXJseSBjYWxjdWxhdGUgY2hyb21h
IG9mZnNldAo+ICAgIG1lZGlhOiBoYW50cm86IFN0b3JlIFZQOSBiaXQgZGVwdGggaW4gY29udGV4
dAo+ICAgIG1lZGlhOiBoYW50cm86IHN1bnhpOiBFbmFibGUgMTAtYml0IGRlY29kaW5nCj4KPiAg
IGRyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY29tbW9uLmMgICAgICAgICB8ICAxICsKPiAg
IGRyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItaW9jdGwuYyAgICAgICAgICB8ICAxICsKPiAg
IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmggICAgICAgICB8ICA0ICsrCj4g
ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYyAgICAgfCAyMyArKysr
KysrKysKPiAgIC4uLi9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZzJfdnA5X2RlYy5jICB8
ICA4IC0tLQo+ICAgLi4uL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19wb3N0cHJvYy5jICAg
IHwgMzggKysrKysrKysrKystLS0KPiAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFu
dHJvX3Y0bDIuYyAgICB8IDUwICsrKysrKysrKysrKysrKysrLS0KPiAgIGRyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9oYW50cm8vaGFudHJvX3Y0bDIuaCAgICB8ICAzICsrCj4gICBkcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL3N1bnhpX3ZwdV9ody5jICAgfCAyNyArKysrKysrKysrCj4gICBpbmNs
dWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmggICAgICAgICAgICAgICAgfCAgMSArCj4gICAxMCBm
aWxlcyBjaGFuZ2VkLCAxMzYgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCj4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
