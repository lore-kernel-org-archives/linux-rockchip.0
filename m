Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44EA2C47258
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 02:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPrFFHijq6DN/P03WlEKK4AgYvCKw4OVd1Ea/ouGOXQ=; b=4renFyvWSMUSn4
	EjPzV+wprZVbWICErQZDglKtGe2T5DX0JIhifxAfpyZD7jBdUXqwiNye9yk1RQ4zetg+eZxV2oQVH
	t4r/ZZaIZhP1PzjzHYEcJtHjQrGVIxnHQf+pZ2YcZF6WAtg3Zxd4809PGCJQiqUQVmnEU6Ni2kqR5
	W9eikvao0kVrlp6VTq337Fs0gh+vP+HBo5+TRbw0CmS1xnE1zqDkj9ubt3t/Z2wI44BHiz+nWFHoF
	5rawK6Hz8t7wJgAVrUcSamkupcKW4XUJBpwjEQjio0x3nwaN1Q/3uHuCStHDKLg2ap+edwB0zEY1I
	X2P8tNJjqePeXatOasnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTCP9-00000002vJW-0XX7;
	Fri, 26 Jan 2024 02:57:19 +0000
Received: from mail-m6032.netease.com ([210.79.60.32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTCP5-00000002vG8-0TSi;
	Fri, 26 Jan 2024 02:57:17 +0000
DKIM-Signature: a=rsa-sha256;
	b=YFOPswdg7rBxtjGvY8CH7u++ZspuDmBVGAFE0YiKDY6Kpz3ROhPkZhHAbsg7udKDRdxOgI31dRT9zqciiqi7d9qiL0UZ5WSReqjhjDiZWASQCHHWqMPzOHfxZbgDNZxwIDXbHEsVn5ZdQ5XmhVxbxeJ7th/i5iQYAZ79079zH1U=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=o0t+MfDqVm3X5Nqibb28Ci/mN20IReJ02S0VvZJURXU=;
	h=date:mime-version:subject:message-id:from;
Received: from [192.168.60.65] (unknown [103.29.142.67])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 683D79001AB;
	Fri, 26 Jan 2024 10:56:46 +0800 (CST)
Message-ID: <ffb77494-e452-4fdf-be18-bb0dccfe1404@rock-chips.com>
Date: Fri, 26 Jan 2024 10:56:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] soc: rockchip: grf: Fix SDMMC not working on RK3588 with
 bus-width > 1
Content-Language: en-US
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>,
 linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20230619011002.2249960-1-megi@xff.cz>
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <20230619011002.2249960-1-megi@xff.cz>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGEpMVh8aTx8eTBkYTklJTFUTARMWGhIXJBQOD1
	lXWRgSC1lBWUpLSFVJQlVKT0lVTUxZV1kWGg8SFR0UWUFZT0tIVUpNT0lOSFVKS0tVSkJLS1kG
X-HM-Tid: 0a8d43b2c95a03a9kunm683d79001ab
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PC46PTo*TDMJDA9OFgsPEU4q
	SUwwCkpVSlVKTEtNSUhMQ0tMSE1CVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQUhMQks3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_185715_715375_10CD9007 
X-CRM114-Status: GOOD (  18.08  )
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

SGkgT25kcmVqLAoKT24gMjAyMy82LzE5IDA5OjA5LCBPbmTFmWVqIEppcm1hbiB3cm90ZToKPiBG
cm9tOiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPgo+IFJLMzU4OCBoYXMgdGhlIHNhbWUg
aXNzdWUgYXMgb3RoZXIgZWFybGllciBSSyBTb0NzLiBKVEFHCj4gZnVuY3Rpb25hbGl0eSBtdXhl
ZCB0byBzb21lIFNETU1DIGRhdGEgcGlucyBjYXVzZXMgaXNzdWVzIHdpdGggU0RNTUMKPiBpbnRl
cmZhY2UuIFdpdGhvdXQgdGhpcyBwYXRjaCwgSSBjYW4gb25seSB1c2UgU0RNTUMgaW50ZWZhY2UK
PiB3aXRoIGJ1cy13aWR0aCA9IDwxPi4gKEpUQUcgaXMgbXV4ZWQgdG8gZGF0YSBwaW5zIEQyIGFu
ZCBEMykKV2hpY2ggYm9hcmQgZGlkIHlvdSBtZXQgdGhpcyBpc3N1ZT8KClRoZSBmb3JjZSBqdGFn
IGZ1bmN0aW9uIHNob3VsZCBiZSB3b3JrIGlmIGFsbCB0aGUgaW9tdXggYW5kIGhhcmR3YXJlIApz
ZXR0aW5nIGlzIGNvcnJldDoKIMKgwqDCoCBBbGwgdGhlIElPIGZvciBTRE1NQyBzaWduYWwgaW5j
bHVkaW5nIFNETU1DX0RFVCwgc2hvdWxkIHNldCB0aGUgCmlvbXV4L3BpbmN0cmwgdG8gbW1jIGZ1
bmN0aW9uCmluc3RlYWQgb2YgR1BJTyBmdW5jdGlvbi4KClNlZW1zIGxpa2UgeW91IGFyZSB3b3Jr
aW5nIG9uIHJrMzU4OC1xdWFydHpwcm82NCwgd2hlbiBJIGNoZWNrIGl0cyBkdHMsIApJIGZvdW5k
IGJlbG93IHNldHRpbmcgaW4gc2RtbWMgbm9kZToKY2QtZ3Bpb3MgPSA8JmdwaW8wIFJLX1BBNCBH
UElPX0FDVElWRV9MT1c+OwpTaW5jZSBxdWFydHpwcm82NCBpcyB1c2luZyB0aGUgY29ycmVjdCBJ
TyBhbmQgdGhlcmUgaXMgYWxyZWFkeSBhIAomc2RtbWNfZGV0IGluIHNkbW1jIG5vZGUsCnlvdSBk
b24ndCBuZWVkIHRvIG92ZXJ3cml0ZSBpdCB3aXRoICJjZC1ncGlvcyIuCgpDb3VsZCB5b3UgaGVs
cCB0byByZXZlcnQgdGhpcyBwYXRjaCBhbmQgcmVtb3ZlICJjZC1ncGlvcyIgaW4gZHRzIHNkbW1j
LCAKYW5kIHRlc3Qgc2RtbWMgZnVuY3Rpb24gYWdhaW4/Ckl0IHNob3VsZCB3b3JrIHdpdGggU0Qg
Y2FyZCA0IGxpbmUgbW9kZSBhbmQgZm9yY2UganRhZyBhdmFpbGFibGUgd2hlbiAKcGVvcGxlIG5l
ZWQgaXQuCgpUaGFua3MsCi0gS2V2ZXIKPgo+IFNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4g
PG1lZ2lAeGZmLmN6Pgo+IC0tLQo+ICAgZHJpdmVycy9zb2Mvcm9ja2NoaXAvZ3JmLmMgfCAxNCAr
KysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9yb2NrY2hpcC9ncmYuYyBiL2RyaXZlcnMvc29jL3JvY2tj
aGlwL2dyZi5jCj4gaW5kZXggMTVhMzk3MGUzNTA5Li5kNzY4YzVhNzAxNzQgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9zb2Mvcm9ja2NoaXAvZ3JmLmMKPiArKysgYi9kcml2ZXJzL3NvYy9yb2NrY2hp
cC9ncmYuYwo+IEBAIC0xMjEsNiArMTIxLDE3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2No
aXBfZ3JmX2luZm8gcmszNTY2X3BpcGVncmYgX19pbml0Y29uc3QgPSB7Cj4gICAJLm51bV92YWx1
ZXMgPSBBUlJBWV9TSVpFKHJrMzU2Nl9kZWZhdWx0cyksCj4gICB9Owo+ICAgCj4gKyNkZWZpbmUg
UkszNTg4X0dSRl9TT0NfQ09ONgkJMHgwMzE4Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHJv
Y2tjaGlwX2dyZl92YWx1ZSByazM1ODhfZGVmYXVsdHNbXSBfX2luaXRjb25zdCA9IHsKPiArCXsg
Imp0YWcgc3dpdGNoaW5nIiwgUkszNTg4X0dSRl9TT0NfQ09ONiwgSElXT1JEX1VQREFURSgwLCAx
LCAxNCkgfSwKPiArfTsKPiArCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfZ3JmX2lu
Zm8gcmszNTg4X3N5c2dyZiBfX2luaXRjb25zdCA9IHsKPiArCS52YWx1ZXMgPSByazM1ODhfZGVm
YXVsdHMsCj4gKwkubnVtX3ZhbHVlcyA9IEFSUkFZX1NJWkUocmszNTg4X2RlZmF1bHRzKSwKPiAr
fTsKPiArCj4gICAKPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHJvY2tjaGlw
X2dyZl9kdF9tYXRjaFtdIF9faW5pdGNvbnN0ID0gewo+ICAgCXsKPiBAQCAtMTQ3LDYgKzE1OCw5
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHJvY2tjaGlwX2dyZl9kdF9tYXRj
aFtdIF9faW5pdGNvbnN0ID0gewo+ICAgCX0sIHsKPiAgIAkJLmNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszNTY2LXBpcGUtZ3JmIiwKPiAgIAkJLmRhdGEgPSAodm9pZCAqKSZyazM1NjZfcGlwZWdy
ZiwKPiArCX0sIHsKPiArCQkuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtc3lzLWdyZiIs
Cj4gKwkJLmRhdGEgPSAodm9pZCAqKSZyazM1ODhfc3lzZ3JmLAo+ICAgCX0sCj4gICAJeyAvKiBz
ZW50aW5lbCAqLyB9LAo+ICAgfTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
