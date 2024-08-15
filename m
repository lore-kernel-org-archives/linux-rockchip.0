Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 331DAC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 00:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OEFPLKFT8CNS/RCZwY0hpEH7cqkHwRGm0gE1H9NoOTk=; b=E8wDAF1sDp5SZs
	MOjkpbZ1kYSRH+vLuA/QPxnW/Iesdi5xRd1hQSZz90/9BP/5JVyogsAL1XcngaO0MDstkD5tE6Ngt
	/ADiJVzEM3WIolFcDcUyOcFCQUSsGrchc7PGC5H21TGUGv0/pUG7dLHDOIeFkZBLlb1bepW+hN8M4
	a6A4d/qXZ9sRyQw4FXSmPp27cwekH/l4umqw5S/cgj9SDpn8Kj2Ubguc3rK9IUO917mL0lhw19f3k
	SJ5d/kFm2vNciLVAQrtgAJVDrS54fpVwWmpYNebnEoFsIWjt6HclUybV89R4NxzM1yYaMWJkaIHQ2
	ETFkVO3M4b3CCoBqfX7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seOmh-00000008gsQ-3qAD;
	Thu, 15 Aug 2024 00:56:11 +0000
Received: from mail-m32113.qiye.163.com ([220.197.32.113])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seOmd-00000008gq5-2MmC;
	Thu, 15 Aug 2024 00:56:10 +0000
DKIM-Signature: a=rsa-sha256;
	b=VsLc+OpTy4yiMoQUzJP4gG0dTMLiDIg4arecgkwV4VogdpQXJ8ialiNZBJVsL1fYmXONb+JlunOG78AITFlYdUKKWT0n6b3EFS15djONE6edIM83vb7UY+BsGUmf6YQ813r89SKlD3U7A482Jvh3z8yBzCzb0ZR//9utrNK8l7E=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=jibRnnrGx3Q4KOhIBFEiSAKP3XFIdjxz/CsdAGw1aiE=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 60327460171;
	Thu, 15 Aug 2024 08:55:37 +0800 (CST)
Message-ID: <5dc82aa2-82a0-4778-b598-88775d5f791c@rock-chips.com>
Date: Thu, 15 Aug 2024 08:55:37 +0800
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
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20240814223555.3695-3-detlev.casanova@collabora.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk0fH1ZNTk5NGE1MSx0YGUlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a915388786203aekunm60327460171
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OE06Dgw*CDI5OUwXLTg2A0wK
	FUkaChFVSlVKTElITUNISEhDQktNVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU5PSko3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_175608_137764_A302DAF2 
X-CRM114-Status: GOOD (  25.64  )
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

