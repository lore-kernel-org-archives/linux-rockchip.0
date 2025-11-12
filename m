Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAA47CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 08:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFXCBe88caFcPUAYp8snB2+w5KIQgL+zXJWVAbza4lc=; b=UrCkZnuS18yH4z
	TYeDPmW5tt31JJkEF/WzqiC6jAdkSz/I90DanfHY2UhlrlXCU+JoIiq4jGSgAJW020RqAewIsxvZW
	F9yu9dxR15logYDonDCMzTOQa8KDKafBVZ09s8owIAZ1xxpf5BqTeSZoWzEJwUH4ZdVmp+lSzl0p6
	bOjNCVeHj6r/e1XDwdnQxM0BwkexV8aixrXhL6bRstt6A56AE5aXyDwCwr1Pf4MzLb6bstlJxM1Bt
	tJXz3+dXfJ67X//kUbB5VlbtDbQOYilUXvUaADWLe1JPlqYNBRjyyPQC0GJulJJAEI/CLkYWv0f8/
	7k3lI5vC28d+p0QbMNlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ6GV-00000008MFf-2nuH;
	Wed, 12 Nov 2025 08:31:43 +0000
Received: from mail-m1973188.qiye.163.com ([220.197.31.88])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ6GQ-00000008MBk-1kco;
	Wed, 12 Nov 2025 08:31:42 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 29503293b;
	Wed, 12 Nov 2025 16:31:32 +0800 (GMT+08:00)
Message-ID: <ef433574-3e81-4636-82c8-9bc3552addca@rock-chips.com>
Date: Wed, 12 Nov 2025 16:31:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, pali@kernel.org, neil.armstrong@linaro.org,
 robh@kernel.org, jingoohan1@gmail.com, khilman@baylibre.com,
 jbrunet@baylibre.com, martin.blumenstingl@googlemail.com, cassel@kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 1/2] PCI: Configure Root Port MPS during host probing
To: Hans Zhang <18255117159@163.com>, lpieralisi@kernel.org,
 kwilczynski@kernel.org, bhelgaas@google.com, helgaas@kernel.org,
 heiko@sntech.de, mani@kernel.org, yue.wang@Amlogic.com
References: <20251104165125.174168-1-18255117159@163.com>
 <20251104165125.174168-2-18255117159@163.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20251104165125.174168-2-18255117159@163.com>
X-HM-Tid: 0a9a7731027109cckunm3695c205155bc1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQklNSVZKGBkfHhlCQklCSRhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=OQrlNibCvuZayM7wDbAagcEJdfH7X7Q3cM6x97+7LQYx7k4r/CgTIBxxCMJ3Y3fvGNo5K6I52NbBbMcdb5R2ELbdSxTmrl+IoMlKzkcVNDrZPs9R8U4AlvAAIOr+HA4C22Kud5mpViQKRjgDZtrex+JDHEueUhSBWnW/n+bRq3E=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=qaMbRURJhLkvG/AVZ92aTWNCGETrMCxlf9HvH6rX52w=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_003139_730719_49337D5B 
X-CRM114-Status: GOOD (  16.88  )
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

