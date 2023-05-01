Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FD1EC77B61
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 May 2023 07:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqpiPWxZTGMO/4lVnFDVWDwRQ/gq1+D4TWOAWKs4+zY=; b=gYj4A9+TZiI8mj
	09w5ojWrmooDIjBJk4PT6b9LTxLKVUap75kywAsa7jVo76Auij1SF8c0umce0o2MO8IXX2lHw/tGf
	W5AcxT86+LBuvPggGegemK0X1pjlu+QWkslY7u6joJw4MBMWBL///C5lGUn6qRUHGPNP8OjcmMw4V
	Bf6VF9ZXujY8sm1BYdEJI1zpIHpGesLGqpPuvOGXdSoBc6XnQCC6qvkeCgF9tbl/H/Kp5+WMhzIBT
	ZW017XyOQO8jUfKrFaQ38kqGB5odQmhqLhR2QsKZX06NbaO5o7GthgusYzhBPiBIsilO3UH+1MZGk
	wA1cGMvyCVc6CyX5HhBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptNrJ-00FOYM-0Z;
	Mon, 01 May 2023 07:22:05 +0000
Received: from wp530.webpack.hosteurope.de ([80.237.130.52])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptNrF-00FOXE-1y;
	Mon, 01 May 2023 07:22:03 +0000
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
	by wp530.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	id 1ptNr8-0001Go-Es; Mon, 01 May 2023 09:21:54 +0200
Message-ID: <dcd317db-3c24-895d-572b-1b139c370ff7@leemhuis.info>
Date: Mon, 1 May 2023 09:21:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US, de-DE
To: Shreeya Patel <shreeya.patel@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com, robert.mader@collabora.com,
 nicolas.dufresne@collabora.co.uk, ezequiel@vanguardiasur.com.ar,
 festevam@gmail.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, linux-imx@nxp.com, regressions@lists.linux.dev
References: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
 <20230220104849.398203-2-benjamin.gaignard@collabora.com>
 <26addb7d-bb9d-34e8-d4fe-e323ff488101@collabora.com>
From: Thorsten Leemhuis <linux@leemhuis.info>
Subject: Re: [PATCH v9 1/6] media: verisilicon: Do not set context src/dst
 formats in reset functions
In-Reply-To: <26addb7d-bb9d-34e8-d4fe-e323ff488101@collabora.com>
X-bounce-key: webpack.hosteurope.de;linux@leemhuis.info;1682925721;ccab4a1d;
X-HE-SMSGID: 1ptNr8-0001Go-Es
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_002201_808171_95E8354A 
X-CRM114-Status: GOOD (  17.52  )
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

