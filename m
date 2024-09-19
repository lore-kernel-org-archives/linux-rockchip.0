Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84434CE8D7A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Sep 2024 11:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SHCVg/LGllYh7lZuxe0rQfBIzezcfxVlW+0MxqKB908=; b=JgsLPmphYQmT0L
	DbUCk7Nb3diQeGF0hSxgcFqMO+nsWy3Pw7JkAbpHVLoVRLugZ3ks2cQknoKEfKsYPtAeBam/Zyr3K
	Afj6IZVgxS0Ln0abaWGwyvJcH6D8lBd2MdqU3vQA2XgbCLtzz8HtGEMJRErD2qWc1G6DFR2Z/hn0r
	UCAHCylJZPv2+324zV3lslnBR8k0Ly+QhZxlWL6EzsT0WaTJR2n5stQjSuPEOXbQf+OOHN1joRl9I
	HiG+IEkDS3hENnynBMXVIV1DEzRVfYfuzJVdzSkM9mt0QT6w1t5lBCXK5h+uGbl3Wfs3UxtUayIVS
	8ZzvI2BhTYoAh/i9kihA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srFQE-0000000AAgI-3B8z;
	Thu, 19 Sep 2024 11:34:06 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srFQB-0000000AAfH-11S6
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Sep 2024 11:34:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1726745614;
 bh=AhnUxQ3TsikavWJSRf1+uBeZ6pR2rsbLiLx5LDOjo5M=;
 b=Exr18aGzknF7qMIYUL6cKZPk8nl6Ti0QlGINoO3KI/MFrhGtyMzmC7VDNG962e2XDrKbkPG2I
 TYioc8LK19oYW8FoGTgFnione75SOCeFvZy6Le6GxFFLqAE6US6iWPhIkKTOZZadxO2M3k0q84L
 ms1K0Xy+RSrHu/BI20F1dOn/J1ZFAnpzEhflKIJfYW/yT6VbaK4lCYaZSHXaUC/9m/xE/BK+T8a
 yZsA4s8V6QbwJEsiPvSFpxa8vXT5lFraztrwvvQhjrKicVi3ifRQTNj24RbuISycjUoTZEDEB21
 srPhBgXebANM+chN1LRNx+itySv13ZcEAmTYBQPyVBwA==
Message-ID: <a4d94eab-8543-45e1-b657-fa7f12470538@kwiboo.se>
Date: Thu, 19 Sep 2024 13:33:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] arm64: dts: rockchip: Add GPU power domain
 regulator dependency for RK3588
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Ulf Hansson <ulf.hansson@linaro.org>, Elaine Zhang
 <zhangqing@rock-chips.com>,
 =?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?=
 <adrian.larumbe@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Chen-Yu Tsai
 <wens@csie.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, kernel@collabora.com
References: <20240919091834.83572-1-sebastian.reichel@collabora.com>
 <20240919091834.83572-7-sebastian.reichel@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240919091834.83572-7-sebastian.reichel@collabora.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66ec0c0d5c923b6ab0c0bfa4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_043403_646375_1BDF432D 
X-CRM114-Status: GOOD (  15.10  )
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

