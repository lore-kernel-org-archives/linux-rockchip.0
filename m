Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F40BC982C7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MiemrXtytv/MOV4v+rK/9fJYeC+JogbOO5PureFz/j4=; b=WH8C0wMES02jIO
	NMcLjBm3KcBWKwhbwwFsQ7gGHvW/wm+D3gMzSuJzD/Er2YepTabXKibm4TSgpgVxdLNaLXRn5/vp2
	W808ox4xF3Fhm97xdnDTGYePCvtT6Hguk2a1GRsja9MKuMJXhDIoePKxFHTc2Ed9/VUS+HoRiusjs
	3Dt0Q7S4Q2WqYlLoYmybaYsMGzD583xYt9wVMl33POuzmz/muMIeWPp6lfSHU8JLPkiuzRuzhsXVJ
	0IgX82xEsyw60krmy2tO2sr9qi+yfQZw/DAQyxsDCcpY2j3gRdz4IyOzkSQfLUfWe772H0Bo6svuE
	ZZrJV+816ts0E8vGtv0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vglc4-0000000ELdB-0Xv7;
	Fri, 16 Jan 2026 15:19:48 +0000
Received: from mail-m49205.qiye.163.com ([45.254.49.205])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vglc0-0000000ELbx-3b8K;
	Fri, 16 Jan 2026 15:19:46 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30f051665;
	Fri, 16 Jan 2026 23:19:41 +0800 (GMT+08:00)
Message-ID: <f8658bd7-7381-4770-935a-6a98ea3f652f@rock-chips.com>
Date: Fri, 16 Jan 2026 23:19:39 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Aishwarya TCV <Aishwarya.TCV@arm.com>,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] spi: rockchip: Use plain request_irq()
To: Mark Brown <broonie@kernel.org>
References: <20260116-spi-rockchip-threaded-irq-v1-1-c45c3a5a38b1@kernel.org>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260116-spi-rockchip-threaded-irq-v1-1-c45c3a5a38b1@kernel.org>
X-HM-Tid: 0a9bc7640d8b09cckunm99e7e01e73ca7b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh5IHlYfHk5CTh9IGUtIT0JWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=fPjN5OZCavPa5KsaxCi1vx8vv+g3J2/G9w0fEZyu6dOd99f9I9VcpNlDee8dg8PNLWkH+DJavKruVTCaPEmINwS4T0F3XXi6wmPgMpwrb/vp0IIov8vB9i8df13d8CY7n8eaVGojSgFKtfwPp7v9vZbUcNdQv+LdgStyvuIiYkc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=helqByT45xgygaR3omsf6cACAEULnpjlMgPw8Kgw2w8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_071945_426644_81E2D57D 
X-CRM114-Status: GOOD (  19.82  )
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

5ZyoIDIwMjYvMDEvMTYg5pif5pyf5LqUIDIxOjIzLCBNYXJrIEJyb3duIOWGmemBkzoKPiBUaGUg
Um9ja2NoaXAgZHJpdmVyIGhhcyBzaW5jZSBpbnRlcnJ1cHQgc3VwcG9ydCB3YXMgYWRkZWQgdXNl
ZAo+IHJlcXVlc3RfdGhyZWFkZWRfaXJxKCkgYnV0IG5vdCBhY3R1YWxseSBzdXBwbGllZCBhIHRo
cmVhZGVkIGhhbmRsZXIsCj4gaGFuZGxpbmcgZXZlcnl0aGluZyBpbiB0aGUgcHJpbWFyeSBoYW5k
bGVyLiAgVGhpcyBpcyBlcXVpdmFsZW50IHRvIGp1c3QKPiB1c2luZyBhIHBsYWluIHJlcXVlc3Rf
aXJxKCksIGFuZCBzaW5jZSBhZWYzMGM4ZDU2OWMgKGdlbmlycTogV2FybiBhYm91dAo+IHVzaW5n
IElSUUZfT05FU0hPVCB3aXRob3V0IGEgdGhyZWFkZWQgaGFuZGxlcikgdGhlIGN1cnJlbnQgYmVo
YXZpb3VyIGhhcwo+IHRyaWdnZXJlZCBhIFdBUk5fT04oKS4gIENvbnZlcnQgdG8gdXNlIHJlcXVl
c3RfaXJxKCkuCj4gCgpJcyBpdCBwcmVmZXJyZWQgdG8gdXNlIHRocmVhZGVkIHZlcnNpb24gaWYg
bGF0ZW5jeSBpcyBub3QgYSBjcml0aWNhbApjb25jZXJuID8gSSBndWVzcyB0aGUgb3JpZ2luYWwg
aW50ZW50aW9uIHdhcyB0byB1c2UKCnJldCA9IGRldm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoJnBk
ZXYtPmRldiwgcmV0LCBOVUxMLCByb2NrY2hpcF9zcGlfaXNyLApJUlFGX09ORVNIT1QsIGRldl9u
YW1lKCZwZGV2LT5kZXYpLCBjdGxyKTsgPwoKCj4gUmVwb3J0ZWQtYnk6IEFpc2h3YXJ5YSBUQ1Yg
PEFpc2h3YXJ5YS5UQ1ZAYXJtLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYXJrIEJyb3duIDxicm9v
bmllQGtlcm5lbC5vcmc+Cj4gLS0tCj4gICBkcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAuYyB8IDQg
KystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkvc3BpLXJvY2tjaGlwLmMgYi9kcml2ZXJzL3Nw
aS9zcGktcm9ja2NoaXAuYwo+IGluZGV4IDFhNjM4MWRlNmYzMy4uNjJlMWJjMDhjOTQwIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvc3BpL3NwaS1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9zcGkv
c3BpLXJvY2tjaGlwLmMKPiBAQCAtODA1LDggKzgwNSw4IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBf
c3BpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAJaWYgKHJldCA8IDAp
Cj4gICAJCWdvdG8gZXJyX3B1dF9jdGxyOwo+ICAgCj4gLQlyZXQgPSBkZXZtX3JlcXVlc3RfdGhy
ZWFkZWRfaXJxKCZwZGV2LT5kZXYsIHJldCwgcm9ja2NoaXBfc3BpX2lzciwgTlVMTCwKPiAtCQkJ
CQlJUlFGX09ORVNIT1QsIGRldl9uYW1lKCZwZGV2LT5kZXYpLCBjdGxyKTsKPiArCXJldCA9IGRl
dm1fcmVxdWVzdF9pcnEoJnBkZXYtPmRldiwgcmV0LCByb2NrY2hpcF9zcGlfaXNyLCAwLAo+ICsJ
CQkgICAgICAgZGV2X25hbWUoJnBkZXYtPmRldiksIGN0bHIpOwo+ICAgCWlmIChyZXQpCj4gICAJ
CWdvdG8gZXJyX3B1dF9jdGxyOwo+ICAgCj4gCj4gLS0tCj4gYmFzZS1jb21taXQ6IDBmNjFiMTg2
MGNjM2Y1MmFlZjkwMzZkNzIzNWVkMWYwMTc2MzIxOTMKPiBjaGFuZ2UtaWQ6IDIwMjYwMTE1LXNw
aS1yb2NrY2hpcC10aHJlYWRlZC1pcnEtYjE2NDFkMGQzOTE5Cj4gCj4gQmVzdCByZWdhcmRzLAo+
IC0tCj4gTWFyayBCcm93biA8YnJvb25pZUBrZXJuZWwub3JnPgo+IAo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKPiAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
