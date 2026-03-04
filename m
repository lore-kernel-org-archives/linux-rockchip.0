Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA8DEEF8FE6
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 13:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x8g5Y+wLqzR/EeQnluDE2ybr31E/ov8gn2PLdFUAwd8=; b=A4eUS2QsX3wiL615ltycKKzBPw
	1QXE01GXOgJgZEirMV384f/JZgY4AluW3OB2Zx0+3yKZTwf3klGIOZYPDph0toI2Vcfv/6/hZEVH5
	9IFsFIxgDUWZCqF9lZ2SABFq+hp+zfmWFTjceSzkS+bcgqVBF0NO36kS55BTSbbFDOPA1UCYZHQwp
	CTM96ONWlvKJAye02Fj94vnxm/XQ8UKAJYEqqgdsp17/OfdN9Dxmo9wgrtT3e0QPy87wos9sjF9VQ
	hiBvZq6AzwJ6PJqdyApycrOOWlkmTBO9+R0KsE1iI+RL2SSLoIBLUlhfXwEMZ18ws6H1HZvaC0myV
	cBnuXt8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxmOv-0000000HFw0-39rG;
	Wed, 04 Mar 2026 13:36:33 +0000
Received: from mail-m49243.qiye.163.com ([45.254.49.243])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxmOs-0000000HFv6-2tl0;
	Wed, 04 Mar 2026 13:36:32 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 35bef961c;
	Wed, 4 Mar 2026 21:36:16 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, Martin Filla <freebsd@sysctl.cz>,
 Charalampos Mitrodimas <charmitro@posteo.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v4 1/4] arm64: dts: rockchip: assign pipe clock to rk356x
 PCIe lanes
To: david@ixit.cz, Rob Herring <robh@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, "elaine.zhang"
 <elaine.zhang@rock-chips.com>
References: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-0-37abd7ba29d0@ixit.cz>
 <20260304-rk3568-bri-r2-pro-fix-pcie-v4-1-37abd7ba29d0@ixit.cz>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <d981fa84-bd05-ac9d-98ca-89ee47177829@rock-chips.com>
Date: Wed, 4 Mar 2026 21:36:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-1-37abd7ba29d0@ixit.cz>
X-HM-Tid: 0a9cb91043db09cckunm56444db0122910c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxgYQ1ZIQkxLHxhNSUweTB9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=fx22D2kn242RR6kXvU/2drBjn1X7G1r4J6WP3RnZQe9shUfVHmlNHN60ywYZG39crbVuIKrwgDtFYU4oIbfReugUOmgXdVdgWDFlSsGQJbth/rPtmlUigRHhfyk4mNFvhSQ/F3n1Dk9z5rfkpYnAu08yC8Gs6u66zvNO7SXT20w=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=p/5CjFN5DQLnwXu9X2kNfSbkWVbxCQkt3uDqFMTtaNk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_053631_343769_7382C060 
X-CRM114-Status: GOOD (  17.41  )
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

