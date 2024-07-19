Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8520AC3DA5D
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jul 2024 13:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CO1i2GU0mEArha9VbJJ2akQpmtOEVACgKHBBuKt4aw=; b=QULtJ/w3Kxd8Ji
	+vCfqTZkzT2eSmLdcc4qqvhIjlMwXcJcnN/4kZAvbsNRdIsP5pHrgplOKjBnlSi25Lb3OxNRxV+iG
	ZUVKMkZMhL6F5zoDTFIG04ZWVuGGenqOGwY7HLPX90hRmOn9g4pN9KDy+0LWCvfwm6iw4ENPy94xw
	QraaV9ZY7ZJul/lJQdWpbfMvnvQUNIT+e7p0sg2vHVoLGHDZ88HcNUKYL4YVl09uW1k6w8elqtSzD
	exa7HFMUwOB8Cj5I5vqklAxOxuFT3hXeHhee3/AXCwN6jyoToeWzO4v7iwLlET2Cfa2YB+EWJe472
	16uYnKfEi82Oo3AlwEyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUnSO-00000002jud-06AJ;
	Fri, 19 Jul 2024 13:15:32 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUnSL-00000002ju8-00vy
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Jul 2024 13:15:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721394927;
	bh=wv3SYSINOeLlF7w3hXpbrZqk6piSSBONxifGogb2qIs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=sEffHSyPRwE5TsWoan/5QaEKl7Qf3vOrEd8eayR/jA+Fo1OA83/3wXu3476B1EtH6
	 8rjhDDmTn+ToPXiHkLAQhsMR4pq4iL3c6dcSH9X+DnKMFroeM8vv2fEtfwbeGfA8P9
	 3pOx2SYcNuxjfGvWHdAqsr9qBrHTb0J7Cxl/RNRAi1WlUYAmwP9G6beOS0bhgFZyNt
	 AwAO4mA6mKb9DY0Sb23JB8/5LYaMYV68Nm1Xsg9hTPTT8dICK6k9UX3twv5V2PY9Km
	 HBiMPUJf+Wcb+ScLwYmH6VhKkTTrVpHmd0QmKsCuet70gYZlE7stc827D3VqVGb9oI
	 LRn1DEk8Ug4DA==
Received: from [100.93.89.217] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D49CF378215E;
	Fri, 19 Jul 2024 13:15:26 +0000 (UTC)
Message-ID: <743e2589-c0df-461d-97d4-fafe78c334ea@collabora.com>
Date: Fri, 19 Jul 2024 15:15:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] Enumerate all pixels formats
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, mchehab@kernel.org,
 ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20240717131430.159727-1-benjamin.gaignard@collabora.com>
 <07f62fbb-d1eb-41c3-86a8-13a082a8374f@xs4all.nl>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <07f62fbb-d1eb-41c3-86a8-13a082a8374f@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240719_061529_368486_574E095E 
X-CRM114-Status: GOOD (  25.41  )
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

