Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4047EDEBFD
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 00:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z7f1JHcOm2p4EPO/EvRC1MRwQUCPKxps7/SAAH3WNWo=; b=KCdRgn+TqDFz74Kh3UZO6I8dvV
	CIuJ/nbFPHe2+bPqGb3Fdfdv+wa2T9SZf1gIQzox3kQ5maRTrtwUubg1zo2Xg1ZilWZKTAjkq5lbV
	SCLPhlii9YDd5azVOlV8Lw0dmvh5WuzsD+S6QScxPGjNLR7mLZbs3tcGlZfGKvuSTUR2USDKY+Qfn
	fKucVFZwlPNHPs4Sp5eBTXjvCgk+b373QgbXATMLHUvrxO3zkZ91b2biBDhdObftSHadDIt3i1WtL
	NZ34yjrJB04MJtcwp8GbFhQ9WBy6n3BZmUDEbFPptyGQrFnIgDPEYr6Gqs+o9rXVI7eC0A9087Xbj
	IF7oFlcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxaPe-0000000GBX1-3TUB;
	Wed, 04 Mar 2026 00:48:30 +0000
Received: from mail-m8195.xmail.ntesmail.com ([156.224.81.95])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxaPb-0000000GBUq-0A12;
	Wed, 04 Mar 2026 00:48:29 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 35a5c15d4;
	Wed, 4 Mar 2026 08:48:13 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, Martin Filla <freebsd@sysctl.cz>,
 Charalampos Mitrodimas <charmitro@posteo.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] arm64: dts: rockchip: assign pipe clock to rk3568
 PCIe lanes
To: david@ixit.cz, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Frank Wunderlich <frank-w@public-files.de>
References: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-0-af5a5207b0a1@ixit.cz>
 <20260303-rk3568-bri-r2-pro-fix-pcie-v3-1-af5a5207b0a1@ixit.cz>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <f46661cf-fc26-db4f-6161-e0e2734e796c@rock-chips.com>
Date: Wed, 4 Mar 2026 08:48:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-1-af5a5207b0a1@ixit.cz>
X-HM-Tid: 0a9cb65117ae09cckunmf49cc13a1151d96
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxhNSlZPHkoZGUkYGU4YGEpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=PRtRvhz6wGRr/itjTIq2BcGTEqdE5rluvLSsFHuK54Ko1NPmAae7MSeQkVTuYdFH7DMpBSKTFToPlWh71wnbjN3ilxdM+5QLJpg8Mpx+3/v1hHhkA5b5cgcekZ6Sl9tRs+VLz1sHAy8pN09pXPd7vNan18qfrjmbtOXIyqo7WVc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=LcEJtq7Z/7TAceUs8G8nMrrfpHpG1Zk+02PHiyg3v4s=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_164827_680737_2BD18846 
X-CRM114-Status: GOOD (  16.96  )
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

