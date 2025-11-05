Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3AA4CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0At0yNNL7gSt07mPMhuo5ngTi3wLoO9pUqyojXf7zE=; b=0sGaLANPm06Xr0
	6GiigbpkLu/A+dMDsQgTJVRmVaS7fBzN89Z+P6He0gpldfVLIEABMNYFK50Fmp79YSEstsK8lvgv4
	QrwQUU+0Zzk6Q3HWEN8emhVUtZzlMDggumdyNOcky5s6Qk5wOCayzs6VMif8iFDpi/2ipZTAcsf2K
	+Mt3yXXA99gi22etDoqQWZBaWev5VsSGVG2qZuMJbwwfq2RfgePSfRkBsdjkT1MJp3MokOh6rhYau
	patTY6oIs7zeT/DS5CZR+qG/BdtZuqD/rgIKxViFxX3/5om2seMwbJSTV6NakvWuwBgEh72ZyMsGH
	ZDJgwySxGlov3MC218IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGX7Q-0000000D51q-0S5a;
	Wed, 05 Nov 2025 06:35:44 +0000
Received: from mail-m3295.qiye.163.com ([220.197.32.95])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGX7M-0000000D51J-3Rmf;
	Wed, 05 Nov 2025 06:35:42 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 28738ad08;
	Wed, 5 Nov 2025 14:35:29 +0800 (GMT+08:00)
Message-ID: <ba120577-42da-424d-8102-9d085c1494c8@rock-chips.com>
Date: Wed, 5 Nov 2025 14:35:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: align bindings to PCIe spec
To: Geraldo Nascimento <geraldogabriel@gmail.com>
References: <4b5ffcccfef2a61838aa563521672a171acb27b2.1762321976.git.geraldogabriel@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <4b5ffcccfef2a61838aa563521672a171acb27b2.1762321976.git.geraldogabriel@gmail.com>
X-HM-Tid: 0a9a52ba413509cckunmc2aaee18cb0988
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk9CSVYaTENLQx8YT0gYQ0xWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=OMV8z0tr5MTsd4IVw0FOfwUChjbcdL35pQsXtIjZ5ru+eWExEIhbd2fGG14g2NLimccEK4Hdkh+ROPo2UcnU+xSjp2L831Arzc99lmfLqETzC8isZ2mtWUL5kNS1US4NePVDmO5r/aLHP/3MJvGfiVOVyH3VN1uh0hc5r0MUSAE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=w3jBEw7Jy/T28wSQc6c2W5ztuhx1BYHAtBcKXgni9Oc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_223541_368342_4416E5DE 
X-CRM114-Status: GOOD (  23.35  )
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