KyBFbGFpbmUKCtTaIDIwMjYvMDMvMDQg0MfG2sj9IDE5OjA1LCBEYXZpZCBIZWlkZWxiZXJnIHZp
YSBCNCBSZWxheSDQtLXAOgo+IEZyb206IERhdmlkIEhlaWRlbGJlcmcgPGRhdmlkQGl4aXQuY3o+
Cj4gCj4gVGhlc2UgY2xvY2tzIGFyZSB1c2VkIGJ5IFBDSWUgbGFuZXMsIGJ1dCB3ZSdyZSBtaXNz
aW5nIGZyb20gdGhlCj4gZGVmaW5pdGlvbi4KPgoKVGhlc2UgbWlzc2luZyBjbG9ja3MgYXJlIG5l
ZWRlZCBidXQgUENJZSBzdGlsbCB3b3JrIGZpbmWjrGJlY2F1c2UKdGhlIGNsayBjb2RlIGZvciBy
azM1NjggZGlkbid0IGFjdHVhbGx5IGRlZmluZSB0aGVtIGFzIHJlYWwgY2xvY2sKZ2F0ZXMuIFNv
IHRoZXkgYXJlIGFsd2F5cyBlbmFibGVkIHRoYW5rcyB0byB0aGUgZGVmYXVsdCB2YWx1ZSBhbmQg
b3V0Cm9mIHRoZSByYWRhciBvZiBjbGtfZGlzYWJsZV91bnVzZWQoKS4KCkl0J3MgYSBiaXQgc3Vi
b3B0aW1hbCBhbmQgcHJvYmFibHkgbmVlZCB0byBiZSBpbXByb3ZlZCBpbiBjbGstcmszNTY4LmMK
CkZvciAkc3ViamVjdCBwYXRjaCwKClJldmlld2VkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkBy
b2NrLWNoaXBzLmNvbT4KCgo+IFN1Z2dlc3RlZC1ieTogQ2hhcmFsYW1wb3MgTWl0cm9kaW1hcyA8
Y2hhcm1pdHJvQHBvc3Rlby5uZXQ+Cj4gU2lnbmVkLW9mZi1ieTogRGF2aWQgSGVpZGVsYmVyZyA8
ZGF2aWRAaXhpdC5jej4KPiAtLS0KPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LmR0c2kgICAgICB8IDEyICsrKysrKysrLS0tLQo+ICAgYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NngtYmFzZS5kdHNpIHwgIDYgKysrKy0tCj4gICAyIGZpbGVzIGNoYW5nZWQs
IDEyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4gaW5kZXggNjU4MDk3ZWQ2OTcxNC4uM2JjNjUzZjAyN2Yx
ZiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNp
Cj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+IEBAIC0x
NTUsOSArMTU1LDExIEBAIHBjaWUzeDE6IHBjaWVAZmUyNzAwMDAgewo+ICAgCQlidXMtcmFuZ2Ug
PSA8MHgxMCAweDFmPjsKPiAgIAkJY2xvY2tzID0gPCZjcnUgQUNMS19QQ0lFMzBYMV9NU1Q+LCA8
JmNydSBBQ0xLX1BDSUUzMFgxX1NMVj4sCj4gICAJCQkgPCZjcnUgQUNMS19QQ0lFMzBYMV9EQkk+
LCA8JmNydSBQQ0xLX1BDSUUzMFgxPiwKPiAtCQkJIDwmY3J1IENMS19QQ0lFMzBYMV9BVVhfTkRG
VD47Cj4gKwkJCSA8JmNydSBDTEtfUENJRTMwWDFfQVVYX05ERlQ+LAo+ICsJCQkgPCZjcnUgQ0xL
X1BDSUUzMFgxX1BJUEVfREZUPjsKPiAgIAkJY2xvY2stbmFtZXMgPSAiYWNsa19tc3QiLCAiYWNs
a19zbHYiLAo+IC0JCQkgICAgICAiYWNsa19kYmkiLCAicGNsayIsICJhdXgiOwo+ICsJCQkgICAg
ICAiYWNsa19kYmkiLCAicGNsayIsICJhdXgiLAo+ICsJCQkgICAgICAicGlwZSI7Cj4gICAJCWRl
dmljZV90eXBlID0gInBjaSI7Cj4gICAJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxNjAgSVJRX1RZ
UEVfTEVWRUxfSElHSD4sCj4gICAJCQkgICAgIDxHSUNfU1BJIDE1OSBJUlFfVFlQRV9MRVZFTF9I
SUdIPiwKPiBAQCAtMjA4LDkgKzIxMCwxMSBAQCBwY2llM3gyOiBwY2llQGZlMjgwMDAwIHsKPiAg
IAkJYnVzLXJhbmdlID0gPDB4MjAgMHgyZj47Cj4gICAJCWNsb2NrcyA9IDwmY3J1IEFDTEtfUENJ
RTMwWDJfTVNUPiwgPCZjcnUgQUNMS19QQ0lFMzBYMl9TTFY+LAo+ICAgCQkJIDwmY3J1IEFDTEtf
UENJRTMwWDJfREJJPiwgPCZjcnUgUENMS19QQ0lFMzBYMj4sCj4gLQkJCSA8JmNydSBDTEtfUENJ
RTMwWDJfQVVYX05ERlQ+Owo+ICsJCQkgPCZjcnUgQ0xLX1BDSUUzMFgyX0FVWF9OREZUPiwKPiAr
CQkJIDwmY3J1IENMS19QQ0lFMzBYMl9QSVBFX0RGVD47Cj4gICAJCWNsb2NrLW5hbWVzID0gImFj
bGtfbXN0IiwgImFjbGtfc2x2IiwKPiAtCQkJICAgICAgImFjbGtfZGJpIiwgInBjbGsiLCAiYXV4
IjsKPiArCQkJICAgICAgImFjbGtfZGJpIiwgInBjbGsiLCAiYXV4IiwKPiArCQkJICAgICAgInBp
cGUiOwo+ICAgCQlkZXZpY2VfdHlwZSA9ICJwY2kiOwo+ICAgCQlpbnRlcnJ1cHRzID0gPEdJQ19T
UEkgMTY1IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICAgCQkJICAgICA8R0lDX1NQSSAxNjQgSVJR
X1RZUEVfTEVWRUxfSElHSD4sCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTZ4LWJhc2UuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTZ4LWJhc2UuZHRzaQo+IGluZGV4IDY4YjQ4NjA2ZjYwMTAuLjE1NzQxYWNhYzYyNzQgMTAwNjQ0
Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NngtYmFzZS5kdHNpCj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NngtYmFzZS5kdHNpCj4gQEAg
LTEwMjAsOSArMTAyMCwxMSBAQCBwY2llMngxOiBwY2llQGZlMjYwMDAwIHsKPiAgIAkJYnVzLXJh
bmdlID0gPDB4MCAweGY+Owo+ICAgCQljbG9ja3MgPSA8JmNydSBBQ0xLX1BDSUUyMF9NU1Q+LCA8
JmNydSBBQ0xLX1BDSUUyMF9TTFY+LAo+ICAgCQkJIDwmY3J1IEFDTEtfUENJRTIwX0RCST4sIDwm
Y3J1IFBDTEtfUENJRTIwPiwKPiAtCQkJIDwmY3J1IENMS19QQ0lFMjBfQVVYX05ERlQ+Owo+ICsJ
CQkgPCZjcnUgQ0xLX1BDSUUyMF9BVVhfTkRGVD4sCj4gKwkJCSA8JmNydSBDTEtfUENJRTIwX1BJ
UEVfREZUPjsKPiAgIAkJY2xvY2stbmFtZXMgPSAiYWNsa19tc3QiLCAiYWNsa19zbHYiLAo+IC0J
CQkgICAgICAiYWNsa19kYmkiLCAicGNsayIsICJhdXgiOwo+ICsJCQkgICAgICAiYWNsa19kYmki
LCAicGNsayIsICJhdXgiLAo+ICsJCQkgICAgICAicGlwZSI7Cj4gICAJCWRldmljZV90eXBlID0g
InBjaSI7Cj4gICAJCSNpbnRlcnJ1cHQtY2VsbHMgPSA8MT47Cj4gICAJCWludGVycnVwdC1tYXAt
bWFzayA9IDwwIDAgMCA3PjsKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
