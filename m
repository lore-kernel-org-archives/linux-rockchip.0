Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C0B5FCC9DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 08:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVzgGzxWgxO591a91njMFAOGfIqQItFnsA9j2AfZjA8=; b=FXqgBdtwWbIeCP
	dAU6Wtl8v4fZNt37YXwAtbuwQ3Q3WsfO+uWbIBB24gbINbf4DMB5mDJdGyGhcwwTysTJpdVmCAtYs
	TXMCSILKEUcZnHo5XhRRKRJu53yrrgNH2YWBpPdarr9VZ7mJiPBVPxVRhkLaFEQPf93K0AGa/xuaa
	qIbG9qwOpgZV4qe5ohG9Xa445zIPjrHO9fSOKSYrZZlFrY9YJEy6CdM00MAbDp31fzo//eZagVRFA
	PVESBc2w/I7Wnd5YX9vwxR1tel/jNxl8CH/fH0hcYlzypPhx9b17hgUHvYbL9QnMCW/jPkEqs5wOP
	y0fwYnAtlMQLOB092yBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzslk-00000008zqw-3XeO;
	Tue, 10 Mar 2026 08:48:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzsli-00000008zq8-3Yy9;
	Tue, 10 Mar 2026 08:48:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=LDnvAqGNNm3WAv14lqVG/Cz8m/tMIKxrjvpf5+LfotM=; b=l0wIErnCa7VHZPHycc5wGKaUkL
	Yvz5kANYlS0XPLz/iuR2NrLGPcRURHOBzm4faD1fWbmUqHDdbBPI9z4rsa/I61cA44XbcjfQPzSQI
	3JH4sSNf+xfTq6bJE2qbkzZaR3ywZHyEXWZ4OeT/t1ncRkWfvm3Be3AY6w1bBi5Jo2GmLwbKxEmMC
	9SzOmfK47DvNw80PUtVeLGQH6/0OrqRDnDgb4kmCKe808R4hhSaTTDC4lTtu9MovXpN+i/43gjRaT
	oCZ9/2WFrq91UN5rTmSZC9LV5vi9tuUFV1EgdXUDbacu60B/wcVrDVEmRsehDCCkKEWM4Vg2mtT3s
	rQPM1bSA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Pedro Alves <pta2002@pta2002.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Pedro Alves <pta2002@pta2002.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
Date: Tue, 10 Mar 2026 09:48:43 +0100
Message-ID: <9638846.rMLUfLXkoz@phil>
In-Reply-To: <20260304-radxa-r5-itx-hdmirx-v2-1-6567e9e3298b@pta2002.com>
References: <20260304-radxa-r5-itx-hdmirx-v2-1-6567e9e3298b@pta2002.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_014846_893021_B1A61B2B 
X-CRM114-Status: GOOD (  14.41  )
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

SGkgUGVkcm8sCgpBbSBNaXR0d29jaCwgNC4gTcOkcnogMjAyNiwgMjE6NDQ6MzkgTWl0dGVsZXVy
b3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBQZWRybyBBbHZlczoKPiBUaGUgUmFkeGEgUm9j
ayA1IElUWCBib2FyZCBleHBvc2VzIGFuIEhETUkgaW5wdXQgZXhhY3RseSB0aGUgc2FtZSB3YXkg
YXMKPiB0aGUgUm9jayA1QiwgYnV0IHRoaXMgd2FzIG5vdCByZWZsZWN0ZWQgaW4gaXRzIERUUy4K
PiAKPiBDaGFuZ2UgdGhlIHJrMzU4OC1yb2NrLTUtaXR4IHRvIGNvbmZpZ3VyZSBhbmQgZW5hYmxl
IHRoZSBoZG1pX3JlY2VpdmVyCj4gYW5kIGhkbWlfcmVjZWl2ZXJfY21hIG5vZGVzLgo+IAo+IFRo
ZSBob3QtcGx1ZyBkZXRlY3Rpb24gKEhQRCkgcGluIGtlZXBzIHRoZSBoZG1pcnhfZGV0IG5hbWUg
cmF0aGVyIHRoYW4KPiB0aGUgaGRtaXJ4X2hwZCBuYW1lIHVzZWQgaW4gb3RoZXIgYm9hcmRzIHNp
bmNlIHRoYXQgaXMgd2hhdCBtYXRjaGVzIHRoZQo+IG9mZmljaWFsIHNjaGVtYXRpY3MgKEhETUlJ
UlhfREVUX0wpLgo+IAo+IFRoZSBjb25maWd1cmF0aW9ucyB3ZXJlIGNvbmZpcm1lZCB0byBiZSBp
ZGVudGljYWwgb24gdGhlIGRvd25zdHJlYW0KPiBSYWR4YSBrZXJuZWwsIGFuZCB0aGlzIGhhcyBi
ZWVuIHRlc3RlZCB0byB3b3JrIG9uIGEgUm9jayA1IElUWCBib2FyZAo+IHJ1bm5pbmcga2VybmVs
IDYuMTkuMy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBQZWRybyBBbHZlcyA8cHRhMjAwMkBwdGEyMDAy
LmNvbT4KCj4gKyZoZG1pX3JlY2VpdmVyIHsKPiArCXBpbmN0cmwtMCA9IDwmaGRtaW0xX3J4X2Nl
YyAmaGRtaW0xX3J4X2hwZGluICZoZG1pbTFfcnhfc2NsICZoZG1pbTFfcnhfc2RhICZoZG1pcnhf
ZGV0PjsKCmFyZSB5b3Ugc3VyZSB0aGUgaGRtaW0xX3J4X2hwZGluIGlzIHJvdXRlZD8KQmVjYXVz
ZSB0aGF0IGlzIGdwaW8zX0Q0IHdoaWxlIHlvdXIgaHBkLWdwaW9zIGJlbG93IGlzIGdwaW8xX2M2
LgoKPiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwlocGQtZ3Bpb3MgPSA8JmdwaW8x
IFJLX1BDNiBHUElPX0FDVElWRV9MT1c+OwoKQWxzbyBwbGVhc2UgcHJvdmlkZSBhIHBpbmN0cmwg
c2V0dGluZyBmb3IgdGhlIGdwaW8gaHBkIHBpbi4KClRoYW5rcyBhIGxvdApIZWlrbwoKPiArCj4g
KwlzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICAmaGRwdHhwaHkxIHsKPiAgCXN0YXR1cyA9
ICJva2F5IjsKPiAgfTsKPiAKPiAtLS0KPiBiYXNlLWNvbW1pdDogMDVmN2U4OWFiOTczMTU2NWQ4
YTYyZTNiNWQxZWMyMDY0ODVlZWIwYgo+IGNoYW5nZS1pZDogMjAyNjAzMDMtcmFkeGEtcjUtaXR4
LWhkbWlyeC1mNDY0NWU2NGY4YzMKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gCgoKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
