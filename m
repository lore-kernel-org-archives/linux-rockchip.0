Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B41F7CAC5BB
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Oct 2025 17:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOndy93unTFU+cdBqEnkNpY/7tvreTNDq4QhhBwyY+M=; b=hBLgNaxYOrVY4z
	bIHIFxTv9MUR51S473epLxG3wdX8KITvUMEC4K3CfN8LA6uyX0zjFOlLFDRIeJiWXVhtkylAXX6Pa
	bPD3bK1zPgKDNFjie/8et4A7BV69oGMrftvMgO8elsC/Ps6mNd9SG2c82Kdrh4kzpEdbPmX7IJMsE
	PrI8GBhldUrgXCjIL3MdMoh3x8mlq/P0U7sRsDePTXjOuO8lD9r/bLW4H+9j04M9D7vHAQVfQF9qx
	ZiCUTkXsB+30v/8EPTAH9qg0u5Hh91QBeEoJ9GO9SVr+v/3RjCstdhHU8slfSrPPFHGi3wAjZAqEb
	gs73DojpNcK/Hpfr473g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v40sl-00000008fWa-08J5;
	Wed, 01 Oct 2025 17:44:51 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v40sh-00000008fVO-2qWq;
	Wed, 01 Oct 2025 17:44:49 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1759340639; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Dv6ghvPHN7AGcU7+5CH3htq5hdDmi012lRE1Inj162ECXRJK3bG7GZb2hch25vig+ys1DfSf76h7uYavSU8+G0S7pNV1/57GmOFCYV4UoLXjOrUdBf9Bcc3+DaSa0/FVyM4rE2flHWLhezO4odVFNnMgoOxGJF3aLdx4UykSz2w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1759340639; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=X1qxdtwKIY3V1sCLiuzk767gsjs7kipJUMmkwVcO3FY=; 
	b=M5kvq5PRgWWIKyuHZiYxwdKRTjrzhGm8MfWV+UY6CZ0LMDoAChPzow/dWnFR8wpxmqRLUqef1+LJq8Tot1uKQh4BOgu08K+nronjQEP5Y+3vy451a+ijiH9DhzVWTxWGlHIIhKsnr4mcrtZSAWNugM6fUbqr0ctWqyzbXxNx9/k=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=ariel.dalessandro@collabora.com;
	dmarc=pass header.from=<ariel.dalessandro@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1759340639;
	s=zohomail; d=collabora.com; i=ariel.dalessandro@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=X1qxdtwKIY3V1sCLiuzk767gsjs7kipJUMmkwVcO3FY=;
	b=Zq1MQMGCGotD+rJbqQrTxX/7xwW2aTNQNC9HTL3C/QxltTLuE2sT+80pYH/52OLd
	JqbrTO6RJaj2HBl1EanausCyXQYMtT+QAMSZj+dz+D2xbW7MsrDAqwRIgPgmsaMlI8X
	H8JNEVAWFHpRoctoROmUczLCT7TTMRhhFLbChWQg=
Received: by mx.zohomail.com with SMTPS id 1759340637638418.15942640933406;
	Wed, 1 Oct 2025 10:43:57 -0700 (PDT)
Message-ID: <4eda73fc-76cb-4ac1-8b6c-d0f1c1117905@collabora.com>
Date: Wed, 1 Oct 2025 14:43:40 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/12] dt-bindings: regulator: Convert Dialog DA9211
 Regulators to DT schema
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 airlied@gmail.com, amergnat@baylibre.com, andrew+netdev@lunn.ch,
 andrew-ct.chen@mediatek.com, broonie@kernel.org, chunkuang.hu@kernel.org,
 conor+dt@kernel.org, davem@davemloft.net, dmitry.torokhov@gmail.com,
 edumazet@google.com, flora.fu@mediatek.com, heiko@sntech.de,
 houlong.wei@mediatek.com, jeesw@melfas.com, kernel@collabora.com,
 krzk+dt@kernel.org, kuba@kernel.org, lgirdwood@gmail.com,
 linus.walleij@linaro.org, louisalexis.eyraud@collabora.com,
 luiz.dentz@gmail.com, maarten.lankhorst@linux.intel.com,
 marcel@holtmann.org, matthias.bgg@gmail.com, mchehab@kernel.org,
 minghsiu.tsai@mediatek.com, mripard@kernel.org, p.zabel@pengutronix.de,
 pabeni@redhat.com, robh@kernel.org, sean.wang@kernel.org, simona@ffwll.ch,
 support.opensource@diasemi.com, tiffany.lin@mediatek.com,
 tzimmermann@suse.de, yunfei.dong@mediatek.com
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-bluetooth@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-input@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-sound@vger.kernel.org, netdev@vger.kernel.org
References: <20250911151001.108744-1-ariel.dalessandro@collabora.com>
 <20250911151001.108744-10-ariel.dalessandro@collabora.com>
 <990cc068-adc9-473a-b4c7-9113583cb83c@collabora.com>
