Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FD51C74A5B
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 09:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6EEH0QYC9XpaTBIL6kLYtBW2KjSGBViV8edEDZLw8Aw=; b=ZZm+LqSPUGacmc
	0dIRcMb4Ub9CfIsf2TcK989WTMAj66Y5c63jiXX2j9I/N9DVEAggF1a4dC1ZoJVDR4QzZnqiU00rB
	NvmIewoDA4VL6I8MREGomo5MSzUUQS1TE7JQ+hdVF34ncMxxqmtNP24rNWVqAvIk3s4XEIm5VEIZd
	UOhrBL5KAeZBJqxooSJUejsDTSgnxVtBZNRUugTvTcOxqj0V0KiHd/pQBE9S/hMuILRTyJyXazLtg
	Evfi5Pj9b8iLFwv7AFhnrHZjJtoQL41Li8Ui0N1o2HC8GA2w5JlfDMOZVb+H95AxCt3+UvjgdoTJZ
	he2GtMPasfIUqxeKfUZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peYhc-00BwnU-0m;
	Tue, 21 Mar 2023 09:54:48 +0000
Received: from mail-m11879.qiye.163.com ([115.236.118.79])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peYhY-00Bwka-00
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Mar 2023 09:54:46 +0000
Received: from [172.16.12.33] (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 17150680B61;
	Tue, 21 Mar 2023 17:54:31 +0800 (CST)
Message-ID: <6d7a4677-de1a-8851-026a-b180fca34632@rock-chips.com>
Date: Tue, 21 Mar 2023 17:54:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 3/3] usb: typec: tcpm: add get max power support
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux@roeck-us.net, heikki.krogerus@linux.intel.com,
 gregkh@linuxfoundation.org, heiko@sntech.de, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 huangtao@rock-chips.com, william.wu@rock-chips.com,
 jianwei.zheng@rock-chips.com, yubing.zhang@rock-chips.com, wmc@rock-chips.com
References: <20230320100711.3708-1-frank.wang@rock-chips.com>
 <20230320100711.3708-4-frank.wang@rock-chips.com>
 <20230320203139.quld3gmoo6esu56i@mercury.elektranox.org>
 <19b39d82-8510-2717-cf3b-71cb955373d0@rock-chips.com>
 <20230321050048.3p7xtyikf2lkqwrg@mercury.elektranox.org>
From: Frank Wang <frank.wang@rock-chips.com>
In-Reply-To: <20230321050048.3p7xtyikf2lkqwrg@mercury.elektranox.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRoeSVYZTx8fTUsfQkhKQ0tVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSkpLSEpMVUpLS1VLWQ
	Y+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NUk6Txw6Qj0PORYyDEI#Dj4P
	TDUaFFZVSlVKTUxCSEJJT0xJS0lDVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFPTENINwY+
X-HM-Tid: 0a87039779f72eb5kusn17150680b61
X-HM-MType: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_025444_196004_69E97256 
X-CRM114-Status: GOOD (  16.88  )
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

