Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38C971088E60
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 12:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SFEF2qI6rc6KCAN4go/s40HRBEI980VWaFQAxiATEQ0=; b=IqrwEER22/I7/3A8u+3vAYBwhr
	Jl+PehNNAuRmaiIugDr0B+KsYwakVr3tIPmVQEh7tUM7C9X5ChEBMEl6gx5PgMcM5Y/arHAH9x5as
	myX2W6QIkZKwp+8RNKQQnSSKYL7Sx0K6gAv3iOtfIW6V7eBod8aW8NpRCGk/lvclcNepdwLAPhXsF
	jWrknPBnNgVA0kwdtMw/+Q/STKsxsOmXs2WsVFqhixN4OsVcaZIdB6wKXPfnzQJUuHUyjT73Apdk3
	r0Gamu1lK5yp/kzWfJt1PcoJXIf9gKpkG9rtk1X3dYZ8ksw6m2L7vtVxf099RjsbyhaOH9BOolD/z
	Xyzj5ndA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Ce8-0000000AcGj-2UfD;
	Thu, 19 Mar 2026 12:38:40 +0000
Received: from mail-m49233.qiye.163.com ([45.254.49.233])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Ce5-0000000AcGL-1KSu;
	Thu, 19 Mar 2026 12:38:39 +0000
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3792bf95a;
	Thu, 19 Mar 2026 20:38:33 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, jonas@kwiboo.se,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
To: MidG971 <midgy971@gmail.com>
References: <20260319102247.32260-1-midgy971@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <21dda954-8821-d6fa-a17a-68c4a256910f@rock-chips.com>
Date: Thu, 19 Mar 2026 20:38:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20260319102247.32260-1-midgy971@gmail.com>
X-HM-Tid: 0a9d061accfa09cckunm4b242d8a662e73
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh5JGFZLHU1JTh5IThoeTEJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=jhsRo+TkAin0Ilaq5fdC01jbcgKkLr7LOnjclk26cla4Cr8i2/ckUBhoZn1z/Rep1vNsN9y7MtJ99IYRlwQ5A8554w1QOMRA115FHgqDggZSBAOzxJvWbF8ylU7obMdunFs0BR/7uyph+oWDqywpk8WU11c2vx2eMw1uOpG08hE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=91vt8+tPv/jxW775EoJRQVELCIpxi7wPQqegSZPeGGo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_053837_875511_574A5EDA 
X-CRM114-Status: GOOD (  22.72  )
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

