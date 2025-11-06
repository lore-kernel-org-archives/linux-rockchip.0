Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9DDCCCFA05
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 22:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xW/mjLNkqBVzHV5oOfsxVsDzMW4MKWgwdhaGCuvIZaM=; b=mZOUezytwJCAAb
	4lsl3p9SzBD7yaqIpbOM0Do1JSQlkEAwD8zLATOzVbxzdjWGB7PWu9zMXtmaB46lW59dnwQ/jG6Di
	hlvFum1bRm2pYuObmAVThvIu6o7csmMiqk51sIG9rDxpsY380InkcWWWteLbZmJabvyUPD8oWZjFO
	gCYH7h3sMpdkd7UKc4XgX1xWtIxkxFuNhIOq8jlRLIibYZCxqtPBnP5xa31BN4F32h2C8vmbT4I07
	o6ZpYgzpBCB0jMiSrma+/uD6CazrlSiAw9T/nTrY++mVLfqXIFcDMn2CqoqwRjMtkFOiAHmhVd7XS
	zil/KT60ZUkbfUWwHcFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH8sY-0000000GKim-2f6f;
	Thu, 06 Nov 2025 22:54:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH8sW-0000000GKiI-1y7X;
	Thu, 06 Nov 2025 22:54:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=1X/CXcnKu0utomIoDVTa8ejjlinauV2USLh4t/RueAg=; b=HeLO/m2CPzKLXigoYGRXggshjT
	mBlEYe3+mSRH4JhbWQahv5wTHPo02zAgAdwp4xkKdrnE8TNMhOMmP2JHeNxLP/IKB3ZfCGNw/1Q7K
	7ZwBNet8eT7aFBxEUukH4xOIUQkjje2WPh8mLsLUNlz8mS/Ms95B2RhyBFzYe1KGZjghcWHirxTNk
	qfpw/pO/dVpLqmnauHd7nV8BEdiLN4lc+dwhAp6E0Fc7l0iTO6PukVqK08aK+hZhPzUdhkNMIT99y
	vc/jRiy4rs04C0TQP1Eifl+bfL7lv+p/YB9E6fsvid2+NaF+yABDumfWDZMGs3SHkNakc9mkKDMOG
	UFr250Gg==;
