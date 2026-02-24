Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 236D3EFB819
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 08:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gqcSMQcHmC/fu7c73lXv2e8nBidhWs3l9Zpd5jnBsTk=; b=O7n95D0BHd46l6
	diTZMHWkmqI2cDSNO4M+GfcRGoi44bueqXY1rPz8TwNgscmZQlanogVoRYTGgbVQbl1COVS4TCsUi
	kB1zRDrZIPvft7/GqDKfeTjM5fxbc7VPZd/Mx6prhzynkZcsjEFhMk2j+mtv0BjON2Z0Wma093jue
	I6wW+rLZ/YBxf172kx7byWnJyyHY1ALc2dbniQSOjaOSl+DgulWcwh+8SqduG8Hzm4r2yZ679HoYB
	MY7IrwVcaDtnYbchGmPR7PqViYc89EjpB+7+qGcyDXqkrUzFOZFJ3BBnJqs8RYt7YlsUrnjk4oy1I
	nbq6+Cf6HRwjLbFtGDsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuo8y-00000001fjA-0CM7;
	Tue, 24 Feb 2026 08:51:48 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuo8u-00000001fhn-1sr5;
	Tue, 24 Feb 2026 08:51:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1771923082;
	bh=1Wp2sN5X1+cc6yF7YHXtMGdZZZ1n3UPWfWNRgLMSVCE=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=WshvWi6lz5BtC677eJb1Qx6RlkxMxZS85S+13d2jEqbEcRy9T13Jv0XOCbboZ+Jmz
	 yVfRsi/TPlw/d585XI4kZer/8QiqlJZyIYBfB17WlCYOBLL37rvEd07BRWQVqB3gt0
	 m2gn6nxavO/dawgQsQ3/jsmzukbxGtgs+3uTGlIw=
X-QQ-mid: esmtpgz10t1771923077t772720b5
X-QQ-Originating-IP: 4pzF/Gr5w8u1j2szuEhtODcV6z8qlwdIkHfAzN30BzU=
Received: from [127.0.0.1] ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 24 Feb 2026 16:51:15 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 6182285522596309104
Message-ID: <F5A210373581AADF+afcb86f5-1d02-46cb-9bb9-3f5e0e6ace9d@airkyi.com>
Date: Tue, 24 Feb 2026 16:51:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add node name for
 RK3588_PD_RKVDEC0/1 and RK3588_PD_VENC0/1
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "finley.xiao" <finley.xiao@rock-chips.com>
References: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
 <B5000B8F1001C1D8+040b217f-8ee1-4f96-95ec-e44d140b589d@airkyi.com>
 <9cc9a3c5-55f0-32f6-f166-acfb3a34f0a3@rock-chips.com>
 <C28FA037F24F3E74+97535c93-cc16-4bd5-b436-db7cdc0bb580@airkyi.com>
 <54ba06df-b9eb-f4de-0254-afc3b8fcb0ab@rock-chips.com>
