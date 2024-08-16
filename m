Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70909C52D7F
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 00:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpiAGhhDw/9zyYjbU3qcz740uavkkLNrPoEedr9ED3I=; b=w1uhxJ6eUNebSs
	KvM35d0yI9YjfaJtxl6+rTn4TWFyZarjbMqfjm/aXVKxJNPC+mbZ2eKwUh/l4CnRAQnY68so/PlYz
	hByPwpWRQhX19S80JQNsR2efIcEJhj0rxLSu/Kph/oY3yzMmguUc5TChQov9emKzan0FBPJmLAWji
	TqW2qyPpM/LrJXo+LFspTT9nGv8Hx3FIG6qjJWp4rSAFmTaEwZ9aiJn768EAhqXv5MJQePMztGqze
	7Onqcj4uRkzIdWovFwqwx59tbjZ+JC18Af2KuTpk94FY5kNQcMvjGrrIao+QyrQOPuFZTal4roxkR
	be4E/2ZH23lbWMGviGqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sel4f-0000000BPNF-2GD6;
	Fri, 16 Aug 2024 00:44:13 +0000
Received: from mail-m21471.qiye.163.com ([117.135.214.71])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sel4c-0000000BPMW-03pK;
	Fri, 16 Aug 2024 00:44:12 +0000
DKIM-Signature: a=rsa-sha256;
	b=J1UE/ruNV7QGyM0y41B5pMuLmVchxWYjJmDqZINeHWDXSansizu6IXSpjUkqLTeg0zS80Lun+gWCHGetcKil7Fke8S4LBE+E9/7vJnGaLhogGWazpVCLFnj7bym4QBZTzXHPIc/4FgWcBAQluFsWtl6xSPjbmdHvK2V2bcaruyA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=iL3g7hzaLQ+rrYtLHSAvIW1379wSOIx3YsifSBddCrY=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id E30FD4601FE;
	Fri, 16 Aug 2024 08:43:48 +0800 (CST)
Message-ID: <2517e284-88d0-4cf3-97cf-55567f35eb82@rock-chips.com>
Date: Fri, 16 Aug 2024 08:43:48 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Ulf Hansson <ulf.hansson@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v3 2/3] mmc: dw_mmc-rockchip: Add v2 tuning support
To: Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org
References: <20240814223555.3695-1-detlev.casanova@collabora.com>
 <20240814223555.3695-3-detlev.casanova@collabora.com>
 <5dc82aa2-82a0-4778-b598-88775d5f791c@rock-chips.com>
 <2742918.mvXUDI8C0e@trenzalore>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <2742918.mvXUDI8C0e@trenzalore>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkNMSVZPShlLSx5OGUMaTx9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	JVSktLVUpCS0tZBg++
X-HM-Tid: 0a9158a4051103aekunme30fd4601fe
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6KyI6OTo6CDIrSzoCNiktTFY#
	MVEKFA9VSlVKTElITE1CS0hLSENIVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhCSE43Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_174410_336271_14FDD3A1 
X-CRM114-Status: GOOD (  15.61  )
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

