Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9044E706FA
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Sep 2023 09:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGBOptJCADNO6Og64zrs+WEBYR3enwnuUCpZWjD9Afg=; b=fwffZu+Q0m2CO/
	gx22AWev/2Tp7I7OGjSCciD9+zZovt60oeCuCbYmXMttjRcZLwPD3BpgBriMLGW0+hFGEHdnQIufz
	1yUUZfhK/Q8tpCP1dTklsjUdoBD0uZqCdGre3iy0l1cEWHXfC4eFAtPK2gyNCxgCN0MORLOvldgAJ
	5KrkQs36FMKEv1vE5zdYwb2BfZHFuZCHIh+R6D5pRc1ecVe8+nW6PpvEc3d5iEe0rGoC/VRbbnXCc
	U2DedqjcETB7guPn3Bu6L1i0OzrV0FbXgwdKLpw5NfLE1EUZkD0JnxxYSz44kTnN2Z+P77J4CUcwx
	85NNUNkvP1uI7teThVKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFyr-005axh-2d;
	Thu, 21 Sep 2023 09:28:17 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFyo-005aw1-2b;
	Thu, 21 Sep 2023 09:28:16 +0000
Received: from [IPV6:2a01:e0a:120:3210:9fdf:789a:7434:5a59] (unknown [IPv6:2a01:e0a:120:3210:9fdf:789a:7434:5a59])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 46F3066072F2;
	Thu, 21 Sep 2023 10:28:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695288491;
	bh=7cWF6ZvU+KANva5DnNTVmLHFyd+/y6UpOK+LTrLjt9s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=curIueGoPYgbnIIMKMzX4FKdIZrLZSskm/tPQ1MrKWGQ1y93tb3M5jSjUnbPsahHM
	 U2MdyjWSjFAT/VV6QCT0uXyxh1FJZOlinGEUWNWWbwSq/b1Sz8Zasa/bhKG4UXkGf5
	 Jn4/dpOqEC1tA1ZKkipKdribhQE9T948aKP00yFARr3Stt8We21FW338M4ECtwpOZO
	 OCNOzd/0r3xoCDgbZEgNz6R8AWtr0c+PyGy2odrqzeUMf0IkbEBqXmOOyJ+p1eZHFK
	 +b/95Y4J6RkWiD6+9BM/2SBEYq3UiewhDMw0o9UuvqFCtw/XsLzZY1UO4HbuxYuE0r
	 QlzoXtwI8IZ6w==
Message-ID: <31f298ec-6280-d21b-3d8a-c7bf1c9c0c30@collabora.com>
Date: Thu, 21 Sep 2023 11:28:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 45/49] media: core: Add bitmap manage bufs array
 entries
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230914133323.198857-1-benjamin.gaignard@collabora.com>
 <20230914133323.198857-46-benjamin.gaignard@collabora.com>
 <1142bbb4-b8f1-44ec-962e-9347a231782f@xs4all.nl>
 <20b6b93e-eef8-3d7b-a3c2-795f220059d4@collabora.com>
 <470682b4-c14b-4237-bc46-fddfdd085026@xs4all.nl>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <470682b4-c14b-4237-bc46-fddfdd085026@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_022814_974400_6F1ADC25 
X-CRM114-Status: GOOD (  13.69  )
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