CkxlIDE5LzA3LzIwMjQgw6AgMTQ6NTcsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDE3
LzA3LzIwMjQgMTU6MTQsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiBUaGUgZ29hbCBvZiB0
aGlzIHNlcmllcyBpcyB0byBsZXQgdXNlcmxhbmQgYXBwbGljYXRpb25zIGVudW1lcmF0ZQo+PiBh
bGwgdGhlIHN1cHBvcnRlZCBwaXhlbHMgZm9ybWF0cyBvZiBhIHN0YXRlbGVzcyBkZWNvZGVyIHdp
dGhvdXQKPj4gc2V0dGluZyBhbGwgdGhlIHBvc3NpYmxlIGNvZGVjLWRlcGVuZGVudCBjb250cm9s
Lgo+PiBUaGF0IG9mZmVyIGEgc2ltcGxlc3Qgc29sdXRpb24gZm9yIGFwcGxpY2F0aW9ucyB0byBk
aXNjb3Zlcgo+PiBzdXBwb3J0ZWQgcGl4ZWxzIGZvcm1hdHMgYW5kIHBvc3NpYmx5IGxldCB0aGVt
IGRvaW5nIHNtYXJ0ZXIKPj4gY2hvaWNlIGJldHdlZW4gc3RhdGVsZXNzIGRlY29kZXJzLgo+Pgo+
PiBBbiBleGFtcGxlIG9mIGhvdyBpdCBjYW4gYmUgdXNlZCBpbiBHU3RyZWFtZXIgdG8gZGlzY292
ZXIgdGhlCj4+IHN1cHBvcnRlZCBwaXhlbHMgZm9ybWF0cyBmb3Igc3RhdGVsZXNzIGRlY29kZXIg
aXMgYXZhaWxhYmxlIGhlcmU6Cj4+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9iZW5q
YW1pbi5nYWlnbmFyZDEvZ3N0cmVhbWVyLy0vY29tbWl0cy92NGwyY29kZWNzX2VudW1fYWxsX3N1
cHBvcnRlZF9mb3JtYXRzP3JlZl90eXBlPWhlYWRzCj4gU28gZWZmZWN0aXZlbHkgc3BlY2lmeWlu
ZyB0aGlzIGZsYWcgbWFrZXMgRU5VTV9GTVQgYWxzbyByZXR1cm4KPiBmb3JtYXRzIHRoYXQgZG8g
bm90IG1hdGNoIHRoZSBiaXQgZGVwdGguCj4KPiBTbyB0aGUgQVYxIChmb3IgZXhhbXBsZSkgY29t
cHJlc3NlZCB2aWRlbyB1c2VzIGUuZy4gOCBiaXQgZGVwdGgsIGJ1dCBpbnN0ZWFkIG9mIGp1c3QK
PiBsaXN0aW5nIG9ubHkgOCBiaXQgdW5jb21wcmVzc2VkIHBpeGVsZm9ybWF0cywgeW91IHdhbnQg
dG8gbGlzdCB0aGVtIGZvciBhbnkKPiBiaXQgZGVwdGguCj4KPiBCdXQgd2hhdCBpcyB0aGUgcG9p
bnQgb2YgdGhhdCBpZiB0aGUgZGVjb2RlciBjYW4ndCBkZWNvZGUgOCBiaXQgY29tcHJlc3NlZCB0
bywKPiBzYXksIDEwIGJpdCB1bmNvbXByZXNzZWQgdmlkZW8/CgpObyBkZWNvZGVyIHdpbGwgZG8g
OCBiaXRzIHRvIDEwIGJpdHMgKGFzIGZhciBJIGtub3dzKS4KVGhlIHBvaW50IGlzIHRvIGJlIGFi
bGUgdG8gc2F5IHRoYXQgZGVjb2RlciBjb3VsZCBwcm9kdWNlIDEwIGJpdCBmcmFtZXMgd2l0aG91
dApzZXR0aW5nIGEgZnVsbCBzcHMvcHBzIGZvciBlYWNoIGNhc2UgKGFuZCBmb3IgZWFjaCBzdXBw
b3J0ZWQgY29kZWMpLgoKPgo+IEkgYWN0dWFsbHkgdGhvdWdodCB0aGF0IHRoaXMgZmxhZyB3b3Vs
ZCBqdXN0IGxpc3QgYWxsIGZvcm1hdHMsIGluZGVwZW5kZW50Cj4gb2YgdGhlIG91dHB1dCBmb3Jt
YXQgKGUuZy4gQVYxLCBIMjY0LCBldGMuKSwgYnV0IHRoYXQgZG9lcyBub3QgYXBwZWFyIHRvIGJl
Cj4gdGhlIGNhc2U/IEkuZS4sIGlmIGNhcHR1cmUgcGl4ZWxmb3JtYXQgWCBpcyBvbmx5IGF2YWls
YWJsZSB3aXRoIEFWMSwgd2lsbCB0aGF0IHN0aWxsCj4gYmUgbGlzdGVkIGlmIHRoZSBvdXRwdXQg
cGl4ZWwgaXMgc2V0IHRvIEgyNjQ/Cj4KPiBJIHRoaW5rIHlvdSBuZWVkIHRvIGRlc2NyaWJlIGEg
cmVhbCB1c2UtY2FzZSBoZXJlLCBhbmQgSSBhbSBub3QgY29udmluY2VkIGFib3V0Cj4gdGhlIG5h
bWUgb2YgdGhlIGZsYWcgZWl0aGVyLgoKSSBtYXkgaGF2ZSBtaXNzIHNvbWV0aGluZyBidXQgeWVz
IHRoZSBnb2FsIGlzIHRvIGxpc3QgYWxsIGZvcm1hdHMgaW5kZXBlbmRlbnRseQpvZiB0aGUgb3V0
cHV0IGZvcm1hdC4KV2hlbiBhIFNvQyBoYXZlIG11bHRpcGxlIGRlY29kZXJzIGZvciB0aGUgc2Ft
ZSBjb2RlYywga25vd2luZyB0aGUgc3VwcG9ydGVkIGZvcm1hdHMKaXMga2V5IHRvIHNlbGVjdCB0
aGUgYmV0dGVyIG9uZS4KU2luY2UgSSB3aWxsIGhhdmUgdG8gZG8gbW9yZSBpdGVyYXRpb24sIGZl
ZWwgZnJlZSB0byBwcm92aWRlIGEgYmV0dGVyIG5hbWUgZm9yIHRoZQpmbGFnKHMpLiBJJ20gYWx3
YXlzIGJhZCBmb3IgbmFtaW5nIHRoaXMga2luZCBvZiB0aGluZy4KCgo+Cj4+IGNoYW5nZXMgaW4g
dmVyc2lvbiA0Ogo+PiAtIEV4cGxpY2l0bHkgZG9jdW1lbnQgdGhhdCB0aGUgbmV3IGZsYWdzIGFy
ZSB0YXJnZXRpbmcgbWVtMm1lbSBkZXZpY2VzLgo+Pgo+PiBjaGFuZ2VzIGluIHZlcnNpb24gMzoK
Pj4gLSBBZGQgYSBmbGFnIHRvIGluZm9ybSB1c2Vyc3BhY2UgYXBwbGljYXRpb24gdGhhdCBkcml2
ZXIKPj4gICAgYXMgdGFrZSBjYXJlIG9mIHRoZSBmbGFnLgo+Pgo+PiBjaGFuZ2VzIGluIHZlcnNp
b24gMjoKPj4gLSBDbGFyaWZ5IGRvY3VtZW50YXRpb24uCj4+IC0gT25seSBrZWVwIFY0TDJfRk1U
X0ZMQUdfQUxMX0ZPUk1BVFMgZmxhZyBpbiBpb2N0bC4KPj4KPj4gQmVuamFtaW4KPj4KPj4gQmVu
amFtaW4gR2FpZ25hcmQgKDIpOgo+PiAgICBtZWRpYTogdmlkZW9kZXYyOiBBZGQgZmxhZ3MgdG8g
dW5jb25kaXRpb25uYWx5IGVudW1lcmF0ZSBwaXhlbHMKPj4gICAgICBmb3JtYXRzCj4gSS5lLjog
aXQgaXMgbm90IHVuY29uZGl0aW9uYWxseSwgaXQgc3RpbGwgZGVwZW5kcyBvbiB0aGUgY2hvc2Vu
IGNvZGVjLgo+Cj4gUmVnYXJkcywKPgo+IAlIYW5zCj4KPj4gICAgbWVkaWE6IHZlcmlzaWxpY29u
OiBVc2UgVjRMMl9GTVRfRkxBR19FTlVNX0FMTF9GT1JNQVRTIGZsYWcKPj4KPj4gICAuLi4vbWVk
aWEvdjRsL2Rldi1zdGF0ZWxlc3MtZGVjb2Rlci5yc3QgICAgICAgICAgfCAgNiArKysrKysKPj4g
ICAuLi4vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvdmlkaW9jLWVudW0tZm10LnJzdCAgfCAxMSAr
KysrKysrKysrKwo+PiAgIC4uLi9tZWRpYS92aWRlb2RldjIuaC5yc3QuZXhjZXB0aW9ucyAgICAg
ICAgICAgICB8ICAyICsrCj4+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9o
YW50cm9fdjRsMi5jIHwgMTYgKysrKysrKysrKysrKy0tLQo+PiAgIGRyaXZlcnMvbWVkaWEvdjRs
Mi1jb3JlL3Y0bDItaW9jdGwuYyAgICAgICAgICAgICB8ICAzICsrKwo+PiAgIGluY2x1ZGUvdWFw
aS9saW51eC92aWRlb2RldjIuaCAgICAgICAgICAgICAgICAgICB8ICAyICsrCj4+ICAgNiBmaWxl
cyBjaGFuZ2VkLCAzNyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
