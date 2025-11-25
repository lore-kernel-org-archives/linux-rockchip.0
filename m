Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55DABD0E6FF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 15:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Cc:Subject:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+WuriCgziFSW2n/LG3GIdUqJGadlJT36+ZemB9AsC8=; b=4q6Y66ljufDCpz
	ti0y6kPALZ1+Oelh2sQf20CM7vLsOMiN3jx4Cc1JYHgd7JcbzAlP8MN6qf98b40EtKvZju6lmzHxA
	kV7cHDxYoJRhaR9LqpN9wJn1Cb6XfPHYE7ql4gnAxooZo9D7rgkC2cxdPZwQNPmUeNjPnMwhSMwFu
	TFUea177lHaBoD1N93rwfiU2WE7vlYTuOIygDoJLU/cKsVfIQDs4KjpuW7hggTY67t2awnsI8Cjn2
	Hjl/7We2zvLli1KTaZF4GWuTpjgXwdTRGN6VAiEpOIgMk/lq42DUHgyjoiJ7mP2qw8rY/55KJ6581
	X/5yV8fLTuCd1y+xn+SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNv8K-0000000DWTz-1ZNN;
	Tue, 25 Nov 2025 15:39:12 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNv8G-0000000DWSZ-3YsR
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Nov 2025 15:39:11 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 9D0BD4E418C2;
	Tue, 25 Nov 2025 15:39:06 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6C868606A1;
	Tue, 25 Nov 2025 15:39:06 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8395D102F0882;
	Tue, 25 Nov 2025 16:39:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764085145; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=OfcHT/mK9zrCHFG5SR4twzWED90UElK1Zz1lJ4jB21M=;
	b=MCc+hhdCUummg+ORkxsbfOLCaUWnZ+IKmgYF9CVQXRhM47JunkywIVzvC+WmPHBzjp0fiF
	Va+jLUlOrqKX8D/nKEg2U1V/6BRHfwWsSzb/YlQyIvpEavZPcjE2EWhIKa5OTwv0ZI9agE
	k0ezSJ+sH8TkXVzCHwI9rE1yTqsyYejtKNicD29M7xTTf4JXgNQRrpM+23HRHldMlbwiuS
	qOeVOSbg4dLRLEh2PTMgEX33jDMzeJdivV34C/G1G5094VHkI/Njg3ExDi15yO88W+7U1n
	WSzZQqJiWiOttT4RzeCu5naeGTm7Nt77uOrxMwqcLN2RrH5jZjCFEFoWZzg7rQ==
Mime-Version: 1.0
Date: Tue, 25 Nov 2025 16:39:01 +0100
Message-Id: <DEHVZPZVWVTR.314J3P86OLG6X@bootlin.com>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Subject: Re: [PATCH 2/2] phy: rockchip: inno-usb2: fix communication
 disruption in gadget mode
Cc: "Kever Yang" <kever.yang@rock-chips.com>, "Minas Harutyunyan"
 <Minas.Harutyunyan@synopsys.com>, "Alan Stern" <stern@rowland.harvard.edu>,
 "Louis Chauvet" <louis.chauvet@bootlin.com>, =?utf-8?q?Herv=C3=A9_Codina?=
 <herve.codina@bootlin.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>, <linux-phy@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-usb@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>, "Vinod Koul"
 <vkoul@kernel.org>, "Kishon Vijay Abraham I" <kishon@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, "William Wu" <wulf@rock-chips.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250722-rk3308-fix-usb-gadget-phy-disconnect-v1-0-239872f05f17@bootlin.com> <20250722-rk3308-fix-usb-gadget-phy-disconnect-v1-2-239872f05f17@bootlin.com>
In-Reply-To: <20250722-rk3308-fix-usb-gadget-phy-disconnect-v1-2-239872f05f17@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_073909_236509_A38FFDFF 
X-CRM114-Status: GOOD (  20.75  )
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