CkxlIDIwLzA5LzIwMjMgw6AgMTY6NTYsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDIw
LzA5LzIwMjMgMTY6MzAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+IDxzbmlwPgo+Cj4+Pj4g
IMKgwqDCoMKgwqAgbnVtX2J1ZmZlcnMgPSBtaW5fdCh1bnNpZ25lZCBpbnQsIG51bV9idWZmZXJz
LAo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHEtPm1heF9hbGxvd2Vk
X2J1ZmZlcnMgLSB2YjJfZ2V0X251bV9idWZmZXJzKHEpKTsKPj4+PiAgwqAgLcKgwqDCoCBmaXJz
dF9pbmRleCA9IHZiMl9nZXRfbnVtX2J1ZmZlcnMocSk7Cj4+Pj4gK8KgwqDCoCBmaXJzdF9pbmRl
eCA9IGJpdG1hcF9maW5kX25leHRfemVyb19hcmVhKHEtPmJ1ZnNfbWFwLCBxLT5tYXhfYWxsb3dl
ZF9idWZmZXJzLAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgMCwgbnVtX2J1ZmZlcnMsIDApOwo+Pj4+ICDCoCDCoMKgwqDCoMKgIGlmIChmaXJz
dF9pbmRleCA+PSBxLT5tYXhfYWxsb3dlZF9idWZmZXJzKQo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIDA7Cj4+Pj4gQEAgLTY3NSw3ICs2NzgsMTMgQEAgc3RhdGljIHZvaWQgX192YjJf
cXVldWVfZnJlZShzdHJ1Y3QgdmIyX3F1ZXVlICpxLCB1bnNpZ25lZCBpbnQgYnVmZmVycykKPj4+
PiAgwqAgwqAgc3RydWN0IHZiMl9idWZmZXIgKnZiMl9nZXRfYnVmZmVyKHN0cnVjdCB2YjJfcXVl
dWUgKnEsIHVuc2lnbmVkIGludCBpbmRleCkKPj4+PiAgwqAgewo+Pj4+IC3CoMKgwqAgaWYgKGlu
ZGV4IDwgcS0+bnVtX2J1ZmZlcnMpCj4+Pj4gK8KgwqDCoCBpZiAoIXEtPmJ1ZnNfbWFwIHx8ICFx
LT5idWZzKQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gTlVMTDsKPj4+IEkgZG9uJ3QgdGhp
bmsgdGhpcyBjYW4gZXZlciBoYXBwZW4uCj4+IEkgZ290IGtlcm5lbCBjcmFzaCB3aXRob3V0IHRo
ZW0uCj4+IEkgd2lsbCBrZWVwIHRoZW0uCj4gV2hhdCBpcyB0aGUgYmFja3RyYWNlPyBIb3cgY2Fu
IHRoaXMgaGFwcGVuPyBJdCBmZWVscyB3cm9uZyB0aGF0IHRoaXMgY2FuIGJlCj4gY2FsbGVkIHdp
dGggYSB2YjJfcXVldWUgdGhhdCBhcHBhcmVudGx5IGlzIG5vdCBwcm9wZXJseSBpbml0aWFsaXpl
ZC4KCkkgaGF2ZSB0aGlzIGxvZyB3aGVuIGFkZGluZyBkdW1wX3N0YWNrKCkgaW4gdmIyX2dldF9i
dWZmZXIoKSBpZiAhcS0+YnVmc19iaXRtYXA6CgpbICAgMTguOTI0NjI3XSBDYWxsIHRyYWNlOgpb
ICAgMTguOTI3MDkwXSAgZHVtcF9iYWNrdHJhY2UrMHg5NC8weGVjClsgICAxOC45MzA3ODddICBz
aG93X3N0YWNrKzB4MTgvMHgyNApbICAgMTguOTM0MTM3XSAgZHVtcF9zdGFja19sdmwrMHg0OC8w
eDYwClsgICAxOC45Mzc4MzNdICBkdW1wX3N0YWNrKzB4MTgvMHgyNApbICAgMTguOTQxMTY2XSAg
X192YjJfcXVldWVfY2FuY2VsKzB4MjNjLzB4MmYwClsgICAxOC45NDUzNjVdICB2YjJfY29yZV9x
dWV1ZV9yZWxlYXNlKzB4MjQvMHg2YwpbICAgMTguOTQ5NzQwXSAgdmIyX3F1ZXVlX3JlbGVhc2Ur
MHgxMC8weDFjClsgICAxOC45NTM2NzddICB2NGwyX20ybV9jdHhfcmVsZWFzZSsweDIwLzB4NDAK
WyAgIDE4Ljk1Nzg5Ml0gIGhhbnRyb19yZWxlYXNlKzB4MjAvMHg1NApbICAgMTguOTYxNTg0XSAg
djRsMl9yZWxlYXNlKzB4NzQvMHhlYwpbICAgMTguOTY1MTEwXSAgX19mcHV0KzB4YjQvMHgyNzQK
WyAgIDE4Ljk2ODIwNV0gIF9fZnB1dF9zeW5jKzB4NTAvMHg1YwpbICAgMTguOTcxNjI2XSAgX19h
cm02NF9zeXNfY2xvc2UrMHgzOC8weDdjClsgICAxOC45NzU1NjJdICBpbnZva2Vfc3lzY2FsbCsw
eDQ4LzB4MTE0ClsgICAxOC45NzkzMjldICBlbDBfc3ZjX2NvbW1vbi5jb25zdHByb3AuMCsweGMw
LzB4ZTAKWyAgIDE4Ljk4NDA2OF0gIGRvX2VsMF9zdmMrMHgxYy8weDI4ClsgICAxOC45ODc0MDJd
ICBlbDBfc3ZjKzB4NDAvMHhlOApbICAgMTguOTkwNDcwXSAgZWwwdF82NF9zeW5jX2hhbmRsZXIr
MHgxMDAvMHgxMmMKWyAgIDE4Ljk5NDg0Ml0gIGVsMHRfNjRfc3luYysweDE5MC8weDE5NAoKVGhp
cyBoYXBwZW4gYXQgYm9vdCB0aW1lIHdoZW4gaGFudHJvIGRyaXZlciBpcyBvcGVuIGFuZCBjbG9z
ZSB3aXRob3V0IG90aGVyIGFjdGlvbnMuCiAgICAgCgo+Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAgcmV0
dXJuIChiaXRtYXBfd2VpZ2h0KHEtPmJ1ZnNfbWFwLCBxLT5tYXhfYWxsb3dlZF9idWZmZXJzKSA+
IDApOwo+Pj4gSG93IGFib3V0Ogo+Pj4KPj4+ICDCoMKgwqDCoHJldHVybiB2YjJfZ2V0X251bV9i
dWZmZXJzKHEpID4gMDsKPj4gdmIyX2dldF9udW1fYnVmZmVycyBpcyBkZWZpbmVkIGluIHZpZGVv
YnVmMi1jb3JlLmMsIEknbSBub3Qgc3VyZSB0aGF0Cj4+IGFuIGlubGluZSBmdW5jdGlvbiBjb3Vs
ZCBkZXBlbmQgb2YgYSBtb2R1bGUgZnVuY3Rpb24uCj4gTm90IGEgcHJvYmxlbS4gRS5nLiB2NGwy
LWN0cmxzLmggaXMgZnVsbCBvZiBzdWNoIHN0YXRpYyBpbmxpbmVzLgo+Cj4gUmVnYXJkcywKPgo+
IAlIYW5zCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
