Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03119E7718A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Dec 2024 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lvrBNOWHI4T0xVhKFzWhxab6/QaLLQAgGwQ75UpyOqY=; b=H6EZXgYCTyXrBNPGezsgzzF53q
	sFQYucpcGEkf3CDvYGg8v4iK0x++cvOXxKfVxtu3kjSrpGdjPVFJ3qk6H6bnHTge3P/DugCiI/M1m
	9LXh2xVf97g4kjC2u5D/CyUyI2XD7P81JNABQDIFHlXwK2QyllnsbvAynVmb7+4S3CpqZDdpjpWVg
	gMMqoBnJsX00Qylt/WG0hpJj+DtNbzVvSIuw8U/zXu8lfmhlCTMtwkZ8WyXS0lC8Aescz4II3/e4y
	lBqdT9STcs1OtIEJ+12SflUkVzAMwUyAyPoYbCOmmwEkYny1wo4GATNk4DUYz9eeeL2WMTF2tTaIu
	T/8kqWsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tO5K4-00000000UyY-4AsR;
	Thu, 19 Dec 2024 01:27:29 +0000
Received: from mail-m1973176.qiye.163.com ([220.197.31.76])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tO5K2-00000000UxN-0yuA;
	Thu, 19 Dec 2024 01:27:27 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 627357bb;
	Thu, 19 Dec 2024 09:27:17 +0800 (GMT+08:00)
Message-ID: <5562ec11-c3f5-4068-8ad0-6e93924228ed@rock-chips.com>
Date: Thu, 19 Dec 2024 09:27:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/11] arm64: dts: rockchip: Add nodes related to eDP1
 for RK3588
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
References: <20241216031225.3746-1-damon.ding@rock-chips.com>
 <20241216031225.3746-12-damon.ding@rock-chips.com> <2173171.OBFZWjSADL@diego>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <2173171.OBFZWjSADL@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU0YS1YZTEgeGkoaTEpCTUlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93dc86bce903a3kunm627357bb
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PSo6Njo4DjIQLhcOC1FILC5R
	GA0KFA5VSlVKTEhPTkxKTUhCTUxMVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJT0pKNwY+
DKIM-Signature: a=rsa-sha256;
	b=bqsYXHXs55Yr1VKXFAqKwbG3pTDI6pOf1MH+lSZfIXS47nhvI1Ig1J6qFhY7XwkQ92eu8xbX6iLMyX+f5DDUzaXBQd6rTVL18AG8SKr3Vz0udw1E9ygX+EJ4UJUevWRSsgYJxph/dEguPtw/SkA/zmtiVeNxhnWtBYr0liA0y8I=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=UfV7vLRVNdO5jRgpw0XUomLCucGuvPX5lVmqJYm7acg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241218_172726_456873_F057CA4C 
