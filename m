Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BFFE108E1FA
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 12:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JHBCEU3fraDLRlANbDYLHyoZ2Dv2qcmItg4KLr83sIE=; b=KpNW4Hb5AZX+b6iN2w2rQKJ6mg
	eyQg/8R9MuVjT4UWvC3vyb3l1gx4m1BN64VuTOx03gYC35MkYI7qqhavksNn46Zc5wmMDC+GKUPQ/
	JdYJBMu9e/HjnuSLRMOE2qUfdsVXT1C0v6gvaK4r6FXBuCO4GY3D169ES6x8SF3EKaiEtxcp8qv33
	iQU1ZA183KCAhux5+77BegX7sX7T7gOekMhEp07M0m+jp/Ax+rIiOyojhFja704gXR+0qFk68icj5
	kwQpOImaRd4u3hIaAtECU/isdkbLipHb7e+hlRJ8OwEkwh3chosNTMh5R177s0/+ohxZ772uC+7J6
	9kYYLFBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3CTk-0000000AbUI-0bnY;
	Thu, 19 Mar 2026 12:27:56 +0000
Received: from mail-m1973185.qiye.163.com ([220.197.31.85])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3CTg-0000000AbTr-2gni;
	Thu, 19 Mar 2026 12:27:54 +0000
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3792bf622;
	Thu, 19 Mar 2026 20:27:37 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, jonas@kwiboo.se
Subject: Re: [PATCH v2] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
To: MidG971 <midgy971@gmail.com>
References: <7008e941-e4b0-a060-1cd7-55070fd5831f@rock-chips.com>
 <20260319101911.31348-1-midgy971@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <b7060437-a46e-81fa-be2b-506a1b82be12@rock-chips.com>
