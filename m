Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3572C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 08:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=udjmsFyqmSLmXsFbcQtgRD8uIWExdOPFL4JS+Jf/O8w=; b=Dsc3MlPKNK5X3x
	S9vvjyxuqSK1ISORczHon1ewkumRNPrvn5wIeGXeUjS8Js7yKnktNPIjmZDnBvJGiBzqnKXIj7gOT
	FqESsQfvXsEHffXwv6KWXSzYPJOO25knHKIZF2/IEcKgI6CB1OgePhcYPq8XOQTo9F12HMW0i6oRa
	PkCfuGcFTqQKkKllmmsp2HdO0LzoyWkbjXFi0/mD42wnofSRh3qRzV6Z7pnm48dNjhA7BH50nxHZa
	vl7g39mgoZw8VoyNmnsFKPdW757xx1iWipGJ2BZJguc54AN5acEghCrOb/bW9zsCWOM3KPwd63NBD
	yOFrTPQdQnZT6wDUqwoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfcpx-003smP-2d;
	Fri, 24 Mar 2023 08:31:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfcps-003sjl-0G;
	Fri, 24 Mar 2023 08:31:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0E9D462990;
	Fri, 24 Mar 2023 08:31:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 069FAC433D2;
	Fri, 24 Mar 2023 08:31:36 +0000 (UTC)
Message-ID: <b0018f7b-0556-0ac1-d2fa-89787a27fba1@xs4all.nl>
Date: Fri, 24 Mar 2023 09:31:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 2/8] media: videobuf2: Make bufs array dynamic
 allocated
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Dan Carpenter <error27@gmail.com>, oe-kbuild@lists.linux.dev,
 tfiga@chromium.org, m.szyprowski@samsung.com, mchehab@kernel.org,
 ming.qian@nxp.com, shijie.qin@nxp.com, eagle.zhou@nxp.com,
 bin.liu@mediatek.com, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, tiffany.lin@mediatek.com,
 andrew-ct.chen@mediatek.com, yunfei.dong@mediatek.com,
 stanimir.k.varbanov@gmail.com, quic_vgarodia@quicinc.com, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 daniel.almeida@collabora.com, laurent.pinchart@ideasonboard.com
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <4e2cb832-de83-4ba6-bd8a-119a19038cfe@kili.mountain>
 <a88b93cc-a81f-6186-09fc-02223867e677@collabora.com>
Content-Language: en-US
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <a88b93cc-a81f-6186-09fc-02223867e677@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_013144_217073_AAF7FC0F 
X-CRM114-Status: GOOD (  14.21  )
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