SGkgRGF2aWQKCtTaIDIwMjYvMDMvMDQg0MfG2sj9IDM6NTIsIERhdmlkIEhlaWRlbGJlcmcgdmlh
IEI0IFJlbGF5INC0tcA6Cj4gRnJvbTogRGF2aWQgSGVpZGVsYmVyZyA8ZGF2aWRAaXhpdC5jej4K
PiAKPiBUaGVzZSBjbG9ja3MgYXJlIHVzZWQgYnkgUENJZSBsYW5lcywgYnV0IHdlJ3JlIG1pc3Np
bmcgZnJvbSB0aGUKPiBkZWZpbml0aW9uLgo+IAoKVGhhbmtzIGZvciBjYXRjaGluZyB0aGlzLgoK
U2luY2UgeW91J3JlIGFscmVhZHkgd29ya2luZyBvbiB0aGUgUENJZSBjbG9jayBkZWZpbml0aW9u
cywgd291bGQgeW91Cm1pbmQgdGFraW5nIHRoZSBvcHBvcnR1bml0eSB0byBhbHNvIGFkZCB0aGUg
bWlzc2luZyBwY2llMngxIHBpcGUgY2xvY2sKdG8gdGhlIHJrMzU2eC1iYXNlLmR0c2kgaW4gdGhl
IHNhbWUgcGF0Y2g/IFRoaXMgd291bGQga2VlcCB0aGUgZml4ZXMgCmNvbXBsZXRlIGFuZCBjb25z
aXN0ZW50LgoKCj4gU3VnZ2VzdGVkLWJ5OiBDaGFyYWxhbXBvcyBNaXRyb2RpbWFzIDxjaGFybWl0
cm9AcG9zdGVvLm5ldD4KPiBTaWduZWQtb2ZmLWJ5OiBEYXZpZCBIZWlkZWxiZXJnIDxkYXZpZEBp
eGl0LmN6Pgo+IC0tLQo+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRz
aSB8IDEyICsrKysrKysrLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NjguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0
c2kKPiBpbmRleCA2NTgwOTdlZDY5NzE0Li4zYmM2NTNmMDI3ZjFmIDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4gQEAgLTE1NSw5ICsxNTUsMTEgQEAgcGNp
ZTN4MTogcGNpZUBmZTI3MDAwMCB7Cj4gICAJCWJ1cy1yYW5nZSA9IDwweDEwIDB4MWY+Owo+ICAg
CQljbG9ja3MgPSA8JmNydSBBQ0xLX1BDSUUzMFgxX01TVD4sIDwmY3J1IEFDTEtfUENJRTMwWDFf
U0xWPiwKPiAgIAkJCSA8JmNydSBBQ0xLX1BDSUUzMFgxX0RCST4sIDwmY3J1IFBDTEtfUENJRTMw
WDE+LAo+IC0JCQkgPCZjcnUgQ0xLX1BDSUUzMFgxX0FVWF9OREZUPjsKPiArCQkJIDwmY3J1IENM
S19QQ0lFMzBYMV9BVVhfTkRGVD4sCj4gKwkJCSA8JmNydSBDTEtfUENJRTMwWDFfUElQRV9ERlQ+
Owo+ICAgCQljbG9jay1uYW1lcyA9ICJhY2xrX21zdCIsICJhY2xrX3NsdiIsCj4gLQkJCSAgICAg
ICJhY2xrX2RiaSIsICJwY2xrIiwgImF1eCI7Cj4gKwkJCSAgICAgICJhY2xrX2RiaSIsICJwY2xr
IiwgImF1eCIsCj4gKwkJCSAgICAgICJwaXBlIjsKPiAgIAkJZGV2aWNlX3R5cGUgPSAicGNpIjsK
PiAgIAkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDE2MCBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiAg
IAkJCSAgICAgPEdJQ19TUEkgMTU5IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+IEBAIC0yMDgsOSAr
MjEwLDExIEBAIHBjaWUzeDI6IHBjaWVAZmUyODAwMDAgewo+ICAgCQlidXMtcmFuZ2UgPSA8MHgy
MCAweDJmPjsKPiAgIAkJY2xvY2tzID0gPCZjcnUgQUNMS19QQ0lFMzBYMl9NU1Q+LCA8JmNydSBB
Q0xLX1BDSUUzMFgyX1NMVj4sCj4gICAJCQkgPCZjcnUgQUNMS19QQ0lFMzBYMl9EQkk+LCA8JmNy
dSBQQ0xLX1BDSUUzMFgyPiwKPiAtCQkJIDwmY3J1IENMS19QQ0lFMzBYMl9BVVhfTkRGVD47Cj4g
KwkJCSA8JmNydSBDTEtfUENJRTMwWDJfQVVYX05ERlQ+LAo+ICsJCQkgPCZjcnUgQ0xLX1BDSUUz
MFgyX1BJUEVfREZUPjsKPiAgIAkJY2xvY2stbmFtZXMgPSAiYWNsa19tc3QiLCAiYWNsa19zbHYi
LAo+IC0JCQkgICAgICAiYWNsa19kYmkiLCAicGNsayIsICJhdXgiOwo+ICsJCQkgICAgICAiYWNs
a19kYmkiLCAicGNsayIsICJhdXgiLAo+ICsJCQkgICAgICAicGlwZSI7Cj4gICAJCWRldmljZV90
eXBlID0gInBjaSI7Cj4gICAJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxNjUgSVJRX1RZUEVfTEVW
RUxfSElHSD4sCj4gICAJCQkgICAgIDxHSUNfU1BJIDE2NCBJUlFfVFlQRV9MRVZFTF9ISUdIPiwK
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