SGVsbG8gTHVjYSwKCk9uIFR1ZSBKdWwgMjIsIDIwMjUgYXQgMTA6NDMgQU0gQ0VTVCwgTHVjYSBD
ZXJlc29saSB3cm90ZToKPiBXaGVuIHRoZSBPVEcgVVNCIHBvcnQgaXMgdXNlZCB0byBwb3dlciB0
byBTb0MsIGNvbmZpZ3VyZWQgYXMgcGVyaXBoZXJhbCBhbmQKPiB1c2VkIGluIGdhZGdldCBtb2Rl
LCBjb21tdW5pY2F0aW9uIHN0b3BzIHdpdGhvdXQgbm90aWNlIGFib3V0IDYgc2Vjb25kcwo+IGFm
dGVyIHRoZSBnYWRnZXQgaXMgY29uZmlndXJlZCBhbmQgZW51bWVyYXRlZC4KPgo+IFRoZSBwcm9i
bGVtIHdhcyBvYnNlcnZlZCBvbiBhIFJhZHhhIFJvY2sgUGkgUyBib2FyZCwgd2hpY2ggY2FuIG9u
bHkgYmUKPiBwb3dlcmVkIGJ5IHRoZSBvbmx5IFVTQi1DIGNvbm5lY3Rvci4gVGhhdCBjb25uZWN0
b3IgaXMgdGhlIG9ubHkgb25lIHVzYWJsZQo+IGluIGdhZGdldCBtb2RlLiBUaGlzIGltcGxpZXMg
dGhlIFVTQiBjYWJsZSBpcyBjb25uZWN0ZWQgZnJvbSBiZWZvcmUgYm9vdAo+IGFuZCBuZXZlciBk
aXNjb25uZWN0cyB3aGlsZSB0aGUga2VybmVsIHJ1bnMuCj4KPiBUaGUgcmVsYXRlZCBjb2RlIGZs
b3cgaW4gdGhlIFBIWSBkcml2ZXIgY29kZSBjYW4gYmUgc3VtbWFyaXplZCBhczoKPgo+ICAqIFVE
QyBzdGFydCBjb2RlICh0cmlnZ2VyZWQgdmlhIGNvbmZpZ2ZzIGF0IGFueSB0aW1lIGFmdGVyIGJv
b3QpCj4gICAgLT4gcGh5X2luaXQKPiAgICAgICAgLT4gcm9ja2NoaXBfdXNiMnBoeV9pbml0Cj4g
ICAgICAgICAgICAtPiBzY2hlZHVsZV9kZWxheWVkX3dvcmsob3RnX3NtX3dvcmsgW0FdLCA2IHNl
YykKPiAgICAtPiBwaHlfcG93ZXJfb24KPiAgICAgICAgLT4gcm9ja2NoaXBfdXNiMnBoeV9wb3dl
cl9vbgo+ICAgICAgICAgICAgLT4gZW5hYmxlIGNsb2NrCj4gICAgICAgICAgICAtPiByb2NrY2hp
cF91c2IycGh5X3Jlc2V0CgpUaGUgYWJvdmUgY29kZSBmbG93IHN1bW1hcnkgd2FzIGltcG9ydGFu
dCBmb3IgW1BBVENIIDEvMl0gYnV0IGl0IGZlZWxzCmxpa2Ugbm90IGFzIGltcG9ydGFudCBmb3Ig
W1BBVENIIDIvMl0sIGNvdWxkIHlvdSBkcm9wIG9yIHN1bW1hcmlzZSBpdD8KVGhlIGtleSBwb2lu
dCBpcyB0aGF0IHRoZSBiZWxvdyBEQ0Qgc2VxdWVuY2UgaGFzIGludmFsaWQgYXNzdW1wdGlvbnMK
YW5kIGRvZXMgc2lkZSBlZmZlY3RzIHRoYXQgZG9uJ3QgZml0IGlmIFZCVVMgaXMgYWxyZWFkeSBw
cmVzZW50LiBJIGZlZWwKbGlrZSBpdCBkaXN0cmFjdGVkIG1lIGZyb20gdGhlIG1haW4gcG9pbnQg
dGhhdCBpcyBjaGdfZGV0Lm9wbW9kZQp3cml0ZXMuCgo+ICAqIE5vdyB0aGUgZ2FkZ2V0IGludGVy
ZmFjZSBpcyB1cCBhbmQgcnVubmluZy4KPgo+ICAqIDYgc2Vjb25kcyBsYXRlciBvdGdfc21fd29y
ayBzdGFydHMgW0FdCj4gICAgLT4gcm9ja2NoaXBfdXNiMnBoeV9vdGdfc21fd29yaygpOgo+ICAg
ICAgICBpZiAoQl9JRExFIHN0YXRlICYmIFZCVVMgcHJlc2VudCAmJiAuLi4pOgo+ICAgICAgICAg
ICAgc2NoZWR1bGVfZGVsYXllZF93b3JrKCZycG9ydC0+Y2hnX3dvcmsgW0JdLCAwKTsKPgo+ICAq
IGltbWVkaWF0ZWx5IHRoZSBjaGdfZGV0ZWN0X3dvcmsgc3RhcnRzIFtCXQo+ICAgIC0+IHJvY2tj
aGlwX2NoZ19kZXRlY3Rfd29yaygpOgo+ICAgICAgICBpZiBjaGdfc3RhdGUgaXMgVU5ERUZJTkVE
Ogo+ICAgICAgICAgICAgIHByb3BlcnR5X2VuYWJsZShiYXNlLCAmcnBoeS0+cGh5X2NmZy0+Y2hn
X2RldC5vcG1vZGUsIGZhbHNlKTsgW1ldCj4KPiAgKiByb2NrY2hpcF9jaGdfZGV0ZWN0X3dvcmso
KSBjaGFuZ2VzIHN0YXRlIGFuZCByZS10cmlnZ2VycyBpdHNlbGYgYSBmZXcKPiAgICB0aW1lcyB1
bnRpbCBpdCByZWFjaGVkIHRoZSBERVRFQ1RFRCBzdGF0ZToKPiAgICAtPiByb2NrY2hpcF9jaGdf
ZGV0ZWN0X3dvcmsoKToKPiAgICAgICAgaWYgY2hnX3N0YXRlIGlzIERFVEVDVEVEOgo+ICAgICAg
ICAgICAgIHByb3BlcnR5X2VuYWJsZShiYXNlLCAmcnBoeS0+cGh5X2NmZy0+Y2hnX2RldC5vcG1v
ZGUsIHRydWUpOyBbWl0KPgo+IEF0IFtZXSB0aGVyZSBpcyBubyBkaXNjb25uZWN0aW9uIGFuZCB0
aGUgVVNCIGRldmljZSBhcHBlYXJzIHN0aWxsIHByZXNlbnQKPiB0byB1c2Vyc3BhY2UsIGJ1dCBh
bGwgZXhpc3RpbmcgY29tbXVuaWNhdGlvbnMgc3RvcC4gRS5nLiB1c2luZyBhIENEQyBzZXJpYWwK
PiBnYWRnZXQsIHRoZSAvZGV2L3R0eSogZGV2aWNlcyBhcmUgc3RpbGwgcHJlc2VudCBvbiBib3Ro
IGhvc3QgYW5kIGRldmljZSwKPiBidXQgbm8gZGF0YSBpcyB0cmFuc2ZlcnJlZCBhbnltb3JlLiBU
aGUgbGF0ZXIgY2FsbCB3aXRoIGEgJ3RydWUnIGFyZ3VtZW50Cj4gYXQgW1pdIGRvZXMgbm90IHJl
c3RvcmUgaXQuCgpZb3UgbWVudGlvbiAidGhlcmUgaXMgbm8gZGlzY29ubmVjdGlvbiIgYnV0IHRo
YXQgc291bmRzIGlycmVsZXZhbnQgdG8KdGhpcyBwcmVjaXNlIGNvbW1pdC4gVGhlIGlzc3VlIGF0
IGhhbmQgaXMgYSBjb21tdW5pY2F0aW9uIGhhbHQuCgo+IER1ZSB0byB0aGUgbGFjayBvZiBkb2N1
bWVudGF0aW9uLCB3aGF0IGNoZ19kZXQub3Btb2RlIGRvZXMgZXhhY3RseSBpcyBub3QKPiBjbGVh
ciwgaG93ZXZlciBieSBjb2RlIGluc3BlY3Rpb24gaXQgc2VlbXMgcmVhc29uYWJsZSB0aGF0IGlz
IGRpc2FibGVzCj4gc29tZXRoaW5nIG5lZWRlZCB0byBrZWVwIHRoZSBjb21tdW5pY2F0aW9uIHdv
cmtpbmcsIGFuZCB0ZXN0aW5nIHByb3ZlcyB0aGF0Cj4gZGlzYWJsaW5nIHRoZXNlIGxpbmVzIGxl
ZnMgZ2FkZ2V0IG1vZGUga2VlcCB3b3JraW5nLiBTbyBwcmV2ZW50IGNoYW5nZXMgdG8KPiBjaGdf
ZGV0Lm9wbW9kZSB3aGVuIHRoZXJlIGlzIGEgY2FibGUgY29ubmVjdGVkIChWQlVTIHByZXNlbnQp
LgoKImxlZnMiIC0+ICJsZXQncyIsIEkgdGhpbmsKCldpdGggdGhvc2Ugbml0cwoKUmV2aWV3ZWQt
Ynk6IFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+CgpUaGFua3MsCgotLQpU
aMOpbyBMZWJydW4sIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmlu
ZwpodHRwczovL2Jvb3RsaW4uY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
