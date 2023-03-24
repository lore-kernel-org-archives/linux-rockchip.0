Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59BACC6FD20
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 08:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6mG7AXMy+LI1FKOc0mLXXpIPAKPDBjK5OitPdzR/YY=; b=bfziLMxYnvF1oe
	f7UMdkN0BNMuH3JjKeOSiO/+yB6veCVp2FCPPDy9uvjPGiucNpDDCNQGYv9lSjhGzVVQWrpoXsriG
	qqGYRHAwjzcbSEhswWrkcwFXjELnIFh/aD75IICp3ulUj5KW4e2cG/aNZpbeyvtSa8pKYSVxcszmM
	z+jd1zx86LQTCA3Vb5eIBkIHlQ48PIj1NsVjtGXP7E7en9onFO5MIKKnFZpyyPU2kyQm6Vnaa4D5A
	gB6GUlqoOXb+qQVyJF4yoYDmXg0LaZkbmw7SPHguMuh/iaEUbehRz2e0y7DnbVb4DL9wzrDRXT7U7
	8HX6fifi8CEdIptQWPPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfd9w-003vJH-2d;
	Fri, 24 Mar 2023 08:52:28 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfd9r-003vHH-2f;
	Fri, 24 Mar 2023 08:52:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 5728FB822B5;
	Fri, 24 Mar 2023 08:52:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D11DC4339C;
	Fri, 24 Mar 2023 08:52:15 +0000 (UTC)
Message-ID: <d4b6ad10-1889-0a63-5a14-cb1320e2dc09@xs4all.nl>
Date: Fri, 24 Mar 2023 09:52:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 2/8] media: videobuf2: Make bufs array dynamic
 allocated
Content-Language: en-US
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Dan Carpenter <error27@gmail.com>, oe-kbuild@lists.linux.dev,
 tfiga@chromium.org, m.szyprowski@samsung.com, mchehab@kernel.org,
 ming.qian@nxp.com, shijie.qin@nxp.com, eagle.zhou@nxp.com,
 bin.liu@mediatek.com, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, tiffany.lin@mediatek.com,
 andrew-ct.chen@mediatek.com, yunfei.dong@mediatek.com,
 stanimir.k.varbanov@gmail.com, quic_vgarodia@quicinc.com, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 daniel.almeida@collabora.com, lkp@intel.com, oe-kbuild-all@lists.linux.dev,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <4e2cb832-de83-4ba6-bd8a-119a19038cfe@kili.mountain>
 <a88b93cc-a81f-6186-09fc-02223867e677@collabora.com>
 <b0018f7b-0556-0ac1-d2fa-89787a27fba1@xs4all.nl>
 <20230324084830.GA18895@pendragon.ideasonboard.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230324084830.GA18895@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_015224_167595_C643D8B2 
X-CRM114-Status: GOOD (  13.38  )
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

