Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A39E5C6FD20
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 08:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rmbSHqHv6kGSve2dQYdx4WNz6RyhavWfcUw/ksnwmao=; b=Eh/b2tnBf/V9uT
	gUkDKS7HKSa7PHg6L1fRQJ+xdV6Qklq53PpqX0ykEKpiACy9w9hkdh4AjbqYlwPKhi/kqHaGvroy6
	Co24lgqI4cCLePMUjQvuP4pBx8dDJPRbw4m7qZo6bjlYnB3qBGAIPrvlAs6wiTL0LxRvGLW/WeukJ
	57sP8sEdtVPz+BKMi+yGc6d62BNQbyo+pFzJ7CHKIQ0Il2JCn303H2ZuSStRlKc0UaCOiKwPflB9y
	Svipon6oesfG+iuTUFyLEks+Lg7xJuwVxJXT+b6E1tlOJshztpf/4exf75IwgllhkptTbjkIpT3KB
	IccD6/2hx9rlrCCRl+Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfcWW-003q1j-0E;
	Fri, 24 Mar 2023 08:11:44 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfcWS-003q0J-0M;
	Fri, 24 Mar 2023 08:11:41 +0000
Received: from [IPV6:2a01:e0a:120:3210:1cb3:11e4:5834:9d5a] (unknown [IPv6:2a01:e0a:120:3210:1cb3:11e4:5834:9d5a])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6BCE66603103;
	Fri, 24 Mar 2023 08:11:37 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679645498;
	bh=3Mr86UDy3UpNufjt21Ufqdk3iHtyAj7hnO+u3KjB708=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mnKwthLEv+tlfb7ktpXfQvkMYedJR8yf4IqgZX78OzHBsb3TXu0cXugvy4Tly1zQo
	 T559lOJFKtJKlc5TrAvI/G7z02NG3Zw5H9zTdNntrzJ6WRCUa5ZOfMF+6ak+B5hYRQ
	 0EU351Y7+sj8DXpHNRkpvvVU2JmsmcZCv7YN/hb+EfppmoltHjTd82Xz3hGp5fSQuh
	 JXjn5XZhtu358kjzylV8DCcNzShYzFfxEiwlJ9sy1xu1Qgfmb8C8oSYABUGDCo6bNi
	 TmnC5WYWGJMw2VFJ4ri7+hmLy6b0+HnNNczgw9Ff6SVwpnRXjus4LbzhUT6M+Ru8XG
	 sZWzWQx6uyvWA==
Message-ID: <a88b93cc-a81f-6186-09fc-02223867e677@collabora.com>
Date: Fri, 24 Mar 2023 09:11:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 2/8] media: videobuf2: Make bufs array dynamic
 allocated
Content-Language: en-US
To: Dan Carpenter <error27@gmail.com>, oe-kbuild@lists.linux.dev,
 tfiga@chromium.org, m.szyprowski@samsung.com, mchehab@kernel.org,
 ming.qian@nxp.com, shijie.qin@nxp.com, eagle.zhou@nxp.com,
 bin.liu@mediatek.com, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, tiffany.lin@mediatek.com,
 andrew-ct.chen@mediatek.com, yunfei.dong@mediatek.com,
 stanimir.k.varbanov@gmail.com, quic_vgarodia@quicinc.com, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 daniel.almeida@collabora.com, hverkuil-cisco@xs4all.nl,
 laurent.pinchart@ideasonboard.com, jernel@kernel.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <4e2cb832-de83-4ba6-bd8a-119a19038cfe@kili.mountain>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <4e2cb832-de83-4ba6-bd8a-119a19038cfe@kili.mountain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_011140_405623_0539A79F 
X-CRM114-Status: GOOD (  10.47  )
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