Received: from i53875bac.versanet.de ([83.135.91.172] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vH8sQ-0001oK-HK; Thu, 06 Nov 2025 23:54:46 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>,
 Jonas Karlman <jonas@kwiboo.se>, Coia Prant <coiaprant@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coia Prant <coiaprant@gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: Add devicetree for the 9Tripod X3568
 v4
Date: Thu, 06 Nov 2025 23:54:45 +0100
Message-ID: <3719039.iIbC2pHGDl@phil>
In-Reply-To: <20251103171702.1518730-4-coiaprant@gmail.com>
References: <20251103171702.1518730-1-coiaprant@gmail.com>
 <20251103171702.1518730-4-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_145452_513537_410589BB 
X-CRM114-Status: GOOD (  17.44  )
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

QW0gTW9udGFnLCAzLiBOb3ZlbWJlciAyMDI1LCAxODoxNzowMiBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIENvaWEgUHJhbnQ6Cj4gVGhlIDlUcmlwb2QgWDM1NjggdjQgaXMg
YW4gUkszNTY4LWJhc2VkIFNCQywganVzdCBsaWtlIHRoZSBSSzM1NjgtRVZCLgo+IEl0IGFsd2F5
cyB1c2VzIHNvbGRlcmVkIGNvbm5lY3Rpb25zIGJldHdlZW4gdGhlIFgzNTY4Q1YyL1gzNTY4Q1Yz
L1gzNTY4Q1Y0IGNvcmUgYm9hcmQKPiBhbmQgdGhlIFgzNTY4YnY0IEkvTyBib2FyZC4KPiAKPiBU
aGUgZGlmZmVyZW5jZXMgYmV0d2VlbiB0aGUgY29yZSBib2FyZHMKPiAtIFBDQiBzaXplLCBsYXlv
dXQKPiAtIENQVSAoUktLMzU2OEIyL1JLMzU2OEopCj4gLSBNZW1vcnkgdHlwZSAoRERSNC9MUERE
UjQvTFBERFI0WCkgYW5kIHNpemUKPiAtIGVNTUMgc2l6ZQo+IC0gRFNJL0VEUCByZXNpc3RvciB2
YWx1ZXMKPiBBbHRob3VnaCB0aGUgY29tcG9uZW50cyB2YXJ5LCB0aGV5IG1haW50YWluIGZ1bGwg
Y29tcGF0aWJpbGl0eS4KPiAKPiBUaGUgWDM1NjggYm9hcmQgaGFzIG11bHRpcGxlIGhhcmR3YXJl
IHJldmlzaW9ucywgYW5kIHdlIGN1cnJlbnRseSBzdXBwb3J0IHY0IChJL08gYm9hcmQpLgo+IAo+
IFNwZWNpZmljYXRpb246Cj4gLSBTb0M6IFJvY2tDaGlwIFJLMzU2OCBBUk02NCAoNCBjb3JlcykK
PiAtIGVNTUM6IDE2LTEyOCBHQgo+IC0gUkFNOiAyLTE2IEdCCj4gLSBQb3dlcjogREMgMTJWIDJB
Cj4gLSBFdGhlcm5ldDogMnggWVQ4NTIxU0MgUkdNSUkgKDEwLzEwMC8xMDAwIE1icHMpCj4gLSBX
aXJlbGVzcyByYWRpbzogODAyLjExYi9nL24vYWMvYXggZHVhbC1iYW5kCj4gLSBMRUQ6Cj4gICBQ
b3dlcjogQWx3YXlzT24KPiAgIFVzZXI6IEdQSU8KPiAtIEJ1dHRvbjoKPiAgIFZPTCs6IFNBUkFE
Qy8wIDwzNWsgwrVWPgo+ICAgVk9MLTogU0FSQURDLzAgPDQ1MGsgwrVWPgo+ICAgUG93ZXIvUmVz
ZXQ6IFBNSUMgUks4MDkKPiAtIENBTgo+ICAgQ0FOLzE6IDQtcGluIChQSCAyLjApCj4gLSBQV00K
PiAgIFBXTS80OiBCYWNrbGlnaHQgRFNJLzAgRFNJLzEKPiAgIFBXTS83OiBJUiBSZWNlaXZlciBb
bWF5IG5vdCBpbnN0YWxsXQo+IC0gVUFSVDoKPiAgIFVBUlQvMjogRGVidWcgVFRMIC0gMTUwMDAw
MCA4TjEgKDEuMjVtbSkKPiAgIFVBUlQvMzogVFRMIChQSCAyLjApCj4gICBVQVJULzQ6IFRUTCAo
UEggMi4wKQo+ICAgVUFSVC84OiBBUDYyNzVTIEJsdWV0b290aAo+ICAgVUFSVC85OiBUVEwgKFBI
IDIuMCkKPiAtIEkyQzoKPiAgIEkyQy8wOiBQTUlDIFJLODA5Cj4gICBJMkMvMTogVG91Y2hzY3Jl
ZW4gRFNJLzAgRFNJLzEKPiAgIEkyQy80OiBDYW1lcmEKPiAgIEkyQy81OiBSVENANTEgUENGODU2
Mwo+IC0gSTJTOgo+ICAgSTJTLzA6IG1pbmlIRE1JIFNvdW5kCj4gICBJMlMvMTogUks4MDkgQXVk
aW8gQ29kZWMKPiAgIEkyUy8zOiBBUDYyNzVTIEJsdWV0b290aCBTb3VuZAo+IC0gU0RNTUM6Cj4g
ICBTRE1NQy8wOiBtaWNyb1NEIChURikgc2xvdAo+ICAgU0RNTUMvMjogQVA2Mjc1UyBTRElPIFdp
RmkgY2FyZAo+IC0gQ2FtZXJhOiAxeCBDU0kKPiAtIFZpZGVvOiBtaW5pSERNSSAvIERTSTAgKE1J
UEkvTFZEUykgLyBEU0kxIChNSVBJL0VEUCkKPiAtIEF1ZGlvOiBtaW5pSERNSSAvIE1JQyBvbi1i
b2FyZCAvIFNwZWFrZXIgLyBTUERJRiAvIDMuNW1tIEhlYWRwaG9uZXMgLyBBUDYyNzVTIEJsdWV0
b290aAo+IC0gVVNCOgo+ICAgVVNCIDIuMCBIT1NUIHgyCj4gICBVU0IgMi4wIEhPU1QgeDMgKDQt
cGluKQo+ICAgVVNCIDIuMCBPVEcgeDEgKHNoYXJlZCB3aXRoIFVTQiAzLjAgT1RHL0hPU1QpIFtz
bG90IG1heSBub3QgaW5zdGFsbF0KPiAgIFVTQiAzLjAgSE9TVCB4MQo+ICAgVVNCIDMuMCBPVEcv
SE9TVCB4MQo+IC0gU0FUQTogMXggU0FUQSAzLjAgd2l0aCBQb3dlci80LXBpbiBbc2xvdCBtYXkg
bm90IGluc3RhbGxdCj4gLSBQQ0llOiAxeCBQQ0llIDMuMCB4MiAoeDQgY29ubmVjdGVyKSBbcG93
ZXIvY2xvY2svc2xvdCBtYXkgbm90IGluc3RhbGxdCj4gCj4gTGluazoKPiAtIGh0dHBzOi8vYXBw
bGV0c2FwaS41MnNvbHV0aW9uLmNvbS9tZWRpYS9YMzU2OFY0JUU1JUJDJTgwJUU1JThGJTkxJUU2
JTlEJUJGJUU3JUExJUFDJUU0JUJCJUI2JUU2JTg5JThCJUU1JTg2JThDLnBkZgo+IC0gaHR0cHM6
Ly9ibG9nLmdvdi5jb29raW5nL2FyY2hpdmVzL3Jlc2VhcmNoLW5pbmV0cmlwb2QteDM1NjgtdjQt
YW5kLWZsYXNoLmh0bWwKPiAKPiBTaWduZWQtb2ZmLWJ5OiBDb2lhIFByYW50IDxjb2lhcHJhbnRA
Z21haWwuY29tPgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1NjgtOXRyaXBvZC14MzU2OC12NC12aWRlby1kZW1vLmR0c28gYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC05dHJpcG9kLXgzNTY4LXY0LXZpZGVvLWRlbW8uZHRzbwo+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwLi5lN2ZhMWNhNDgKPiAtLS0gL2Rl
di9udWxsCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtOXRyaXBv
ZC14MzU2OC12NC12aWRlby1kZW1vLmR0c28KPiBAQCAtMCwwICsxLDE1NCBAQAo+ICsvLyBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb3ItbGF0ZXIgT1IgTUlUKQo+ICsKPiArLy8g
VGhpcyBpcyBhIHNhbXBsZSByZWZlcmVuY2UsIGR1ZSB0byBsYWNrIG9mIGhhcmR3YXJlIGNhbiBu
b3QgYmUgdGVzdGVkLCBhdCB5b3VyIG93biByaXNrCgphbmQgSSd2ZSBhbHNvIGRyb3BwZWQgdGhl
IDJuZCBvdmVybGF5IG5vdy4KUGxlYXNlIG9ubHkgZXZlciBzdWJtaXQgcGF0Y2hlcyBmb3Igc3R1
ZmYgeW91IGhhdmUgYWN0dWFsbHkgdGVzdGVkLgoKV2UgZG9uJ3QgcmVhbGx5IGFkZCBzdHVmZiB3
aXRoICJ1c2UgYXQgeW91ciBvd24gcmlzayIgY2F2ZWF0cyA7LSkKCgpIZWlrbwoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
