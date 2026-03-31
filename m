Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 798D4FF60DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Mar 2026 07:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ot2LFcza4qD9oWIU1D5MFyRI4B1jLd+mBzrdkHqwEH8=; b=0AzDsYHDBhX7bU
	BFIiakva5bVQK7YHikEwzCnRIQ+I63YZb1oo56uH6pQ8cpije5T6ZR6u2h5nHJGFLLudzomRm1NE7
	Zp8XoanEBNFb/YkgbGHC+a4R89pmj4YZ2/8ELwalQdxgMM9Zd72PFyGZJqFJbj97peXaXBaK8oTGj
	/+ri10kk4ysufc9RNrAoGCL/HwpvKWi4BP/dttL/zyFxBP3Dzl3Rd7HgxVcv+n0D1Ia7O5/laThQq
	ivHsP7TMYGGLLUM/UEiMmHGTL8S6A2UdzPxjvEYwNT9OtjNjBTWAkc+5cVw7BFy8k5yKYr+TFNsa2
	POaepfolBNDmklJ1gKuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Tyr-0000000CXOl-1RP6;
	Tue, 31 Mar 2026 07:57:45 +0000
Received: from mail-m49224.qiye.163.com ([45.254.49.224])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Tyn-0000000CXOM-3RL2;
	Tue, 31 Mar 2026 07:57:44 +0000
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 38f5d4f4e;
	Tue, 31 Mar 2026 15:57:36 +0800 (GMT+08:00)
Message-ID: <66305bf3-338b-ee5e-c9ad-3ff5639f5002@rock-chips.com>
Date: Tue, 31 Mar 2026 15:57:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Cc: shawn.lin@rock-chips.com, joro@8bytes.org, will@kernel.org,
 robin.murphy@arm.com, heiko@sntech.de, jonas@kwiboo.se,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, iommu@lists.linux.dev,
 Simon Xue <xxm@rock-chips.com>
Subject: Re: [PATCH] iommu/rockchip: fix page table allocation flags for v2
 IOMMU
To: Midgy BALON <midgy971@gmail.com>
References: <20260331075010.1463-1-midgy971@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260331075010.1463-1-midgy971@gmail.com>
X-HM-Tid: 0a9d42e5e66709cckunm1531d01ef14156
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUodGlZLQx5NTE9DTR1CHR1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=FFStyb+Bi2FuVK7Y0fE88p9wVWjK6i3ztZrv5fl141gBwzGBsSytLS6qGTslX6HwkQvRZs026r2/PvlvrNc12AwPJ8TtdRK20T/pGkYV4+SGmEucUkOkFep1ZUq91aYz4zuFa/P3AK54mO/WVW00SiHrOYchao+O/TNUhLeXIp0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=7DgGO+0Bl7QC0qCoRe3NT49Uq/dkgfuo3K9jkSPj7GE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_005743_188894_E25A7A91 
X-CRM114-Status: GOOD (  18.49  )
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