CkxlIDI0LzAzLzIwMjMgw6AgMDY6MDEsIERhbiBDYXJwZW50ZXIgYSDDqWNyaXTCoDoKPiBIaSBC
ZW5qYW1pbiwKPgo+IGh0dHBzOi8vZ2l0LXNjbS5jb20vZG9jcy9naXQtZm9ybWF0LXBhdGNoI19i
YXNlX3RyZWVfaW5mb3JtYXRpb25dCj4KPiB1cmw6ICAgIGh0dHBzOi8vZ2l0aHViLmNvbS9pbnRl
bC1sYWItbGtwL2xpbnV4L2NvbW1pdHMvQmVuamFtaW4tR2FpZ25hcmQvbWVkaWEtdmlkZW9idWYy
LUFjY2Vzcy12YjJfcXVldWUtYnVmcy1hcnJheS10aHJvdWdoLWhlbHBlci1mdW5jdGlvbnMvMjAy
MzAzMjEtMTgzMTU0Cj4gYmFzZTogICBnaXQ6Ly9saW51eHR2Lm9yZy9tZWRpYV90cmVlLmdpdCBt
YXN0ZXIKPiBwYXRjaCBsaW5rOiAgICBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjMwMzIx
MTAyODU1LjM0NjczMi0zLWJlbmphbWluLmdhaWduYXJkJTQwY29sbGFib3JhLmNvbQo+IHBhdGNo
IHN1YmplY3Q6IFtQQVRDSCB2MiAyLzhdIG1lZGlhOiB2aWRlb2J1ZjI6IE1ha2UgYnVmcyBhcnJh
eSBkeW5hbWljIGFsbG9jYXRlZAo+IGNvbmZpZzogYXJtNjQtcmFuZGNvbmZpZy1tMDQxLTIwMjMw
MzE5IChodHRwczovL2Rvd25sb2FkLjAxLm9yZy8wZGF5LWNpL2FyY2hpdmUvMjAyMzAzMjQvMjAy
MzAzMjQwMTQ4LmxLUm5VcVc5LWxrcEBpbnRlbC5jb20vY29uZmlnKQo+IGNvbXBpbGVyOiBhYXJj
aDY0LWxpbnV4LWdjYyAoR0NDKSAxMi4xLjAKPgo+IElmIHlvdSBmaXggdGhlIGlzc3VlLCBraW5k
bHkgYWRkIGZvbGxvd2luZyB0YWcgd2hlcmUgYXBwbGljYWJsZQo+IHwgUmVwb3J0ZWQtYnk6IGtl
cm5lbCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+IHwgUmVwb3J0ZWQtYnk6IERhbiBDYXJw
ZW50ZXIgPGVycm9yMjdAZ21haWwuY29tPgo+IHwgTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvci8yMDIzMDMyNDAxNDgubEtSblVxVzktbGtwQGludGVsLmNvbS8KPgo+IHNtYXRjaCB3YXJu
aW5nczoKPiBpbmNsdWRlL21lZGlhL3ZpZGVvYnVmMi1jb3JlLmg6MTI3MiB2YjJfcXVldWVfYWRk
X2J1ZmZlcigpIHdhcm46IHNsZWVwaW5nIGluIGF0b21pYyBjb250ZXh0Cj4gZHJpdmVycy9tZWRp
YS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1jb3JlLmM6MjQ1NiB2YjJfY29yZV9xdWV1ZV9p
bml0KCkgd2FybjogUGxlYXNlIGNvbnNpZGVyIHVzaW5nIGtjYWxsb2MgaW5zdGVhZCBvZiBrbWFs
bG9jX2FycmF5Cj4KPiB2aW0gKzEyNzIgaW5jbHVkZS9tZWRpYS92aWRlb2J1ZjItY29yZS5oCj4K
PiA2MjVkNDZjMWMxZmU4ZSBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxICAxMjYzICBzdGF0
aWMgaW5saW5lIGJvb2wgdmIyX3F1ZXVlX2FkZF9idWZmZXIoc3RydWN0IHZiMl9xdWV1ZSAqcSwg
c3RydWN0IHZiMl9idWZmZXIgKnZiKQo+IDYyNWQ0NmMxYzFmZThlIEJlbmphbWluIEdhaWduYXJk
IDIwMjMtMDMtMjEgIDEyNjQgIHsKPiA0ODdkM2YxNGQxMmVjZiBCZW5qYW1pbiBHYWlnbmFyZCAy
MDIzLTAzLTIxICAxMjY1ICAJYm9vbCByZXQgPSBmYWxzZTsKPiA0ODdkM2YxNGQxMmVjZiBCZW5q
YW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxICAxMjY2Cj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFtaW4g
R2FpZ25hcmQgMjAyMy0wMy0yMSAgMTI2NyAgCXNwaW5fbG9jaygmcS0+YnVmc19sb2NrKTsKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBe
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXgo+IEhvbGRpbmcgYSBzcGluIGxvY2suCj4KPiA0ODdkM2Yx
NGQxMmVjZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxICAxMjY4Cj4gNDg3ZDNmMTRkMTJl
Y2YgQmVuamFtaW4gR2FpZ25hcmQgMjAyMy0wMy0yMSAgMTI2OSAgCWlmICh2Yi0+aW5kZXggPj0g
cS0+bWF4X251bV9idWZzKSB7Cj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFtaW4gR2FpZ25hcmQgMjAy
My0wMy0yMSAgMTI3MCAgCQlzdHJ1Y3QgdmIyX2J1ZmZlciAqKnRtcDsKPiA0ODdkM2YxNGQxMmVj
ZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxICAxMjcxCj4gNDg3ZDNmMTRkMTJlY2YgQmVu
amFtaW4gR2FpZ25hcmQgMjAyMy0wMy0yMSBAMTI3MiAgCQl0bXAgPSBrcmVhbGxvY19hcnJheShx
LT5idWZzLCBxLT5tYXhfbnVtX2J1ZnMgKiAyLCBzaXplb2YoKnEtPmJ1ZnMpLCBHRlBfS0VSTkVM
KTsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIF5eXl5eXl5eXl4KPiBTbGVlcGluZyBhbGxvY2F0aW9u
LiAgR0ZQX0FUT01JQz8gIE9yIGlzIHRoZXJlIGEgd2F5IHRvIG1vdmUgdGhlCj4gYWxsb2NhdGlv
biBvdXRzaWRlIHRoZSBsb2NrPwoKSSB3aWxsIGFkZCBHRlBfQVRPTUlDIGZsYWcgaW4gbmV4dCB2
ZXJzaW9uLgoKVGhhbmtzIGZvciB5b3VyIGhlbHAsCkJlbmphbWluCgo+Cj4gNDg3ZDNmMTRkMTJl
Y2YgQmVuamFtaW4gR2FpZ25hcmQgMjAyMy0wMy0yMSAgMTI3MyAgCQlpZiAoIXRtcCkKPiA0ODdk
M2YxNGQxMmVjZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxICAxMjc0ICAJCQlnb3RvIHJl
YWxsb2NfZmFpbGVkOwo+IDQ4N2QzZjE0ZDEyZWNmIEJlbmphbWluIEdhaWduYXJkIDIwMjMtMDMt
MjEgIDEyNzUKPiA0ODdkM2YxNGQxMmVjZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxICAx
Mjc2ICAJCXEtPm1heF9udW1fYnVmcyAqPSAyOwo+IDQ4N2QzZjE0ZDEyZWNmIEJlbmphbWluIEdh
aWduYXJkIDIwMjMtMDMtMjEgIDEyNzcgIAkJcS0+YnVmcyA9IHRtcDsKPiA0ODdkM2YxNGQxMmVj
ZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxICAxMjc4ICAJfQo+IDQ4N2QzZjE0ZDEyZWNm
IEJlbmphbWluIEdhaWduYXJkIDIwMjMtMDMtMjEgIDEyNzkKPiA0ODdkM2YxNGQxMmVjZiBCZW5q
YW1pbiBHYWlnbmFyZCAyMDIzLTAzLTIxICAxMjgwICAJaWYgKHZiLT5pbmRleCA8IHEtPm1heF9u
dW1fYnVmcykgewo+IDYyNWQ0NmMxYzFmZThlIEJlbmphbWluIEdhaWduYXJkIDIwMjMtMDMtMjEg
IDEyODEgIAkJcS0+YnVmc1t2Yi0+aW5kZXhdID0gdmI7Cj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFt
aW4gR2FpZ25hcmQgMjAyMy0wMy0yMSAgMTI4MiAgCQlyZXQgPSB0cnVlOwo+IDYyNWQ0NmMxYzFm
ZThlIEJlbmphbWluIEdhaWduYXJkIDIwMjMtMDMtMjEgIDEyODMgIAl9Cj4gNjI1ZDQ2YzFjMWZl
OGUgQmVuamFtaW4gR2FpZ25hcmQgMjAyMy0wMy0yMSAgMTI4NAo+IDQ4N2QzZjE0ZDEyZWNmIEJl
bmphbWluIEdhaWduYXJkIDIwMjMtMDMtMjEgIDEyODUgIHJlYWxsb2NfZmFpbGVkOgo+IDQ4N2Qz
ZjE0ZDEyZWNmIEJlbmphbWluIEdhaWduYXJkIDIwMjMtMDMtMjEgIDEyODYgIAlzcGluX3VubG9j
aygmcS0+YnVmc19sb2NrKTsKPiA0ODdkM2YxNGQxMmVjZiBCZW5qYW1pbiBHYWlnbmFyZCAyMDIz
LTAzLTIxICAxMjg3Cj4gNDg3ZDNmMTRkMTJlY2YgQmVuamFtaW4gR2FpZ25hcmQgMjAyMy0wMy0y
MSAgMTI4OCAgCXJldHVybiByZXQ7Cj4gNjI1ZDQ2YzFjMWZlOGUgQmVuamFtaW4gR2FpZ25hcmQg
MjAyMy0wMy0yMSAgMTI4OSAgfQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