Content-Language: en-US
From: Ariel D'Alessandro <ariel.dalessandro@collabora.com>
In-Reply-To: <990cc068-adc9-473a-b4c7-9113583cb83c@collabora.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_104447_769592_1FA75CFA 
X-CRM114-Status: GOOD (  13.50  )
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

QW5nZWxvLAoKT24gOS8xMi8yNSA1OjExIEFNLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyB3
cm90ZToKPiBJbCAxMS8wOS8yNSAxNzowOSwgQXJpZWwgRCdBbGVzc2FuZHJvIGhhIHNjcml0dG86
Cj4+IENvbnZlcnQgdGhlIGV4aXN0aW5nIHRleHQtYmFzZWQgRFQgYmluZGluZ3MgZm9yIERpYWxv
ZyBTZW1pY29uZHVjdG9yIAo+PiBEQTkyMTEKPj4gVm9sdGFnZSBSZWd1bGF0b3JzIGZhbWlseSB0
byBhIERUIHNjaGVtYS4gRXhhbXBsZXMgYXJlIHNpbXBsaWZpZWQsIGFzIAo+PiB0aGVzZQo+PiBh
cmUgYWxsIGVxdWFsLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBcmllbCBEJ0FsZXNzYW5kcm8gPGFy
aWVsLmRhbGVzc2FuZHJvQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+PiDCoCAuLi4vZGV2aWNldHJl
ZS9iaW5kaW5ncy9yZWd1bGF0b3IvZGE5MjExLnR4dMKgIHwgMjA1IC0tLS0tLS0tLS0tLS0tLS0t
LQo+PiDCoCAuLi4vYmluZGluZ3MvcmVndWxhdG9yL2RsZyxkYTkyMTEueWFtbMKgwqDCoMKgwqDC
oMKgIHwgMTA0ICsrKysrKysrKwo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDEwNCBpbnNlcnRpb25z
KCspLCAyMDUgZGVsZXRpb25zKC0pCj4+IMKgIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVndWxhdG9yLyAKPj4gZGE5MjExLnR4dAo+PiDCoCBj
cmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JlZ3Vs
YXRvci8gCj4+IGRsZyxkYTkyMTEueWFtbAo+Pgo+IAo+IC4uc25pcC4uCj4gCj4+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVndWxhdG9yLyAKPj4gZGxn
LGRhOTIxMS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JlZ3VsYXRv
ci8gCj4+IGRsZyxkYTkyMTEueWFtbAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAw
MDAwMDAwMDAwMDAwLi45ZDVlMjViYzM4NzJjCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JlZ3VsYXRvci9kbGcsZGE5MjExLnlhbWwK
Pj4gQEAgLTAsMCArMSwxMDQgQEAKPj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwt
Mi4wIE9SIEJTRC0yLUNsYXVzZSkKPj4gKyVZQU1MIDEuMgo+PiArLS0tCj4+ICskaWQ6IGh0dHA6
Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3JlZ3VsYXRvci9kbGcsZGE5MjExLnlhbWwjCj4+ICsk
c2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPj4g
Kwo+PiArdGl0bGU6Cj4+ICvCoCBEaWFsb2cgU2VtaWNvbmR1Y3RvciBEQTkyMTEvREE5MjEyL0RB
OTIxMy9EQTkyMjMvREE5MjE0L0RBOTIyNC8gCj4+IERBOTIxNS9EQTkyMjUKPj4gK8KgIFZvbHRh
Z2UgUmVndWxhdG9yCj4gCj4gRGlhbG9nIFNlbWljb25kdWN0b3IgREE5MjExLTkyMTUsIERBOTIy
My05MjI1IFZvbHRhZ2UgUmVndWxhdG9ycwo+IAo+IEJldHRlcj8gOi0pCgpNdWNoIGJldHRlciwg
dGhhbmtzISBXaWxsIGZpeCBpbiB2My4KCj4gCj4+ICsKPj4gK21haW50YWluZXJzOgo+PiArwqAg
LSBBcmllbCBEJ0FsZXNzYW5kcm8gPGFyaWVsLmRhbGVzc2FuZHJvQGNvbGxhYm9yYS5jb20+Cj4+
ICsKPj4gK3Byb3BlcnRpZXM6Cj4+ICvCoCBjb21wYXRpYmxlOgo+PiArwqDCoMKgIGVudW06Cj4+
ICvCoMKgwqDCoMKgIC0gZGxnLGRhOTIxMQo+PiArwqDCoMKgwqDCoCAtIGRsZyxkYTkyMTIKPj4g
K8KgwqDCoMKgwqAgLSBkbGcsZGE5MjEzCj4+ICvCoMKgwqDCoMKgIC0gZGxnLGRhOTIxNAo+PiAr
wqDCoMKgwqDCoCAtIGRsZyxkYTkyMTUKPj4gK8KgwqDCoMKgwqAgLSBkbGcsZGE5MjIzCj4+ICvC
oMKgwqDCoMKgIC0gZGxnLGRhOTIyNAo+PiArwqDCoMKgwqDCoCAtIGRsZyxkYTkyMjUKPj4gKwo+
PiArwqAgcmVnOgo+PiArwqDCoMKgIG1heEl0ZW1zOiAxCj4+ICsKPj4gK8KgIGludGVycnVwdHM6
Cj4+ICvCoMKgwqAgbWF4SXRlbXM6IDEKPj4gKwo+PiArwqAgcmVndWxhdG9yczoKPj4gK8KgwqDC
oCB0eXBlOiBvYmplY3QKPj4gK8KgwqDCoCBhZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPj4g
K8KgwqDCoCBkZXNjcmlwdGlvbjoKPj4gK8KgwqDCoMKgwqAgTGlzdCBvZiByZWd1bGF0b3JzIHBy
b3ZpZGVkIGJ5IHRoZSBkZXZpY2UKPj4gKwo+PiArwqDCoMKgIHBhdHRlcm5Qcm9wZXJ0aWVzOgo+
PiArwqDCoMKgwqDCoCAiXkJVQ0soW0FCXSkkIjoKPj4gK8KgwqDCoMKgwqDCoMKgIHR5cGU6IG9i
amVjdAo+PiArwqDCoMKgwqDCoMKgwqAgJHJlZjogcmVndWxhdG9yLnlhbWwjCj4+ICvCoMKgwqDC
oMKgwqDCoCB1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlCj4+ICvCoMKgwqDCoMKgwqDCoCBk
ZXNjcmlwdGlvbjogfAo+IAo+IFBsZWFzZSBkcm9wIHRoZSB2ZXJ0aWNhbCBiYXIgfCBmcm9tIGFs
bCBkZXNjcmlwdGlvbnMKCkFjay4gRml4ZWQgaW4gdjMuCgo+IAo+IGFmdGVyIHdoaWNoLAo+IAo+
IFJldmlld2VkLWJ5OiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyAKPiA8YW5nZWxvZ2lvYWNj
aGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgoKVGhhbmtzIGEgbG90IQoKUmVnYXJkcywKCi0t
IApBcmllbCBEJ0FsZXNzYW5kcm8KU29mdHdhcmUgRW5naW5lZXIKCkNvbGxhYm9yYSBMdGQuClBs
YXRpbnVtIEJ1aWxkaW5nLCBTdCBKb2huJ3MgSW5ub3ZhdGlvbiBQYXJrLCBDYW1icmlkZ2UgQ0I0
IDBEUywgVUsgClJlZ2lzdGVyZWQgaW4gRW5nbGFuZCAmIFdhbGVzLCBuby4gNTUxMzcxOAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
