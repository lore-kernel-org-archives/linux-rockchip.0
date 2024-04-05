Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51614CD11C2
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 08:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VE7aEg0es+yc+br1aCMQ7Ycz6pMo2V+vYqOhRfDfZ+M=; b=DmW/eBx/7NX2uz
	TybNrNkaKgs0xzkZgANYkvozpWeIiEYXUp9YJHj2OqBs8O/23swC8CEP+EuWZzSo5fQQkuFX/8NCF
	zT/an3DKWwiZDB8piFmQVqaQoILyZVT0ZIRs7LXFGaI1O4f/IgQZs7ZyfjgCKZUvE83mB+1GYdpaY
	BaaeLbTny8LqqrkbyZBbZK4nuqVL+xp0+Rtf0LIqiu8wdv5dKVmR1wVVB9ShiGsD0/OPSlxEtg2IC
	9VK4KY2hzBCJSoKU+daaa8rw3F50o1AxRxUcQiF5bBJDLsEnj350zGjH0OjvL/vnbpvls7D7pjhNE
	jXynrOudOHgj/A7k4xmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rseln-00000005txX-1WlV;
	Fri, 05 Apr 2024 08:17:55 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rselj-00000005twB-30Ld;
	Fri, 05 Apr 2024 08:17:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1712305070;
	bh=2ttnx/syndg1SQwF3EPAEoa5ox2rpecAHGxXciYNAHA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lNDi1GUq481w8n4ZvQHskVubVZVHye+7Mk7oZ4ndKU3aKRXi0wnBIRrRrUsZSr8sM
	 xPvcR7vsjVNzh0nC7bQ2uMvNmkhNxPw6bgv8JCcVBG+2Mr4Ey+jY2uKPCuKiX0DhNI
	 EhE1L49+O+6Dtd5BxYrqV+/SJtktnSQNw+81/jKBivKNqKDMnIlgFXI1d3zO+tarKl
	 9nYSww5mpaH/LOqFLpqxbxCbYjvbLXzJT+dg9k8+2OwybGNheaTQd097QbeUco3gq2
	 1thO+Wi05vVqT8HPEhvlGJ7yA5amGyeBDlm6Tz6mfbRnvmgfLPp3AHAoTqU7n6cDx1
	 EV+OPSJKAk+3w==
Received: from [100.93.89.217] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id F0E073780EC6;
	Fri,  5 Apr 2024 08:17:49 +0000 (UTC)
Message-ID: <ebbe249f-bce6-4e81-969f-c63ab4b063f3@collabora.com>
Date: Fri, 5 Apr 2024 10:17:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: verisilicon: AV1: Be more fexible on postproc
 capabilities
To: Nicolas Dufresne <nicolas@ndufresne.ca>, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, mchehab@kernel.org, heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20240328093439.18712-1-benjamin.gaignard@collabora.com>
 <e4d01c27aa976c44e0b7122e39111be062a4deb4.camel@ndufresne.ca>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <e4d01c27aa976c44e0b7122e39111be062a4deb4.camel@ndufresne.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_011751_912605_CBEF113C 
X-CRM114-Status: GOOD (  15.48  )
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

