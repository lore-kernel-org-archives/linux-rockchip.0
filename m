Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6311D2127B
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 09:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XEg6laZmO/LBjt4cYB4SPojWhEJTbkVE+N/VHjCLGvk=; b=l10gVbY4TPVJrE
	GfSOEr8zDnu8/8Rntui8EcH1XEPaRtuQdPNVJYVFxygUGLaQAMh9opQ5s5A2RcEuaRXhFyhGJSo5R
	KnxAjZ9fYP4j7lQLbOVXtP5vRnEv/Qbhid2ui9I0H++jpuJ+UdAkx3njC2sHvWbDuW6/7KP/y2cW2
	YIDVsZLoh92AQhpylsPn43nKYE2rAsJlcN6cyCXfQJ/qFXbFfnLbD2rY2M+wYuO31yHZio9uI6+Xw
	39LNuvg8oYyEtxELSWcA2snV1EVnEL7dxZZ7WA16JiMpSUUDxTW6Lrk/umZxF03QzUBnCWIvaI+6G
	sMwKq8cOgkPQZxnDAhSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1jDD-00000000BJz-1ZuC;
	Fri, 18 Oct 2024 09:23:59 +0000
Received: from mail-m3285.qiye.163.com ([220.197.32.85])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1jA6-00000000AaF-3OAE
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Oct 2024 09:20:48 +0000
DKIM-Signature: a=rsa-sha256;
	b=N8Pg9fH2I7RyKLns4/qH+WJpXzhQMmW5Xb3E6dlH2BIsP6f0zxX4b/Yi1r+0ITp8ZW7+omPvAZIzNa7+4jHdQMgPGDF3ikOyBAfZwlZ6BZbEEPtO8GqEoshCs/0gcF8ValDl0qHAwG27Q8fvg8O6oeowN49NdEro8kENYXEvBuc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=deE5f9Ret2wP45i7Ib72XRZhiMvsjcDFrcSbhhoZVEk=;
	h=date:mime-version:subject:message-id:from;
Received: from lintao?rock-chips.com (gy-adaptive-ssl-proxy-2-entmail-virt205.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with SMTP id 9901D2A06A9;
	Fri, 18 Oct 2024 17:20:08 +0800 (CST)
Message-ID: <98e0062c-aeb1-4bea-aa2b-4a99115c9da4@rock-chips.com>
Date: Fri, 18 Oct 2024 17:20:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 5/5] scsi: ufs: rockchip: initial support for UFS
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com>
 <1728368130-37213-6-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKForpLcmkqruuTfD6kkJhp_4CKFABWRxFVYNskGL1tjO=w@mail.gmail.com>
 <3969bae0-eeb8-447a-86a5-dfdac0b136cd@rock-chips.com>
 <CAPDyKFo=GcHG2sGQBrXJ7VWyp59QOmbLCAvHQ3krUympEkid_A@mail.gmail.com>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CAPDyKFo=GcHG2sGQBrXJ7VWyp59QOmbLCAvHQ3krUympEkid_A@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkseSFZCH0xCSEhDHUMYTkJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a929eed6a9403aakunm9901d2a06a9
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6P0k6ERw4AjItKTUwDRwKSA4P
	ODhPC0JVSlVKTElCSU9ISUpISUtMVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUNJS0I3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_022047_347030_C114FB97 
X-CRM114-Status: GOOD (  28.39  )
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