Content-Language: en-US
From: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <54ba06df-b9eb-f4de-0254-afc3b8fcb0ab@rock-chips.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NvxNySBpH0QlOksNl9p6oeC0uvvmwEm553KMkBG3+sJGo0O9cx5+leed
	mjPQbnMyc09Fg+Q4DfHE7bOGm1CGXt4WO+Dk/ApAQp/rK2+2Gj+SJN9TjDqs55UvV7J932j
	TYX0XDZWEoZ320/Qm3gcm7fzCogn1LIhyas4kp0YXDaqRusVgdSMsiK8QIgJOvoyVNaVO4K
	MLULAxJiqkro43su6CN/3aMJ44CuT7+iacBjK+OiBKM7b820nY5SbXsVgGY2wzctwEVh2YJ
	7jSUouhNqNFGG4yygtooFDnL1IwQ7Ngj/tZUF64bkv6RxhZCfbEBFckbdW+Ic138OhbD5fU
	8G8bQiwYRw2AlCxTxh47vayZZW6ICvN/FJ94o9TOMZqODpMWatDGa7b34r3S+EJfO5sY7/B
	h4ulnDDHsKIOfCTIZpCeuoWw4cnBqbkc0gSD+TKicFOm3BX6+dm3Ro9YynzXIP66FSOocoK
	pX+j5s/R7Kkq7m+VD82XJfjXWP5EzFW73dObIGX4oDjH2QgB8g8CSUbmxCYJC2YQaQTcs6U
	VvzTFuicnJtBVmbOP1F7e5DpzFNJVc9wYlzWcJOoz+9971dxQ1IgtMhKRvQgqe9iwXDCZly
	Zw8Q93PTKxnayzKhUJEjHPL7RlFqP0zVxPcgHQ8KoOiJoT5lkPi/nEbr/Y9pNNmP4H11HlM
	x3F2+3WxfL876nbyvgGVo65kYqiYEWhimZMSQEmlWlVEa9yU0czInfUF5JFSlX2NueLMHta
	DgT/cu4CpEiRyxGD5CGYfvtjVgLGUcE9nAYdiGY9o2aKeJ0MLzYM21RS6VGJIuadguEgoaV
	tH52GrGK31k+fKWV5YWm1E3MTLA6EbVOyBLLs4BMdY5evx9A76jMmM23xoJ1zgrt40+W4bB
	JPU1LYMGscwZdhlcBPkM+cpU15dMA13aGs8cFzCDu4w4IucPpqdNa5WGFArcOBWz0u2FI/p
	07wuF40h+PdvWuFOIIe5CYj48ZJDrPR/xj7iu0Z45zMGendm5JWnT2mzo1Nu7SkseN5uGor
	p7OX9ntxiS4iFCj/yko+1+OPTdOU4E1mvgRMd1zKi0tkm/+RPf
X-QQ-XMRINFO: OWPUhxQsoeAVr0nlVs/uubuJpL/3SLbnIQ==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_005144_869434_8E0BC2CE 
X-CRM114-Status: GOOD (  22.07  )
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