5ZyoIDIwMjQvOC8xNSAyMToyMywgRGV0bGV2IENhc2Fub3ZhIOWGmemBkzoKPiBPbiBXZWRuZXNk
YXksIDE0IEF1Z3VzdCAyMDI0IDIwOjU1OjM3IEVEVCBTaGF3biBMaW4gd3JvdGU6Cj4+IEhpIERl
dGxldgo+Pgo+PiDlnKggMjAyNC84LzE1IDY6MzQsIERldGxldiBDYXNhbm92YSDlhpnpgZM6Cj4+
PiBGcm9tOiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPj4+Cj4+PiB2MiB0
dW5pbmcgd2lsbCBpbmhlcml0IHByZS1zdGFnZSBsb2FkZXIncyBwaGFzZSBzZXR0aW5ncyBmb3Ig
dGhlIGZpcnN0Cj4+PiB0aW1lLCBhbmQgZG8gcmUtdHVuZSBpZiBuZWNlc3NhcnkuCj4+PiBSZS10
dW5lIHdpbGwgc3RpbGwgdHJ5IHRoZSByb3VnaCBkZWdyZWVzLCBmb3IgaW5zdGFuY2UsIDkwLCAx
ODAsIDI3MCwKPj4+IDM2MCBidXQgY29udGludWUgdG8gZG8gdGhlIGZpbmUgdHVuaW5nIGlmIHNh
bXBsZSB3aW5kb3cgaXNuJ3QgZ29vZAo+Pj4gZW5vdWdoLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6
IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTog
RGV0bGV2IENhc2Fub3ZhIDxkZXRsZXYuY2FzYW5vdmFAY29sbGFib3JhLmNvbT4KPj4+IC0tLQo+
Pj4KPj4+ICAgIGRyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMgfCA0OSArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysKPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA0OSBpbnNlcnRp
b25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tj
aGlwLmMKPj4+IGIvZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9ja2NoaXAuYyBpbmRleCBiMDcx
OTBiYTRiN2FjLi4zNjc2MzNmNGU4ODkyCj4+PiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvbW1j
L2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMKPj4+ICsrKyBiL2RyaXZlcnMvbW1jL2hvc3QvZHdfbW1j
LXJvY2tjaGlwLmMKPiAKPiBbLi4uXQo+IAo+Pj4gICAgCQkKPj4+ICAgIAkJcHJpdi0+ZGVmYXVs
dF9zYW1wbGVfcGhhc2UgPSAwOwo+Pj4KPj4+ICsJcHJpdi0+dXNlX3YyX3R1bmluZyA9Cj4+PiAr
CQlvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShob3N0LT5kZXYtPm9mX25vZGUsCj4+PiArCQkJCQki
cm9ja2NoaXAscmszNTc2LWR3LQo+IG1zaGMiKTsKPj4+ICsKPj4KPj4gdjIgaXMgYSBraW5kIG9m
IHNvZnR3YXJlIGRlY2lzaW9uIGluc3RlYWQgb2YgaGFyZHdhcmUgZGVwZW5kZW5jeS4KPj4gU28g
aW4gdGhlb3J5LCBhbnkgU29DIGNhbiBjbGFpbSB0byB1c2UgaXQgdmlhIERULgo+IAo+IFllcyBi
dXQgZnJvbSBteSB0ZXN0cywgb25seSByazM1NzYgd29uJ3Qgd29yayB3aXRob3V0IGl0LiBTbyBp
dCBtYWtlcyBzZW5zZSB0bwo+IG9ubHkgdXNlIHYyIGZvciB0aGlzIFNvQyAoYW5kIG90aGVyIGZ1
dHVyZSBvbmVzIG5vdCBzdXBwb3J0ZWQgeWV0KQo+IAoKSG93ZXZlciBmcm9tIGJvdGggb2YgdGhl
IElDIGRlc2lnbiBQT1YgYW5kIHRoZSB0ZXN0IGZyb20gbXkgc2lkZSwKd2UganVzdCBuZWVkIGlu
dGVybmFsIHBoYXNlIHN1cHBvcnQgcGF0Y2gsIGFuZCByazM1NzYgY291bGQKd29yay4KCj4+Cj4+
PiAgICAJcHJpdi0+ZHJ2X2NsayA9IGRldm1fY2xrX2dldChob3N0LT5kZXYsICJjaXUtZHJpdmUi
KTsKPj4+ICAgIAlpZiAoSVNfRVJSKHByaXYtPmRydl9jbGspKQo+Pj4gICAgCQo+Pj4gICAgCQlk
ZXZfZGJnKGhvc3QtPmRldiwgImNpdS1kcml2ZSBub3QgYXZhaWxhYmxlXG4iKTsKPiAKPiAKPiBE
ZXRsZXYuCj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