SGkgR2VyYWxkbywKCuWcqCAyMDI1LzExLzA1IOaYn+acn+S4iSAxMzo1NSwgR2VyYWxkbyBOYXNj
aW1lbnRvIOWGmemBkzoKPiBUaGUgUEVSU1QjIHNpZGUtYmFuZCBzaWduYWwgaXMgZGVmaW5lZCBi
eSBQQ0llIHNwZWMgYXMgYW4gb3Blbi1kcmFpbgoKSSBjb3VsZG4ndCBmaW5kIGFueSBjbHVlIHRo
YXQgc2F5cyBQRVJTVCMgaXMgYW4gb3Blbi1kcmFpbiBzaWduYWwuIENvdWxkCnlvdSBxdW90ZSBp
dCBmcm9tIFBDSSBFeHByZXNzIENhcmQgRWxlY3Ryb21lY2hhbmljYWwgU3BlY2lmaWNhdGlvbj8K
Cj4gYWN0aXZlLWxvdyBzaWduYWwgdGhhdCBkZXBlbmRzIG9uIGEgcHVsbC11cCByZXNpc3RvciB0
byBrZWVwIHRoZQo+IHNpZ25hbCBoaWdoIHdoZW4gZGVhc3NlcnRlZC4gQWxpZ24gYmluZGluZ3Mg
dG8gdGhlIHNwZWMuCgpUaGlzIGlzIG5vdCB0cnVlIGZyb20gbXkgUE9WLiBBbiBvcGVuLWRyYWlu
IFBDSWUgc2lkZS1iYW5kICBzaWduYWwKaXMgdXNlZCBmb3IgYm90aCBvZiBFUCBhbmQgUkMgdG8g
YWNoaWV2ZSBzb21lIHNwZWNpYWwgd29yay1mbG93LCBsaWtlCkNMS1JFUSMgZm9yIEwxc3MsIGV0
Yy4gU2luY2UgYm90aCBlbmRzIGNvdWxkIGNvbnRyb2wgaXQuIEJ1dCBQRVJTVCMgaXMgYQpmdW5k
YW1lbnRhbCByZXNldCBzaWduYWwgZHJpdmVuIGJ5IFJDIHdoaWNoIHNob3VsZCBiZSBpbiBzdXJl
IHN0YXRlLApoaWdoIG9yIGxvdywgaGFzIG5vdGhpbmcgdG8gZG8gd2l0aCBvcGVuLWRyYWluLgoK
PiAKPiBOb3RlIHRoYXQgdGhlIHJlbGV2YW50IGRyaXZlciBoYWNrcyB0aGUgYWN0aXZlLWxvdyBz
aWduYWwgYXMKPiBhY3RpdmUtaGlnaCBhbmQgc3dpdGNoZXMgdGhlIG5vcm1hbCBwb2xhcml0eSBv
ZiBQRVJTVCMKPiBhc3NlcnRpb24vZGVhc3NlcnRpb24sIDEgYW5kIDAgaW4gdGhhdCBvcmRlciwg
YW5kIGluc3RlYWQgdXNlcwo+IDAgdG8gc2lnbmFsIGxvdyAoYXNzZXJ0aW9uKSBhbmQgMSB0byBz
aWduYWwgZGVhc3NlcnRpb24uCj4gCj4gSW5jaWRlbnRhbGx5LCB0aGlzIGNoYW5nZSBtYWtlcyBo
YXJkd2FyZSB0aGF0IHJlZnVzZWQgdG8gd29yawo+IHdpdGggdGhlIFJvY2tjaGlwLUlQIFBDSWUg
Y29yZSB3b3JraW5nIGZvciBtZSwgd2hpY2ggd2FzIHRoZQo+IG9iamVjdCBvZiBtYW55IGZvb2wn
cyBlcnJhbmRzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEdlcmFsZG8gTmFzY2ltZW50byA8Z2VyYWxk
b2dhYnJpZWxAZ21haWwuY29tPgo+IC0tLQo+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTlwcm8tdm1hcmMtc29tLmR0c2kgfCA4ICsrKysrKy0tCj4gICAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OXByby12bWFyYy1zb20uZHRzaSBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5cHJvLXZtYXJjLXNvbS5kdHNpCj4gaW5kZXgg
YWE3MDc3NmU4OThhLi44ZGNiMDM3MDgxNDUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTlwcm8tdm1hcmMtc29tLmR0c2kKPiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OXByby12bWFyYy1zb20uZHRzaQo+IEBAIC0zODMsOSAr
MzgzLDkgQEAgJnBjaWVfcGh5IHsKPiAgIH07Cj4gICAKPiAgICZwY2llMCB7Cj4gLQllcC1ncGlv
cyA9IDwmZ3BpbzAgUktfUEI0IEdQSU9fQUNUSVZFX0hJR0g+Owo+ICsJZXAtZ3Bpb3MgPSA8Jmdw
aW8wIFJLX1BCNCAoR1BJT19BQ1RJVkVfSElHSCB8IEdQSU9fT1BFTl9EUkFJTik+OwoKU28gbXkg
YmlnZ2VzdCBndWVzcyBpcyB3ZSBkb24ndCBuZWVkIHRoaXMgY2hhbmdlIGF0IGFsbC4KZ3BpbzBi
NCBpcyB1c2VkIGFzIGdwaW8gZnVuY3Rpb24sIHRoZSBwcm9ibGVtIHlvdSBmYWNlZCBpcyB0aGF0
IGl0CmRpZG4ndCBzZXQgZ3BpbzBiNCBhcyBwdWxsLXVwLCBiZWNhdXNlIHRoZSBkZWZhdXQgc3Rh
dGUgaXMgcHVsbC1kb3duLgoKTWF5YmUgdGhlIGRyaXZlIGN1cnJlbnQgb2YgdGhpcyBJTyBpcyB0
b28gd2VhaywgbWFraW5nIGl0IHVuYWJsZSB0byAKZnVsbHkgZHJpdmUgaGlnaCBpbiB0aGUgcHVs
bC1kb3duIHN0YXRlPyBJZiB0aGF0J3MgdGhlIGNhc2UsIGNhbiB5b3Ugc2VlIAphIGhhbGYtbGV2
ZWwgc2lnbmFsIG9uIHRoZSBvc2NpbGxvc2NvcGU/Cgo+ICAgCW51bS1sYW5lcyA9IDw0PjsKPiAt
CXBpbmN0cmwtMCA9IDwmcGNpZV9jbGtyZXFuYl9jcG0+Owo+ICsJcGluY3RybC0wID0gPCZwY2ll
X2Nsa3JlcW5iX2NwbT4sIDwmcGNpZV9wZXJzdD47Cj4gICAJcGluY3RybC1uYW1lcyA9ICJkZWZh
dWx0IjsKPiAgIAl2cGNpZTB2OS1zdXBwbHkgPSA8JnZjY2FfMHY5PjsJLyogVkNDXzBWOV9TMCAq
Lwo+ICAgCXZwY2llMXY4LXN1cHBseSA9IDwmdmNjYV8xdjg+OwkvKiBWQ0NfMVY4X1MwICovCj4g
QEAgLTQwOCw2ICs0MDgsMTAgQEAgcGNpZSB7Cj4gICAJCXBjaWVfcHdyOiBwY2llLXB3ciB7Cj4g
ICAJCQlyb2NrY2hpcCxwaW5zID0gPDQgUktfUEQ0IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3Vw
PjsKPiAgIAkJfTsKPiArCQlwY2llX3BlcnN0OiBwY2llLXBlcnN0IHsKPiArCQkJcm9ja2NoaXAs
cGlucyA9IDwwIFJLX1BCNCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD47Cj4gKwkJfTsKPiAr
Cj4gICAJfTsKPiAgIAo+ICAgCXBtaWMgewoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
