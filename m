Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76803D0E6FB
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 15:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUqxCmAy2bBdLOHcqGo1MKU39V92v5pEBdpqPjz4TV8=; b=vFe0FaaKx6VwHk
	eW+AcNDZ8SftqECn5x3va8ZpswZIXQSy/OurlyUSL/2UGe61IOekU7xT9Y4IobSay55lXLhEmlKdr
	vJR2+XvWrzEyENIee/nRo8xLvFink312g8Qmg3YZyJ7GGx8l0DZh70p3ezrxFMxehnPYAvpLLDy/L
	f9PK2VXBKkyps2V15L0ECD6YZaqQwRlMGWoR3YjbxSEYnVnlWpjwsqXnTzg42l0kic0bpxwZvHBkN
	TNi94CkPyQSpA1atp470QAfAC/ItNllqnls9Is1sAcpgZw8Y5eoF4QXJ6lK66IpiMpFxk59mlUx8f
	v2jSjl1P0JgA/bFduO3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNuxn-0000000DVhH-0g3U;
	Tue, 25 Nov 2025 15:28:19 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNuxj-0000000DVfT-0QYU;
	Tue, 25 Nov 2025 15:28:17 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 865891A1D45;
	Tue, 25 Nov 2025 15:28:10 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 59A4C606A1;
	Tue, 25 Nov 2025 15:28:10 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D30E1102F07FE;
	Tue, 25 Nov 2025 16:28:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764084489; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=HgxEQ0f8MNjzesLOK80vetYWR3YMKzv8RvyUGva3XLk=;
	b=K/Fp02xZ1WhDXcE/vwFa8uDqUxs4cBpya3Uwrcrop9bEq7pfenZOXIQyIXmx2DHkO7Vgru
	QqSq4h0+JFNQ4AA67Sn0cYZHfB1XsjSR1ooUUoj8w1JL9dwGdr5FK/bNugHt3wAJe41uYr
	uAX2fsP/UxHVQy6Cp+qpfCDuelKkDjEso0lEUbKRDvXz3BX5Oo6QQjoSWTQ/RBxJyF4tNg
	aiVyQt7GC6EQJPS67xcwL2bBmQY3GHV8dd9afsLEylbbo+dcisEEf93H8jk/AzarBLOuX9
	3d+Hht7rhKBAo9weo3A/zJ1cvtKmN9Mkk5o3USEarkGCBY+ykGchBqPb5EvKaw==