SGkgU2ViYXN0aWFuLAoKT24gMjAyNC0wOS0xOSAxMToxMiwgU2ViYXN0aWFuIFJlaWNoZWwgd3Jv
dGU6Cj4gRW5hYmxpbmcgdGhlIEdQVSBwb3dlciBkb21haW4gcmVxdWlyZXMgdGhhdCB0aGUgR1BV
IHJlZ3VsYXRvciBpcwo+IGVuYWJsZWQuIFRoZSByZWd1bGF0b3IgaXMgZW5hYmxlZCBhdCBib290
IHRpbWUsIGJ1dCBhdXRvbWF0aWNhbGx5Cj4gZ2V0cyBkaXNhYmxlZCB3aGVuIHRoZXJlIGFyZSBu
byB1c2Vycy4KPiAKPiBJZiB0aGUgR1BVIGRyaXZlciBpcyBub3QgcHJvYmVkIGF0IGJvb3QgdGlt
ZSBvciByZWJvdW5kIHdoaWxlCj4gdGhlIHN5c3RlbSBpcyBydW5uaW5nIHRoZSBzeXN0ZW0gd2ls
bCB0cnkgdG8gZW5hYmxlIHRoZSBwb3dlcgo+IGRvbWFpbiBiZWZvcmUgdGhlIHJlZ3VsYXRvciBp
cyBlbmFibGVkIHJlc3VsdGluZyBpbiBhIGZhaWx1cmUKPiBoYW5naW5nIHRoZSB3aG9sZSBzeXN0
ZW0uIEF2b2lkIHRoaXMgYnkgYWRkaW5nIGFuIGV4cGxpY2l0Cj4gZGVwZW5kZW5jeS4KPiAKPiBS
ZXBvcnRlZC1ieTogQWRyacOhbiBNYXJ0w61uZXogTGFydW1iZSA8YWRyaWFuLmxhcnVtYmVAY29s
bGFib3JhLmNvbT4KPiBUZXN0ZWQtYnk6IEFkcmlhbiBMYXJ1bWJlIDxhZHJpYW4ubGFydW1iZUBj
b2xsYWJvcmEuY29tPiAjIE9uIFJvY2sgNUIKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVp
Y2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYXJtc29tLXNpZ2U3LmR0cyAgICAgICAgIHwgNCAr
KysrCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaSAgICAg
ICAgICAgICAgICB8IDIgKy0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgt
Y29vbHBpLWNtNS5kdHNpICAgICAgICAgIHwgNCArKysrCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LWZyaWVuZGx5ZWxlYy1jbTM1ODguZHRzaSB8IDQgKysrKwo+ICBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1qYWd1YXIuZHRzICAgICAgICAgICAgICAg
fCA0ICsrKysKPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtb2szNTg4LWMu
ZHRzICAgICAgICAgICAgIHwgNCArKysrCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LXJvY2stNS1pdHguZHRzICAgICAgICAgICB8IDQgKysrKwo+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cyAgICAgICAgICAgICAgfCA0ICsrKysK
PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtdGlnZXIuZHRzaSAgICAgICAg
ICAgICAgIHwgNCArKysrCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1j
b29scGktNGIuZHRzICAgICAgICAgICB8IDQgKysrKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OHMta2hhZGFzLWVkZ2UyLmR0cyAgICAgICAgfCA0ICsrKysKPiAgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW9yYW5nZXBpLTUuZHRzICAgICAgICAgIHwg
NCArKysrCj4gIDEyIGZpbGVzIGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPiAKCkFueSByZWFzb24gd2h5IGZvbGxvd2luZyByazM1ODggRFRzIHdhcyBub3QgdXBkYXRl
ZD8KCnJrMzU4OC1ldmIxLXYxMC5kdHMKcmszNTg4LW5hbm9wYy10Ni5kdHNpCnJrMzU4OC1xdWFy
dHpwcm82NC5kdHMKcmszNTg4cy1nYW1lZm9yY2UtYWNlLmR0cwpyazM1ODhzLW9kcm9pZC1tMi5k
dHMKCkkgYWxzbyBleHBlY3Qgd2UgbWF5IG5lZWQgdG8gZGVmaW5lIGRvbWFpbi1zdXBwbHkgZm9y
IHRoZSBucHUgb24gcmszNTg4CmFuZCBhbHNvIGJvdGggZ3B1IGFuZCBucHUgb24gcmszNTZ4IGlu
IGEgZnV0dXJlIHNlcmllcy4KClNpbWlsYXIgZnJlZXplIGlzc3VlIGhhcyBiZWVuIG9ic2VydmVk
IG9uIHJrMzU2eCB3aGVuIGJvb3RpbmcgdmVuZG9yCmtlcm5lbCB3aXRoIG5wdSBzdXBwb3J0IGVu
YWJsZWQgdXNpbmcgbWFpbmxpbmUgVS1Cb290IGFuZCBEVCBbMV0uCgpUbyB3b3JrIGFyb3VuZCB0
aGF0IGlzc3VlIG9uIHJrMzU2eCB0aGUgbnB1IHJlZ3VsYXRvciBjb3VsZCBiZSBjaGFuZ2VkCnRv
IGFsd2F5cy1vbi9ib290LW9uIHRvIGdldCBwYXN0IHRoZSBrZXJuZWwgZnJlZXplIFsyXS4KClsx
XSBodHRwczovL2dpdGh1Yi5jb20vYXJtYmlhbi9idWlsZC9wdWxsLzcwMjUjaXNzdWVjb21tZW50
LTIyOTEwNjc3NDgKWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS9Ld2lib28vdS1ib290LXJvY2tjaGlw
L2NvbW1pdC9kYTMxZGE0YjY4Zjg1OGY1NDM2NGEyMWIwZGQwMGZlZjJhYjBkMGQ2CgpSZWdhcmRz
LApKb25hcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
