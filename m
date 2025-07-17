Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88226C83F34
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jul 2025 07:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMoCP24WWnmNvCSpUqTYQ7MKzOiA2zWkh30zoLw/jv8=; b=NAcWe5x6SQGAVo
	lNTkd9yjyjs+Pq9Tag26QRTPWCpJK2dI5x/gjKEEYQR2eCQpDzVy7GzrgAcdntRIIsPeORN6P19eA
	icMpafrGmHFIs2ZdRVJCiQKbFzkLrzaMbT2xKfbksZSEURQs84FXKKBOgP/KUoZWujQ/JdxlbVJ9B
	eOs5nxhJe064EsXpwUhBk+yKzkK5QdIjfkCyW9VpkB6no7A2hbaGkSGG8bQDhtYM40S1k4+eLioTZ
	AC+Vzgi9wex81wmU0kA2F+RB1AZOhhvLI3ETkXSqq1Ec7xk9wdOio3Ud8F7t2Y4jMpPjzrIFw5IU6
	Fgkh0tifMueCj4ra25Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucJDW-00000009Ttw-0ij4;
	Thu, 17 Jul 2025 07:39:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucIvw-00000009PyP-13WM;
	Thu, 17 Jul 2025 07:21:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=CCCh+o003YcA0EOQv+9QFXT7/N6o1tA3bae7OHo+cmQ=; b=Sb4TTbxyxiDgQuJhQRwTlezXuZ
	ndsCkb3KK8RpL9i3sauoWUWQsfxM9CYNFir1F2iRqOw9WscSAklzMOb67ZnciZCj3qrKMzv7RYyfM
	RXd6MMO7+BwTz/Yx5Sq8ZgNRSe2Z4PG4zXZfURqbenPgP8DXIArpS+2lrNChxBQUpO11ZQL9Cd9S4
	jIU4DvqK4N09T5yDIH5qRAnVUH9GegzyclpmggSHhHiGeYHyJBzHvnB4nYeRvhGkyO8TUul2riH0E
	SLtod0/X0loDmyaaP8tUPge8CvnWFrUrFrk02eB2GejkiKWyuKX+aHd3vgJ9XQMPAR71EnyFY6CAk
	8FfmpiAg==;
