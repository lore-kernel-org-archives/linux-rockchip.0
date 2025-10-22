Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 927F0CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 09:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VnusxQmVyEmgljDmvY2ebsfT2ovPioLteSGxDcBDnLY=; b=4aIvShwZO2PIgX
	/zX3n7cuX43aypKZ//wViF3IHkT4pBzUHAVU2Z39hirsEdnzJT99tUeWHwLtNO5uv8QzEK05F6HgT
	5PzXtqn7m907btiFv81jGnPMqWVdAmzUKHysxFVoSwqsApx70VLHbF4h7J8vsGrbjoMF16Wyauz4t
	LxMW4ri/0BhGvQ44wX6WQK/np/Hk4jZe0Z5GIvuso9hvTj8Dwb6xr/+o7hFqUd2UUNInZ83VEGkOx
	M7c2yFgPJSKmSECaYa7/6Ju7aei1z+xVnQWjndUnZk1qEjfeIvuwdv800QWkPbPFk7tNFi+zi8jtZ
	omNOunDbuP4lCsLqtv1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVW8-00000002K2S-0joZ;
	Wed, 22 Oct 2025 09:52:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVW5-00000002K0A-0x92;
	Wed, 22 Oct 2025 09:52:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=IRzW4TIfXqA8U8VyFhl4a5nR+JpRyPOHWAWMvoNSBog=; b=fA20BholhvJ7oFwc8aYVXE2OrK
	QjmyiUqQbpuRqoxZ+ov/1s2x79Oq5rPYjUrhl9DPId2GhGLbZqtiykPQFIvR/6h5tHc58MyrJeV3T
	8O3t0i8QBYjRFBJmTVw0E91OigGD6TNXcOoihDOeLxh7R3AYtgHPwRvj/J+bzH2ruAkf2WLUC+5/Z
	1wcyMleDF0U1wMB7ysgv16Z0TPkayX3+cE4KSntcTzTnnGiuWNbTucD8PWCP8peCuyioOY9sf3DTp
	UjAuzab7XyvRpTVIlzGqrQ9oojXWZ7iWnmWupjwZZ8I9f6XY9JgG8Y079cHBJJX8aTHKSiC+JVPG6
	PKkkGKRg==;
Received: from [141.76.253.241] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vBVVt-00027D-MX; Wed, 22 Oct 2025 11:52:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, sboyd@kernel.org, sugar.zhang@rock-chips.com,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 zhangqing <zhangqing@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
 finley.xiao@rock-chips.com, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 2/7] dt-bindings: clock, reset: Add support for rv1126b
Date: Wed, 22 Oct 2025 11:52:12 +0200
Message-ID: <3346817.AJdgDx1Vlc@phil>
In-Reply-To: <5a551943-141a-4842-a4d0-b66b32cf3e70@rock-chips.com>
References: <20251021065232.2201500-1-zhangqing@rock-chips.com> <4463339.ejJDZkT8p0@phil>
 <5a551943-141a-4842-a4d0-b66b32cf3e70@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_025225_307407_2814D866 
X-CRM114-Status: GOOD (  20.02  )
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

