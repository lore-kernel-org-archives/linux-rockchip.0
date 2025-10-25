Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 724E8CCD1BF
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Oct 2025 21:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wNyotUJqjBxiq+TQPAquAiT7vORhBIBsWr4p7k9jmkI=; b=xuE8HM6kcWrwD/
	CtPyCROxoda8qr1n7eE+CbwsMiz91ifFJChH5F5ZHwBgBn4cJriYFF8ExXIh0XmARMDk+qC0d4OeH
	6clP4RH/qG2CIJjTrc3S20rsxqHolN6+++IN8tR5/prUIQ0YxyUe7iYqwHKi4aYRZbKQSIBqoW008
	IJSLT9VJbedIFrrahim0Bk6S1W545rhXP66gE6jN7rHvllyjlnq7XsXLPpZw23z5yB5V+6r+lAC/n
	/TTm92l6RWskyYmwk7xcb3O404ChAkOZXTasjN+l8HIOFMIHLr6NGw7hUdV6QUmfrH5gdYizxJOu0
	oNLuILVeGuXaG9IOfTAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vClQ8-0000000BktW-1Mab;
	Sat, 25 Oct 2025 21:03:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vClQ5-0000000Bksq-1ass;
	Sat, 25 Oct 2025 21:03:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=UPmSx/rC/bLVWOw7yLLlRYHnQQ8/QE5D94ipJ1ensxQ=; b=YEASFOKREVuSgjHgpy0Y2dRBS3
	s82bVK4joK0JDK3UxqW/p4Y+wOnrE1Z/gZ1xovq/jEE/iWp2erD6477NYCnkHkJhntAkS7Xt/sWMk
	eqxQiHLMv5qgMYH3W+UKGZo9GMivQN0gpIxjon1UaOBTeHvm0QeoPdAbfILHltsECucUdEzwREHmg
	j8wL8BOvlHlTE8ksd5mOq1Wej4mYpIPWPCaeVhwgjWdwSx2nGgrJKXr82Txtqu955ouA+BaqOcdcf
	ZsCwQgQqzoBHmD2rGpH8r/7GmVwM6Q+SssAZ6LxkeYciepqmsKAMgMjs0a0EiDppethbe3IHQ/XSC
	MKArByuA==;