1NogMjAyNi8wMy8xOSDQx8bay8QgMTg6MjIsIE1pZEc5NzEg0LS1wDoKPiBUaGUgUmFkeGEgUk9D
SyAzQiB1c2VzIGEgUEk2QzIwMTAwIFBDSWUgcmVmZXJlbmNlIGNsb2NrIGJ1ZmZlciB0bwo+IHBy
b3ZpZGUgYSAxMDBNSHogcmVmZXJlbmNlIGNsb2NrIHRvIHRoZSBQQ0llIDMuMCBQSFkgYW5kIGNv
bnRyb2xsZXJzLgo+IFRoaXMgY2hpcCBpcyBjdXJyZW50bHkgbW9kZWxlZCBvbmx5IGFzIGEgZml4
ZWQgcmVndWxhdG9yCj4gKHZjYzN2M19waTZjXzAzKSwgd2l0aCBubyBjbG9jayBvdXRwdXQgcmVw
cmVzZW50YXRpb24uCj4gCj4gVGhlIFBJNkMyMDEwMCBpcyBhIGNsb2NrIGdlbmVyYXRvciwgbm90
IGEgcG93ZXIgc3VwcGx5LiBNb2RlbCBpdAo+IHByb3Blcmx5IGFzIGEgZ2F0ZWQtZml4ZWQtY2xv
Y2ssIGZvbGxvd2luZyB0aGUgcGF0dGVybiBlc3RhYmxpc2hlZAo+IGZvciB0aGUgUm9jayA1IElU
WCBhbmQgb3RoZXIgYm9hcmRzIHdpdGggc2ltaWxhciBQQ0llIGNsb2NrIGJ1ZmZlcgo+IGNoaXBz
Lgo+IAo+IFRoZSByZWd1bGF0b3Igbm9kZSBpcyBrZXB0IGFzLWlzIHNpbmNlIGl0IGNvbnRyb2xz
IHRoZSBwb3dlciBzdXBwbHkKPiB0byB0aGUgUEk2QzIwMTAwIGNoaXAgdmlhIEdQSU8wX0Q0LiBU
aGUgbmV3IGdhdGVkLWZpeGVkLWNsb2NrIG5vZGUKPiByZWZlcmVuY2VzIHRoaXMgcmVndWxhdG9y
IGFzIGl0cyB2ZGQtc3VwcGx5IGFuZCBwcm92aWRlcyBhIHByb3Blcgo+IDEwME1IeiBjbG9jayBv
dXRwdXQuIFRoZSBwY2llM3gyIG5vZGUgaXMgdXBkYXRlZCB0byBpbmNsdWRlIHRoZQo+IHBpcGUg
YW5kIHJlZmVyZW5jZSBjbG9ja3MsIG1hdGNoaW5nIHRoZSBhcHByb2FjaCB1c2VkIGluCj4gcmsz
NTg4LXJvY2stNS1pdHguZHRzLgoKUmV2aWV3ZWQtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJv
Y2stY2hpcHMuY29tPgoKPiAKPiBBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVkZS0zLW9wdXMKPiBT
aWduZWQtb2ZmLWJ5OiBNaWRHOTcxIDxtaWRneTk3MUBnbWFpbC5jb20+Cj4gLS0tCj4gCj4gQ2hh
bmdlcyBzaW5jZSB2MiBbMV06Cj4gICAtIEZpeCBBSSBhdHRyaWJ1dGlvbjogdXNlIEFzc2lzdGVk
LWJ5IHRhZyBpbnN0ZWFkIG9mIFNpZ25lZC1vZmYtYnkgKFNoYXduKQo+ICAgLSBBZGQgbWlzc2lu
ZyBwaXBlIGNsb2NrIChDTEtfUENJRTMwWDJfUElQRV9ERlQpIHRvIHBjaWUzeDIgY2xvY2tzCj4g
ICAgIG92ZXJyaWRlIChTaGF3biwgcmVmZXJlbmNpbmcgRGF2aWQncyBwYXRjaCBbMl0pCj4gCj4g
Q2hhbmdlcyBzaW5jZSB2MSBbM106Cj4gICAtIERyb3AgcGh5LXN1cHBseSBhcHByb2FjaCBlbnRp
cmVseSAoSm9uYXMsIFNoYXduKQo+ICAgLSBNb2RlbCBQSTZDMjAxMDAgYXMgZ2F0ZWQtZml4ZWQt
Y2xvY2sgaW5zdGVhZAo+ICAgLSBXaXJlIHJlZmVyZW5jZSBjbG9jayB0byBwY2llM3gyIGNvbnRy
b2xsZXIKPiAgIC0gRm9sbG93IHBhdHRlcm4gZnJvbSByazM1ODgtcm9jay01LWl0eC5kdHMKPiAK
PiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMjAyNjAzMDQxMzI5
NTcuNjg0NjE2LTEtbWlkZ3k5NzFAZ21haWwuY29tLwo+IFsyXSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1yb2NrY2hpcC9kOTgxZmE4NC1iZDA1LWFjOWQtOThjYS04OWVlNDcxNzc4MjlA
cm9jay1jaGlwcy5jb20vVC8jbTZhODI4OTYwOWU2YTYwNjkxZDNjMDYzNThiNjMyMmM3YWE1ZTQz
ZDEKPiBbM10gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMjAyNjAyMTMx
NTE0NTIuNTM1NTI3LTEtbWlkZ3k5NzFAZ21haWwuY29tLwo+IAo+ICAgYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMgfCAyMSArKysrKysrKysrKysrKysrKysr
Ky0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2st
M2IuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMK
PiBpbmRleCBjNWY2N2RkNmRmZDkuLjFhMmIzYzRkNWU2ZiAxMDA2NDQKPiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cwo+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4gQEAgLTU2LDcgKzU2LDE2
IEBACj4gICAJCX07Cj4gICAJfTsKPiAKPiAtCS8qIHBpNmMgcGNpZSBjbG9jayBnZW5lcmF0b3Ig
Ki8KPiArCS8qIFBJNkMyMDEwMCBQQ0llIHJlZmVyZW5jZSBjbG9jayBidWZmZXIgKDEwME1Ieikg
Ki8KPiArCXBjaWUzMF9yZWZjbGs6IHBjaWUtY2xvY2stZ2VuZXJhdG9yIHsKPiArCQljb21wYXRp
YmxlID0gImdhdGVkLWZpeGVkLWNsb2NrIjsKPiArCQkjY2xvY2stY2VsbHMgPSA8MD47Cj4gKwkJ
Y2xvY2stZnJlcXVlbmN5ID0gPDEwMDAwMDAwMD47Cj4gKwkJY2xvY2stb3V0cHV0LW5hbWVzID0g
InBjaWUzMF9yZWZjbGsiOwo+ICsJCXZkZC1zdXBwbHkgPSA8JnZjYzN2M19waTZjXzAzPjsKPiAr
CX07Cj4gKwo+ICsJLyogUEk2QzIwMTAwIHBvd2VyIHN1cHBseSAtIGFjdGl2ZS1oaWdoIEdQSU8w
X0Q0ICovCj4gICAJdmNjM3YzX3BpNmNfMDM6IHJlZ3VsYXRvci0zdjMtdmNjLXBpNmMtMDMgewo+
ICAgCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gICAJCWVuYWJsZS1hY3RpdmUt
aGlnaDsKPiBAQCAtNTUzLDYgKzU2MiwxNSBAQAo+ICAgfTsKPiAKPiAgICZwY2llM3gyIHsKPiAr
CWNsb2NrcyA9IDwmY3J1IEFDTEtfUENJRTMwWDJfTVNUPiwgPCZjcnUgQUNMS19QQ0lFMzBYMl9T
TFY+LAo+ICsJCSA8JmNydSBBQ0xLX1BDSUUzMFgyX0RCST4sIDwmY3J1IFBDTEtfUENJRTMwWDI+
LAo+ICsJCSA8JmNydSBDTEtfUENJRTMwWDJfQVVYX05ERlQ+LAo+ICsJCSA8JmNydSBDTEtfUENJ
RTMwWDJfUElQRV9ERlQ+LAo+ICsJCSA8JnBjaWUzMF9yZWZjbGs+Owo+ICsJY2xvY2stbmFtZXMg
PSAiYWNsa19tc3QiLCAiYWNsa19zbHYiLAo+ICsJCSAgICAgICJhY2xrX2RiaSIsICJwY2xrIiwg
ImF1eCIsCj4gKwkJICAgICAgInBpcGUiLCAicmVmIjsKPiAgIAlwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwo+ICAgCXBpbmN0cmwtMCA9IDwmcGNpZTMweDJtMV9waW5zPjsKPiAgIAlyZXNldC1n
cGlvcyA9IDwmZ3BpbzIgUktfUEQ2IEdQSU9fQUNUSVZFX0hJR0g+Owo+IC0tCj4gMi4zOS41Cj4g
Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
