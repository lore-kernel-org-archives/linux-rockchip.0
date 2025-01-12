Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59A37E77188
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jan 2025 22:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfIxUFXhM7Lq5MYmLv+MyGcBckFkLt+t6EUbpUL+1BE=; b=CHUbOdX+JPD53m
	T2rZlj+zXmzc997szc2csqBsKp+3o6OWrXxjVa01FOsrlT2yHAQbEmm+6i13nRMYkcBS5omWWximK
	w26T21M4aJcgrJ9F2L+7l7Nd9nG1+W8fBYzGSUkHyYMuVxPkmo/5SsL8uvtFOStGLRCc2rZR/hkMD
	60pGfTCpV/tK5L1UviyJR/aha4x3/WwWdTTbUASqBPRQUnbplwRNfp+vky67uk6jhZfeld5Inp2bG
	VCiwFZE87057Nup8HqXY739IVlYEm7Tucv29SLDOAhVOWvJGzgIOeNZl9CJyj+sjaw3P5Lyf8U5WP
	tVxQS0YVM/Kg2wiiDVFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tX6Rl-00000003XUm-05OZ;
	Sun, 12 Jan 2025 22:28:41 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tX6QT-00000003XMx-3rWI;
	Sun, 12 Jan 2025 22:27:23 +0000
Received: from [192.168.0.160] (unknown [222.77.7.241])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 04B107817F;
	Mon, 13 Jan 2025 06:27:17 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 04B107817F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1736720839;
	bh=6Gbp/iAkE0WvSs9YPY1BfcKbb4Jn7r1/Bj7q1lILlsI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Xov2FoAnMFPjBO2RmvVEdjjBXfTo4+WUl9V01wGOrMlaIKOnGaFFV+hpGtifwy5EW
	 5X9GK3c7nkxYj0C/Pcp9BO5Jrod2ComUxDR47q66NvVsuEU5h9WBk1wfwUQB08s/lB
	 zSHbhN5dwz9HHKXEfz+Z7dx56wF+Dt3WgLr0XmyA=
Message-ID: <526e0c19-6495-4dcf-bf6b-b5bd62a7a631@classfun.cn>
Date: Mon, 13 Jan 2025 06:27:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add support for Ariaboard Photonicat RK3568
To: Dragan Simic <dsimic@manjaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Junhao Xie <bigfoot@classfun.cn>
References: <20250112073344.1976411-1-bigfoot@classfun.cn>
 <c520a0d829bbe26b9802f57f94f3957c@manjaro.org>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <c520a0d829bbe26b9802f57f94f3957c@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_142722_258665_B6CE6BB8 
X-CRM114-Status: GOOD (  17.37  )
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