KyBTaW1vbgoK5ZyoIDIwMjYvMDMvMzEg5pif5pyf5LqMIDE1OjUwLCBNaWRneSBCQUxPTiDlhpnp
gZM6Cj4gY29tbWl0IDJhN2U2NDAwZjcyYiAoImlvbW11OiByb2NrY2hpcDogQWxsb2NhdGUgdGFi
bGVzIGZyb20gYWxsCj4gYXZhaWxhYmxlIG1lbW9yeSBmb3IgSU9NTVUgdjIiKSByZW1vdmVkIEdG
UF9ETUEzMiBmcm9tCj4gaW9tbXVfZGF0YV9vcHNfdjIsIHJlYXNvbmluZyB0aGF0IFJLMzU2eCBh
bmQgUkszNTg4IElPTU1VIHYyIGhhcmR3YXJlCj4gc3VwcG9ydHMgdXAgdG8gNDAtYml0IHBoeXNp
Y2FsIGFkZHJlc3NlcyBmb3IgcGFnZSB0YWJsZXMuICBIb3dldmVyLCB0aGUKPiBSSzM1NjggSU9N
TVUgcGFnZS10YWJsZSB3YWxrZXIgdXNlcyBhIDMyLWJpdCBBWEkgYnVzOiBpdCBjYW5ub3QgYWNj
ZXNzCj4gcGh5c2ljYWwgYWRkcmVzc2VzIGFib3ZlIDQgR0IgcmVnYXJkbGVzcyBvZiB0aGUgYWRk
cmVzcyBlbmNvZGluZyByYW5nZS4KPiAKPiBPbiBib2FyZHMgd2l0aCBtb3JlIHRoYW4gNCBHQiBv
ZiBSQU0gKGUuZy4gOCBHQiBMUEREUjRYKSwgcmVtb3ZpbmcKPiBHRlBfRE1BMzIgY2F1c2VzIHR3
byBkaXN0aW5jdCBmYWlsdXJlIG1vZGVzOgo+IAo+IDEuIERpcmVjdCBhbGxvY2F0aW9uIGFib3Zl
IDQgR0I6IGlvbW11X2FsbG9jX3BhZ2VzX3N6KCkgbWF5IHJldHVybgo+ICAgICBtZW1vcnkgYWJv
dmUgMHgxMDAwMDAwMDAuICBUaGUgaGFyZHdhcmUgcGFnZS10YWJsZSB3YWxrZXIgaXNzdWVzIGEK
PiAgICAgYnVzIGVycm9yIHRyeWluZyB0byBkZXJlZmVyZW5jZSB0aG9zZSBhZGRyZXNzZXMsIGNh
dXNpbmcgYW4gSU9NTVUKPiAgICAgZmF1bHQgb24gdGhlIGZpcnN0IERNQSB0cmFuc2FjdGlvbi4K
PiAKPiAyLiBTV0lPVExCIGJvdW5jZS1idWZmZXIgcG9pc29uaW5nOiB3aXRob3V0IEdGUF9ETUEz
MiwgcGFnZSB0YWJsZXMgbGFuZAo+ICAgICBhYm92ZSB0aGUgU1dJT1RMQiB3aW5kb3cuICBkbWFf
bWFwX3NpbmdsZSgpIHdpdGggRE1BX0JJVF9NQVNLKDMyKQo+ICAgICB0aGVuIGJvdW5jZXMgdGhl
bSBpbnRvIGEgYnVmZmVyIGJlbG93IDQgR0IuICBya19kdGVfZ2V0X3BhZ2VfdGFibGUoKQo+ICAg
ICByZXR1cm5zIHBoeXNfdG9fdmlydCgpIG9mIHRoZSBib3VuY2UgYnVmZmVyIGFkZHJlc3M7IFBU
RXMgYXJlIHdyaXR0ZW4KPiAgICAgdGhlcmU7IHRoZSBuZXh0IGRtYV9zeW5jX3NpbmdsZV9mb3Jf
ZGV2aWNlKERNQV9UT19ERVZJQ0UpIGNvcGllcyB0aGUKPiAgICAgb3JpZ2luYWwgKHplcm8pIGRh
dGEgYmFjayBvdmVyIHRoZSBib3VuY2UgYnVmZmVyLCBzaWxlbnRseSBlcmFzaW5nIHRoZQo+ICAg
ICBmcmVzaGx5IHdyaXR0ZW4gUFRFcy4gIFRoZSBJT01NVSBmYXVsdHMgYmVjYXVzZSBldmVyeSBQ
VEUgcmVhZHMgYXMgemVyby4KPiAKPiBSZXN0b3JlIEdGUF9ETUEzMiAoYW5kIERNQV9CSVRfTUFT
SygzMikpIGZvciBpb21tdV9kYXRhX29wc192Miwgd2hpY2gKPiBjdXJyZW50bHkgb25seSBzZXJ2
ZXMgInJvY2tjaGlwLHJrMzU2OC1pb21tdSIgaW4gbWFpbmxpbmUuCj4gCj4gVGVzdGVkIG9uIFJh
ZHhhIFJPQ0sgM0IgKFJLMzU2OCwgOCBHQiBMUEREUjRYKToKPiAgICAtIE1vYmlsZU5ldFYxIHZp
YSBSS05OOiA1LjggbXMvaW5mZXJlbmNlIChJT01NVSBtb2RlKQo+ICAgIC0gWU9MT3Y1cyA2NDB4
NjQwIHZpYSBSS05OOiB+NTcgbXMvaW5mZXJlbmNlIChJT01NVSBtb2RlKQo+ICAgIC0gTm8gSU9N
TVUgZmF1bHRzLCBjb3JyZWN0IGluZmVyZW5jZSByZXN1bHRzCj4gCj4gRml4ZXM6IDJhN2U2NDAw
ZjcyYiAoImlvbW11OiByb2NrY2hpcDogQWxsb2NhdGUgdGFibGVzIGZyb20gYWxsIGF2YWlsYWJs
ZSBtZW1vcnkgZm9yIElPTU1VIHYyIikKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IENj
OiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+Cj4gU2lnbmVkLW9mZi1ieTogTWlkZ3kg
QkFMT04gPG1pZGd5OTcxQGdtYWlsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvaW9tbXUvcm9ja2No
aXAtaW9tbXUuYyB8IDQgKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9yb2NrY2hpcC1p
b21tdS5jIGIvZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jCj4gaW5kZXggODVmMzY2N2U3
OTcuLjhiNDVkYjI5NDcxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9t
bXUuYwo+ICsrKyBiL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUuYwo+IEBAIC0xMzU4LDgg
KzEzNTgsOCBAQCBzdGF0aWMgc3RydWN0IHJrX2lvbW11X29wcyBpb21tdV9kYXRhX29wc192MiA9
IHsKPiAgIAkucHRfYWRkcmVzcyA9ICZya19kdGVfcHRfYWRkcmVzc192MiwKPiAgIAkubWtfZHRl
bnRyaWVzID0gJnJrX21rX2R0ZV92MiwKPiAgIAkubWtfcHRlbnRyaWVzID0gJnJrX21rX3B0ZV92
MiwKPiAtCS5kbWFfYml0X21hc2sgPSBETUFfQklUX01BU0soNDApLAo+IC0JLmdmcF9mbGFncyA9
IDAsCj4gKwkuZG1hX2JpdF9tYXNrID0gRE1BX0JJVF9NQVNLKDMyKSwKPiArCS5nZnBfZmxhZ3Mg
PSBHRlBfRE1BMzIsCj4gICB9Owo+ICAgCj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rldmlj
ZV9pZCBya19pb21tdV9kdF9pZHNbXSA9IHsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
