Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73BD3D2ED0F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 10:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDoLIhSFTTfwpLSCKbD+M+tns7qqM5QLxZpccV2vAPc=; b=ItOTdmtn10Kcru
	tZSuJ8lrR6IyyjXgYzT+0yzvHIp7p1wT322D9FmR9o9j+iwxxh0+oic5pSG5B0OfxFTmVW9KwpUfD
	nzer7SNSNqIj30tuSoB1yRl0EmO9tHo/LE9zUDvkL1og/GY2N5RJQgzg8FxaXEGhcZV+GWt+Rpi3M
	X1lIoUUe3vVZvhm4xW9uewBW+JUlwSR+g5DOpnyKR5N2sPFZMfw3jQevo+jeKJG5WfHk7FVjUp26R
	8+e+d4KUUCrGx0PdkkeBFkGBewEOM8zmME8ihStiza2HIaxrQsFKleLvv/tqIVybxEkVWE6/xBknp
	2IP4p3S98n76oQbFJo1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8lo-00000003aqj-2Rwi;
	Tue, 20 Jan 2026 10:15:32 +0000
Received: from mail-m19731107.qiye.163.com ([220.197.31.107])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8lN-00000003aoI-2sC8
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jan 2026 10:15:31 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 314c4fb23;
	Tue, 20 Jan 2026 18:14:58 +0800 (GMT+08:00)
Message-ID: <20f4e36b-f1df-43db-b97f-89d4009bef2c@rock-chips.com>
Date: Tue, 20 Jan 2026 18:14:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 Andrew Powers-Holmes <aholmes@omnom.net>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Fix rk356x PCIe range mappings
To: Heiko Stuebner <heiko@sntech.de>
References: <1767600929-195341-1-git-send-email-shawn.lin@rock-chips.com>
 <9350956.lvqk35OSZv@phil>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <9350956.lvqk35OSZv@phil>
X-HM-Tid: 0a9bdae6810909cckunm87468e31a795fe
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxlOSlZDHxhKTkxDSB4eGh1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=N12yWcNBoBYPXI1mh36GmDWsnTZkcCZYkUA+0q1XlDDFlQAeMfBiKFOGh0xvydEMTDuoSm5cEZe+Edj0NQ0I2HTgXygUpZs+yqetDh+wq7AeNvVaepapphLMjTMlhq4X5DZX1neRXoFNj1VyYOkJjRn86Nak2RjLOmHC74QG9kI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=093SZ8d2fmJL7K5BwQ6Npcmz6IrtqPBfdvdEJR/m5SQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_021506_566454_F15FADBD 
X-CRM114-Status: GOOD (  19.31  )
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