SGkgRGV0bGV2CgrlnKggMjAyNC84LzE1IDY6MzQsIERldGxldiBDYXNhbm92YSDlhpnpgZM6Cj4g
RnJvbTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gCj4gdjIgdHVuaW5n
IHdpbGwgaW5oZXJpdCBwcmUtc3RhZ2UgbG9hZGVyJ3MgcGhhc2Ugc2V0dGluZ3MgZm9yIHRoZSBm
aXJzdAo+IHRpbWUsIGFuZCBkbyByZS10dW5lIGlmIG5lY2Vzc2FyeS4KPiBSZS10dW5lIHdpbGwg
c3RpbGwgdHJ5IHRoZSByb3VnaCBkZWdyZWVzLCBmb3IgaW5zdGFuY2UsIDkwLCAxODAsIDI3MCwK
PiAzNjAgYnV0IGNvbnRpbnVlIHRvIGRvIHRoZSBmaW5lIHR1bmluZyBpZiBzYW1wbGUgd2luZG93
IGlzbid0IGdvb2QKPiBlbm91Z2guCj4gCj4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3
bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRGV0bGV2IENhc2Fub3ZhIDxk
ZXRsZXYuY2FzYW5vdmFAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbW1jL2hvc3Qv
ZHdfbW1jLXJvY2tjaGlwLmMgfCA0OSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAg
IDEgZmlsZSBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMgYi9kcml2ZXJzL21tYy9ob3N0L2R3X21tYy1y
b2NrY2hpcC5jCj4gaW5kZXggYjA3MTkwYmE0YjdhYy4uMzY3NjMzZjRlODg5MiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL21tYy9ob3N0L2R3X21tYy1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9t
bWMvaG9zdC9kd19tbWMtcm9ja2NoaXAuYwo+IEBAIC0yNCw2ICsyNCw4IEBAIHN0cnVjdCBkd19t
Y2lfcm9ja2NoaXBfcHJpdl9kYXRhIHsKPiAgIAlzdHJ1Y3QgY2xrCQkqc2FtcGxlX2NsazsKPiAg
IAlpbnQJCQlkZWZhdWx0X3NhbXBsZV9waGFzZTsKPiAgIAlpbnQJCQludW1fcGhhc2VzOwo+ICsJ
Ym9vbAkJCXVzZV92Ml90dW5pbmc7Cj4gKwlpbnQJCQlsYXN0X2RlZ3JlZTsKPiAgIH07Cj4gICAK
PiAgIHN0YXRpYyB2b2lkIGR3X21jaV9yazMyODhfc2V0X2lvcyhzdHJ1Y3QgZHdfbWNpICpob3N0
LCBzdHJ1Y3QgbW1jX2lvcyAqaW9zKQo+IEBAIC0xMzQsNiArMTM2LDQyIEBAIHN0YXRpYyB2b2lk
IGR3X21jaV9yazMyODhfc2V0X2lvcyhzdHJ1Y3QgZHdfbWNpICpob3N0LCBzdHJ1Y3QgbW1jX2lv
cyAqaW9zKQo+ICAgI2RlZmluZSBUVU5JTkdfSVRFUkFUSU9OX1RPX1BIQVNFKGksIG51bV9waGFz
ZXMpIFwKPiAgIAkJKERJVl9ST1VORF9VUCgoaSkgKiAzNjAsIG51bV9waGFzZXMpKQo+ICAgCj4g
K3N0YXRpYyBpbnQgZHdfbWNpX3YyX2V4ZWN1dGVfdHVuaW5nKHN0cnVjdCBkd19tY2lfc2xvdCAq
c2xvdCwgdTMyIG9wY29kZSkKPiArewo+ICsJc3RydWN0IGR3X21jaSAqaG9zdCA9IHNsb3QtPmhv
c3Q7Cj4gKwlzdHJ1Y3QgZHdfbWNpX3JvY2tjaGlwX3ByaXZfZGF0YSAqcHJpdiA9IGhvc3QtPnBy
aXY7Cj4gKwlzdHJ1Y3QgbW1jX2hvc3QgKm1tYyA9IHNsb3QtPm1tYzsKPiArCXUzMiBkZWdyZWVz
WzRdID0gezkwLCAxODAsIDI3MCwgMzYwfTsKPiArCWludCBpOwo+ICsJc3RhdGljIGJvb2wgaW5o
ZXJpdCA9IHRydWU7Cj4gKwo+ICsJaWYgKGluaGVyaXQpIHsKPiArCQlpbmhlcml0ID0gZmFsc2U7
Cj4gKwkJaSA9IGNsa19nZXRfcGhhc2UocHJpdi0+c2FtcGxlX2NsaykgLyA5MCAtIDE7Cj4gKwkJ
Z290byBkb25lOwo+ICsJfQo+ICsKPiArCS8qIHYyIG9ubHkgc3VwcG9ydCA0IGRlZ3JlZXMgaW4g
dGhlb3J5ICovCj4gKwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShkZWdyZWVzKTsgaSsrKSB7
Cj4gKwkJaWYgKGRlZ3JlZXNbaV0gPT0gcHJpdi0+bGFzdF9kZWdyZWUpCj4gKwkJCWNvbnRpbnVl
Owo+ICsKPiArCQljbGtfc2V0X3BoYXNlKHByaXYtPnNhbXBsZV9jbGssIGRlZ3JlZXNbaV0pOwo+
ICsJCWlmICghbW1jX3NlbmRfdHVuaW5nKG1tYywgb3Bjb2RlLCBOVUxMKSkKPiArCQkJYnJlYWs7
Cj4gKwl9Cj4gKwo+ICsJaWYgKGkgPT0gQVJSQVlfU0laRShkZWdyZWVzKSkgewo+ICsJCWRldl93
YXJuKGhvc3QtPmRldiwgIkFsbCBwaGFzZXMgYmFkISIpOwo+ICsJCXJldHVybiAtRUlPOwo+ICsJ
fQo+ICsKPiArZG9uZToKPiArCWRldl9pbmZvKGhvc3QtPmRldiwgIlN1Y2Nlc3NmdWxseSB0dW5l
ZCBwaGFzZSB0byAlZFxuIiwgZGVncmVlc1tpXSk7Cj4gKwlwcml2LT5sYXN0X2RlZ3JlZSA9IGRl
Z3JlZXNbaV07Cj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiAgIHN0YXRpYyBpbnQgZHdfbWNpX3Jr
MzI4OF9leGVjdXRlX3R1bmluZyhzdHJ1Y3QgZHdfbWNpX3Nsb3QgKnNsb3QsIHUzMiBvcGNvZGUp
Cj4gICB7Cj4gICAJc3RydWN0IGR3X21jaSAqaG9zdCA9IHNsb3QtPmhvc3Q7Cj4gQEAgLTE1Nyw2
ICsxOTUsMTMgQEAgc3RhdGljIGludCBkd19tY2lfcmszMjg4X2V4ZWN1dGVfdHVuaW5nKHN0cnVj
dCBkd19tY2lfc2xvdCAqc2xvdCwgdTMyIG9wY29kZSkKPiAgIAkJcmV0dXJuIC1FSU87Cj4gICAJ
fQo+ICAgCj4gKwlpZiAocHJpdi0+dXNlX3YyX3R1bmluZykgewo+ICsJCXJldCA9IGR3X21jaV92
Ml9leGVjdXRlX3R1bmluZyhzbG90LCBvcGNvZGUpOwo+ICsJCWlmICghcmV0KQo+ICsJCQlyZXR1
cm4gMDsKPiArCQkvKiBPdGhlcndpc2Ugd2UgY29udGludWUgdXNpbmcgZmluZSB0dW5pbmcgKi8K
PiArCX0KPiArCj4gICAJcmFuZ2VzID0ga21hbGxvY19hcnJheShwcml2LT5udW1fcGhhc2VzIC8g
MiArIDEsCj4gICAJCQkgICAgICAgc2l6ZW9mKCpyYW5nZXMpLCBHRlBfS0VSTkVMKTsKPiAgIAlp
ZiAoIXJhbmdlcykKPiBAQCAtMjc3LDYgKzMyMiwxMCBAQCBzdGF0aWMgaW50IGR3X21jaV9yazMy
ODhfcGFyc2VfZHQoc3RydWN0IGR3X21jaSAqaG9zdCkKPiAgIAkJCQkJJnByaXYtPmRlZmF1bHRf
c2FtcGxlX3BoYXNlKSkKPiAgIAkJcHJpdi0+ZGVmYXVsdF9zYW1wbGVfcGhhc2UgPSAwOwo+ICAg
Cj4gKwlwcml2LT51c2VfdjJfdHVuaW5nID0KPiArCQlvZl9kZXZpY2VfaXNfY29tcGF0aWJsZSho
b3N0LT5kZXYtPm9mX25vZGUsCj4gKwkJCQkJInJvY2tjaGlwLHJrMzU3Ni1kdy1tc2hjIik7Cj4g
KwoKdjIgaXMgYSBraW5kIG9mIHNvZnR3YXJlIGRlY2lzaW9uIGluc3RlYWQgb2YgaGFyZHdhcmUg
ZGVwZW5kZW5jeS4KU28gaW4gdGhlb3J5LCBhbnkgU29DIGNhbiBjbGFpbSB0byB1c2UgaXQgdmlh
IERULgoKPiAgIAlwcml2LT5kcnZfY2xrID0gZGV2bV9jbGtfZ2V0KGhvc3QtPmRldiwgImNpdS1k
cml2ZSIpOwo+ICAgCWlmIChJU19FUlIocHJpdi0+ZHJ2X2NsaykpCj4gICAJCWRldl9kYmcoaG9z
dC0+ZGV2LCAiY2l1LWRyaXZlIG5vdCBhdmFpbGFibGVcbiIpOwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