CkxlIDA0LzA0LzIwMjQgw6AgMTk6NTksIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPiBI
aSwKPgo+IExlIGpldWRpIDI4IG1hcnMgMjAyNCDDoCAxMDozNCArMDEwMCwgQmVuamFtaW4gR2Fp
Z25hcmQgYSDDqWNyaXTCoDoKPj4gUkszNTg4IHBvc3QtcHJvY2Vzc29yIGJsb2NrIGlzIGFibGUg
dG8gY29udmVydCAxMCBiaXRzIHN0cmVhbXMKPj4gaW50byA4IGJpdHMgcGl4ZWxzIGZvcm1hdC4K
PiBEb2VzIGl0IGNvbWUgd2l0aCBhbnkgSERSIHRvIFNEUiBjYXBhYmlsaXRpZXMgPyBjYXVzZSBz
dHJpcHBpbmcgb2ZmIDIgYml0cyBtZWFucwo+IHRoYXQgdG9uZSBtYXBwaW5nIHdpbGwgY2F1c2Ug
YSBsb3Qgb2YgYmFuZGluZyBhcyBpdCB3b24ndCBoYXZlIHRoZSBleHBlY3RlZAo+IHByZWNpc2lv
bi4gSSdtIHNpbXBseSB0cnlpbmcgdG8gbWFrZSB1cCB0aGUgYmlnIHBvcnRyYWl0IHNvIHdlIGRv
bid0IGp1c3Qgb2ZmZXIKPiB5ZXQgYW5vdGhlciBmb290IGd1bi4gQnV0IHBlcmhhcHMgaXRzIGZp
bmUgdG8gb2ZmZXIgdGhpcywgaXRzIGp1c3QgdGhhdCB3ZSBkb24ndAo+IGhhdmUgYSBtZWNoYW5p
c20gdG8gcmVwb3J0IHdoaWNoIHBpeGVsIGZvcm1hdCBpbiB0aGUgc2VsZWN0aW9uIHdpbGwgY2F1
c2UgZGF0YQo+IGxvc3QuCgpObyBpdCBqdXN0IHRvIGVuYWJsZSBwb3N0LXByb2Nlc3NvciBjYXBh
YmlsaXRpZXMgbGlrZSB3ZSBoYXZlIGFscmVhZHkgZm9yIEcyL0hFVkMuClNpbmNlIGl0IGlzIGEg
cG9zdC1wcm9jZXNzb3IgcGl4ZWwgZm9ybWF0IGl0IHdpbGwgYmUgZW51bWVyYXRlZCBhZnRlciBW
NEwyX1BJWF9GTVRfTlYxNV80TDQKc28gaXQgd2lsbCB1cGRhdGUgdG8gdXNlcmxhbmQgdG8gZGVj
aWRlIHRvIHVzZSBpdCBvciBub3QuCgpCZW5qYW1pbgoKPgo+IE5pY29sYXMKPgo+PiBTaWduZWQt
b2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNv
bT4KPj4gRml4ZXM6IDAwM2FmZGE5N2M2NSAoIm1lZGlhOiB2ZXJpc2lsaWNvbjogRW5hYmxlIEFW
MSBkZWNvZGVyIG9uIHJrMzU4OCIpCj4+IC0tLQo+PiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
dmVyaXNpbGljb24vcm9ja2NoaXBfdnB1X2h3LmMgfCAxIC0KPj4gICAxIGZpbGUgY2hhbmdlZCwg
MSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHVfaHcuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vcm9ja2NoaXBfdnB1X2h3LmMKPj4gaW5kZXggZjk3NTI3NjcwNzgzLi45NjQxMjJl
N2MzNTUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
cm9ja2NoaXBfdnB1X2h3LmMKPj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9yb2NrY2hpcF92cHVfaHcuYwo+PiBAQCAtODIsNyArODIsNiBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IGhhbnRyb19mbXQgcm9ja2NoaXBfdnB1OTgxX3Bvc3Rwcm9jX2ZtdHNbXSA9IHsKPj4g
ICAJewo+PiAgIAkJLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9OVjEyLAo+PiAgIAkJLmNvZGVjX21v
ZGUgPSBIQU5UUk9fTU9ERV9OT05FLAo+PiAtCQkubWF0Y2hfZGVwdGggPSB0cnVlLAo+PiAgIAkJ
LnBvc3Rwcm9jZXNzZWQgPSB0cnVlLAo+PiAgIAkJLmZybXNpemUgPSB7Cj4+ICAgCQkJLm1pbl93
aWR0aCA9IFJPQ0tDSElQX1ZQVTk4MV9NSU5fU0laRSwKPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