SGkgRWxhaW5lLAoKQW0gTWl0dHdvY2gsIDIyLiBPa3RvYmVyIDIwMjUsIDA1OjIxOjQzIE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgemhhbmdxaW5nOgo+IOWcqCAyMDI1LzEw
LzIxIDE2OjM4LCBIZWlrbyBTdHVlYm5lciDlhpnpgZM6Cj4gPiBBbSBEaWVuc3RhZywgMjEuIE9r
dG9iZXIgMjAyNSwgMDg6NTI6MjcgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2Nocmll
YiBFbGFpbmUgWmhhbmc6Cj4gPj4gQWRkIGNsb2NrIGFuZCByZXNldCBJRCBkZWZpbmVzIGZvciBy
djExMjZiLgo+ID4+IEFsc28gYWRkIGRvY3VtZW50YXRpb24gZm9yIHRoZSBydjExMjZiIENSVSBj
b3JlLgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9j
ay1jaGlwcy5jb20+Cj4gPj4gQWNrZWQtYnk6IENvbm9yIERvb2xleSA8Y29ub3IuZG9vbGV5QG1p
Y3JvY2hpcC5jb20+Cj4gPj4gLS0tCj4gPj4gICAuLi4vYmluZGluZ3MvY2xvY2svcm9ja2NoaXAs
cnYxMTI2Yi1jcnUueWFtbCAgfCAgNTIgKysrCj4gPj4gICAuLi4vZHQtYmluZGluZ3MvY2xvY2sv
cm9ja2NoaXAscnYxMTI2Yi1jcnUuaCAgfCAzOTIgKysrKysrKysrKysrKysrKysKPiA+PiAgIC4u
Li9kdC1iaW5kaW5ncy9yZXNldC9yb2NrY2hpcCxydjExMjZiLWNydS5oICB8IDQwNSArKysrKysr
KysrKysrKysrKysKPiA+PiAgIDMgZmlsZXMgY2hhbmdlZCwgODQ5IGluc2VydGlvbnMoKykKPiA+
PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
Y2xvY2svcm9ja2NoaXAscnYxMTI2Yi1jcnUueWFtbAo+ID4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscnYxMTI2Yi1jcnUuaAo+ID4+ICAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvcm9ja2NoaXAscnYx
MTI2Yi1jcnUuaAo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxydjExMjZiLWNydS55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJ2MTEyNmItY3J1LnlhbWwKPiA+
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4+IGluZGV4IDAwMDAwMDAwMDAwMC4uMDRiMGE1YzUx
ZTRlCj4gPj4gLS0tIC9kZXYvbnVsbAo+ID4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxydjExMjZiLWNydS55YW1sCj4gPj4gQEAgLTAsMCAr
MSw1MiBAQAo+ID4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgT1Ig
QlNELTItQ2xhdXNlCj4gPj4gKyVZQU1MIDEuMgo+ID4+ICstLS0KPiA+PiArJGlkOiBodHRwOi8v
ZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9jbG9jay9yb2NrY2hpcCxydjExMjZiLWNydS55YW1sIwo+
ID4+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFt
bCMKPiA+PiArCj4gPj4gK3RpdGxlOiBSb2NrY2hpcCBSVjExMjZCIENsb2NrIGFuZCBSZXNldCBV
bml0Cj4gPj4gKwo+ID4+ICttYWludGFpbmVyczoKPiA+PiArICAtIEVsYWluZSBaaGFuZyA8emhh
bmdxaW5nQHJvY2stY2hpcHMuY29tPgo+ID4+ICsgIC0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4KPiA+PiArCj4gPj4gK2Rlc2NyaXB0aW9uOgo+ID4+ICsgIFRoZSBydjExMjZiIGNs
b2NrIGNvbnRyb2xsZXIgZ2VuZXJhdGVzIHRoZSBjbG9jayBhbmQgYWxzbyBpbXBsZW1lbnRzIGEK
PiA+PiArICByZXNldCBjb250cm9sbGVyIGZvciBTb0MgcGVyaXBoZXJhbHMuCj4gPj4gKwo+ID4+
ICtwcm9wZXJ0aWVzOgo+ID4+ICsgIGNvbXBhdGlibGU6Cj4gPj4gKyAgICBlbnVtOgo+ID4+ICsg
ICAgICAtIHJvY2tjaGlwLHJ2MTEyNmItY3J1Cj4gPj4gKwo+ID4+ICsgIHJlZzoKPiA+PiArICAg
IG1heEl0ZW1zOiAxCj4gPj4gKwo+ID4+ICsgICIjY2xvY2stY2VsbHMiOgo+ID4+ICsgICAgY29u
c3Q6IDEKPiA+PiArCj4gPj4gKyAgIiNyZXNldC1jZWxscyI6Cj4gPj4gKyAgICBjb25zdDogMQo+
ID4+ICsKPiA+PiArICBjbG9ja3M6Cj4gPj4gKyAgICBtYXhJdGVtczogMQo+ID4+ICsKPiA+PiAr
ICBjbG9jay1uYW1lczoKPiA+PiArICAgIGNvbnN0OiB4aW4yNG0KPiA+IEkgdGhpbmsgd2UncmUg
bWlzc2luZyB0aGUgb3B0aW9uYWwKPiA+Cj4gPiAgICAgcm9ja2NoaXAsZ3JmOgo+ID4gICAgICAg
JHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZQo+ID4gICAgICAg
ZGVzY3JpcHRpb246Cj4gPiAgICAgICAgIFBoYW5kbGUgdG8gdGhlIHN5c2NvbiBtYW5hZ2luZyB0
aGUgImdlbmVyYWwgcmVnaXN0ZXIgZmlsZXMiIChHUkYpLAo+ID4gICAgICAgICBpZiBtaXNzaW5n
IHBsbCByYXRlcyBhcmUgbm90IGNoYW5nZWFibGUsIGR1ZSB0byB0aGUgbWlzc2luZyBwbGwKPiA+
ICAgICAgICAgbG9jayBzdGF0dXMuCj4gPgo+ID4KPiA+IGJlY2F1c2UgUlYxMTI2Ql9HUkZfU09D
X1NUQVRVUzAgY29udGFpbnMgdGhlIFBMTCBsb2NrIHN0YXR1cy4KPiBUaGUgcGxsIGxvY2sgdHJ1
bHkgdXNlcyBiaXQxMCBvZiB0aGUgUExMX0NPTjEgcmVnaXN0ZXIgb2YgQ1JVIGFuZCBkb2VzIAo+
IG5vdCB1c2UgZ3JmLiBEb2VzIHRoYXQgbWVhbiB0aGVyZSBpcyBubyBuZWVkIHRvIGluY3JlYXNl
IHJvY2tjaGlwLGdyZu+8nwoKY29ycmVjdCAuLi4gaW4gdGhhdCBjYXNlIHdlIGRvbid0IG5lZWQg
dGhlIEdSRiByZWZlcmVuY2UuCkFzIHdlJ3JlIG5vdCBhY2Nlc3NpbmcgdGhlIEdSRi4KClBsZWFz
ZSBhbHNvIGRyb3AgdGhlIFJWMTEyNkJfR1JGX1NPQ19TVEFUVVMwIGNvbnN0YW50IGZyb20gdGhl
IGRyaXZlcgppbiB0aGF0IGNhc2UuCgpUaGFua3MKSGVpa28KCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