Received: from i53875bf7.versanet.de ([83.135.91.247] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ucIvf-00010Z-Vn; Thu, 17 Jul 2025 09:21:20 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Alexey Charkov <alchark@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Ye Zhang <ye.zhang@rock-chips.com>
Subject: Re: [PATCH v6 0/7] RK3576 thermal sensor support,
 including OTP trim adjustments
Date: Thu, 17 Jul 2025 09:21:22 +0200
Message-ID: <4178173.5fSG56mABF@diego>
In-Reply-To: <aHgHxR1_Gzu8Dwbm@mai.linaro.org>
References: <20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com>
 <aHgHxR1_Gzu8Dwbm@mai.linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_002136_309278_276BF28B 
X-CRM114-Status: GOOD (  31.12  )
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

SGkgRGFuaWVsLAoKQW0gTWl0dHdvY2gsIDE2LiBKdWxpIDIwMjUsIDIyOjEyOjUzIE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRGFuaWVsIExlemNhbm86Cj4gT24gVHVlLCBK
dW4gMTAsIDIwMjUgYXQgMDI6MzI6MzZQTSArMDIwMCwgTmljb2xhcyBGcmF0dGFyb2xpIHdyb3Rl
Ogo+ID4gVGhpcyBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgUkszNTc2J3MgdGhlcm1hbCBz
ZW5zb3IuCj4gPiAKPiA+IFRoZSBzZW5zb3IgaGFzIHNpeCBjaGFubmVscywgcHJvdmlkaW5nIG1l
YXN1cmVtZW50cyBmb3IgdGhlIHBhY2thZ2UKPiA+IHRlbXBlcmF0dXJlLCB0aGUgdGVtcGVyYXR1
cmUgb2YgdGhlIGJpZyBjb3JlcywgdGhlIHRlbXBlcmF0dXJlIG9mIHRoZQo+ID4gbGl0dGxlIGNv
cmVzLCBhbmQgdGhlIEdQVSwgTlBVIGFuZCBERFIgY29udHJvbGxlci4KPiA+IAo+ID4gSW4gYWRk
aXRpb24gdG8gYWRkaW5nIHN1cHBvcnQgZm9yIHRoZSBzZW5zb3IgaXRzZWxmLCB0aGUgc2VyaWVz
IGFsc28KPiA+IGFkZHMgc3VwcG9ydCBmb3IgcmVhZGluZyB0aGVybWFsIHRyaW0gdmFsdWVzIG91
dCBvZiB0aGUgZGV2aWNlIHRyZWUuCj4gPiBNb3N0IG9mIHRoaXMgZnVuY3Rpb25hbGl0eSBpcyBu
b3Qgc3BlY2lmaWMgdG8gdGhpcyBTb0MsIGJ1dCBuZWVkZWQgdG8gYmUKPiA+IGltcGxlbWVudGVk
IHRvIG1ha2UgdGhlIHNlbnNvcnMgYSBsaXR0bGUgbW9yZSBhY2N1cmF0ZSBpbiBvcmRlciB0bwo+
ID4gaW52ZXN0aWdhdGUgd2hldGhlciB0aGUgVFJNIHN3YXBwZWQgR1BVIGFuZCBERFIgb3IgZG93
bnN0cmVhbSBzd2FwcGVkCj4gPiBHUFUgYW5kIEREUiBpbiB0ZXJtcyBvZiBjaGFubmVsIElEcywg
YXMgZG93bnN0cmVhbSBkaXNhZ3JlZXMgd2l0aCB3aGF0J3MKPiA+IGluIHRoZSBUUk0sIGFuZCB0
aGUgZGlmZmVyZW5jZSBpcyBzbyBzbWFsbCBhbmQgaGFyZCB0byBwaW4gZG93biB3aXRoCj4gPiB0
ZXN0aW5nIHRoYXQgdGhlIGNvbnN0YW50IG9mZnNldCBiZXR3ZWVuIHRoZSB0d28gc2Vuc29ycyB3
YXMgYSBsaXR0bGUKPiA+IGFubm95aW5nIGZvciBtZSB0byBkZWFsIHdpdGguCj4gPiAKPiA+IEkg
ZW5kZWQgdXAgZ29pbmcgd2l0aCB0aGUgY2hhbm5lbCBhc3NpZ25tZW50IHRoZSBUUk0gbGlzdHMs
IGFzIEkgc2VlIHRoZQo+ID4gRERSIHNlbnNvciBnZXQgYSBsYXJnZXIgZGV2aWF0aW9uIGZyb20g
YmFzZWxpbmUgdGVtcGVyYXR1cmVzIGR1cmluZyBtZW1vcnkKPiA+IHN0cmVzcyB0ZXN0cyAoc3Ry
ZXNzLW5nIC0tbWVtcmF0ZSA4IC0tbWVtcmF0ZS1mbHVzaCkgdGhhbiB3aGF0IHRoZSBUUk0KPiA+
IGNsYWltcyBpcyB0aGUgR1BVIHNlbnNvciBidXQgZG93bnN0cmVhbSBjbGFpbXMgaXMgdGhlIERE
UiBzZW5zb3IuIElucHV0Cj4gPiBmcm9tIFJvY2tjaGlwIGVuZ2luZWVycyBvbiB3aGV0aGVyIHRo
ZSBUUk0gaXMgcmlnaHQgb3Igd3Jvbmcgd2VsY29tZS4KPiA+IAo+ID4gVGhlIHRyaW0gZnVuY3Rp
b25hbGl0eSBpcyBvbmx5IHVzZWQgYnkgUkszNTc2IGF0IHRoZSBtb21lbnQuIENvZGUgdG8KPiA+
IGhhbmRsZSBvdGhlciBTb0NzIGNhbiByZWx5IG9uIHRoZSBzaGFyZWQgb3RwIHJlYWRpbmcgYW5k
IHBlcmhhcHMgZXZlbgo+ID4gdGhlIElQIHJldmlzaW9uIHNwZWNpZmljIGZ1bmN0aW9uLCBidXQg
bWF5IG5lZWQgaXRzIG93biBJUCByZXZpc2lvbgo+ID4gc3BlY2lmaWMgZnVuY3Rpb25zIGFkZGVk
IGFzIHdlbGwuIEFic2VudCB0cmltIGZ1bmN0aW9uYWxpdHkgaW4gb3RoZXIKPiA+IFNvQ3Mgc2hv
dWxkIG5vdCBpbnRlcmZlcmUgd2l0aCB0aGUgbW9kaWZpZWQgY29tbW9uIGNvZGUgcGF0aHMuCj4g
PiAKPiA+IFBhdGNoIDEgaXMgYSBjbGVhbnVwIHBhdGNoIGZvciB0aGUgcm9ja2NoaXAgdGhlcm1h
bCBkcml2ZXIsIHdoZXJlIGEKPiA+IGZ1bmN0aW9uIHdhcyBjb25mdXNpbmdseSBuYW1lZC4KPiA+
IAo+ID4gUGF0Y2ggMiBhZGRzIHRoZSBSSzM1NzYgY29tcGF0aWJsZSB0byB0aGUgYmluZGluZ3Mu
Cj4gPiAKPiA+IFBhdGNoIDMgYWRkcyBzdXBwb3J0IGZvciB0aGlzIFNvQydzIHRoZXJtYWwgY2hp
cCB0byB0aGUgZHJpdmVyLiBJdCBpcyBhCj4gPiBwb3J0IG9mIHRoZSBkb3duc3RyZWFtIGNvbW1p
dCBhZGRpbmcgc3VwcG9ydCBmb3IgdGhpcy4KPiA+IAo+ID4gUGF0Y2ggNCBhZGRzIHNvbWUgZG9j
dW1lbnRhdGlvbiBmb3IgaW1taW5lbnQgYWRkaXRpb25hbCBmdW5jdGlvbmFsaXR5IHRvCj4gPiB0
aGUgYmluZGluZywgbmFtZWx5IHRoZSB0cmltIHZhbHVlIHN0dWZmLgo+ID4gCj4gPiBQYXRjaCA1
IGFkZHMgc3VwcG9ydCBmb3IgcmVhZGluZyB0aGVzZSBPVFAgdmFsdWVzIGluIHRoZQo+ID4gcm9j
a2NoaXBfdGhlcm1hbCBkcml2ZXIsIGFuZCBtYWtlcyB1c2Ugb2YgdGhlbS4gVGhlIGNvZGUgaXMg
bW9zdGx5IG5ldwo+ID4gdXBzdHJlYW0gY29kZSB3cml0dGVuIGJ5IG1lLCB1c2luZyBkb3duc3Ry
ZWFtIGNvZGUgYXMgcmVmZXJlbmNlLgo+IAo+IFJlcGxhY2VkIHByZXZpb3VzbHkgYXBwbGllZCB2
ZXJzaW9uIFY1IHdpdGggdGhpcyBWNiBwYXRjaGVzIDEtNQoKYXJlIHRoZXNlIGNvbW1pdHMgYXZh
aWxhYmxlIHNvbWV3aGVyZT8KCkJlY2F1c2UgZ2l0Lmtlcm5lbC5vcmcgcmVwb3J0cyB0aGF0CiAg
aHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdGhlcm1hbC9s
aW51eC5naXQKaGFzIG5vdCBzZWVuIGFjdGl2aXR5IGluIGEgd2hpbGU/CgpUaGFua3MKSGVpa28K
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