T24gMjAyNS8xLzEyIDE2OjUwLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gSGVsbG8gSnVuaGFvLAo+
IAo+IE9uIDIwMjUtMDEtMTIgMDg6MzMsIEp1bmhhbyBYaWUgd3JvdGU6Cj4+IEFkZCBkdHMgZm9y
IEFyaWFib2FyZCBQaG90b25pY2F0IFJLMzU2OC4KPj4KPj4gVGhpcyBzZXJpZXMgYnJpbmcgc3Vw
cG9ydCBmb3I6Cj4+ICogRGVidWcgVUFSVAo+PiAqIFNESU8gUUNBOTM3NyBXaUZpIGFuZCBCbHVl
dG9vdGgKPj4gKiBNLjIgRS1LZXkgUENJZSBXaUZpIGFuZCBCbHVldG9vdGgKPj4gKiBNLjIgQi1L
ZXkgVVNCIE1vZGVtIFdXQU4KPj4gKiBFdGhlcm5ldCBXQU4gUG9ydAo+PiAqIE1pY3JvU0QgQ2Fy
ZCBzbG90Cj4+ICogZU1NQwo+PiAqIEhETUkgT3V0cHV0Cj4+ICogTWFsaSBHUFUKPj4gKiBVU0Ig
VHlwZS1BCj4+Cj4+IENoYW5nZWQgZnJvbSB2MToKPj4gLSBtb3ZlIHNvbWUgZ2VuZXJhbCBub2Rl
cyAoZmlybXdhcmUsIHJhbW9vcHMsIHJlYm9vdC1tb2RlKSB0byByazM1NnguZHRzaQo+IAo+IFRo
aXMgZW50cnkgZnJvbSB0aGUgY2hhbmdlbG9nIGNhdWdodCBteSBhdHRlbnRpb24sIHNvIEkgdHJp
ZWQKPiB0byBmaW5kIG91dCB3aGF0IGV4YWN0bHkgaGFwcGVuZWQgYmFjayB0aGVuLsKgIFRob3Vn
aCwgYWZ0ZXIgZ29pbmcKPiB0aHJvdWdoIHRoZSBtYWlsaW5nIGxpc3QgYXJjaGl2ZSwgSSBzdGls
bCBkb24ndCBzZWUgd2hlcmUgdGhlCj4gYXMtZGVzY3JpYmVkIGNoYW5nZSB0b29rIHBsYWNlLCBz
byBwZXJoYXBzIHRoaXMgY2hhbmdlbG9nIGVudHJ5Cj4gbmVlZHMgYWRqdXN0aW5nLgoKQ2h1a3Vu
IFBhbiBzdWdnZXN0ZWQgbW92aW5nIHRoZXNlIG5vZGVzIHRvIHJrMzU2eC5kdHNpLCBidXQgSSBo
YXZlIG5vdCBkb25lCnRoYXQgeWV0IGFuZCBzaW1wbHkgZGVsZXRlZCB0aGVtLiBJIHdpbGwgZml4
IHRoZSBjaGFuZ2Vsb2cuCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyNDA5MDUwMzQw
MDkuMjgxMjQtMS1hbWFkZXVzQGptdS5lZHUuY24vCgotIHJlbW92ZSBzb21lIGdlbmVyYWwgbm9k
ZXMgKGZpcm13YXJlLCByYW1vb3BzLCByZWJvb3QtbW9kZSkKCj4gCj4+IC0gZ21hYzEgY2hhbmdl
IHRvIHBoeS1tb2RlIHJnbWlpLWlkCj4+IC0gY29ycmVjdGVkIHNvbWUgcmVndWxhdG9yIHRvIGJl
IGNsb3NlciB0byBzY2hlbWF0aWNzCj4+IC0gcmVuYW1lIHJrMzU2OC1hcmlhYm9hcmQtcGhvdG9u
aWNhdC5kdHMgdG8gcmszNTY4LXBob3RvbmljYXQuZHRzCj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xrbWwvMjAyNDA5MDQxMTE0NTYuODcwODktMS1iaWdmb290QGNsYXNzZnVuLmNuLwo+Pgo+
PiBDaGFuZ2VkIGZyb20gdjI6Cj4+IC0gcmVtb3ZlIHVudXNlZCBoZWFkZXJzCj4+IC0gY29ycmVj
dGVkIHNvbWUgcmVndWxhdG9yIHRvIGJlIGNsb3NlciB0byBzY2hlbWF0aWNzCj4+IC0gcmVtb3Zl
IHVzYl9ob3N0MV9vaGNpLCB1c2JfaG9zdDFfZWhjaSwgdXNiMnBoeTFfaG9zdCB0aGF0IGhhdmUg
bm8gY29ubmVjdGlvbgo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjQwOTA2MDQ1
NzA2LjEwMDQ4MTMtMS1iaWdmb290QGNsYXNzZnVuLmNuLwo+Pgo+PiBDaGFuZ2VkIGZyb20gdjM6
Cj4+IC0gY29ycmVjdGVkIHNvbWUgcmVndWxhdG9yIHRvIGJlIGNsb3NlciB0byBzY2hlbWF0aWNz
Cj4+IC0gY2hhbmdlZCB0byB1c2luZyBjbGszMmtfb3V0MSBpbiB4aW4zMmsKPj4gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGttbC8yMDI0MDkxMTEyMjgwOS4xNzg5Nzc4LTItYmlnZm9vdEBjbGFz
c2Z1bi5jbi8KPj4KPj4gQ2hhbmdlZCBmcm9tIHY0Ogo+PiAtIGNvcnJlY3RlZCBzb21lIHJlZ3Vs
YXRvciB0byBiZSBjbG9zZXIgdG8gc2NoZW1hdGljcwo+PiAtIGNvcnJlY3RlZCBzb21lIGxhYmVs
IHRvIG1hdGNoIG5vZGUgbmFtZQo+PiAtIHVzZSByZXNldHMgcHJvcHMgaW4gcGh5IG5vZGUgaW5z
dGVhZCBkZXByZWNhdGVkIHNucHMscmVzZXQtZ3Bpbwo+PiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9sa21sLzIwMjQwOTE0MTQ1NTQ5Ljg3OTkzNi0xLWJpZ2Zvb3RAY2xhc3NmdW4uY24vCj4+Cj4+
IENoYW5nZWQgZnJvbSB2NToKPj4gLSByZXNvcnQgcmVndWxhdG9yIG5vZGVzCj4+IC0gcmVtb3Zl
IGRyX21vZGUgZnJvbSB1c2JfaG9zdDFfeGhjaQo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9s
a21sLzIwMjQxMTA4MDMxODQ3LjcwMDYwNi0xLWJpZ2Zvb3RAY2xhc3NmdW4uY24vCj4+Cj4+IEp1
bmhhbyBYaWUgKDMpOgo+PiDCoCBkdC1iaW5kaW5nczogdmVuZG9yLXByZWZpeGVzOiBBZGQgcHJl
Zml4IGZvciBBcmlhYm9hcmQKPj4gwqAgZHQtYmluZGluZ3M6IGFybTogcm9ja2NoaXA6IEFkZCBB
cmlhYm9hcmQgUGhvdG9uaWNhdCBSSzM1NjgKPj4gwqAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFk
ZCBkdHMgZm9yIEFyaWFib2FyZCBQaG90b25pY2F0IFJLMzU2OAo+Pgo+PiDCoC4uLi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1swqDCoMKgwqAgfMKgwqAgNSArCj4+IMKgLi4u
L2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWzCoCB8wqDCoCAyICsKPj4g
wqBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoCB8
wqDCoCAxICsKPj4gwqAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXBob3RvbmljYXQuZHRz
wqDCoCB8IDU5OSArKysrKysrKysrKysrKysrKysKPj4gwqA0IGZpbGVzIGNoYW5nZWQsIDYwNyBp
bnNlcnRpb25zKCspCj4+IMKgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTY4LXBob3RvbmljYXQuZHRzCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3LCBJ
IHdpbGwgZml4IGFsbCBwcm9ibGVtcyBpbiBuZXh0IHZlcnNpb24hCgpCZXN0IHJlZ2FyZHMsCkp1
bmhhbwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
