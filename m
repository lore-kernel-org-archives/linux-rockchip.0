Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20AC5C10F04
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Dec 2023 01:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FS0/ArVxnGPu+DUbQR9HhF5wEw9K/299sIooalZbMfI=; b=es7jE1NirETL/T
	z7/4fAVp3HcIsKPlJCUZ0nBeVwmauwX/tyNkK/V9StusZYIgtWJVKo20O+hvODitBOzXhnjFSrJXe
	6ZFjDIeFhFqtLHrfpzWG6Mq0MTCMHrBGpb78Md2IrwrMwD2qhjRd8RVuUGnts5lJgvqd49qpLecTd
	+E+4ECIPVbA7RJ2mn5rMCzdeGqm8vmk2tXAwFm+8jQZvhK+zPTGVQZ80FsYe8McHxFO1fFk3i2voo
	3ith52iuHWJ+TRODBqWvBTSDuCARD9M+ZSyUi3baJN9yo/DBL/1gHbnM2YZQQ9HJyo8S0w90jrAk/
	G6MaYrkecFOzaXv3+PsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBm9g-00Gtuv-00;
	Sat, 09 Dec 2023 01:29:20 +0000
Received: from mail-m6037.netease.com ([210.79.60.37])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBm9d-00GtuT-2i
	for linux-rockchip@lists.infradead.org;
	Sat, 09 Dec 2023 01:29:19 +0000
DKIM-Signature: a=rsa-sha256;
	b=WZL9Qf7nBhlJXS+J4P/19lIGNWFFvmhrmiX0sT5kFHH7bXcfzghvQ3SXcaCix5VUwJFycuvS0ZBG6LtoaBpbYEkuDao9WOl7iVcEXJqM9+ntYAvLj2FIs0sB9qibSpqgWPVyD2JeRyhTcQwSr0KVK51ilKsckwZG9NSf9ndsvOw=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=HV2z/Dcq1u/NQro4ECOCLl8zo8h8Oih7gNKDIKTVpnI=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 3F245780176;
	Sat,  9 Dec 2023 09:28:56 +0800 (CST)
Message-ID: <d45b1a26-3ea3-4699-b86f-cc7d38718721@rock-chips.com>
Date: Sat, 9 Dec 2023 09:28:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 16/17] arm64: dts: rockchip: Add vop on rk3588
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com
References: <20231207075906.651771-1-andyshrk@163.com>
 <20231207080247.652780-1-andyshrk@163.com> <4730849.ejJDZkT8p0@diego>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <4730849.ejJDZkT8p0@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkNMSVYaTkxDQk1CTUIZTkxVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c4c311dfbb24fkuuu3f245780176
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ohg6Hww5Qjw2Fk5LFh8iSxZW
	MhMaCy9VSlVKTEtJS0NOSEhMS0JOVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0JLSzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_172918_084598_9F06D017 
X-CRM114-Status: GOOD (  13.28  )
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