T24gMjQvMDMvMjAyMyAwOToxMSwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gCj4gTGUgMjQv
MDMvMjAyMyDDoCAwNjowMSwgRGFuIENhcnBlbnRlciBhIMOpY3JpdMKgOgo+PiBIaSBCZW5qYW1p
biwKPj4KPj4gaHR0cHM6Ly9naXQtc2NtLmNvbS9kb2NzL2dpdC1mb3JtYXQtcGF0Y2gjX2Jhc2Vf
dHJlZV9pbmZvcm1hdGlvbl0KPj4KPj4gdXJsOsKgwqDCoCBodHRwczovL2dpdGh1Yi5jb20vaW50
ZWwtbGFiLWxrcC9saW51eC9jb21taXRzL0JlbmphbWluLUdhaWduYXJkL21lZGlhLXZpZGVvYnVm
Mi1BY2Nlc3MtdmIyX3F1ZXVlLWJ1ZnMtYXJyYXktdGhyb3VnaC1oZWxwZXItZnVuY3Rpb25zLzIw
MjMwMzIxLTE4MzE1NAo+PiBiYXNlOsKgwqAgZ2l0Oi8vbGludXh0di5vcmcvbWVkaWFfdHJlZS5n
aXQgbWFzdGVyCj4+IHBhdGNoIGxpbms6wqDCoMKgIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3Iv
MjAyMzAzMjExMDI4NTUuMzQ2NzMyLTMtYmVuamFtaW4uZ2FpZ25hcmQlNDBjb2xsYWJvcmEuY29t
Cj4+IHBhdGNoIHN1YmplY3Q6IFtQQVRDSCB2MiAyLzhdIG1lZGlhOiB2aWRlb2J1ZjI6IE1ha2Ug
YnVmcyBhcnJheSBkeW5hbWljIGFsbG9jYXRlZAo+PiBjb25maWc6IGFybTY0LXJhbmRjb25maWct
bTA0MS0yMDIzMDMxOSAoaHR0cHM6Ly9kb3dubG9hZC4wMS5vcmcvMGRheS1jaS9hcmNoaXZlLzIw
MjMwMzI0LzIwMjMwMzI0MDE0OC5sS1JuVXFXOS1sa3BAaW50ZWwuY29tL2NvbmZpZykKPj4gY29t
cGlsZXI6IGFhcmNoNjQtbGludXgtZ2NjIChHQ0MpIDEyLjEuMAo+Pgo+PiBJZiB5b3UgZml4IHRo
ZSBpc3N1ZSwga2luZGx5IGFkZCBmb2xsb3dpbmcgdGFnIHdoZXJlIGFwcGxpY2FibGUKPj4gfCBS
ZXBvcnRlZC1ieToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4+IHwgUmVwb3J0
ZWQtYnk6IERhbiBDYXJwZW50ZXIgPGVycm9yMjdAZ21haWwuY29tPgo+PiB8IExpbms6IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMzAzMjQwMTQ4LmxLUm5VcVc5LWxrcEBpbnRlbC5jb20v
Cj4+Cj4+IHNtYXRjaCB3YXJuaW5nczoKPj4gaW5jbHVkZS9tZWRpYS92aWRlb2J1ZjItY29yZS5o
OjEyNzIgdmIyX3F1ZXVlX2FkZF9idWZmZXIoKSB3YXJuOiBzbGVlcGluZyBpbiBhdG9taWMgY29u
dGV4dAo+PiBkcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYzoy
NDU2IHZiMl9jb3JlX3F1ZXVlX2luaXQoKSB3YXJuOiBQbGVhc2UgY29uc2lkZXIgdXNpbmcga2Nh
bGxvYyBpbnN0ZWFkIG9mIGttYWxsb2NfYXJyYXkKPj4KPj4gdmltICsxMjcyIGluY2x1ZGUvbWVk
aWEvdmlkZW9idWYyLWNvcmUuaAo+Pgo+PiA2MjVkNDZjMWMxZmU4ZSBCZW5qYW1pbiBHYWlnbmFy
ZCAyMDIzLTAzLTIxwqAgMTI2M8KgIHN0YXRpYyBpbmxpbmUgYm9vbCB2YjJfcXVldWVfYWRkX2J1
ZmZlcihzdHJ1Y3QgdmIyX3F1ZXVlICpxLCBzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpCj4+IDYyNWQ0
NmMxYzFmZThlIEJlbmphbWluIEdhaWduYXJkIDIwMjMtMDMtMjHCoCAxMjY0wqAgewo+PiA0ODdk
M2YxNGQxMmVjZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxwqAgMTI2NcKgwqDCoMKgwqAg
Ym9vbCByZXQgPSBmYWxzZTsKPj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFtaW4gR2FpZ25hcmQgMjAy
My0wMy0yMcKgIDEyNjYKPj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFtaW4gR2FpZ25hcmQgMjAyMy0w
My0yMcKgIDEyNjfCoMKgwqDCoMKgIHNwaW5fbG9jaygmcS0+YnVmc19sb2NrKTsKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBeXl5eXl5e
Xl5eXl5eXl5eXl5eXl5eXgo+PiBIb2xkaW5nIGEgc3BpbiBsb2NrLgo+Pgo+PiA0ODdkM2YxNGQx
MmVjZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxwqAgMTI2OAo+PiA0ODdkM2YxNGQxMmVj
ZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxwqAgMTI2OcKgwqDCoMKgwqAgaWYgKHZiLT5p
bmRleCA+PSBxLT5tYXhfbnVtX2J1ZnMpIHsKPj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFtaW4gR2Fp
Z25hcmQgMjAyMy0wMy0yMcKgIDEyNzDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHZiMl9idWZm
ZXIgKip0bXA7Cj4+IDQ4N2QzZjE0ZDEyZWNmIEJlbmphbWluIEdhaWduYXJkIDIwMjMtMDMtMjHC
oCAxMjcxCj4+IDQ4N2QzZjE0ZDEyZWNmIEJlbmphbWluIEdhaWduYXJkIDIwMjMtMDMtMjEgQDEy
NzLCoMKgwqDCoMKgwqDCoMKgwqAgdG1wID0ga3JlYWxsb2NfYXJyYXkocS0+YnVmcywgcS0+bWF4
X251bV9idWZzICogMiwgc2l6ZW9mKCpxLT5idWZzKSwgR0ZQX0tFUk5FTCk7Cj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5eXl5eXl5eXl4KPj4gU2xlZXBpbmcgYWxs
b2NhdGlvbi7CoCBHRlBfQVRPTUlDP8KgIE9yIGlzIHRoZXJlIGEgd2F5IHRvIG1vdmUgdGhlCj4+
IGFsbG9jYXRpb24gb3V0c2lkZSB0aGUgbG9jaz8KPiAKPiBJIHdpbGwgYWRkIEdGUF9BVE9NSUMg
ZmxhZyBpbiBuZXh0IHZlcnNpb24uCgpObyBuZWVkLiBJbnN0ZWFkLCBkb24ndCB1c2UgcmVhbGxv
YyBoZXJlLCBqdXN0IGFsbG9jYXRlIGEgbmV3IGFycmF5LCBjb3B5IG92ZXIgYWxsCnRoZSBkYXRh
IGZyb20gdGhlIG9sZCwgYW5kIHRoZW4gc3dpdGNoIHEtPmJ1ZnMgd2l0aCB0aGUgc3BpbmxvY2sg
aGVsZC4gVGhlbiB5b3UKY2FuIGZyZWUgdGhlIG9sZCBvbmUuCgpJdCdzIG9ubHkgd2hlbiB5b3Ug
dXBkYXRlIHEtPmJ1ZnMgdGhhdCB5b3UgbmVlZCB0aGUgbG9jay4KClJlZ2FyZHMsCgoJSGFucwoK
PiAKPiBUaGFua3MgZm9yIHlvdXIgaGVscCwKPiBCZW5qYW1pbgo+IAo+Pgo+PiA0ODdkM2YxNGQx
MmVjZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxwqAgMTI3M8KgwqDCoMKgwqDCoMKgwqDC
oCBpZiAoIXRtcCkKPj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFtaW4gR2FpZ25hcmQgMjAyMy0wMy0y
McKgIDEyNzTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIHJlYWxsb2NfZmFpbGVkOwo+
PiA0ODdkM2YxNGQxMmVjZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxwqAgMTI3NQo+PiA0
ODdkM2YxNGQxMmVjZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxwqAgMTI3NsKgwqDCoMKg
wqDCoMKgwqDCoCBxLT5tYXhfbnVtX2J1ZnMgKj0gMjsKPj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFt
aW4gR2FpZ25hcmQgMjAyMy0wMy0yMcKgIDEyNzfCoMKgwqDCoMKgwqDCoMKgwqAgcS0+YnVmcyA9
IHRtcDsKPj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFtaW4gR2FpZ25hcmQgMjAyMy0wMy0yMcKgIDEy
NzjCoMKgwqDCoMKgIH0KPj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFtaW4gR2FpZ25hcmQgMjAyMy0w
My0yMcKgIDEyNzkKPj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFtaW4gR2FpZ25hcmQgMjAyMy0wMy0y
McKgIDEyODDCoMKgwqDCoMKgIGlmICh2Yi0+aW5kZXggPCBxLT5tYXhfbnVtX2J1ZnMpIHsKPj4g
NjI1ZDQ2YzFjMWZlOGUgQmVuamFtaW4gR2FpZ25hcmQgMjAyMy0wMy0yMcKgIDEyODHCoMKgwqDC
oMKgwqDCoMKgwqAgcS0+YnVmc1t2Yi0+aW5kZXhdID0gdmI7Cj4+IDQ4N2QzZjE0ZDEyZWNmIEJl
bmphbWluIEdhaWduYXJkIDIwMjMtMDMtMjHCoCAxMjgywqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9
IHRydWU7Cj4+IDYyNWQ0NmMxYzFmZThlIEJlbmphbWluIEdhaWduYXJkIDIwMjMtMDMtMjHCoCAx
MjgzwqDCoMKgwqDCoCB9Cj4+IDYyNWQ0NmMxYzFmZThlIEJlbmphbWluIEdhaWduYXJkIDIwMjMt
MDMtMjHCoCAxMjg0Cj4+IDQ4N2QzZjE0ZDEyZWNmIEJlbmphbWluIEdhaWduYXJkIDIwMjMtMDMt
MjHCoCAxMjg1wqAgcmVhbGxvY19mYWlsZWQ6Cj4+IDQ4N2QzZjE0ZDEyZWNmIEJlbmphbWluIEdh
aWduYXJkIDIwMjMtMDMtMjHCoCAxMjg2wqDCoMKgwqDCoCBzcGluX3VubG9jaygmcS0+YnVmc19s
b2NrKTsKPj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFtaW4gR2FpZ25hcmQgMjAyMy0wMy0yMcKgIDEy
ODcKPj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFtaW4gR2FpZ25hcmQgMjAyMy0wMy0yMcKgIDEyODjC
oMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+IDYyNWQ0NmMxYzFmZThlIEJlbmphbWluIEdhaWduYXJk
IDIwMjMtMDMtMjHCoCAxMjg5wqAgfQo+PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
