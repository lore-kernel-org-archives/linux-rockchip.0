Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 930D1C3ABBC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 21:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojan0pQc6HPwZbhzqgdZ36iE3c3ifd/XHokaADxxpkE=; b=L3/AnQQ5K8qoVH
	fq/TqlygN/3GOEO2yjgiRChuCcaJBuYrlyooMAZXBFPJg9B3Ca1s5Ewg6yhilTLwvXDyb6y9lxJip
	RmL6j766tsfljDyNmpqTgAQNNh5yoEzS0WE7eWoPCT0sJTfJ84SJaD8xTG7RVlwO8D8Afiwv+6u+w
	BzuPFshUhyvZyP8vBR/ELBpNnl2fgEL7F/jR20J8034qUEcq4DFH/Sl+UwHWk1f5e7AdEmd8XUeX4
	KQfMQltGO8bdH35yYEXvZrzI/1W4WPQ/nPZAutuJcbZtqzhFiq0T5KPr5qfz7ozqK3BUwPOy0TSwX
	X90xIz+2yB5hRAS695hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDVPU-00000004ypG-2oVt;
	Fri, 09 May 2025 21:37:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDVPS-00000004yot-1iZq;
	Fri, 09 May 2025 21:37:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=QxQXwJrG1MIxQsKzgyjzbTV53XVCvhmpZmkrCd8dgd8=; b=HAZ1E+0nJ1o48jCxodnUtC2uBj
	pKb1E7NXo7Tigo3/UD6LcWEs3SG+g3KKVWYkQv/0m2jux8iA7dnLRNYa8SjB3A7BTeffTsXNPwA8j
	GHRTtnP4IJtVt1OZlUVz6gfTb1gFswlhDAnASTTqI86JfEVeNb/YMwhB3o3vOcd/7Cn09OM2LHysZ
	XqJL+lQWMwdnPv0pYjpsHZlZIk/mO1ZSYCrqZEh1+5Tput4pNmFIbQJWiSDM5r0fwMD7M5Tq1vKfg
	dVCNDKuHKMeG8D6uXpHOXHJP7iqUsRkcFwdpwc0hW/oJt3yTBiwW8DCm63ftSU9cKct1OJSE7ogkp
	2S86RGfg==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uDVPN-00063i-Ju; Fri, 09 May 2025 23:37:29 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: arm <arm@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Yao Zi <ziyao@disroot.org>
Subject: Re: [GIT PULL] Rockchip dts64 changes for 6.16 #1
Date: Fri, 09 May 2025 23:37:28 +0200
Message-ID: <2857184.BEx9A2HvPv@diego>
In-Reply-To: <c142bdf4-3910-48bb-ba5e-8accbdb32a00@app.fastmail.com>
References: <2307187.iZASKD2KPV@diego>
 <c142bdf4-3910-48bb-ba5e-8accbdb32a00@app.fastmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_143734_448494_8D6F4FBD 
X-CRM114-Status: GOOD (  21.47  )
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