T24gMi8yNC8yMDI2IDExOjE0IEFNLCBTaGF3biBMaW4gd3JvdGU6Cj4gCj4gCj4g5ZyoIDIwMjYv
MDIvMjQg5pif5pyf5LqMIDk6NDIsIENoYW95aSBDaGVuIOWGmemBkzoKPj4gT24gMi8xMy8yMDI2
IDc6MTEgUE0sIFNoYXduIExpbiB3cm90ZToKPj4+IEhpIENoYW95aQo+Pj4KPj4+IOWcqCAyMDI2
LzAyLzEzIOaYn+acn+S6lCAxODozMiwgQ2hhb3lpIENoZW4g5YaZ6YGTOgo+Pj4+IEhlbGxvIFNo
YXduLAo+Pj4+Cj4+Pj4gT24gMi8xMy8yMDI2IDEwOjM1IEFNLCBTaGF3biBMaW4gd3JvdGU6Cj4+
Pj4+IFRodXMgdGhlIGJvYXJkIGR0cyBmaWxlcyBjb3VsZCBhZGQgcHJvcGVydHkgZm9yIHRoZXNl
IG5vZGVzLgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkBy
b2NrLWNoaXBzLmNvbT4KPj4+Pj4gLS0tCj4+Pj4gWW91IHNob3VsZCBhbHNvIGFkZCBwbWRvbWFp
biBkcml2ZXIuCj4+Pj4KPj4+PiBJJ3ZlIGVuY291bnRlcmVkIGEgc2ltaWxhciBpc3N1ZSBiZWZv
cmUuCj4+Pj4gRmlubGV5IHRvbGQgbWUgdG8gdXNlIHRoZSBuZXcgUE1JQywgYW5kIHRoYXQgd291
bGQgc29sdmUgdGhlIHByb2JsZW0uCj4+Pj4gTWF5YmUgeW91J3JlIHVzaW5nIHRoZSBzYW1lIG9s
ZCBQTUlDIGFzIEkgZGlkIDopCj4+Pj4KPj4+Cj4+PiBJIGRvbid0IGtub3cgd2hhdCBkb2VzIG5l
dyBQTUlDIG1lYW4/IE5ldyBSSzgwNiBkcml2ZXIgb3IgbmV3IFJLODA2Cj4+PiBoYXJkd2FyZT8K
Pj4KPj4gSXQgaXMgbmV3IFJLODA2IGhhcmR3YXJlLiBBY2NvcmRpbmcgdG8gRmlubGV5LCBlbmQg
dXNlcnMgYXJlIGN1cnJlbnRseSB1c2luZwo+PiB0aGlzIG5ldyB0eXBlIG9mIFBNSUMuCj4+Cj4+
Cj4+Pgo+Pj4gVGhlIHByb2JsZW0gaXMgdGhlc2UgcG93ZXIgZG9tYWlucyByZWx5IG9uIHZvbHRh
Z2Ugc3VwcGx5IHdoaWNoIGNvdWxkCj4+PiBiZSBwcm9iZWQgbGF0ZSBhZnRlciBwbWRvbWFpbiBk
cml2ZXIsIHRoZW4gdGhlIHN5c3RlbSBlbmFibGVzIHRoZSBQRCBhbmQKPj4+IGFjY2VzcyB0aGUg
SVAgd2l0aG91dCBQRCBhY3R1YWxseSBlbmFibGVkKGV2ZW4gdy9vIHZvbHRhZ2Ugc3VwcGx5Cj4+
PiBlbmFibGVkKS4KPj4+Cj4+Cj4+IElmIEknbSBub3QgbWlzdGFrZW4sIHRoZSBuZXcgaGFyZHdh
cmUgd2lsbCBhdXRvbWF0aWNhbGx5IHBvd2VycyB1cCB0aGUgc3VwcGx5Cj4+IGNvcnJlc3BvbmRp
bmcgdG8gVkRFQy9WTkVDLgo+Pgo+IAo+IFRoYW5rcyBmb3IgdGhlIGNsYXJpZmljYXRpb24gb24g
dGhlIGhhcmR3YXJlIHVwZGF0ZS4KPiAKPiBJJ20gY3VycmVudGx5IHVzaW5nIHRoZSBFVkIgYm9h
cmQgZm9yIFNvQyBicmluZy11cCBhbmQgcG9zdC1zaWxpY29uCj4gdmFsaWRhdGlvbiwgd2hpY2gg
SSBiZWxpZXZlIGNhcnJpZXMgdGhlIG9sZCBSSzgwNiBoYXJkd2FyZS4gSXQncyBhbHNvCj4gYXBw
YXJlbnQgdGhhdCBtYW55IGRldmVsb3BlcnMgKGFzIG9wcG9zZWQgdG8gZW5kIHVzZXJzKSBhcmUg
c3RpbGwKPiByZWx5aW5nIG9uIHRoZSBvbGQgaGFyZHdhcmUgaW4gdGhlIGZpZWxkLgo+IAo+IEdl
bmVyYWxseSBzcGVha2luZywgdXBzdHJlYW0gY29kZSBoYXMgbm8gd2F5IHRvIGRpc3Rpbmd1aXNo
IGJldHdlZW4gdGhlIG9sZCBhbmQgbmV3IFBNSUMgdmFyaWFudHMgc29sZWx5IGZyb20gdGhlIERU
UywgY29ycmVjdD8gR2l2ZW4gdGhpcywgSQo+IHRoaW5rIHdlIHNob3VsZCBhaW0gdG8ga2VlcCBi
b3RoIGhhcmR3YXJlIHZlcnNpb25zIHdvcmthYmxlIGluIHRoZQo+IHVwc3RyZWFtIGNvZGUuCj4K
CkFzIGZhciBhcyBJIGtub3csIG9ubHkgZWFybHkgRVZCcyBpbnRlcm5hbCB0byBSb2NrY2hpcCB1
c2VkIHRoZW0uCkkgdGhpbmsgeW91ciBhcHByb2FjaCBhbHNvIG1ha2VzIHNlbnNlIDopCgo+Pgo+
Pj4KPj4+Cj4+Pj4KPj4+Pj4KPj4+Pj4gICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtYmFzZS5kdHNpIHwgOCArKysrLS0tLQo+Pj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpCj4+Pj4+IGluZGV4IDdmZTk1OTMuLjRm
Yjg4ODggMTAwNjQ0Cj4+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LWJhc2UuZHRzaQo+Pj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC1iYXNlLmR0c2kKPj4+Pj4gQEAgLTkwNyw3ICs5MDcsNyBAQAo+Pj4+PiAgICAgICAgICAg
ICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4+Pj4+ICAgICAgICAgICAgICAgICAgICAjcG93
ZXItZG9tYWluLWNlbGxzID0gPDA+Owo+Pj4+PiAgICAtICAgICAgICAgICAgICAgIHBvd2VyLWRv
bWFpbkBSSzM1ODhfUERfUktWREVDMCB7Cj4+Pj4+ICsgICAgICAgICAgICAgICAgcGRfcmt2ZGVj
MDogcG93ZXItZG9tYWluQFJLMzU4OF9QRF9SS1ZERUMwIHsKPj4+Pj4gICAgICAgICAgICAgICAg
ICAgICAgICByZWcgPSA8UkszNTg4X1BEX1JLVkRFQzA+Owo+Pj4+PiAgICAgICAgICAgICAgICAg
ICAgICAgIGNsb2NrcyA9IDwmY3J1IEhDTEtfUktWREVDMD4sCj4+Pj4+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICA8JmNydSBIQ0xLX1ZEUFVfUk9PVD4sCj4+Pj4+IEBAIC05MTcsNyArOTE3
LDcgQEAKPj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICBwbV9xb3MgPSA8JnFvc19ya3ZkZWMw
PjsKPj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAjcG93ZXItZG9tYWluLWNlbGxzID0gPDA+
Owo+Pj4+PiAgICAgICAgICAgICAgICAgICAgfTsKPj4+Pj4gLSAgICAgICAgICAgICAgICBwb3dl
ci1kb21haW5AUkszNTg4X1BEX1JLVkRFQzEgewo+Pj4+PiArICAgICAgICAgICAgICAgIHBkX3Jr
dmRlYzE6IHBvd2VyLWRvbWFpbkBSSzM1ODhfUERfUktWREVDMSB7Cj4+Pj4+ICAgICAgICAgICAg
ICAgICAgICAgICAgcmVnID0gPFJLMzU4OF9QRF9SS1ZERUMxPjsKPj4+Pj4gICAgICAgICAgICAg
ICAgICAgICAgICBjbG9ja3MgPSA8JmNydSBIQ0xLX1JLVkRFQzE+LAo+Pj4+PiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgPCZjcnUgSENMS19WRFBVX1JPT1Q+LAo+Pj4+PiBAQCAtOTI2LDcg
KzkyNiw3IEBACj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgcG1fcW9zID0gPCZxb3Nfcmt2
ZGVjMT47Cj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgI3Bvd2VyLWRvbWFpbi1jZWxscyA9
IDwwPjsKPj4+Pj4gICAgICAgICAgICAgICAgICAgIH07Cj4+Pj4+IC0gICAgICAgICAgICAgICAg
cG93ZXItZG9tYWluQFJLMzU4OF9QRF9WRU5DMCB7Cj4+Pj4+ICsgICAgICAgICAgICAgICAgcGRf
dmVuYzA6IHBvd2VyLWRvbWFpbkBSSzM1ODhfUERfVkVOQzAgewo+Pj4+PiAgICAgICAgICAgICAg
ICAgICAgICAgIHJlZyA9IDxSSzM1ODhfUERfVkVOQzA+Owo+Pj4+PiAgICAgICAgICAgICAgICAg
ICAgICAgIGNsb2NrcyA9IDwmY3J1IEhDTEtfUktWRU5DMD4sCj4+Pj4+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICA8JmNydSBBQ0xLX1JLVkVOQzA+Owo+Pj4+PiBAQCAtOTM3LDcgKzkzNyw3
IEBACj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4+Pj4+
ICAgICAgICAgICAgICAgICAgICAgICAgI3Bvd2VyLWRvbWFpbi1jZWxscyA9IDwwPjsKPj4+Pj4g
ICAgLSAgICAgICAgICAgICAgICAgICAgcG93ZXItZG9tYWluQFJLMzU4OF9QRF9WRU5DMSB7Cj4+
Pj4+ICsgICAgICAgICAgICAgICAgcGRfdmVuYzE6IHBvd2VyLWRvbWFpbkBSSzM1ODhfUERfVkVO
QzEgewo+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8UkszNTg4X1BEX1ZF
TkMxPjsKPj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjcnUgSENM
S19SS1ZFTkMxPiwKPj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNydSBI
Q0xLX1JLVkVOQzA+LAo+Pj4+Cj4+Pgo+Pj4KPj4+Cj4+Cj4gCgotLSAKQmVzdCwgCkNoYW95aQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