Received: from i53875aba.versanet.de ([83.135.90.186] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vClPs-0005MZ-EF; Sat, 25 Oct 2025 23:03:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>,
 Jonas Karlman <jonas@kwiboo.se>, Coia Prant <coiaprant@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Coia Prant <coiaprant@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add devicetree for the X3568 v4
Date: Sat, 25 Oct 2025 23:03:11 +0200
Message-ID: <2940731.88bMQJbFj6@phil>
In-Reply-To: <20251025203711.3859240-1-coiaprant@gmail.com>
References: <20251025203711.3859240-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251025_140325_444998_DB24F0C7 
X-CRM114-Status: GOOD (  16.62  )
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

SGksCgpnZW5lcmFsIGNvbW1lbnRzLCBJIGhhdmVuJ3QgZGlzZWN0ZWQgdGhlIGRldmljZXRyZWVz
IHlldC4KCgpBbSBTYW1zdGFnLCAyNS4gT2t0b2JlciAyMDI1LCAyMjozNzoxMSBNaXR0ZWxldXJv
cMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIENvaWEgUHJhbnQ6CgpQbGVhc2UgYWxzbyBwcm92
aWRlIHNvbWUgZGVzY3JpcHRpb24gd2hhdCB0eXBlIG9mIGJvYXJkIHRoaXMgaXMsCm5vdCBqdXN0
IGEgbGlzdCBvZiBzcGVjcwoKPiBTcGVjaWZpY2F0aW9uOgo+IC0gU29DOiBSb2NrQ2hpcCBSSzM1
NjggQVJNNjQgKDQgY29yZXMpCj4gLSBlTU1DOiAxNi0xMjggR0IKPiAtIFJBTTogMi04IEdCCj4g
LSBQb3dlcjogREMgMTJWIDJBCj4gLSBFdGhlcm5ldDogMnggWVQ4NTIxU0MgUkdNSUkgKDEwLzEw
MC8xMDAwIE1icHMpCj4gLSBXaXJlbGVzcyByYWRpbzogODAyLjExYi9nL24vYWMvYXggZHVhbC1i
YW5kCj4gLSBMRUQ6Cj4gICBQb3dlcjogQWx3YXlzT24KPiAgIFVzZXI6IEdQSU8KPiAtIEJ1dHRv
bjoKPiAgIFZPTCs6IFNBUkFEQy8wIDwzNWsgwrVWPgo+ICAgVk9MLTogU0FSQURDLzAgPDQ1MGsg
wrVWPgo+ICAgUG93ZXIvUmVzZXQ6IFBNSUMgUks4MDkKPiAtIENBTgo+ICAgQ0FOLzE6IDQtcGlu
IChQSCAyLjApCj4gLSBQV00KPiAgIFBXTS80OiBCYWNrbGlnaHQgRFNJLzAgRFNJLzEKPiAgIFBX
TS83OiBJUiBSZWNlaXZlciBbbWF5IG5vdCBpbnN0YWxsXQo+IC0gVUFSVDoKPiAgIFVBUlQvMjog
RGVidWcgVFRMIC0gMTUwMDAwMCA4TjEgKDEuMjVtbSkKPiAgIFVBUlQvMzogVFRMIChQSCAyLjAp
Cj4gICBVQVJULzQ6IFRUTCAoUEggMi4wKQo+ICAgVUFSVC84OiBBUDYyNzVTIEJsdWV0b290aAo+
ICAgVUFSVC85OiBUVEwgKFBIIDIuMCkKPiAtIEkyQzoKPiAgIEkyQy8wOiBQTUlDIFJLODA5Cj4g
ICBJMkMvMTogVG91Y2hzY3JlZW4gRFNJLzAgRFNJLzEKPiAgIEkyQy80OiBDYW1lcmEKPiAgIEky
Qy81OiBSVENANTEgUENGODU2Mwo+IC0gSTJTOgo+ICAgSTJTLzA6IG1pbmlIRE1JIFNvdW5kCj4g
ICBJMlMvMTogUks4MDkgQXVkaW8gQ29kZWMKPiAgIEkyUy8zOiBBUDYyNzVTIEJsdWV0b290aCBT
b3VuZAo+IC0gU0RNTUM6Cj4gICBTRE1NQy8wOiBtaWNyb1NEIChURikgc2xvdAo+ICAgU0RNTUMv
MjogQVA2Mjc1UyBTRElPIFdpRmkgY2FyZAo+IC0gQ2FtZXJhOiAxeCBDU0kKPiAtIFZpZGVvOiBt
aW5pSERNSSAvIERTSTAgKE1JUEkvTFZEUykgLyBEU0kxIChNSVBJL0VEUCkKPiAtIEF1ZGlvOiBt
aW5pSERNSSAvIE1JQyBvbi1ib2FyZCAvIFNwZWFrZXIgLyBTUERJRiAvIDMuNW1tIEhlYWRwaG9u
ZXMgLyBBUDYyNzVTIEJsdWV0b290aAo+IC0gVVNCOgo+ICAgVVNCIDIuMCBIT1NUIHgyCj4gICBV
U0IgMi4wIEhPU1QgeDMgKDQtcGluKQo+ICAgVVNCIDIuMCBPVEcgeDEgKHNoYXJlZCB3aXRoIFVT
QiAzLjAgT1RHL0hPU1QpIFtzbG90IG1heSBub3QgaW5zdGFsbF0KPiAgIFVTQiAzLjAgSE9TVCB4
MQo+ICAgVVNCIDMuMCBPVEcvSE9TVCB4MQo+IC0gU0FUQTogMXggU0FUQSAzLjAgd2l0aCBQb3dl
ci80LXBpbiBbc2xvdCBtYXkgbm90IGluc3RhbGxdCj4gLSBQQ0llOiAxeCBQQ0llIDMuMCB4MiAo
eDQgY29ubmVjdGVyKSBbY2xvY2svc2xvdCBtYXkgbm90IGluc3RhbGxdCj4gCj4gTGluazoKPiAt
IGh0dHBzOi8vYXBwbGV0c2FwaS41MnNvbHV0aW9uLmNvbS9tZWRpYS9YMzU2OFY0JUU1JUJDJTgw
JUU1JThGJTkxJUU2JTlEJUJGJUU3JUExJUFDJUU0JUJCJUI2JUU2JTg5JThCJUU1JTg2JThDLnBk
Zgo+IC0gaHR0cHM6Ly9ibG9nLmdvdi5jb29raW5nL2FyY2hpdmVzL3Jlc2VhcmNoLW5pbmV0cmlw
b2QteDM1NjgtdjQtYW5kLWZsYXNoLmh0bWwKCjJuZCBsaW5rIGVuZHMgaW4gYSA0MDQgZXJyb3Is
IHBhZ2Ugbm90IGZvdW5kCgoKPiBTaWduZWQtb2ZmLWJ5OiBDb2lhIFByYW50IDxjb2lhcHJhbnRA
Z21haWwuY29tPgo+IFRlc3RlZC1ieTogQ29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4K
CgpXaGVuIHlvdSBzdWJtaXQgYSBwYXRjaCwgd2UgZXhwZWN0IHlvdSB0byBoYXZlIHRlc3RlZCBp
dCwgc28gdGVyZQppcyBubyBuZWVkIHRvIGhhdmUgYSBzZXBhcmF0ZSB0ZXN0ZWQtYnkgbGluZSA6
LSkgLgoKCj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgICAg
ICAgICB8ICAxMSArCj4gIC4uLi9yb2NrY2hpcC9yazM1NjgteDM1NjgtY2FtZXJhLWRlbW8uZHRz
byAgICB8ICA4MiArKwo+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXgzNTY4LXY0LmR0
cyAgICAgfCA4ODQgKysrKysrKysrKysrKysrKysrCj4gIC4uLi9kdHMvcm9ja2NoaXAvcmszNTY4
LXgzNTY4LXZpZGVvLWRlbW8uZHRzbyB8IDE0MSArKysKCnBsZWFzZSBuYW1lIHlvdXIgYm9hcmRz
IGluY2x1ZGluZyB0aGUgbmluZXRyZWUgbmFtZSwgYmVjYXVzZSB4MzU2OCBpcyB3YXkKdG9vIGdl
bmVyaWMsIHNvCnJrMzU2OC1uaW5ldHJlZS14MzU2OCAuLi4uLgoKQWRkaXRpb25hbGx5LCBmcm9t
IHRoYXQgUERGIGFib3ZlLCBpdCBzZWVtcyB0aGlzIGlzIGEgc3lzdGVtLW9uLW1vZHVsZT8KWDM1
NjhDVjIgKyBiYXNlYm9hcmQ/IElmIHNvLCBwbGVhc2Ugc3BsaXQgdGhpcyBpbnRvIGEgZHRzaSAr
IGR0cy4KU2VlIGFsbCB0aGUgb3RoZXIgc3lzdGVtLW9uLW1vZHVsZXMgZm9yIHJlZmVyZW5jZS4K
CkFkZGl0aW9uYWxseSwgeW91J2xsIG5lZWQgdG8gaGF2ZSBhIDJuZCBwYXRjaCB0byBhZGQgdGhl
IGJvYXJkIHRvCkRvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAu
eWFtbAoKQW5kIGFsc28gcG9zc2lseSBhIDNyZCBwYXRjaCB0byBhZGQgbmluZXRyZWUgdG8KRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sCgoKSGVp
a28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