CuWcqCAyMDI2LzAxLzIwIOaYn+acn+S6jCAxNzo0NCwgSGVpa28gU3R1ZWJuZXIg5YaZ6YGTOgo+
IEhpIFNoYXduLAo+IAo+IEFtIE1vbnRhZywgNS4gSmFudWFyIDIwMjYsIDA5OjE1OjI4IE1pdHRl
bGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgU2hhd24gTGluOgo+PiBUaGUgcGNpZSBi
dXMgYWRkcmVzcyBzaG91bGQgYmUgbWFwcGVkIDE6MSB0byB0aGUgY3B1IHNpZGUgTU1JTyBhZGRy
ZXNzLCBzbwo+PiB0aGF0IHRoZXJlIGlzIG5vIHNhbWUgYWRkcmVzcyBhbGxvY2F0ZWQgZnJvbSBu
b3JtYWwgc3lzdGVtIG1lbW9yeS4gT3RoZXJ3aXNlCj4+IGl0J3MgYnJva2VuIGlmIHRoZSBzYW1l
IGFkZHJlc3MgYXNzaWduZWQgdG8gdGhlIEVQIGZvciBETUEgcHVycG9zZS5GaXggaXQgdG8KPj4g
c3luYyB3aXRoIHRoZSB2ZW5kb3IgQlNQLgo+Pgo+PiBGaXhlczogNTY4YTY3ZTc0MmRmICgiYXJt
NjQ6IGR0czogcm9ja2NoaXA6IEZpeCByazM1NnggUENJZSByZWdpc3RlciBhbmQgcmFuZ2UgbWFw
cGluZ3MiKQo+PiBGaXhlczogNjZiNTFlYTdkNzBmICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFk
ZCByazM1NjggUENJZTJ4MSBjb250cm9sbGVyIikKPj4gQ2M6IEFuZHJldyBQb3dlcnMtSG9sbWVz
IDxhaG9sbWVzQG9tbm9tLm5ldD4KPj4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5s
aW5Acm9jay1jaGlwcy5jb20+Cj4gCj4gSXMgdGhlcmUgc29tZSB3YXkgdG8gcmVwcm9kdWNlIHRo
ZSBpc3N1ZT8KPiAKClllcy4gTW91bnQgYSBmdWxsIE5WTWUgYXR0YWNoZWQgdG8gUkszNTY4LCBh
bmQgZG8gbWQ1c3VtIGZvciB0aGUgZmlsZXMKaW4gTlZNZSBpbiBsb29wLCB0aGVyZSBpcyBhIGNl
cnRhaW4gcHJvYmFiaWxpdHkgdGhhdCB0aGUgTUQ1IHZhbHVlIG9mIGEgCmZpbGUgaXMgaW5jb3Jy
ZWN0LgoKCj4gT3IgYWx0ZXJuYXRpdmVseSwgaWYgeW91J3JlIGp1c3Qgc3luY2luZyB3aXRoIHRo
ZSB2ZW5kb3IgQlNQIGhlcmUsCj4gY2FuIHlvdSBkZXNjcmliZSB3aGVyZSB0aGUgaXNzdWUgaGFw
cGVuZCBvciB3YXMgbm90aWNlZD8KPiAKPiAKPiBUaGFua3MgYSBsb3QKPiBIZWlrbwo+IAo+PiAt
LS0KPj4KPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpICAgICAg
fCA0ICsrLS0KPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC1iYXNlLmR0
c2kgfCAyICstCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU2OC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+PiBp
bmRleCBlNzE5YTNkLi42NTgwOTdlIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTY4LmR0c2kKPj4gQEAgLTE4NSw3ICsxODUsNyBAQAo+PiAgIAkJICAgICAgPDB4MCAw
eGYyMDAwMDAwIDB4MCAweDAwMTAwMDAwPjsKPj4gICAJCXJhbmdlcyA9IDwweDAxMDAwMDAwIDB4
MCAweGYyMTAwMDAwIDB4MCAweGYyMTAwMDAwIDB4MCAweDAwMTAwMDAwPiwKPj4gICAJCQkgPDB4
MDIwMDAwMDAgMHgwIDB4ZjIyMDAwMDAgMHgwIDB4ZjIyMDAwMDAgMHgwIDB4MDFlMDAwMDA+LAo+
PiAtCQkJIDwweDAzMDAwMDAwIDB4MCAweDQwMDAwMDAwIDB4MyAweDQwMDAwMDAwIDB4MCAweDQw
MDAwMDAwPjsKPj4gKwkJCSA8MHgwMzAwMDAwMCAweDMgMHg0MDAwMDAwMCAweDMgMHg0MDAwMDAw
MCAweDAgMHg0MDAwMDAwMD47Cj4+ICAgCQlyZWctbmFtZXMgPSAiZGJpIiwgImFwYiIsICJjb25m
aWciOwo+PiAgIAkJcmVzZXRzID0gPCZjcnUgU1JTVF9QQ0lFMzBYMV9QT1dFUlVQPjsKPj4gICAJ
CXJlc2V0LW5hbWVzID0gInBpcGUiOwo+PiBAQCAtMjM4LDcgKzIzOCw3IEBACj4+ICAgCQkgICAg
ICA8MHgwIDB4ZjAwMDAwMDAgMHgwIDB4MDAxMDAwMDA+Owo+PiAgIAkJcmFuZ2VzID0gPDB4MDEw
MDAwMDAgMHgwIDB4ZjAxMDAwMDAgMHgwIDB4ZjAxMDAwMDAgMHgwIDB4MDAxMDAwMDA+LAo+PiAg
IAkJCSA8MHgwMjAwMDAwMCAweDAgMHhmMDIwMDAwMCAweDAgMHhmMDIwMDAwMCAweDAgMHgwMWUw
MDAwMD4sCj4+IC0JCQkgPDB4MDMwMDAwMDAgMHgwIDB4NDAwMDAwMDAgMHgzIDB4ODAwMDAwMDAg
MHgwIDB4NDAwMDAwMDA+Owo+PiArCQkJIDwweDAzMDAwMDAwIDB4MyAweDgwMDAwMDAwIDB4MyAw
eDgwMDAwMDAwIDB4MCAweDQwMDAwMDAwPjsKPj4gICAJCXJlZy1uYW1lcyA9ICJkYmkiLCAiYXBi
IiwgImNvbmZpZyI7Cj4+ICAgCQlyZXNldHMgPSA8JmNydSBTUlNUX1BDSUUzMFgyX1BPV0VSVVA+
Owo+PiAgIAkJcmVzZXQtbmFtZXMgPSAicGlwZSI7Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kKPj4gaW5kZXggODg5M2I3Yi4uYTJjNDk1NyAxMDA2
NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NngtYmFzZS5kdHNp
Cj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LWJhc2UuZHRzaQo+
PiBAQCAtMTAyMiw3ICsxMDIyLDcgQEAKPj4gICAJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJL
MzU2OF9QRF9QSVBFPjsKPj4gICAJCXJhbmdlcyA9IDwweDAxMDAwMDAwIDB4MCAweGY0MTAwMDAw
IDB4MCAweGY0MTAwMDAwIDB4MCAweDAwMTAwMDAwPiwKPj4gICAJCQkgPDB4MDIwMDAwMDAgMHgw
IDB4ZjQyMDAwMDAgMHgwIDB4ZjQyMDAwMDAgMHgwIDB4MDFlMDAwMDA+LAo+PiAtCQkJIDwweDAz
MDAwMDAwIDB4MCAweDQwMDAwMDAwIDB4MyAweDAwMDAwMDAwIDB4MCAweDQwMDAwMDAwPjsKPj4g
KwkJCSA8MHgwMzAwMDAwMCAweDMgMHgwMDAwMDAwMCAweDMgMHgwMDAwMDAwMCAweDAgMHg0MDAw
MDAwMD47Cj4+ICAgCQlyZXNldHMgPSA8JmNydSBTUlNUX1BDSUUyMF9QT1dFUlVQPjsKPj4gICAJ
CXJlc2V0LW5hbWVzID0gInBpcGUiOwo+PiAgIAkJI2FkZHJlc3MtY2VsbHMgPSA8Mz47Cj4+Cj4g
Cj4gCj4gCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