SGkgSGVpa286CgpPbiAxMi85LzIzIDAwOjI2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSBB
bmR5LAo+IAo+IEFtIERvbm5lcnN0YWcsIDcuIERlemVtYmVyIDIwMjMsIDA5OjAyOjQ3IENFVCBz
Y2hyaWViIEFuZHkgWWFuOgo+PiBGcm9tOiBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5j
b20+Cj4+Cj4+IEFkZCB2b3AgZHQgbm9kZSBmb3IgcmszNTg4Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+Pgo+PiAobm8gY2hh
bmdlcyBzaW5jZSB2MSkKPj4KPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OHMuZHRzaSB8IDk2ICsrKysrKysrKysrKysrKysrKysrKysrCj4+ICAgMSBmaWxlIGNoYW5nZWQs
IDk2IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4cy5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODhzLmR0c2kKPj4gaW5kZXggNzA2NGMwZTkxNzlmLi5hOTgxMGNhNzhkYzQgMTAwNjQ0Cj4+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCj4+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCj4+IEBAIC01OTMsNiArNjA4
LDg3IEBAIGkyYzA6IGkyY0BmZDg4MDAwMCB7Cj4+ICAgCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+
PiAgIAl9Owo+PiAgIAo+PiArCXZvcDogdm9wQGZkZDkwMDAwIHsKPj4gKwkJY29tcGF0aWJsZSA9
ICJyb2NrY2hpcCxyazM1ODgtdm9wIjsKPj4gKwkJcmVnID0gPDB4MCAweGZkZDkwMDAwIDB4MCAw
eDQyMDA+LCA8MHgwIDB4ZmRkOTUwMDAgMHgwIDB4MTAwMD47Cj4+ICsJCXJlZy1uYW1lcyA9ICJ2
b3AiLCAiZ2FtbWFfbHV0IjsKPj4gKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDE1NiBJUlFfVFlQ
RV9MRVZFTF9ISUdIIDA+Owo+PiArCQljbG9ja3MgPSA8JmNydSBBQ0xLX1ZPUD4sCj4+ICsJCQkg
PCZjcnUgSENMS19WT1A+LAo+PiArCQkJIDwmY3J1IERDTEtfVk9QMD4sCj4+ICsJCQkgPCZjcnUg
RENMS19WT1AxPiwKPj4gKwkJCSA8JmNydSBEQ0xLX1ZPUDI+LAo+PiArCQkJIDwmY3J1IERDTEtf
Vk9QMz4sCj4+ICsJCQkgPCZjcnUgUENMS19WT1BfUk9PVD47Cj4+ICsJCWNsb2NrLW5hbWVzID0g
ImFjbGsiLAo+PiArCQkJICAgICAgImhjbGsiLAo+PiArCQkJICAgICAgImRjbGtfdnAwIiwKPj4g
KwkJCSAgICAgICJkY2xrX3ZwMSIsCj4+ICsJCQkgICAgICAiZGNsa192cDIiLAo+PiArCQkJICAg
ICAgImRjbGtfdnAzIiwKPj4gKwkJCSAgICAgICJwY2xrX3ZvcCI7Cj4+ICsJCXJlc2V0cyA9IDwm
Y3J1IFNSU1RfQV9WT1A+LAo+PiArCQkJIDwmY3J1IFNSU1RfSF9WT1A+LAo+PiArCQkJIDwmY3J1
IFNSU1RfRF9WT1AwPiwKPj4gKwkJCSA8JmNydSBTUlNUX0RfVk9QMT4sCj4+ICsJCQkgPCZjcnUg
U1JTVF9EX1ZPUDI+LAo+PiArCQkJIDwmY3J1IFNSU1RfRF9WT1AzPjsKPj4gKwkJcmVzZXQtbmFt
ZXMgPSAiYXhpIiwKPj4gKwkJCSAgICAgICJhaGIiLAo+PiArCQkJICAgICAgImRjbGtfdnAwIiwK
Pj4gKwkJCSAgICAgICJkY2xrX3ZwMSIsCj4+ICsJCQkgICAgICAiZGNsa192cDIiLAo+PiArCQkJ
ICAgICAgImRjbGtfdnAzIjsKPiAKPiByZXNldHMgYW5kIHJlc2V0LW5hbWVzIGRvIG5vdCBzZWVt
IHRvIGJlIHBhcnQgb2YgdGhlIGJpbmRpbmcsIHNvCj4gc2hvdWxkIHByb2JhYmx5IGJlIGFkZGVk
IHRoZXJlLgoKSSB3aWxsIGRyb3AgcmVzZXRzIGFuZCByZXNldC1uYW1lcyBpbiBuZXh0IHZlcnNp
b24uCj4gCj4gCj4+ICsJCWlvbW11cyA9IDwmdm9wX21tdT47Cj4+ICsJCXBvd2VyLWRvbWFpbnMg
PSA8JnBvd2VyIFJLMzU4OF9QRF9WT1A+Owo+PiArCQlyb2NrY2hpcCxncmYgPSA8JnN5c19ncmY+
Owo+PiArCQlyb2NrY2hpcCx2b3AtZ3JmID0gPCZ2b3BfZ3JmPjsKPj4gKwkJcm9ja2NoaXAsdm8x
LWdyZiA9IDwmdm8xX2dyZj47Cj4+ICsJCXJvY2tjaGlwLHBtdSA9IDwmcG11PjsKPj4gKwo+IAo+
IG1vdmUgdGhpcyBibGFuayBsaW5lIF9iZWxvd18gdGhlIHN0YXR1cz1kaXNhYmxlZCBwbGVhc2Uu
Cgpvaywgd2lsbCBkby4KPiAKPj4gKwkJc3RhdHVzID0gImRpc2FibGVkIjsKPj4gKwkJdm9wX291
dDogcG9ydHMgewo+PiArCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+ICsJCQkjc2l6ZS1jZWxs
cyA9IDwwPjsKPj4gKwo+PiArCQkJdnAwOiBwb3J0QDAgewo+PiArCQkJCSNhZGRyZXNzLWNlbGxz
ID0gPDE+Owo+PiArCQkJCSNzaXplLWNlbGxzID0gPDA+Owo+PiArCQkJCXJlZyA9IDwwPjsKPj4g
KwkJCX07Cj4+ICsKPj4gKwkJCXZwMTogcG9ydEAxIHsKPj4gKwkJCQkjYWRkcmVzcy1jZWxscyA9
IDwxPjsKPj4gKwkJCQkjc2l6ZS1jZWxscyA9IDwwPjsKPj4gKwkJCQlyZWcgPSA8MT47Cj4+ICsJ
CQl9Owo+PiArCj4+ICsJCQl2cDI6IHBvcnRAMiB7Cj4+ICsJCQkJI2FkZHJlc3MtY2VsbHMgPSA8
MT47Cj4+ICsJCQkJI3NpemUtY2VsbHMgPSA8MD47Cj4+ICsJCQkJcmVnID0gPDI+Owo+PiArCQkJ
fTsKPj4gKwo+PiArCQkJdnAzOiBwb3J0QDMgewo+PiArCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+
Owo+PiArCQkJCSNzaXplLWNlbGxzID0gPDA+Owo+PiArCQkJCXJlZyA9IDwzPjsKPj4gKwkJCX07
Cj4+ICsJCX07Cj4+ICsJfTsKPj4gKwo+PiArCXZvcF9tbXU6IGlvbW11QGZkZDk3ZTAwIHsKPj4g
KwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtaW9tbXUiLCAicm9ja2NoaXAscmszNTY4
LWlvbW11IjsKPj4gKwkJcmVnID0gPDB4MCAweGZkZDk3ZTAwIDB4MCAweDEwMD4sIDwweDAgMHhm
ZGQ5N2YwMCAweDAgMHgxMDA+Owo+PiArCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTU2IElSUV9U
WVBFX0xFVkVMX0hJR0ggMD47Cj4+ICsJCWludGVycnVwdC1uYW1lcyA9ICJ2b3BfbW11IjsKPiAK
PiBpbnRlcnJ1cHQtbmFtZXMgaXMgbm90IHBhcnQgb2YgdGhlIG1haW5saW5lIGlvbW11IGJpbmRp
bmcsIHNvIHNob3VsZCBiZSBkcm9wcGVkCgp3aWxsIGRvLgo+IAo+IAo+IFRoYW5rcwo+IEhlaWtv
Cj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
