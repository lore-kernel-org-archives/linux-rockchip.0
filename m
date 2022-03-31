Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACE1FC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 12:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jeX8Zd9AnI/9XevkpBRIsLPVdiDC10a8CM/FhrQHiA=; b=yDL/tSNe0kT5Bo
	EXbsvqy5QGDaZPq7ANZb4AKs73elB2KH/BTQtynTKXkEOi6oe3xs1kcgwVa8OmTjDIlJ6EiRfMbVs
	UhDELosJNfYqcfehk50mLDO3Eh8EprwtCSSpov3o52LW5HfZaF7Gnc2BsFRgWb8cttQ7bP41dpWnS
	AMqj/Fff0rn2ZwVXXliHy4UAXFqKFviEZZXOVXvXgFiDVw/kzFFOvcpzfivQj9nZCZOUxY1Qtmbhk
	FkCluHliB1jvbomHTnB/y4TIM5t9+dJqCHNSlLBzxaV1kmFzDdMi1jTYqhlYT1S22i/u1eV+m0BBk
	UGnyqGuPsq64K7THPGkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZtgC-002Alt-EI; Thu, 31 Mar 2022 12:13:32 +0000
Received: from mail-m176237.qiye.163.com ([59.111.176.237])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZtfy-002AhH-AX; Thu, 31 Mar 2022 12:13:20 +0000
Received: from [192.168.60.102] (unknown [103.29.142.67])
 by mail-m176237.qiye.163.com (Hmail) with ESMTPA id CB9D1C40311;
 Thu, 31 Mar 2022 20:13:11 +0800 (CST)
Message-ID: <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
Date: Thu, 31 Mar 2022 20:13:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
 <20220330192054.GA4012@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220330192054.GA4012@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWUMaGkhWSk1LSU9NQh8fSE
 4aVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OjI6Qxw*HD4BSg05SjpMOBwS
 DkoaCjpVSlVKTU9DTElDTEJPS0lOVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZSktIVUlCVUpPSVVNTFlXWQgBWUFNS0NCNwY+