SGkgQXJuZCwKCkFtIEZyZWl0YWcsIDkuIE1haSAyMDI1LCAyMzowMzo1NCBNaXR0ZWxldXJvcMOk
aXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEFybmQgQmVyZ21hbm46Cj4gT24gVGh1LCBNYXkgOCwg
MjAyNSwgYXQgMDA6MDQsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+ID4gSGkgc29jIG1haW50YWlu
ZXJzLAo+ID4KPiA+IHBsZWFzZSBmaW5kIGJlbG93IGFuZCBpbiBhIHN1YnNlcXVlbnQgcHVsbC1y
ZXF1ZXN0cwo+ID4gUm9ja2NoaXAgY2hhbmdlcyBmb3IgZm9yIDYuMTYgLgo+ID4KPiA+IEV2ZW4g
c29tZSBhcm0zMiBib2FyZHMgZ290IHNvbWUgbG92ZSAoaW4gdGhlIG5leHQgUFIpCj4gCj4gT25l
IHNtYWxsIGlzc3VlIHN0dWNrIG91dCBoZXJlOgo+IAo+IAo+ID4gWWFvIFppICgyKToKPiA+ICAg
ICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgSTJDIGNvbnRyb2xsZXJzIGZvciBSSzM1MjgK
PiAKPiBUaGlzIGNyZWF0ZXMgYSBsb3Qgb2YgbmV3IGFsaWFzZXMgaW4gdGhlIGR0c2kgZmlsZToK
PiAKPiBpbmRleCA4MjZmOWJlMGJlMTkuLjJjOTc4MDA2OWFmOSAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1MjguZHRzaQo+IEBAIC0yNCw2ICsyNCwxNCBAQCBhbGlhc2Vz
IHsKPiAgICAgICAgICAgICAgICAgZ3BpbzIgPSAmZ3BpbzI7Cj4gICAgICAgICAgICAgICAgIGdw
aW8zID0gJmdwaW8zOwo+ICAgICAgICAgICAgICAgICBncGlvNCA9ICZncGlvNDsKPiArICAgICAg
ICAgICAgICAgaTJjMCA9ICZpMmMwOwo+ICsgICAgICAgICAgICAgICBpMmMxID0gJmkyYzE7Cj4g
KyAgICAgICAgICAgICAgIGkyYzIgPSAmaTJjMjsKPiArICAgICAgICAgICAgICAgaTJjMyA9ICZp
MmMzOwo+ICsgICAgICAgICAgICAgICBpMmM0ID0gJmkyYzQ7Cj4gKyAgICAgICAgICAgICAgIGky
YzUgPSAmaTJjNTsKPiArICAgICAgICAgICAgICAgaTJjNiA9ICZpMmM2Owo+ICsgICAgICAgICAg
ICAgICBpMmM3ID0gJmkyYzc7Cj4gICAgICAgICAgICAgICAgIHNlcmlhbDAgPSAmdWFydDA7Cj4g
ICAgICAgICAgICAgICAgIHNlcmlhbDEgPSAmdWFydDE7Cj4gCj4gYnV0IHRoZSBjb3JyZXNwb25k
aW5nIG5vZGVzIGFyZSBsZWZ0IGF0IGRpc2FibGVkLiBJIHNlZQo+IHRoYXQgdGhlIHNhbWUgbWlz
dGFrZSBpcyBwcmVzZW50IGluIHRoZSB1YXJ0IG5vZGVzLgo+IAo+IFBsZWFzZSBzZW5kIGEgZml4
dXAgdG8gcmVtb3ZlIHRoZXNlIGZyb20gdGhlIC5kdHNpIGZpbGUKPiBoZXJlIGFuZCB0aGUgc2lt
aWxhciBjaGlwcywgdW5sZXNzIHlvdSBhcmUgc3VyZSB0aGF0IGV2ZXJ5Cj4gYm9hcmQgd2lsbCBo
YXZlIHRoZW0gZW5hYmxlZCAobGlrZSBlLmcuIHRoZSBncGlvIG5vZGVzKS4KPiAKPiBUaGUgYWxp
YXNlcyBhcmUgbm90IG1lYW50IHRvIHJlZmVyIHRvIHNvYy1pbnRlcm5hbCBuYW1lcywKPiBidXQg
dGhlIGlkZW50aWZpZXJzIG9uIGJvYXJkLgoKRm9yIHRoZSB1YXJ0cyBhbmQgaTJjIChhbmQgc3Bp
KSwgYWxsIHRoZSBpZGVudGlmaWVycyBhcmUgYWx3YXlzIG51bWVyaWNhbApib3RoIGluIHRoZSBT
b0MgZG9jdW1lbnRhdGlvbiBhcyB3ZWxsIGFzIG9uIHRoZSBib2FyZHMgYW5kIGJvYXJkCnNjaGVt
YXRpY3MuCgpJZiB5b3UgbG9vayBpbiBhIHJhbmRvbSBSb2NrY2hpcCBzY2hlbWF0aWMgZmlsZSwg
dGhlIGxpbmVzIGZvciB0aGUgaTJjMApjb250cm9sbGVyIHdpbGwgYmUgY2FsbGVkIGkyYzBfc2Ns
X2ZvbywgaTJjMF9zZGFfZm9vLCBldGMuClNpbWlsYXIgdWFydDBfdHgsIHVhcnQwX3J4LCBldGMu
CgpTbyB3aGlsZSBJIGZ1bGx5IHVuZGVyc3RhbmQgdGhhdCBtbWMwIC0+IGVtbWMsIG1tYzEgLT4g
c2QtY2FyZCBhcmUgdmVyeQptdWNoIGJvYXJkIHNwZWNpZmljLCBzb21laG93IHJlcGVhdGluZyB0
aGUgdmVyeSBzYW1lIGkyYyBhbGlhc2VzIGZvciBldmVyeQpib2FyZCBmZWVscyBzdHJhbmdlLiBU
aGUgN3RoIGkyYyBjb250cm9sbGVyIG9uIHRoZSBzb2MsIHdpbGwgbmV2ZXIgYmUKY2FsbGVkIGFu
eXRoaW5nIGVsc2UgdGhhbiBpMmM3IGFmdGVyYWxsLgoKCkJ1dCBvaywgaWYgeW91IGZlZWwgc3Ry
b25nbHkgYWJvdXQgdGhhdCwgSSdsbCBtb3ZlIHRoZSBpMmMgYW5kIHVhcnQgYWxpYXNlcy4KCgpI
ZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