X-CRM114-Status: GOOD (  13.59  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiAyMDI0LzEyLzE4IDIwOjQ1LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBI
aSBEYW1vbiwKPiAKPiBBbSBNb250YWcsIDE2LiBEZXplbWJlciAyMDI0LCAwNDoxMjoyNSBDRVQg
c2NocmllYiBEYW1vbiBEaW5nOgo+PiBUaGUgcmVsYXRlZCBub2RlcyBhcmUgaGRwdHhwaHkxX2dy
ZiwgaGRwdHhwaHkxIGFuZCBlZHAxLiBBbmQgdGhlCj4+IGFsaWFzZXMgZWRwMCBhbmQgZWRwMSBh
cmUgYWRkZWQgdG8gc2VwYXJhdGUgdHdvIGluZGVwZW5kZW50IGVEUAo+PiBkZXZpY2VzLgo+Pgo+
PiBTaWduZWQtb2ZmLWJ5OiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hpcHMuY29tPgo+
PiAtLS0KPj4gICAuLi4vYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV4dHJhLmR0c2kg
fCA1NSArKysrKysrKysrKysrKysrKysrCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDU1IGluc2VydGlv
bnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LWV4dHJhLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1leHRy
YS5kdHNpCj4+IGluZGV4IDBjZTA5MzRlYzZiNy4uMTdjYzBiNjE5NzQ0IDEwMDY0NAo+PiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1leHRyYS5kdHNpCj4+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV4dHJhLmR0c2kKPj4gQEAgLTcs
NiArNywxMSBAQAo+PiAgICNpbmNsdWRlICJyazM1ODgtZXh0cmEtcGluY3RybC5kdHNpIgo+PiAg
IAo+PiAgIC8gewo+PiArCWFsaWFzZXMgewo+PiArCQllZHAwID0gJmVkcDA7Cj4+ICsJCWVkcDEg
PSAmZWRwMTsKPj4gKwl9Owo+PiArCj4gCj4gZHJvcCBhbGlhc2VzIHBsZWFzZQoKSSB3aWxsIGRy
b3AgaXQgYW5kIHVzZSB0aGUgcmVnaXN0ZXJzIHRvIHNlcGFyYXRlIGVkcDAgYW5kIGVkcDEgaW4g
dGhlIApuZXh0IHZlcnNpb24uCgo+IAo+IAo+PiBAQCAtNjcsNiArNzIsMTEgQEAgdTJwaHkxX290
Zzogb3RnLXBvcnQgewo+PiAgIAkJfTsKPj4gICAJfTsKPj4gICAKPj4gKwloZHB0eHBoeTFfZ3Jm
OiBzeXNjb25AZmQ1ZTQwMDAgewo+PiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OC1o
ZHB0eHBoeS1ncmYiLCAic3lzY29uIjsKPj4gKwkJcmVnID0gPDB4MCAweGZkNWU0MDAwIDB4MCAw
eDEwMD47Cj4+ICsJfTsKPj4gKwo+PiAgIAlpMnM4XzhjaDogaTJzQGZkZGM4MDAwIHsKPj4gICAJ
CWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LWkycy10ZG0iOwo+PiAgIAkJcmVnID0gPDB4
MCAweGZkZGM4MDAwIDB4MCAweDEwMDA+Owo+IAo+PiBAQCAtMzk1LDYgKzQzNCwyMiBAQCBzYXRh
LXBvcnRAMCB7Cj4+ICAgCQl9Owo+PiAgIAl9Owo+PiAgIAo+PiArCWhkcHR4cGh5MTogcGh5QGZl
ZDcwMDAwIHsKPj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtaGRwdHgtcGh5IjsK
Pj4gKwkJcmVnID0gPDB4MCAweGZlZDcwMDAwIDB4MCAweDIwMDA+Owo+PiArCQljbG9ja3MgPSA8
JmNydSBDTEtfVVNCMlBIWV9IRFBUWFJYUEhZX1JFRj4sIDwmY3J1IFBDTEtfSERQVFgxPjsKPj4g
KwkJY2xvY2stbmFtZXMgPSAicmVmIiwgImFwYiI7Cj4+ICsJCSNwaHktY2VsbHMgPSA8MD47Cj4+
ICsJCXJlc2V0cyA9IDwmY3J1IFNSU1RfSERQVFgxPiwgPCZjcnUgU1JTVF9QX0hEUFRYMT4sCj4+
ICsJCQkgPCZjcnUgU1JTVF9IRFBUWDFfSU5JVD4sIDwmY3J1IFNSU1RfSERQVFgxX0NNTj4sCj4+
ICsJCQkgPCZjcnUgU1JTVF9IRFBUWDFfTEFORT4sIDwmY3J1IFNSU1RfSERQVFgxX1JPUExMPiwK
Pj4gKwkJCSA8JmNydSBTUlNUX0hEUFRYMV9MQ1BMTD47Cj4+ICsJCXJlc2V0LW5hbWVzID0gInBo
eSIsICJhcGIiLCAiaW5pdCIsICJjbW4iLCAibGFuZSIsICJyb3BsbCIsCj4+ICsJCQkgICAgICAi
bGNwbGwiOwo+PiArCQlyb2NrY2hpcCxncmYgPSA8JmhkcHR4cGh5MV9ncmY+Owo+PiArCQlzdGF0
dXMgPSAiZGlzYWJsZWQiOwo+PiArCX07Cj4gCj4gdGhlIGhkcHR4cGh5IG5vZGVzIHNob3VsZCBi
ZSB0aGVpciBvd24gcGF0Y2gsIGFsc28gYmVjYXVzZSBtb3N0IGxpa2VseQo+IENyaXN0aWFuJ3Mg
cGF0Y2ggZm9yIGhkbWkxIFswXSB3aWxsIGJlIHNsaWdodGx5IGZhc3Rlci4KCkluZGVlZCwgaXQg
aXMgZ29vZCB0byBhZGQgZWRwMSBub2RlIG9ubHkuCgo+IAo+IAo+IFswXSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9yLzIwMjQxMjExLXJrMzU4OC1oZG1pMS12Mi0yLTAyY2RjYTIyZmY2OEBjb2xs
YWJvcmEuY29tCj4gCj4gCj4gCj4gCj4gCkJlc3QgcmVnYXJkcywKRGFtb24KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