X-HM-Tid: 0a7fdfe4e207d9afkuwscb9d1c40311
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_051318_565622_AD419116 
X-CRM114-Status: GOOD (  16.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgUGlvdHI6CgpPbiAzLzMxLzIyIDAzOjIwLCBTYXNjaGEgSGF1ZXIgd3JvdGU6Cj4gT24gV2Vk
LCBNYXIgMzAsIDIwMjIgYXQgMDQ6NTI6MjJQTSArMDIwMCwgUGlvdHIgT25pc3pjenVrIHdyb3Rl
Ogo+Pgo+Pj4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogU2FzY2hhIEhhdWVyIDxzLmhhdWVy
QHBlbmd1dHJvbml4LmRlPiB3IGRuaXUgMzAuMDMuMjAyMiwgbyBnb2R6LiAxMjoyMDoKPj4+Cj4+
PiBEb2VzIGl0IGNoYW5nZSBhbnl0aGluZyBpZiB5b3UgZG8gYSAibW9kZXRlc3QgLXMgNjlANjc6
MTkyMHgxMDgwIiBiZWZvcmUKPj4+IHN0YXJ0aW5nIHRoZSBhcHA/IE9yIGlmIHlvdSBydW4gIm1v
ZGV0ZXN0IC1QIDQzQDY3OjE5MjB4MTA4MEBOVjEyIgo+Pj4gYmVmb3JlIHN0YXJ0aW5nIHRoZSBh
cHA/IE9yIG90aGVyIGNvbWJpbmF0aW9ucyB0aGVyZW9mPwo+PiBTbyBpIHRyaWVkIGZvbGxvd2lu
ZyBjb21iaW5hdGlvbnMKPj4KPj4gLWJvb3QKPj4gLW1vZGV0ZXN0IC1zIDY5QDY3OjE5MjB4MTA4
MCAtPiBvawo+PiAtbW9kZXRlc3QgLVAgNDNANjc6MTkyMHgxMDgwQE5WMTIgLT4gZ3JlZW4gc2Ny
ZWVuCj4gSSBoYXZlIG5vIGlkZWEgd2hhdCBpcyBnb2luZyBvbiBoZXJlLiBUaGVyZSBzYW1lIGNv
bW1hbmRzIHdvcmsgZm9yIG1lLgo+IFlvdSBjb3VsZCBwcm92aWRlIG1lIHlvdXIga2VybmVsIGNv
bmZpZyBhbmQgdXBzdHJlYW0gY29tbWl0aXNoIHlvdSBhcmUKPiB3b3JraW5nIG9uLCBtYXliZSB0
aGF0IGdldHMgbWUgY2xvc2VyIHRvIHlvdXIgc2V0dXAuCgoKSXQncyBhIGxpdHRsZSBzdHJhbmdl
LCBJIGNhbid0IHJlcHJvZHVjZSB0aGlzIGlzc3VlIG5laXRoZXIuCgpCdXQgSSBoYXZlIHByb2Js
ZW0gd2l0aCB0aGlzIHR3byBzdGVwIGNvbW1hbmQgc2VxdWVuY2UuCgpzdGVwIDE6wqAgbW9kZXRl
c3QgLXMgNjlANjc6MTkyMHgxMDgwIC0+IG9rCgpzdGVwIDI6wqAgbW9kZXRlc3QgLVAgNDNANjc6
MTkyMHgxMDgwQE5WMTIsCgpJIGdvdCB0aGUgZmFpbGVkIG1lc3NhZ2U6wqAgImZhaWxlZCB0byBl
bmFibGUgcGxhbmU6IFBlcm1pc3Npb24gZGVuaWVkIgoKQmVjYXVzZSB0aGUgZHJtIGNvcmUgd2ls
bCBzdG9wIHN0ZXAyIGJ5IGRybV9pb2N0cmxfcGVybWl0IGFzIApEUk1fSU9DVExfU0VUUExBTkUg
bmVlZCBhIG1hc3RlciwKCmJ1dCB0aGUgY3VycmVudCBtYXN0ZXIgaXMgdGhlIG1vZGV0ZXN0IHJ1
biBieSBzdGVwMS4KCnN0YXRpYyBpbnQgZHJtX2lvY3RsX3Blcm1pdCh1MzIgZmxhZ3MsIHN0cnVj
dCBkcm1fZmlsZSAqZmlsZV9wcml2KQp7CgogwqDCoMKgwqDCoMKgwqAgLyogUk9PVF9PTkxZIGlz
IG9ubHkgZm9yIENBUF9TWVNfQURNSU4gKi8KIMKgwqDCoMKgwqDCoMKgIGlmICh1bmxpa2VseSgo
ZmxhZ3MgJiBEUk1fUk9PVF9PTkxZKSAmJiAhY2FwYWJsZShDQVBfU1lTX0FETUlOKSkpIHsKIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwcmludGsoIkRSTV9ST09UX09OTFlcbiIpOwog
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUFDQ0VTOwogwqDCoMKgwqDC
oMKgwqAgfQoKIMKgwqDCoMKgwqDCoMKgIC8qIEFVVEggaXMgb25seSBmb3IgYXV0aGVudGljYXRl
ZCBvciByZW5kZXIgY2xpZW50ICovCiDCoMKgwqDCoMKgwqDCoCBpZiAodW5saWtlbHkoKGZsYWdz
ICYgRFJNX0FVVEgpICYmIAohZHJtX2lzX3JlbmRlcl9jbGllbnQoZmlsZV9wcml2KSAmJgogwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAhZmlsZV9wcml2LT5hdXRoZW50
aWNhdGVkKSkgewogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHByaW50aygiRFJNX0FV
VEhcbiIpOwogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUFDQ0VTOwog
wqDCoMKgwqDCoMKgwqAgfQoKIMKgwqDCoMKgwqDCoMKgIC8qIE1BU1RFUiBpcyBvbmx5IGZvciBt
YXN0ZXIgb3IgY29udHJvbCBjbGllbnRzICovCiDCoMKgwqDCoMKgwqDCoCBpZiAodW5saWtlbHko
KGZsYWdzICYgRFJNX01BU1RFUikgJiYKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgIWRybV9pc19jdXJyZW50X21hc3RlcihmaWxlX3ByaXYpKSkgewogwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHByaW50aygiRFJNX01BU1RFUlxuIik7CiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FQUNDRVM7CiDCoMKgwqDCoMKgwqDCoCB9Cgog
wqDCoMKgwqDCoMKgwqAgLyogUmVuZGVyIGNsaWVudHMgbXVzdCBiZSBleHBsaWNpdGx5IGFsbG93
ZWQgKi8KIMKgwqDCoMKgwqDCoMKgIGlmICh1bmxpa2VseSghKGZsYWdzICYgRFJNX1JFTkRFUl9B
TExPVykgJiYKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX2lz
X3JlbmRlcl9jbGllbnQoZmlsZV9wcml2KSkpIHsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBwcmludGsoIkRSTV9SRU5ERVJfTk9UX0FMTE9XXG4iKTsKIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gLUVBQ0NFUzsKIMKgwqDCoMKgwqDCoMKgIH0KCiDCoMKgwqDC
oMKgwqDCoCByZXR1cm4gMDsKfQoKCkFmdGVyIGJ5cGFzcyB0aGUgcGVybWlzc2lvbiBjaGVjaywg
SSBjYW4gcnVuIHN0ZXAgMiAsIGJ1dCB0aGUgZGlzcGxheSBvbiAKdGhlIHNjcmVlbiB3aWxsIGhh
dmUgYSBzaGlmdCBhcyB0aGUgd3JvbmcgZGx5IGNvbmZpZ3VyYXRpb24uCgpTbyBob3cgeW91IHR3
byBnb3Qgc3RlcCB0d28gcnVuIHN1Y2Nlc3M/CgpQaW90cjoKCldoYXQgc29jIGlzIG9uIHlvdSBi
b2FyZD8gcmszNTY2IG9yIHJrMzU2OD8KCkkgaGF2ZSBhIHNjcmlwdHNbMF3CoCB1c2UgaW9bMV0g
Y29tbWFuZCB0byBkdW1wIHRoZSBWT1AyIHJlZ2lzdGVyIHlvdSBjYW4gCnVzZSBpdCBkdW1wIHRo
ZSByZWdpc3RlciBjb25maWd1cmF0aW9uIHdoZW4geW91IG1lZXQgYSBkaXNwbGF5IGZhaWx1cmUs
Cgp0aGVuIHNlbmQgdGhlIGR1bXAgdG8gbWUsIG1heWJlIEkgY2FuIGZpZ3VyZSBvdXQgc29tZXRo
aW5nLgoKWzBdaHR0cHM6Ly9naXRodWIuY29tL2FuZHlzaHJrL2J1aWxkcm9vdC9ibG9iLzIwMjIv
Ym9hcmQvYW5keXNocmsvcm9vdGZzX292ZXJsYXkvdXNyL2Jpbi92b3AyX2R1bXAuc2gKClsxXSBo
dHRwczovL2dpdGh1Yi5jb20vYW5keXNocmsvaW8KCj4KPiBTYXNjaGEKPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