SGkgU2ViYXN0aWFuLAoKT24gMjAyMy8zLzIxIDEzOjAwLCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90
ZToKPiBIaSwKPgo+IE9uIFR1ZSwgTWFyIDIxLCAyMDIzIGF0IDA5OjMyOjUzQU0gKzA4MDAsIEZy
YW5rIFdhbmcgd3JvdGU6Cj4+IE9uIDIwMjMvMy8yMSA0OjMxLCBTZWJhc3RpYW4gUmVpY2hlbCB3
cm90ZToKPj4+IE9uIE1vbiwgTWFyIDIwLCAyMDIzIGF0IDA2OjA3OjExUE0gKzA4MDAsIEZyYW5r
IFdhbmcgd3JvdGU6Cj4+Pj4gVHJhdmVyc2UgZml4ZWQgcGRvcyB0byBjYWxjdWxhdGUgdGhlIG1h
eGltdW0gcG93ZXIgdGhhdCB0aGUgY2hhcmdlcgo+Pj4+IGNhbiBwcm92aWRlLCBhbmQgaXQgY2Fu
IGJlIGdldCBieSBQT1dFUl9TVVBQTFlfUFJPUF9JTlBVVF9QT1dFUl9MSU1JVAo+Pj4+IHByb3Bl
cnR5Lgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogRnJhbmsgV2FuZyA8ZnJhbmsud2FuZ0Byb2Nr
LWNoaXBzLmNvbT4KPj4+PiAtLS0KPj4+PiAgICBkcml2ZXJzL3VzYi90eXBlYy90Y3BtL3RjcG0u
YyB8IDI0ICsrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAy
NCBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvdHlwZWMv
dGNwbS90Y3BtLmMgYi9kcml2ZXJzL3VzYi90eXBlYy90Y3BtL3RjcG0uYwo+Pj4+IGluZGV4IDEz
ODMwYjVlMmQwOWYuLmQ2YWQzY2RmOWU0YWYgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy91c2Iv
dHlwZWMvdGNwbS90Y3BtLmMKPj4+PiArKysgYi9kcml2ZXJzL3VzYi90eXBlYy90Y3BtL3RjcG0u
Ywo+Pj4+IEBAIC02MzIwLDYgKzYzMjAsMjcgQEAgc3RhdGljIGludCB0Y3BtX3BzeV9nZXRfY3Vy
cmVudF9ub3coc3RydWN0IHRjcG1fcG9ydCAqcG9ydCwKPj4+PiAgICAJcmV0dXJuIDA7Cj4+Pj4g
ICAgfQo+Pj4+ICtzdGF0aWMgaW50IHRjcG1fcHN5X2dldF9pbnB1dF9wb3dlcl9saW1pdChzdHJ1
Y3QgdGNwbV9wb3J0ICpwb3J0LAo+Pj4+ICsJCQkJCSAgdW5pb24gcG93ZXJfc3VwcGx5X3Byb3B2
YWwgKnZhbCkKPj4+PiArewo+Pj4+ICsJdW5zaWduZWQgaW50IHNyY19tdiwgc3JjX21hLCBtYXhf
c3JjX213ID0gMDsKPj4+PiArCXVuc2lnbmVkIGludCBpLCB0bXA7Cj4+Pj4gKwo+Pj4+ICsJZm9y
IChpID0gMDsgaSA8IHBvcnQtPm5yX3NvdXJjZV9jYXBzOyBpKyspIHsKPj4+PiArCQl1MzIgcGRv
ID0gcG9ydC0+c291cmNlX2NhcHNbaV07Cj4+Pj4gKwo+Pj4+ICsJCWlmIChwZG9fdHlwZShwZG8p
ID09IFBET19UWVBFX0ZJWEVEKSB7Cj4+Pj4gKwkJCXNyY19tdiA9IHBkb19maXhlZF92b2x0YWdl
KHBkbyk7Cj4+Pj4gKwkJCXNyY19tYSA9IHBkb19tYXhfY3VycmVudChwZG8pOwo+Pj4+ICsJCQl0
bXAgPSBzcmNfbXYgKiBzcmNfbWEgLyAxMDAwOwo+Pj4+ICsJCQltYXhfc3JjX213ID0gdG1wID4g
bWF4X3NyY19tdyA/IHRtcCA6IG1heF9zcmNfbXc7Cj4+Pj4gKwkJfQo+Pj4+ICsJfQo+Pj4+ICsK
Pj4+PiArCXZhbC0+aW50dmFsID0gbWF4X3NyY19tdzsKPj4+IFRoZSBwb3dlci1zdXBwbHkgc3Vi
c3lzdGVtIGV4cGVjdHMgTWljcm93YXR0cyBhbmQgbm90IE1pbGxpd2F0dHMuCj4+IFllcywgYnV0
IEkgc2VlIHRoZSAncG93ZXJfc3VwcGx5X3Byb3B2YWwnIG1lbWJlciAnaW50dmFsJyBpcyBhbiBp
bnRlZ2VyCj4+IHR5cGUsIEkgd29ycnkgYWJvdXQgaXQgbWF5IGJlIG92ZXJmbG93ZWQgdGhhdCB1
c2VzIE1pY3Jvd2F0dHMuCj4gRGF0YSBiZWluZyBlbmNvZGVkIGluIE1pY3Jvd2F0dHMgaXMgcGFy
dCBvZiB0aGUgQUJJLiBUaGUgZGF0YQo+IHlvdSBhcmUgc3VwcGx5aW5nIHdpbGwgYmUgaW50ZXJw
cmV0ZWQgaW4gwrVXLiBJZiB5b3Ugc3VibWl0IHlvdXIKPiBkYXRhIGluIG1XIGl0IGlzIGJhc2lj
YWxseSBhbHdheXMgd3JvbmcgZXZlbiB3aXRob3V0IGFuIG92ZXJmbG93Lgo+Cj4gTm93IHJlZ2Fy
ZGluZyB0aGUgb3ZlcmZsb3c6IEEgc2lnbmVkIGludCBjYW4gc3RvcmUgMl4zMSBiaXQsIHNvCj4g
MiwxNDcsNDgzLDY0OCDCtVcgPSAyMTQ3IFcuIExvb2tpbmcgYXQgeW91ciBjb2RlIHlvdSBlZmZl
Y3RpdmVseQo+IGNhbGN1bGF0ZSBNaWNyb3dhdHRzIGluIGFuIHVuc2lnbmVkIGludCBhbmQgdGhl
biBkaXZpZGUgYnkgMTAwMC4KPiBTaW5jZSB0aGUgaW50ZXJtZWRpYXRlIHZhbHVlIChiZWZvcmUg
ZGl2aWRpbmcgYnkgMTAwMCkgbmVlZHMgdG8gYmUKPiBzdG9yZWQgeW91IGdhaW4gb25seSBvbmUg
Yml0LiBUaGF0IHJhaXNlcyB0aGUgcXVlc3Rpb246IFdoeSBkbyB5b3UKPiBleHBlY3QgZGF0YSB0
byBiZSBiZXR3ZWVuIDIxNDcgVyBhbmQgNDI5NCBXIHdoZW4gdGhlIGxhdGVzdCByZWxlYXNlZAo+
IFVTQiBQRCBzcGVjIGFsbG93cyA1QUA0OFYgPSAyNDBXPwo+Cj4gLS0gU2ViYXN0aWFuCgpPa2F5
LCBnb3QgaXQsIEkgc2hhbGwgZGVsZXRlIGNvbnZlcnNpb24gY29kZXMgKCBkaXZpZGUgYnkgMTAw
MCApIGluIHRoZSAKbmV4dCB2ZXJzaW9uLgoKCkJSLgpGcmFuawoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