Date: Thu, 19 Mar 2026 20:27:35 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20260319101911.31348-1-midgy971@gmail.com>
X-HM-Tid: 0a9d0610cdfe09cckunma0125ffa661f67
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkxDH1ZNHk9CTUhOShpOS01WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=cyzQxvzm4R28cdZsEor86BWIsLK5KuqaVtYyhYPGQOXvke8pFMIlfSVAxaeEuquDRUgEKtGoYXQgBqK/w6V0hbqgxQ7s2/vMtW81y5YFAzctbkrRv+98A819iUKNEu+mckdE2RH70y2hmwhNBXO6QiO6UbKyg3Fkvnx8zMQ5nwo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=wKS4bpN/zGnfXpSFFB4RUvieqFi2QAKBmfyhobnZlxo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_052753_218607_E40077DC 
X-CRM114-Status: GOOD (  20.96  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

1NogMjAyNi8wMy8xOSDQx8bay8QgMTg6MTksIE1pZEc5NzEg0LS1wDoKPiBPbiAyMDI2LzAzLzA0
LCBTaGF3biBMaW4gd3JvdGU6Cj4+IElJVUMsIHlvdSBhcmUgdXNpbmcgQ2xhdWRlIHRvIGhlbHAg
Z2VuZXJhdGUgdGhpcyBwYXRjaCwgcGxlYXNlCj4+IGRlc2NyaWJlIGl0IHByb3Blcmx5LCBmb3Ig
ZXhhbXBsZSwKPj4KPj4gQ28tZGV2ZWxvcGVkLWJ5OiBDbGF1ZGUgY2xhdWRlLW9wdXMtNC0yMDI1
MDUxNCBbMV0KPj4gb3IKPj4gQXNzaXN0ZWQtYnk6IENsYXVkZTpjbGF1ZGUtMy1vcHVzIFsyXQo+
Pgo+PiBbMV0gaHR0cHM6Ly9sd24ubmV0L0FydGljbGVzLzEwMzE0NzMvCj4+IFsyXSBodHRwczov
L2RvY3Mua2VybmVsLm9yZy9wcm9jZXNzL2NvZGluZy1hc3Npc3RhbnRzLmh0bWwKPiAKPiBUaGFu
ayB5b3UgZm9yIHRoZSBndWlkYW5jZS4gSSB1c2VkIENsYXVkZSBhcyBhIGNvZGluZyBhc3Npc3Rh
bnQgYW5kCj4gd2lsbCB1c2UgdGhlIHByb3BlciB0YWcgaW4gdjM6Cj4gCj4gICAgQXNzaXN0ZWQt
Ynk6IENsYXVkZTpjbGF1ZGUtMy1vcHVzCj4gICAgU2lnbmVkLW9mZi1ieTogTWlkRzk3MSA8bWlk
Z3k5NzFAZ21haWwuY29tPgo+IAo+PiBUaGVyZSBpcyBhIG1pc3NpbmcgcGlwZSBjbG9jayB3aGlj
aCBzaG91bGQgYmUgZml4ZWQuIFBsZWFzZQo+PiByZWZlciB0byBEYXZpZCdzIHBhdGNoWzNdLgo+
Pgo+PiBbM10gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvZDk4MWZhODQt
YmQwNS1hYzlkLTk4Y2EtODllZTQ3MTc3ODI5QHJvY2stY2hpcHMuY29tL1QvI202YTgyODk2MDll
NmE2MDY5MWQzYzA2MzU4YjYzMjJjN2FhNWU0M2QxCj4gCj4gU2luY2Ugb3VyIGJvYXJkLWxldmVs
ICZwY2llM3gyIG92ZXJyaWRlIHJlcGxhY2VzIHRoZSBjbG9ja3MgcHJvcGVydHkKPiBlbnRpcmVs
eSwgdjMgYWRkcyBDTEtfUENJRTMwWDJfUElQRV9ERlQgKCJwaXBlIikgYXMgd2VsbCwgY29uc2lz
dGVudAo+IHdpdGggRGF2aWQncyBiYXNlIERUUyBwYXRjaC4KPiAKPiBJIHRlc3RlZCB2MyBvbiB0
aGUgUk9DSyAzQiAoa2VybmVsIDYuMTkuMC1yYzUpOiBwY2llM3gyIHByb2Jlcwo+IHN1Y2Nlc3Nm
dWxseSBhbmQgdGhlIE5WTWUgZGV2aWNlIGlzIGRldGVjdGVkIGF0IDE1Ljc1IEdiL3MuIFRoZQo+
IHBjaWUzMF9yZWZjbGsgY2xvY2sgYXBwZWFycyBpbiB0aGUgY2xvY2sgdHJlZSBhdCAxMDBNSHog
d2l0aCBwY2llM3gyCj4gYXMgaXRzIGNvbnN1bWVyLgo+IAo+IE9uZSBub3RlIG9uIHRoZSBwaXBl
IGNsb2NrIHRlc3Q6IENMS19QQ0lFMzBYMl9QSVBFX0RGVCBpcyBkZWZpbmVkIGluCj4gcmszNTY4
LWNydS5oIGJ1dCB3YXMgbm90IHlldCByZWdpc3RlcmVkIGluIHRoZSBDUlUgZHJpdmVyIGluIHRo
ZQo+IHRlc3RlZCBrZXJuZWwgYnVpbGQsIHNvIHRoZSBwaXBlIGNsb2NrIHdhcyBleGNsdWRlZCBm
cm9tIHRoZQo+IGZ1bmN0aW9uYWwgdGVzdCAocGNpZTN4MiBwcm9iZSBmYWlscyB3aXRoIC1FTk9F
TlQgYXQgY2xvY2sgaW5kZXggNQo+IHdoZW4gaXQgaXMgaW5jbHVkZWQpLiBUaGUgZ2F0ZWQtZml4
ZWQtY2xvY2sgbm9kZSBhbmQgcmVmIGNsb2NrIHdlcmUKPiB2ZXJpZmllZCB3b3JraW5nLiBJIGV4
cGVjdCB0aGUgcGlwZSBjbG9jayB3aWxsIHdvcmsgb25jZSB0aGUgQ1JVCj4gZHJpdmVyIHJlZ2lz
dGVycyBpdCBhbG9uZ3NpZGUgRGF2aWQncyBEVFMgcGF0Y2guCgpQaXBlIGNsb2NrIHN1cHBvcnQg
d2FzIGFwcGxpZWQgYW5kIGFwcGVhcnMgaW4gbGludXgtbmV4dFsxXSwgeW91IGNvdWxkCnBpY2sg
aXQgaW50byB5b3VyIHRlc3RlZCBrZXJuZWwgYnVpbGQgaWYgeW91J2QgbGlrZSB0byBoYXZlIGEg
dHJ5LgoKWzFdaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQv
bmV4dC9saW51eC1uZXh0LmdpdC9jb21taXQvP2lkPTQxYjFhNjc2MDk1OTAxN2M0ZmExZGJjN2Mz
Y2MzMTg0MDZhYjE0NTUKCj4gCj4gdjMgaXMgc2VudCBzZXBhcmF0ZWx5Lgo+IAo+IEJlc3QgcmVn
YXJkcywKPiBNaWRHOTcxCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