T24gMjcuMDQuMjMgMDA6MTksIFNocmVleWEgUGF0ZWwgd3JvdGU6Cj4gT24gMjAvMDIvMjMgMTY6
MTgsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiBTZXR0aW5nIGNvbnRleHQgc291cmNlIGFu
ZCBkZXN0aW5hdGlvbiBmb3JtYXRzIHNob3VsZCBvbmx5IGJlIGRvbmUKPj4gaW4gaGFudHJvX3Nl
dF9mbXRfb3V0KCkgYW5kIGhhbnRyb19zZXRfZm10X2NhcCgpIGFmdGVyIGNoZWNrIHRoYXQKPj4g
dGhlIHRhcmdldGVkIHF1ZXVlIGlzIG5vdCBidXN5Lgo+PiBSZW1vdmUgdGhlc2UgY2FsbHMgZnJv
bSBoYW50cm9fcmVzZXRfZW5jb2RlZF9mbXQoKSBhbmQKPj4gaGFudHJvX3Jlc2V0X3Jhd19mbXQo
KSB0byBjbGVhbiB0aGUgZHJpdmVyLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWln
bmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPiAKPiBLZXJuZWxDSSBmb3Vu
ZCB0aGlzIHBhdGNoIGNhdXNlcyBhIHJlZ3Jlc3Npb24gaW4gdGhlCj4gYmFzZWxpbmUuZG1lc2cu
YWxlcnQgdGVzdCBbMV0gb24gcmszMzk5LXJvY2stcGktNGIgWzJdLAo+IHNlZSB0aGUgYmlzZWN0
aW9uIHJlcG9ydCBmb3IgbW9yZSBkZXRhaWxzIFszXS4KPiAKPiBMZXQgdXMga25vdyBpZiB5b3Ug
aGF2ZSBhbnkgcXVlc3Rpb25zLgo+IAo+IAo+IFsxXQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9rZXJu
ZWxjaS9rZXJuZWxjaS1jb3JlL2Jsb2IvbWFpbi9jb25maWcvcm9vdGZzL2RlYm9zL292ZXJsYXlz
L2Jhc2VsaW5lL29wdC9rZXJuZWxjaS9kbWVzZy5zaAo+IFsyXSBodHRwczovL2xpbnV4Lmtlcm5l
bGNpLm9yZy90ZXN0L2Nhc2UvaWQvNjQ0MmU4MjVmMTkxMzRkNzRjMmU4NjVkLwo+IFszXSBodHRw
czovL2dyb3Vwcy5pby9nL2tlcm5lbGNpLXJlc3VsdHMvbWVzc2FnZS80MDc0MAoKVGh4IGZvciB0
aGUgcmVwb3J0LiBGV0lXLCByZWd6Ym90IG5vdGljZWQgdGhlcmUgaXMgYSBwYXRjaCB0aGF0IHJl
ZmVycwp0byB0aGUgY3VscHJpdCB0aGF0IG1pZ2h0IGhhdmUgYmVlbiBsYW5kZWQgaW4gbmV4dCBh
ZnRlciB5b3VyIHRlc3QgcmFuCmZvciB0aGUgbGFzdCB0aW1lIChhbmQgbWVhbndoaWxlIGl0IHdh
cyBtYWlubGluZWQpOiBmMTAwY2UzYmJkNiAoIm1lZGlhOgp2ZXJpc2lsaWNvbjogRml4IGNyYXNo
IHdoZW4gcHJvYmluZyBlbmNvZGVyIikKCkkgd29uZGVyIGlmIHRoYXQgaXMgcmVsYXRlZCBvciBt
aWdodCBldmVuIGZpeCB0aGUgaXNzdWUuCgpDaWFvLCBUaG9yc3RlbgoKPj4gLS0tCj4+IMKgIGRy
aXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYyB8IDkgKystLS0t
LS0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
Cj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hh
bnRyb192NGwyLmMKPj4gYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRy
b192NGwyLmMKPj4gaW5kZXggYzBkNDI3OTU2MjEwLi5kOGFhNDJiZDRjZDQgMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+PiAr
KysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMKPj4g
QEAgLTM4MiwxMyArMzgyLDEwIEBAIGhhbnRyb19yZXNldF9lbmNvZGVkX2ZtdChzdHJ1Y3QgaGFu
dHJvX2N0eCAqY3R4KQo+PiDCoCDCoMKgwqDCoMKgIHZwdV9mbXQgPSBoYW50cm9fZ2V0X2RlZmF1
bHRfZm10KGN0eCwgdHJ1ZSk7Cj4+IMKgIC3CoMKgwqAgaWYgKGN0eC0+aXNfZW5jb2Rlcikgewo+
PiAtwqDCoMKgwqDCoMKgwqAgY3R4LT52cHVfZHN0X2ZtdCA9IHZwdV9mbXQ7Cj4+ICvCoMKgwqAg
aWYgKGN0eC0+aXNfZW5jb2RlcikKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGZtdCA9ICZjdHgtPmRz
dF9mbXQ7Cj4+IC3CoMKgwqAgfSBlbHNlIHsKPj4gLcKgwqDCoMKgwqDCoMKgIGN0eC0+dnB1X3Ny
Y19mbXQgPSB2cHVfZm10Owo+PiArwqDCoMKgIGVsc2UKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGZt
dCA9ICZjdHgtPnNyY19mbXQ7Cj4+IC3CoMKgwqAgfQo+PiDCoCDCoMKgwqDCoMKgIGhhbnRyb19y
ZXNldF9mbXQoZm10LCB2cHVfZm10KTsKPj4gwqDCoMKgwqDCoCBmbXQtPndpZHRoID0gdnB1X2Zt
dC0+ZnJtc2l6ZS5taW5fd2lkdGg7Cj4+IEBAIC00MDgsMTEgKzQwNSw5IEBAIGhhbnRyb19yZXNl
dF9yYXdfZm10KHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4+IMKgwqDCoMKgwqAgcmF3X3ZwdV9m
bXQgPSBoYW50cm9fZ2V0X2RlZmF1bHRfZm10KGN0eCwgZmFsc2UpOwo+PiDCoCDCoMKgwqDCoMKg
IGlmIChjdHgtPmlzX2VuY29kZXIpIHsKPj4gLcKgwqDCoMKgwqDCoMKgIGN0eC0+dnB1X3NyY19m
bXQgPSByYXdfdnB1X2ZtdDsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJhd19mbXQgPSAmY3R4LT5z
cmNfZm10Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZW5jb2RlZF9mbXQgPSAmY3R4LT5kc3RfZm10
Owo+PiDCoMKgwqDCoMKgIH0gZWxzZSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCBjdHgtPnZwdV9kc3Rf
Zm10ID0gcmF3X3ZwdV9mbXQ7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByYXdfZm10ID0gJmN0eC0+
ZHN0X2ZtdDsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGVuY29kZWRfZm10ID0gJmN0eC0+c3JjX2Zt
dDsKPj4gwqDCoMKgwqDCoCB9Cj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