T24gMjQvMDMvMjAyMyAwOTo0OCwgTGF1cmVudCBQaW5jaGFydCB3cm90ZToKPiBPbiBGcmksIE1h
ciAyNCwgMjAyMyBhdCAwOTozMTozNUFNICswMTAwLCBIYW5zIFZlcmt1aWwgd3JvdGU6Cj4+IE9u
IDI0LzAzLzIwMjMgMDk6MTEsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+Pj4KPj4+IExlIDI0
LzAzLzIwMjMgw6AgMDY6MDEsIERhbiBDYXJwZW50ZXIgYSDDqWNyaXTCoDoKPj4+PiBIaSBCZW5q
YW1pbiwKPj4+Pgo+Pj4+IGh0dHBzOi8vZ2l0LXNjbS5jb20vZG9jcy9naXQtZm9ybWF0LXBhdGNo
I19iYXNlX3RyZWVfaW5mb3JtYXRpb25dCj4+Pj4KPj4+PiB1cmw6wqDCoMKgIGh0dHBzOi8vZ2l0
aHViLmNvbS9pbnRlbC1sYWItbGtwL2xpbnV4L2NvbW1pdHMvQmVuamFtaW4tR2FpZ25hcmQvbWVk
aWEtdmlkZW9idWYyLUFjY2Vzcy12YjJfcXVldWUtYnVmcy1hcnJheS10aHJvdWdoLWhlbHBlci1m
dW5jdGlvbnMvMjAyMzAzMjEtMTgzMTU0Cj4+Pj4gYmFzZTrCoMKgIGdpdDovL2xpbnV4dHYub3Jn
L21lZGlhX3RyZWUuZ2l0IG1hc3Rlcgo+Pj4+IHBhdGNoIGxpbms6wqDCoMKgIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL3IvMjAyMzAzMjExMDI4NTUuMzQ2NzMyLTMtYmVuamFtaW4uZ2FpZ25hcmQl
NDBjb2xsYWJvcmEuY29tCj4+Pj4gcGF0Y2ggc3ViamVjdDogW1BBVENIIHYyIDIvOF0gbWVkaWE6
IHZpZGVvYnVmMjogTWFrZSBidWZzIGFycmF5IGR5bmFtaWMgYWxsb2NhdGVkCj4+Pj4gY29uZmln
OiBhcm02NC1yYW5kY29uZmlnLW0wNDEtMjAyMzAzMTkgKGh0dHBzOi8vZG93bmxvYWQuMDEub3Jn
LzBkYXktY2kvYXJjaGl2ZS8yMDIzMDMyNC8yMDIzMDMyNDAxNDgubEtSblVxVzktbGtwQGludGVs
LmNvbS9jb25maWcpCj4+Pj4gY29tcGlsZXI6IGFhcmNoNjQtbGludXgtZ2NjIChHQ0MpIDEyLjEu
MAo+Pj4+Cj4+Pj4gSWYgeW91IGZpeCB0aGUgaXNzdWUsIGtpbmRseSBhZGQgZm9sbG93aW5nIHRh
ZyB3aGVyZSBhcHBsaWNhYmxlCj4+Pj4gfCBSZXBvcnRlZC1ieToga2VybmVsIHRlc3Qgcm9ib3Qg
PGxrcEBpbnRlbC5jb20+Cj4+Pj4gfCBSZXBvcnRlZC1ieTogRGFuIENhcnBlbnRlciA8ZXJyb3Iy
N0BnbWFpbC5jb20+Cj4+Pj4gfCBMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjMw
MzI0MDE0OC5sS1JuVXFXOS1sa3BAaW50ZWwuY29tLwo+Pj4+Cj4+Pj4gc21hdGNoIHdhcm5pbmdz
Ogo+Pj4+IGluY2x1ZGUvbWVkaWEvdmlkZW9idWYyLWNvcmUuaDoxMjcyIHZiMl9xdWV1ZV9hZGRf
YnVmZmVyKCkgd2Fybjogc2xlZXBpbmcgaW4gYXRvbWljIGNvbnRleHQKPj4+PiBkcml2ZXJzL21l
ZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYzoyNDU2IHZiMl9jb3JlX3F1ZXVl
X2luaXQoKSB3YXJuOiBQbGVhc2UgY29uc2lkZXIgdXNpbmcga2NhbGxvYyBpbnN0ZWFkIG9mIGtt
YWxsb2NfYXJyYXkKPj4+Pgo+Pj4+IHZpbSArMTI3MiBpbmNsdWRlL21lZGlhL3ZpZGVvYnVmMi1j
b3JlLmgKPj4+Pgo+Pj4+IDYyNWQ0NmMxYzFmZThlIEJlbmphbWluIEdhaWduYXJkIDIwMjMtMDMt
MjHCoCAxMjYzwqAgc3RhdGljIGlubGluZSBib29sIHZiMl9xdWV1ZV9hZGRfYnVmZmVyKHN0cnVj
dCB2YjJfcXVldWUgKnEsIHN0cnVjdCB2YjJfYnVmZmVyICp2YikKPj4+PiA2MjVkNDZjMWMxZmU4
ZSBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxwqAgMTI2NMKgIHsKPj4+PiA0ODdkM2YxNGQx
MmVjZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxwqAgMTI2NcKgwqDCoMKgwqAgYm9vbCBy
ZXQgPSBmYWxzZTsKPj4+PiA0ODdkM2YxNGQxMmVjZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAz
LTIxwqAgMTI2Ngo+Pj4+IDQ4N2QzZjE0ZDEyZWNmIEJlbmphbWluIEdhaWduYXJkIDIwMjMtMDMt
MjHCoCAxMjY3wqDCoMKgwqDCoCBzcGluX2xvY2soJnEtPmJ1ZnNfbG9jayk7Cj4+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBeXl5eXl5e
Xl5eXl5eXl5eXl5eXl5eXgo+Pj4+IEhvbGRpbmcgYSBzcGluIGxvY2suCj4+Pj4KPj4+PiA0ODdk
M2YxNGQxMmVjZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxwqAgMTI2OAo+Pj4+IDQ4N2Qz
ZjE0ZDEyZWNmIEJlbmphbWluIEdhaWduYXJkIDIwMjMtMDMtMjHCoCAxMjY5wqDCoMKgwqDCoCBp
ZiAodmItPmluZGV4ID49IHEtPm1heF9udW1fYnVmcykgewo+Pj4+IDQ4N2QzZjE0ZDEyZWNmIEJl
bmphbWluIEdhaWduYXJkIDIwMjMtMDMtMjHCoCAxMjcwwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVj
dCB2YjJfYnVmZmVyICoqdG1wOwo+Pj4+IDQ4N2QzZjE0ZDEyZWNmIEJlbmphbWluIEdhaWduYXJk
IDIwMjMtMDMtMjHCoCAxMjcxCj4+Pj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFtaW4gR2FpZ25hcmQg
MjAyMy0wMy0yMSBAMTI3MsKgwqDCoMKgwqDCoMKgwqDCoCB0bXAgPSBrcmVhbGxvY19hcnJheShx
LT5idWZzLCBxLT5tYXhfbnVtX2J1ZnMgKiAyLCBzaXplb2YoKnEtPmJ1ZnMpLCBHRlBfS0VSTkVM
KTsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBeXl5eXl5eXl5e
Cj4+Pj4gU2xlZXBpbmcgYWxsb2NhdGlvbi7CoCBHRlBfQVRPTUlDP8KgIE9yIGlzIHRoZXJlIGEg
d2F5IHRvIG1vdmUgdGhlCj4+Pj4gYWxsb2NhdGlvbiBvdXRzaWRlIHRoZSBsb2NrPwo+Pj4KPj4+
IEkgd2lsbCBhZGQgR0ZQX0FUT01JQyBmbGFnIGluIG5leHQgdmVyc2lvbi4KPj4KPj4gTm8gbmVl
ZC4gSW5zdGVhZCwgZG9uJ3QgdXNlIHJlYWxsb2MgaGVyZSwganVzdCBhbGxvY2F0ZSBhIG5ldyBh
cnJheSwgY29weSBvdmVyIGFsbAo+PiB0aGUgZGF0YSBmcm9tIHRoZSBvbGQsIGFuZCB0aGVuIHN3
aXRjaCBxLT5idWZzIHdpdGggdGhlIHNwaW5sb2NrIGhlbGQuIFRoZW4geW91Cj4+IGNhbiBmcmVl
IHRoZSBvbGQgb25lLgo+Pgo+PiBJdCdzIG9ubHkgd2hlbiB5b3UgdXBkYXRlIHEtPmJ1ZnMgdGhh
dCB5b3UgbmVlZCB0aGUgbG9jay4KPiAKPiBUaGUgY29weSBhbHNvIG5lZWRzIHRvIGJlIHByb3Rl
Y3RlZCBieSB0aGUgbG9jay4KCkkgc3VzcGVjdCB0aGF0IHRoYXQgaXMgbm90IG5lZWRlZCwgc2lu
Y2UgeW91IHNob3VsZG4ndCBiZSBhYmxlIHRvIGFkZCBidWZmZXJzIGhlcmUKc2luY2UgYSBtdXRl
eCBzaG91bGQgYmUgaGVsZCBhdCB0aGlzIHRpbWUuCgpUaGF0IHNhaWQsIGl0J3Mgc29tZXRoaW5n
IHRoYXQgQmVuamFtaW4gbmVlZHMgdG8gYW5hbHl6ZS4KClJlZ2FyZHMsCgoJSGFucwoKPiAKPj4+
PiA0ODdkM2YxNGQxMmVjZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxwqAgMTI3M8KgwqDC
oMKgwqDCoMKgwqDCoCBpZiAoIXRtcCkKPj4+PiA0ODdkM2YxNGQxMmVjZiBCZW5qYW1pbiBHYWln
bmFyZCAyMDIzLTAzLTIxwqAgMTI3NMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gcmVh
bGxvY19mYWlsZWQ7Cj4+Pj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFtaW4gR2FpZ25hcmQgMjAyMy0w
My0yMcKgIDEyNzUKPj4+PiA0ODdkM2YxNGQxMmVjZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAz
LTIxwqAgMTI3NsKgwqDCoMKgwqDCoMKgwqDCoCBxLT5tYXhfbnVtX2J1ZnMgKj0gMjsKPj4+PiA0
ODdkM2YxNGQxMmVjZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxwqAgMTI3N8KgwqDCoMKg
wqDCoMKgwqDCoCBxLT5idWZzID0gdG1wOwo+Pj4+IDQ4N2QzZjE0ZDEyZWNmIEJlbmphbWluIEdh
aWduYXJkIDIwMjMtMDMtMjHCoCAxMjc4wqDCoMKgwqDCoCB9Cj4+Pj4gNDg3ZDNmMTRkMTJlY2Yg
QmVuamFtaW4gR2FpZ25hcmQgMjAyMy0wMy0yMcKgIDEyNzkKPj4+PiA0ODdkM2YxNGQxMmVjZiBC
ZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxwqAgMTI4MMKgwqDCoMKgwqAgaWYgKHZiLT5pbmRl
eCA8IHEtPm1heF9udW1fYnVmcykgewo+Pj4+IDYyNWQ0NmMxYzFmZThlIEJlbmphbWluIEdhaWdu
YXJkIDIwMjMtMDMtMjHCoCAxMjgxwqDCoMKgwqDCoMKgwqDCoMKgIHEtPmJ1ZnNbdmItPmluZGV4
XSA9IHZiOwo+Pj4+IDQ4N2QzZjE0ZDEyZWNmIEJlbmphbWluIEdhaWduYXJkIDIwMjMtMDMtMjHC
oCAxMjgywqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IHRydWU7Cj4+Pj4gNjI1ZDQ2YzFjMWZlOGUg
QmVuamFtaW4gR2FpZ25hcmQgMjAyMy0wMy0yMcKgIDEyODPCoMKgwqDCoMKgIH0KPj4+PiA2MjVk
NDZjMWMxZmU4ZSBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxwqAgMTI4NAo+Pj4+IDQ4N2Qz
ZjE0ZDEyZWNmIEJlbmphbWluIEdhaWduYXJkIDIwMjMtMDMtMjHCoCAxMjg1wqAgcmVhbGxvY19m
YWlsZWQ6Cj4+Pj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFtaW4gR2FpZ25hcmQgMjAyMy0wMy0yMcKg
IDEyODbCoMKgwqDCoMKgIHNwaW5fdW5sb2NrKCZxLT5idWZzX2xvY2spOwo+Pj4+IDQ4N2QzZjE0
ZDEyZWNmIEJlbmphbWluIEdhaWduYXJkIDIwMjMtMDMtMjHCoCAxMjg3Cj4+Pj4gNDg3ZDNmMTRk
MTJlY2YgQmVuamFtaW4gR2FpZ25hcmQgMjAyMy0wMy0yMcKgIDEyODjCoMKgwqDCoMKgIHJldHVy
biByZXQ7Cj4+Pj4gNjI1ZDQ2YzFjMWZlOGUgQmVuamFtaW4gR2FpZ25hcmQgMjAyMy0wMy0yMcKg
IDEyODnCoCB9Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