SGkgVWxmLAoK5ZyoIDIwMjQvMTAvMTggMTc6MDcsIFVsZiBIYW5zc29uIOWGmemBkzoKPiBPbiBU
aHUsIDEwIE9jdCAyMDI0IGF0IDAzOjIxLCBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBz
LmNvbT4gd3JvdGU6Cj4+Cj4+IEhpIFVsZgo+Pgo+PiDlnKggMjAyNC8xMC85IDIxOjE1LCBVbGYg
SGFuc3NvbiDlhpnpgZM6Cj4+PiBbLi4uXQo+Pj4KPj4+PiArCj4+Pj4gK3N0YXRpYyBpbnQgdWZz
X3JvY2tjaGlwX3J1bnRpbWVfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+Pj4gK3sKPj4+
PiArICAgICAgIHN0cnVjdCB1ZnNfaGJhICpoYmEgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPj4+
PiArICAgICAgIHN0cnVjdCB1ZnNfcm9ja2NoaXBfaG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFy
aWFudChoYmEpOwo+Pj4+ICsgICAgICAgc3RydWN0IGdlbmVyaWNfcG1fZG9tYWluICpnZW5wZCA9
IHBkX3RvX2dlbnBkKGRldi0+cG1fZG9tYWluKTsKPj4+Cj4+PiBwZF90b19nZW5wZCgpIGlzbid0
IHNhZmUgdG8gdXNlIGxpa2UgdGhpcy4gSXQncyBzb2xlbHkgdG8gYmUgdXNlZCBieQo+Pj4gZ2Vu
cGQgcHJvdmlkZXIgZHJpdmVycy4KPj4+Cj4+Pj4gKwo+Pj4+ICsgICAgICAgY2xrX2Rpc2FibGVf
dW5wcmVwYXJlKGhvc3QtPnJlZl9vdXRfY2xrKTsKPj4+PiArCj4+Pj4gKyAgICAgICAvKgo+Pj4+
ICsgICAgICAgICogU2hvdWxkbid0IHBvd2VyIGRvd24gaWYgcnBtX2x2bCBpcyBsZXNzIHRoYW4g
bGV2ZWwgNS4KPj4+Cj4+PiBDYW4geW91IGVsYWJvcmF0ZSBvbiB3aHkgd2UgbXVzdCBub3QgcG93
ZXItb2ZmIHRoZSBwb3dlci1kb21haW4gd2hlbgo+Pj4gbGV2ZWwgaXMgbGVzcyB0aGFuIDU/Cj4+
Pgo+Pgo+PiBCZWNhdXNlIHVmc2hjZCBkcml2ZXIgYXNzdW1lIHRoZSBjb250cm9sbGVyIGlzIGFj
dGl2ZSBhbmQgdGhlIGxpbmsgaXMgb24KPj4gaWYgbGV2ZWwgaXMgbGVzcyB0aGFuIDUuIFNvIHRo
ZSBkZWZhdWx0IHJlc3VtZSBwb2xpY3kgd2lsbCBub3QgdHJ5IHRvCj4+IHJlY292ZXIgdGhlIHJl
Z2lzdGVycyB1bnRpbCB0aGUgZmlyc3QgZXJyb3IgaGFwcGVuZWQuIE90aGVyd2lzZSBpZiB0aGUK
Pj4gbGV2ZWwgaXMgPj01LCBpdCBhc3N1bWVzIHRoZSBjb250cm9sbGVyIGlzIG9mZiBhbmQgdGhl
IGxpbmsgaXMgZG93biwKPj4gdGhlbiBpdCB3aWxsIHJlc3RvcmUgdGhlIHJlZ2lzdGVycyBhbmQg
bGluay4KPj4KPj4gQW5kIHRoZSBsZXZlbCBpcyBjaGFuZ2VhYmxlIHZpYSBzeXNmcy4KPiAKPiBP
a2F5LCB0aGFua3MgZm9yIGNsYXJpZnlpbmcuCj4gCj4+Cj4+PiBXaGF0IGhhcHBlbnMgaWYgd2Ug
cG93ZXItb2ZmIGFueXdheSB3aGVuIHRoZSBsZXZlbCBpcyBsZXNzIHRoYW4gNT8KPj4+Cj4+Pj4g
KyAgICAgICAgKiBUaGlzIGZsYWcgd2lsbCBiZSBwYXNzZWQgZG93biB0byBwbGF0Zm9ybSBwb3dl
ci1kb21haW4gZHJpdmVyCj4+Pj4gKyAgICAgICAgKiB3aGljaCBoYXMgdGhlIGZpbmFsIGRlY2lz
aW9uLgo+Pj4+ICsgICAgICAgICovCj4+Pj4gKyAgICAgICBpZiAoaGJhLT5ycG1fbHZsIDwgVUZT
X1BNX0xWTF81KQo+Pj4+ICsgICAgICAgICAgICAgICBnZW5wZC0+ZmxhZ3MgfD0gR0VOUERfRkxB
R19SUE1fQUxXQVlTX09OOwo+Pj4+ICsgICAgICAgZWxzZQo+Pj4+ICsgICAgICAgICAgICAgICBn
ZW5wZC0+ZmxhZ3MgJj0gfkdFTlBEX0ZMQUdfUlBNX0FMV0FZU19PTjsKPj4+Cj4+PiBUaGUgZ2Vu
cGQtPmZsYWdzIGlzIG5vdCBzdXBwb3NlZCB0byBiZSBjaGFuZ2VkIGxpa2UgdGhpcyAtIGFuZAo+
Pj4gZXNwZWNpYWxseSBub3QgZnJvbSBhIGdlbnBkIGNvbnN1bWVyIGRyaXZlci4KPj4+Cj4+PiBJ
IGFtIHRyeWluZyB0byB1bmRlcnN0YW5kIGEgYml0IG1vcmUgb2YgdGhlIHVzZSBjYXNlIGhlcmUu
IExldCdzIHNlZQo+Pj4gaWYgdGhhdCBoZWxwcyBtZSB0byBwb3RlbnRpYWxseSBzdWdnZXN0IGFu
IGFsdGVybmF0aXZlIGFwcHJvYWNoLgo+Pj4KPj4KPj4gSSB3YXMgbm90IGZhbWlsaWFyIHdpdGgg
dGhlIGdlbnBkIHBhcnQsIHNvIEkgaGF2ZW4ndCBjb21lIHVwIHdpdGgKPj4gYW5vdGhlciBzb2x1
dGlvbi4gSXQgd291bGQgYmUgZ3JlYXQgaWYgeW91IGNhbiBndWlkZSBtZSB0byB0aGUgcmlnaHQK
Pj4gd2F5Lgo+IAo+IEkgaGF2ZSBiZWVuIHBsYXlpbmcgd2l0aCB0aGUgZXhpc3RpbmcgaW5mcmFz
dHJ1Y3R1cmUgd2UgaGF2ZSBhdCBoYW5kCj4gdG8gc3VwcG9ydCB0aGlzLCBidXQgSSBuZWVkIGEg
ZmV3IG1vcmUgZGF5cyB0byBiZSBhYmxlIHRvIHByb3Bvc2UKPiBzb21ldGhpbmcgZm9yIHlvdS4K
PiAKCk11Y2ggYXBwcmVjaWF0ZS4KCj4+Cj4+Pj4gKwo+Pj4+ICsgICAgICAgcmV0dXJuIHVmc2hj
ZF9ydW50aW1lX3N1c3BlbmQoZGV2KTsKPj4+PiArfQo+Pj4+ICsKPj4+PiArc3RhdGljIGludCB1
ZnNfcm9ja2NoaXBfcnVudGltZV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+Pj4+ICt7Cj4+
Pj4gKyAgICAgICBzdHJ1Y3QgdWZzX2hiYSAqaGJhID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4+
Pj4gKyAgICAgICBzdHJ1Y3QgdWZzX3JvY2tjaGlwX2hvc3QgKmhvc3QgPSB1ZnNoY2RfZ2V0X3Zh
cmlhbnQoaGJhKTsKPj4+PiArICAgICAgIGludCBlcnI7Cj4+Pj4gKwo+Pj4+ICsgICAgICAgZXJy
ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGhvc3QtPnJlZl9vdXRfY2xrKTsKPj4+PiArICAgICAgIGlm
IChlcnIpIHsKPj4+PiArICAgICAgICAgICAgICAgZGV2X2VycihoYmEtPmRldiwgImZhaWxlZCB0
byBlbmFibGUgcmVmIG91dCBjbG9jayAlZFxuIiwgZXJyKTsKPj4+PiArICAgICAgICAgICAgICAg
cmV0dXJuIGVycjsKPj4+PiArICAgICAgIH0KPj4+PiArCj4+Pj4gKyAgICAgICByZXNldF9jb250
cm9sX2Fzc2VydChob3N0LT5yc3QpOwo+Pj4+ICsgICAgICAgdXNsZWVwX3JhbmdlKDEsIDIpOwo+
Pj4+ICsgICAgICAgcmVzZXRfY29udHJvbF9kZWFzc2VydChob3N0LT5yc3QpOwo+Pj4+ICsKPj4+
PiArICAgICAgIHJldHVybiB1ZnNoY2RfcnVudGltZV9yZXN1bWUoZGV2KTsKPj4+PiArfQo+Pj4+
ICsKPj4+PiArc3RhdGljIGludCB1ZnNfcm9ja2NoaXBfc3lzdGVtX3N1c3BlbmQoc3RydWN0IGRl
dmljZSAqZGV2KQo+Pj4+ICt7Cj4+Pj4gKyAgICAgICBzdHJ1Y3QgdWZzX2hiYSAqaGJhID0gZGV2
X2dldF9kcnZkYXRhKGRldik7Cj4+Pj4gKyAgICAgICBzdHJ1Y3QgdWZzX3JvY2tjaGlwX2hvc3Qg
Kmhvc3QgPSB1ZnNoY2RfZ2V0X3ZhcmlhbnQoaGJhKTsKPj4+PiArCj4+Pj4gKyAgICAgICAvKiBQ
YXNzIGRvd24gZGVzaXJlZCBzcG1fbHZsIHRvIEZpcm13YXJlICovCj4+Pj4gKyAgICAgICBhcm1f
c21jY2Nfc21jKFJPQ0tDSElQX1NJUF9TVVNQRU5EX01PREUsIFJPQ0tDSElQX1NMRUVQX1BEX0NP
TkZJRywKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICBob3N0LT5wZF9pZCwgaGJhLT5zcG1f
bHZsIDwgNSA/IDEgOiAwLCAwLCAwLCAwLCAwLCBOVUxMKTsKPj4+Cj4+PiBDYW4geW91IHBsZWFz
ZSBlbGFib3JhdGUgb24gd2hhdCBnb2VzIG9uIGhlcmU/IElzIHRoaXMgdHVybmluZyBvZmYgdGhl
Cj4+PiBwb3dlci1kb21haW4gdGhhdCB0aGUgZGV2IGlzIGF0dGFjaGVkIHRvIC0gb3Igd2hhdCBp
cyBhY3R1YWxseQo+Pj4gaGFwcGVuaW5nPwo+Pj4KPj4KPj4gVGhpcyBzbWMgY2FsbCBpcyB0cnlp
bmcgdG8gYXNrIGZpcm13YXJlIG5vdCB0byB0dXJuIG9mZiB0aGUgcG93ZXItZG9taWFuCj4+IHRo
YXQgdGhlIFVGUyBpcyBhdHRhY2hlZCB0byBhbmQgYWxzbyBub3QgdG8gdHVybiBvZmYgdGhlIHBv
d2VyIG9mIFVGUwo+PiBjb25udHJvbGxlci4KPiAKPiBPa2F5LCB0aGFua3MgZm9yIGNsYXJpZnlp
bmchCj4gCj4gQSBmb2xsb3cgdXAgcXVlc3Rpb24sIGRvbid0IHlvdSBuZWVkIHRvIG1ha2UgYSBj
b3JyZXNwb25kaW5nIHNtYyBjYWxsCj4gdG8gaW5mb3JtIHRoZSBGVyB0aGF0IGl0J3Mgb2theSB0
byB0dXJuIG9mZiB0aGUgcG93ZXItZG9tYWluIGF0IHNvbWUKPiBwb2ludD8KPiAKClllcy4gRWFj
aCB0aW1lIGVudGVyaW5nIHNsZWVwLCB3ZSB0ZWFjaCBGVyBpZiBpdCBuZWVkIHRvIHR1cm4gb2Zm
IG9yIAprZWVwIHBvd2VyLWRvbWFpbiwgZm9yIGluc3RhbmNlICJoYmEtPnNwbV9sdmwgPCA1ID8g
MSA6IDAiICwgMCBtZWFucwpvZmYgYW5kIDEgbWVhbnMgb24uCgo+Pgo+PiBQZXIgeW91ciBjb21t
ZW50IGF0IHBhdGNoIDQsIHNob3VsZCBJIHVzZSBHRU5QRF9GTEFHX0FMV0FZU19PTiArCj4+IGFy
bV9zbWNjY19zbWMgaGVyZSBpbiBzeXN0ZW0gc3VzcGVuZD8KPj4KPj4+PiArCj4+Pj4gKyAgICAg
ICByZXR1cm4gdWZzaGNkX3N5c3RlbV9zdXNwZW5kKGRldik7Cj4+Pj4gK30KPj4+PiArCj4+Pj4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgZGV2X3BtX29wcyB1ZnNfcm9ja2NoaXBfcG1fb3BzID0gewo+
Pj4+ICsgICAgICAgU0VUX1NZU1RFTV9TTEVFUF9QTV9PUFModWZzX3JvY2tjaGlwX3N5c3RlbV9z
dXNwZW5kLCB1ZnNoY2Rfc3lzdGVtX3Jlc3VtZSkKPj4+PiArICAgICAgIFNFVF9SVU5USU1FX1BN
X09QUyh1ZnNfcm9ja2NoaXBfcnVudGltZV9zdXNwZW5kLCB1ZnNfcm9ja2NoaXBfcnVudGltZV9y
ZXN1bWUsIE5VTEwpCj4+Pj4gKyAgICAgICAucHJlcGFyZSAgICAgICAgID0gdWZzaGNkX3N1c3Bl
bmRfcHJlcGFyZSwKPj4+PiArICAgICAgIC5jb21wbGV0ZSAgICAgICAgPSB1ZnNoY2RfcmVzdW1l
X2NvbXBsZXRlLAo+Pj4+ICt9Owo+Pj4+ICsKPj4+PiArc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9k
cml2ZXIgdWZzX3JvY2tjaGlwX3BsdGZvcm0gPSB7Cj4+Pj4gKyAgICAgICAucHJvYmUgPSB1ZnNf
cm9ja2NoaXBfcHJvYmUsCj4+Pj4gKyAgICAgICAucmVtb3ZlID0gdWZzX3JvY2tjaGlwX3JlbW92
ZSwKPj4+PiArICAgICAgIC5kcml2ZXIgPSB7Cj4+Pj4gKyAgICAgICAgICAgICAgIC5uYW1lID0g
InVmc2hjZC1yb2NrY2hpcCIsCj4+Pj4gKyAgICAgICAgICAgICAgIC5wbSA9ICZ1ZnNfcm9ja2No
aXBfcG1fb3BzLAo+Pj4+ICsgICAgICAgICAgICAgICAub2ZfbWF0Y2hfdGFibGUgPSB1ZnNfcm9j
a2NoaXBfb2ZfbWF0Y2gsCj4+Pj4gKyAgICAgICB9LAo+Pj4+ICt9Owo+Pj4+ICttb2R1bGVfcGxh
dGZvcm1fZHJpdmVyKHVmc19yb2NrY2hpcF9wbHRmb3JtKTsKPj4+PiArCj4+Pgo+Pj4gWy4uLl0K
PiAKPiBLaW5kIHJlZ2FyZHMKPiBVZmZlCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