Mime-Version: 1.0
Date: Tue, 25 Nov 2025 16:28:04 +0100
Message-Id: <DEHVRC8CY12S.3LSC6UVSMU0C1@bootlin.com>
Subject: Re: [PATCH 1/2] phy: rockchip: inno-usb2: fix disconnection in
 gadget mode
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
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250722-rk3308-fix-usb-gadget-phy-disconnect-v1-0-239872f05f17@bootlin.com> <20250722-rk3308-fix-usb-gadget-phy-disconnect-v1-1-239872f05f17@bootlin.com>
In-Reply-To: <20250722-rk3308-fix-usb-gadget-phy-disconnect-v1-1-239872f05f17@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_072815_278530_F52EF493 
X-CRM114-Status: GOOD (  19.72  )
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
ZXJlc29saSB3cm90ZToKPiBGcm9tOiBMb3VpcyBDaGF1dmV0IDxsb3Vpcy5jaGF1dmV0QGJvb3Rs
aW4uY29tPgo+Cj4gV2hlbiB0aGUgT1RHIFVTQiBwb3J0IGlzIHVzZWQgdG8gcG93ZXIgdG8gU29D
LCBjb25maWd1cmVkIGFzIHBlcmlwaGVyYWwgYW5kCgp0eXBvOiBpcyB1c2VkIHRvIHBvd2VyICp0
aGUqIFNvQwoKPiB1c2VkIGluIGdhZGdldCBtb2RlLCB0aGVyZSBpcyBhIGRpc2Nvbm5lY3Rpb24g
YWJvdXQgNiBzZWNvbmRzIGFmdGVyIHRoZQo+IGdhZGdldCBpcyBjb25maWd1cmVkIGFuZCBlbnVt
ZXJhdGVkLgo+Cj4gVGhlIHByb2JsZW0gd2FzIG9ic2VydmVkIG9uIGEgUmFkeGEgUm9jayBQaSBT
IGJvYXJkLCB3aGljaCBjYW4gb25seSBiZQo+IHBvd2VyZWQgYnkgdGhlIG9ubHkgVVNCLUMgY29u
bmVjdG9yLiBUaGF0IGNvbm5lY3RvciBpcyB0aGUgb25seSBvbmUgdXNhYmxlCgoid2hpY2ggY2Fu
IG9ubHkgYmUgcG93ZXJlZCBieSB0aGUgb25seSBVU0ItQyBjb25uZWN0b3IiCmRvdWJsZSAib25s
eSIgbWFrZXMgaXQgYSBzdXBlciBleGNsdXNpdmUgY29ubmVjdG9yIQoKPiBpbiBnYWRnZXQgbW9k
ZS4gVGhpcyBpbXBsaWVzIHRoZSBVU0IgY2FibGUgaXMgY29ubmVjdGVkIGZyb20gYmVmb3JlIGJv
b3QKPiBhbmQgbmV2ZXIgZGlzY29ubmVjdHMgd2hpbGUgdGhlIGtlcm5lbCBydW5zLgo+Cj4gVGhl
IHByb2JsZW0gaGFwcGVucyBiZWNhdXNlIG9mIHRoZSBQSFkgZHJpdmVyIGNvZGUgZmxvdywgc3Vt
bWFyaXplZCBhczoKPgo+ICAqIFVEQyBzdGFydCBjb2RlICh0cmlnZ2VyZWQgdmlhIGNvbmZpZ2Zz
IGF0IGFueSB0aW1lIGFmdGVyIGJvb3QpCj4gICAgLT4gcGh5X2luaXQKPiAgICAgICAgLT4gcm9j
a2NoaXBfdXNiMnBoeV9pbml0Cj4gICAgICAgICAgICAtPiBzY2hlZHVsZV9kZWxheWVkX3dvcmso
b3RnX3NtX3dvcmsgW0FdLCA2IHNlYykKPiAgICAtPiBwaHlfcG93ZXJfb24KPiAgICAgICAgLT4g
cm9ja2NoaXBfdXNiMnBoeV9wb3dlcl9vbgo+ICAgICAgICAgICAgLT4gZW5hYmxlIGNsb2NrCj4g
ICAgICAgICAgICAtPiByb2NrY2hpcF91c2IycGh5X3Jlc2V0Cj4KPiAgKiBOb3cgdGhlIGdhZGdl
dCBpbnRlcmZhY2UgaXMgdXAgYW5kIHJ1bm5pbmcuCj4KPiAgKiA2IHNlY29uZHMgbGF0ZXIgb3Rn
X3NtX3dvcmsgc3RhcnRzIFtBXQo+ICAgIC0+IHJvY2tjaGlwX3VzYjJwaHlfb3RnX3NtX3dvcmso
KToKPiAgICAgICAgaWYgKEJfSURMRSBzdGF0ZSAmJiBWQlVTIHByZXNlbnQgJiYgLi4uKToKPiAg
ICAgICAgICAgIHNjaGVkdWxlX2RlbGF5ZWRfd29yaygmcnBvcnQtPmNoZ193b3JrIFtCXSwgMCk7
Cj4KPiAgKiBpbW1lZGlhdGVseSB0aGUgY2hnX2RldGVjdF93b3JrIHN0YXJ0cyBbQl0KPiAgICAt
PiByb2NrY2hpcF9jaGdfZGV0ZWN0X3dvcmsoKToKPiAgICAgICAgaWYgY2hnX3N0YXRlIGlzIFVO
REVGSU5FRDoKPiAgICAgICAgICAgIGlmICghcnBvcnQtPnN1c3BlbmRlZCk6Cj4gICAgICAgICAg
ICAgICAgcm9ja2NoaXBfdXNiMnBoeV9wb3dlcl9vZmYoKSA8LS0tIFtYXQo+Cj4gQXQgW1hdLCB0
aGUgUEhZIGlzIHBvd2VyZWQgb2ZmLCBjYXVzaW5nIGEgZGlzY29ubmVjdGlvbi4gVGhpcyBxdWlj
a2x5Cj4gdHJpZ2dlcnMgYSBuZXcgY29ubmVjdGlvbiBhbmQgZm9sbG93aW5nIHJlLWVudW1lcmF0
aW9uLCBidXQgYW55IGNvbm5lY3Rpb24KPiB0aGF0IGhhZCBiZWVuIGVzdGFibGlzaGVkIGR1cmlu
ZyB0aGUgNiBzZWNvbmRzIGlzIGJyb2tlbi4KPgo+IFRoZSBjb2RlIGFscmVhZHkgY2hlY2tzIGZv
ciAhcnBvcnQtPnN1c3BlbmRlZCwgc28gYWRkIGEgZ3VhcmQgZm9yIFZCVVMgYXMKPiB3ZWxsIHRv
IGF2b2lkIGEgZGlzY29ubmVjdGlvbiB3aGVuIGEgY2FibGUgaXMgY29ubmVjdGVkLgoKWW91ciBj
b21taXQgbWVzc2FnZSB3YXMgY2xlYXIgYnV0IEkgd2FzIG1pc3Npbmcgb25lIGtleSBwb2ludDog
d2hhdApycG9ydC0+c3VzcGVuZGVkIG1lYW5zLiBJdCBpc24ndCB3aGF0IEkgZmlyc3QgdGhvdWdo
dC4gSW5zdGVhZCBpdCBtZWFucwpwaHkgaXMgcG93ZXJlZCBvZmYuIE5hbWluZyBpcyBiYWQgYnV0
IHVucmVsYXRlZCB0byB5b3VyIHNlcmllcy4gTWF5YmUKYWRkIGEgY29tbWVudCB0byB5b3VyIGNv
bW1pdCBtZXNzYWdlIGxpa2UgdGhlIGZvbGxvd2luZz8KCiAgVGhlIGNvZGUgYWxyZWFkeSBjaGVj
a3MgZm9yICFycG9ydC0+c3VzcGVuZGVkIChQSFkgaXMgcG93ZXJlZCBvbiksIC4uLgoKPiBGaXhl
czogOTg4OThmM2JjODNjICgicGh5OiByb2NrY2hpcC1pbm5vLXVzYjI6IHN1cHBvcnQgb3RnLXBv
cnQgZm9yIHJrMzM5OSIpCj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIw
MjUwNDE0MTg1NDU4Ljc3NjdhYWJjQGJvb3R5Lwo+IENvLWRldmVsb3BlZC1ieTogTHVjYSBDZXJl
c29saSA8bHVjYS5jZXJlc29saUBib290bGluLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhIENl
cmVzb2xpIDxsdWNhLmNlcmVzb2xpQGJvb3RsaW4uY29tPgo+IFNpZ25lZC1vZmYtYnk6IExvdWlz
IENoYXV2ZXQgPGxvdWlzLmNoYXV2ZXRAYm9vdGxpbi5jb20+CgpJIGJlbGlldmUgdGhlcmUgaXMg
YW4gaXNzdWUgd2l0aCB5b3VyIFNvQiBvcmRlcmluZy4gSXQgaXMgbWVhbnQgdG8Kc2lnbmFsIHRo
ZSBwYXRoJ3Mgcm91dGUgZnJvbSBhdXRob3IgaW50byB0aGUga2VybmVsIHRyZWUuIEluIHRoYXQK
c2Vuc2UsIGl0IHNob3VsZCBzdGFydCB3aXRoIGF1dGhvciBmb2xsb3dlZCBieSB5b3UgYXMgc3Vi
bWl0dGVyLiBUaGVuCnRoZSBtYWludGFpbmVyIHdpbGwgYXBwZW5kIGl0cyBvd24uCgpEb2N1bWVu
dGF0aW9uL3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdCBpcyBzZW1pLWV4cGxpY2l0bHkg
d3JpdGluZwp0aGF0IG91dDoKPiBBbnkgZnVydGhlciBTb0JzIFsuLi5dIGZvbGxvd2luZyB0aGUg
YXV0aG9yJ3MgU29CIFsuLi5dCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE3
Ljkvc291cmNlL0RvY3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0I0w0
NDktTDQ1MwoKT25lIGdvb2Qgd2F5IHRvIGNoZWNrIGlzIHRoYXQgYWxsIG1haW50YWluZXJzIGFs
d2F5cyBhcHBlbmQgdGhlaXIgU29CCnJhdGhlciB0aGFuIHByZXBlbmQuCgpXaXRoIHRoYXQsCgpS
ZXZpZXdlZC1ieTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KClRoYW5r
cywKCi0tClRow6lvIExlYnJ1biwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVu
Z2luZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5jb20KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