5ZyoIDIwMjUvMTEvMDUg5pif5pyf5LiJIDA6NTEsIEhhbnMgWmhhbmcg5YaZ6YGTOgo+IEN1cnJl
bnQgUENJZSBpbml0aWFsaXphdGlvbiBsb2dpYyBtYXkgbGVhdmUgUm9vdCBQb3J0cyAocm9vdCBi
cmlkZ2VzKQo+IG9wZXJhdGluZyB3aXRoIG5vbi1vcHRpbWFsIE1heGltdW0gUGF5bG9hZCBTaXpl
IChNUFMpIHNldHRpbmdzLiBFeGlzdGluZwo+IGNvZGUgaW4gcGNpX2NvbmZpZ3VyZV9tcHMoKSBy
ZXR1cm5zIGVhcmx5IGZvciBkZXZpY2VzIHdpdGhvdXQgYW4gdXBzdHJlYW0KPiBicmlkZ2UgKCFi
cmlkZ2UpIHdoaWNoIGluY2x1ZGVzIFJvb3QgUG9ydHMsIHNvIHRoZWlyIE1QUyB2YWx1ZXMgcmVt
YWluCj4gYXQgZmlybXdhcmUvaGFyZHdhcmUgZGVmYXVsdHMuIFRoaXMgZmFpbHMgdG8gdXRpbGl6
ZSB0aGUgY29udHJvbGxlcidzIGZ1bGwKPiBjYXBhYmlsaXRpZXMsIGxlYWRpbmcgdG8gc3Vib3B0
aW1hbCBkYXRhIHRyYW5zZmVyIGVmZmljaWVuY3kgYWNyb3NzIHRoZQo+IFBDSWUgaGllcmFyY2h5
Lgo+IAo+IFdpdGggdGhpcyBwYXRjaCwgZHVyaW5nIHRoZSBob3N0IGNvbnRyb2xsZXIgcHJvYmlu
ZyBwaGFzZToKPiAtIFdoZW4gUENJZSBidXMgdHVuaW5nIGlzIGVuYWJsZWQgKG5vdCBQQ0lFX0JV
U19UVU5FX09GRiksIGFuZAo+IC0gVGhlIGRldmljZSBpcyBhIFJvb3QgUG9ydCB3aXRob3V0IGFu
IHVwc3RyZWFtIGJyaWRnZSAoIWJyaWRnZSksCj4gVGhlIFJvb3QgUG9ydCdzIE1QUyBpcyBzZXQg
dG8gaXRzIGhhcmR3YXJlLXN1cHBvcnRlZCBtYXhpbXVtIHZhbHVlCj4gKDEyOCA8PCBkZXYtPnBj
aWVfbXBzcykuCj4gCj4gTm90ZSB0aGF0IHRoaXMgaW5pdGlhbCBtYXhpbXVtIE1QUyBzZXR0aW5n
IG1heSBiZSByZWR1Y2VkIGxhdGVyLCBkdXJpbmcKPiBkb3duc3RyZWFtIGRldmljZSBlbnVtZXJh
dGlvbiwgaWYgYW55IGRvd25zdHJlYW0gZGV2aWNlIGRvZXMgbm90IHN1cHBvcgo+IHRoZSBSb290
IFBvcnQncyBtYXhpbXVtIE1QUy4KPiAKPiBUaGlzIGNoYW5nZSBlbnN1cmVzIFJvb3QgUG9ydHMg
YXJlIHByb3Blcmx5IGluaXRpYWxpemVkIGJlZm9yZSBkb3duc3RyZWFtCj4gZGV2aWNlcyBuZWdv
dGlhdGUgTVBTLCB3aGlsZSBtYWludGFpbmluZyBiYWNrd2FyZCBjb21wYXRpYmlsaXR5IHZpYSB0
aGUKPiBQQ0lFX0JVU19UVU5FX09GRiBjaGVjay4KPiAKClRlc3RlZC1ieTogU2hhd24gTGluIDxz
aGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cgo+IFN1Z2dlc3RlZC1ieTogTmlrbGFzIENhc3NlbCA8
Y2Fzc2VsQGtlcm5lbC5vcmc+Cj4gU3VnZ2VzdGVkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
PG1hbmlAa2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBIYW5zIFpoYW5nIDwxODI1NTExNzE1
OUAxNjMuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9wY2kvcHJvYmUuYyB8IDEyICsrKysrKysrKysr
Kwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wY2kvcHJvYmUuYyBiL2RyaXZlcnMvcGNpL3Byb2JlLmMKPiBpbmRleCAwY2U5OGUx
OGI1YTguLjI0NTlkZWYzYWY5YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9wcm9iZS5jCj4g
KysrIGIvZHJpdmVycy9wY2kvcHJvYmUuYwo+IEBAIC0yMTk2LDYgKzIxOTYsMTggQEAgc3RhdGlj
IHZvaWQgcGNpX2NvbmZpZ3VyZV9tcHMoc3RydWN0IHBjaV9kZXYgKmRldikKPiAgIAkJcmV0dXJu
Owo+ICAgCX0KPiAgIAo+ICsJLyoKPiArCSAqIFVubGVzcyBNUFMgc3RyYXRlZ3kgaXMgUENJRV9C
VVNfVFVORV9PRkYgKGRvbid0IHRvdWNoIE1QUyBhdCBhbGwpLAo+ICsJICogc3RhcnQgb2ZmIGJ5
IHNldHRpbmcgUm9vdCBQb3J0cycgTVBTIHRvIE1QU1MuIFRoaXMgb25seSBhcHBsaWVzIHRvCj4g
KwkgKiBSb290IFBvcnRzIHdpdGhvdXQgYW4gdXBzdHJlYW0gYnJpZGdlIChyb290IGJyaWRnZXMp
LCBhcyBvdGhlciBSb290Cj4gKwkgKiBQb3J0cyB3aWxsIGhhdmUgZG93bnN0cmVhbSBicmlkZ2Vz
LiBEZXBlbmRpbmcgb24gdGhlIE1QUyBzdHJhdGVneQo+ICsJICogYW5kIE1QU1Mgb2YgZG93bnN0
cmVhbSBkZXZpY2VzLCB0aGUgUm9vdCBQb3J0J3MgTVBTIG1heSBiZQo+ICsJICogb3ZlcnJpZGRl
biBsYXRlci4KPiArCSAqLwo+ICsJaWYgKCFicmlkZ2UgJiYgcGNpX3BjaWVfdHlwZShkZXYpID09
IFBDSV9FWFBfVFlQRV9ST09UX1BPUlQgJiYKPiArCSAgICBwY2llX2J1c19jb25maWcgIT0gUENJ
RV9CVVNfVFVORV9PRkYpCj4gKwkJcGNpZV9zZXRfbXBzKGRldiwgMTI4IDw8IGRldi0+cGNpZV9t
cHNzKTsKPiArCj4gICAJaWYgKCFicmlkZ2UgfHwgIXBjaV9pc19wY2llKGJyaWRnZSkpCj4gICAJ
CXJldHVybjsKPiAgIAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
