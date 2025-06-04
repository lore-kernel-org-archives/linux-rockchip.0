Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FA9DC5B555
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 08:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2XxbxPqfiwf8OK3TwLscfoCc+fKrCOmioqerpadeoo=; b=c1Pu0iONpSecit
	qGHdiN4p67IfcSMnrowiH7ptMZVxjCpWBfkmozS/e4SffTxNkfRk21ZBkAd8RrzvUGc/xd7Fav6he
	d/XfsZ8sG41PJcY+C5uoEjKvOOzxgqZHb7IUWeLzYd0wVXnPInys2Pj2hVEMryZTmU8jMh1Dk3MZD
	MeeLgKaRsIwy13UGCE6d6RRRixRpXMSrwFDge6S5c3egHToVCDmM+aLXyu2n8pLF12XkUNvKWwh3D
	8+IW766cAGjisNi5FnDqUUbsF8xzXgS+sFiEVU/VjERV257AnWqiZOmq8jMsyjCQqqN5ZmBj4KXeD
	tE+uGxE4knY8i7WMiEJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMjk3-0000000CvoC-1Ger;
	Wed, 04 Jun 2025 08:44:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMjRd-0000000CtU5-3CMy;
	Wed, 04 Jun 2025 08:25:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=LCPFAPADt8JOCJBFFfu1MyhQ+vPj22OqdN/un1YStz0=; b=Ddwg44kFMwOOqBVKp98e9Ri5nF
	0t4YLM+TCicL6BAy/Ym89l27K60UgOgN0Vc/s9tMQSF5YXSjzwA0lYQnPqesHG8z3j3p6K0Saax9K
	osb/9XUSHQMziUs9ZDdy7pCSb1HYjIcGaMA5832WtLeYsY/GluJ34pCVBJN/GHpl3quL+lVkUx/QG
	jb6DFa5Arf5ERK2jYAZ60ww2w0ZibTjhmdj1k4BtYUmDXIyAH0b3t83H/xceFMDoK8SHCIvt34Ahj
	ttPwCiE0naYusuB3fDhuEvn/D/yK497t98YVX/dPo98FdywF8tf7tODLvR6uYsqvlKJ/rjC1hXiwB
	VOOuZPgQ==;
Received: from i53875a2b.versanet.de ([83.135.90.43] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uMjR3-0006Av-Ec; Wed, 04 Jun 2025 10:25:21 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 Tomeu Vizoso <tomeu@tomeuvizoso.net>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v6 01/10] dt-bindings: npu: rockchip,rknn: Add bindings
Date: Wed, 04 Jun 2025 10:25:20 +0200
Message-ID: <2024813.jZfb76A358@diego>
In-Reply-To: <20250604-6-10-rocket-v6-1-237ac75ddb5e@tomeuvizoso.net>
References: <20250604-6-10-rocket-v6-0-237ac75ddb5e@tomeuvizoso.net>
 <20250604-6-10-rocket-v6-1-237ac75ddb5e@tomeuvizoso.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_012557_819276_68E654AA 
X-CRM114-Status: GOOD (  22.56  )
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

QW0gTWl0dHdvY2gsIDQuIEp1bmkgMjAyNSwgMDk6NTc6MTQgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBUb21ldSBWaXpvc286Cj4gQWRkIHRoZSBiaW5kaW5ncyBmb3IgdGhl
IE5ldXJhbCBQcm9jZXNzaW5nIFVuaXQgSVAgZnJvbSBSb2NrY2hpcC4KPiAKPiB2MjoKPiAtIEFk
YXB0IHRvIG5ldyBub2RlIHN0cnVjdHVyZSAob25lIG5vZGUgcGVyIGNvcmUsIGVhY2ggd2l0aCBp
dHMgb3duCj4gICBJT01NVSkKPiAtIFNldmVyYWwgbWlzYy4gZml4ZXMgZnJvbSBTZWJhc3RpYW4g
UmVpY2hlbAo+IAo+IHYzOgo+IC0gU3BsaXQgcmVnaXN0ZXIgYmxvY2sgaW4gaXRzIGNvbnN0aXR1
ZW50IHN1YmJsb2NrcywgYW5kIG9ubHkgcmVxdWlyZQo+ICAgdGhlIG9uZXMgdGhhdCB0aGUga2Vy
bmVsIHdvdWxkIGV2ZXIgdXNlIChOaWNvbGFzIEZyYXR0YXJvbGkpCj4gLSBHcm91cCBzdXBwbGll
cyAoUm9iIEhlcnJpbmcpCj4gLSBFeHBsYWluIHRoZSB3YXkgaW4gd2hpY2ggdGhlIHRvcCBjb3Jl
IGlzIHNwZWNpYWwgKFJvYiBIZXJyaW5nKQo+IAo+IHY0Ogo+IC0gQ2hhbmdlIHJlcXVpcmVkIG5v
ZGUgbmFtZSB0byBucHVAIChSb2IgSGVycmluZyBhbmQgS3J6eXN6dG9mIEtvemxvd3NraSkKPiAt
IFJlbW92ZSB1bm5lZWRlZCBpdGVtczogKEtyenlzenRvZiBLb3psb3dza2kpCj4gLSBGaXggdXNl
IG9mIG1pbkl0ZW1zL21heEl0ZW1zIChLcnp5c3p0b2YgS296bG93c2tpKQo+IC0gQWRkIHJlZy1u
YW1lcyB0byBsaXN0IG9mIHJlcXVpcmVkIHByb3BlcnRpZXMgKEtyenlzenRvZiBLb3psb3dza2kp
Cj4gLSBGaXggZXhhbXBsZSAoS3J6eXN6dG9mIEtvemxvd3NraSkKPiAKPiB2NToKPiAtIFJlbmFt
ZSBmaWxlIHRvIHJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFtbCAoS3J6eXN6dG9mIEtvemxv
d3NraSkKPiAtIFN0cmVhbWxpbmUgY29tcGF0aWJsZSBwcm9wZXJ0eSAoS3J6eXN6dG9mIEtvemxv
d3NraSkKPiAKPiB2NjoKPiAtIFJlbW92ZSBtZW50aW9uIHRvIE5WRExBLCBhcyB0aGUgaGFyZHdh
cmUgaXMgb25seSBpbmNpZGVudGFsbHkgcmVsYXRlZAo+ICAgKEtldmVyIFlhbmcpCj4gLSBNYXJr
IHBjbGsgYW5kIG5wdSBjbG9ja3MgYXMgcmVxdWlyZWQgYnkgYWxsIGNsb2NrcyAoUm9iIEhlcnJp
bmcpCj4gCj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWlj
aGVsQGNvbGxhYm9yYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVG9tZXUgVml6b3NvIDx0b21ldUB0
b21ldXZpem9zby5uZXQ+Cj4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlz
enRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KPiAtLS0KPiAgLi4uL2JpbmRpbmdzL25wdS9yb2Nr
Y2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwgICAgfCAxNDQgKysrKysrKysrKysrKysrKysrKysr
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxNDQgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25u
LWNvcmUueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ucHUvcm9ja2No
aXAscmszNTg4LXJrbm4tY29yZS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwLi45YTVlOWUyMTM5MTJkMDk5
N2RhMmY2YWUyNjE4OWFkZjA0NGRjYzdiCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ucHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS55
YW1sCj4gQEAgLTAsMCArMSwxNDQgQEAKPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQ
TC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpCj4gKyVZQU1MIDEuMgo+ICstLS0KPiArJGlkOiBo
dHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9ucHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29y
ZS55YW1sIwo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2Nv
cmUueWFtbCMKPiArCj4gK3RpdGxlOiBOZXVyYWwgUHJvY2Vzc2luZyBVbml0IElQIGZyb20gUm9j
a2NoaXAKPiArCj4gK21haW50YWluZXJzOgo+ICsgIC0gVG9tZXUgVml6b3NvIDx0b21ldUB0b21l
dXZpem9zby5uZXQ+Cj4gKwo+ICtkZXNjcmlwdGlvbjoKPiArICBSb2NrY2hpcCBJUCBmb3IgYWNj
ZWxlcmF0aW5nIGluZmVyZW5jZSBvZiBuZXVyYWwgbmV0d29ya3MuCj4gKwo+ICsgIFRoZXJlIGlz
IHRvIGJlIGEgbm9kZSBwZXIgZWFjaCBjb3JlIGluIHRoZSBOUFUuIEluIFJvY2tjaGlwJ3MgZGVz
aWduIHRoZXJlCj4gKyAgd2lsbCBiZSBvbmUgY29yZSB0aGF0IGlzIHNwZWNpYWwgYW5kIG5lZWRz
IHRvIGJlIHBvd2VyZWQgb24gYmVmb3JlIGFueSBvZiB0aGUKPiArICBvdGhlciBjb3JlcyBjYW4g
YmUgdXNlZC4gVGhpcyBzcGVjaWFsIGNvcmUgaXMgY2FsbGVkIHRoZSB0b3AgY29yZSBhbmQgc2hv
dWxkCj4gKyAgaGF2ZSB0aGUgY29tcGF0aWJsZSBzdHJpbmcgdGhhdCBjb3JyZXNwb25kcyB0byB0
b3AgY29yZXMuCj4gKwo+ICtwcm9wZXJ0aWVzOgo+ICsgICRub2RlbmFtZToKPiArICAgIHBhdHRl
cm46ICdebnB1QFthLWYwLTldKyQnCj4gKwo+ICsgIGNvbXBhdGlibGU6Cj4gKyAgICBlbnVtOgo+
ICsgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUtdG9wCj4gKyAgICAgIC0gcm9ja2No
aXAscmszNTg4LXJrbm4tY29yZQo+ICsKPiArICByZWc6Cj4gKyAgICBtYXhJdGVtczogMwo+ICsK
PiArICByZWctbmFtZXM6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBjb25zdDogcGMKPiArICAg
ICAgLSBjb25zdDogY25hCj4gKyAgICAgIC0gY29uc3Q6IGNvcmUKPiArCj4gKyAgY2xvY2tzOgo+
ICsgICAgbWF4SXRlbXM6IDQKPiArCj4gKyAgY2xvY2stbmFtZXM6Cj4gKyAgICBpdGVtczoKPiAr
ICAgICAgLSBjb25zdDogYWNsawo+ICsgICAgICAtIGNvbnN0OiBoY2xrCj4gKyAgICAgIC0gY29u
c3Q6IG5wdQo+ICsgICAgICAtIGNvbnN0OiBwY2xrCj4gKwo+ICsgIGludGVycnVwdHM6Cj4gKyAg
ICBtYXhJdGVtczogMQo+ICsKPiArICBpb21tdXM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiAr
ICBucHUtc3VwcGx5OiB0cnVlCj4gKwo+ICsgIHBvd2VyLWRvbWFpbnM6Cj4gKyAgICBtYXhJdGVt
czogMQo+ICsKPiArICByZXNldHM6Cj4gKyAgICBtYXhJdGVtczogMgo+ICsKPiArICByZXNldC1u
YW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBzcnN0X2EKPiArICAgICAgLSBj
b25zdDogc3JzdF9oCj4gKwo+ICsgIHNyYW0tc3VwcGx5OiB0cnVlCj4gKwo+ICtyZXF1aXJlZDoK
PiArICAtIGNvbXBhdGlibGUKPiArICAtIHJlZwo+ICsgIC0gcmVnLW5hbWVzCj4gKyAgLSBjbG9j
a3MKPiArICAtIGNsb2NrLW5hbWVzCj4gKyAgLSBpbnRlcnJ1cHRzCj4gKyAgLSBpb21tdXMKPiAr
ICAtIHBvd2VyLWRvbWFpbnMKPiArICAtIHJlc2V0cwo+ICsgIC0gcmVzZXQtbmFtZXMKPiArICAt
IG5wdS1zdXBwbHkKPiArICAtIHNyYW0tc3VwcGx5Cj4gKwo+ICthbGxPZjoKPiArICAtIGlmOgo+
ICsgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4gKyAgICAgICAgICBj
b250YWluczoKPiArICAgICAgICAgICAgZW51bToKPiArICAgICAgICAgICAgICAtIHJvY2tjaGlw
LHJrbm4tY29yZS10b3AKCnNob3VsZCBiZSByb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLXRvcCBJ
IHRoaW5rCgo+ICsgICAgdGhlbjoKPiArICAgICAgcHJvcGVydGllczoKPiArICAgICAgICBjbG9j
a3M6Cj4gKyAgICAgICAgICBtaW5JdGVtczogNAo+ICsKPiArICAgICAgICBjbG9jay1uYW1lczoK
PiArICAgICAgICAgIG1pbkl0ZW1zOiA0Cj4gKyAgLSBpZjoKPiArICAgICAgcHJvcGVydGllczoK
PiArICAgICAgICBjb21wYXRpYmxlOgo+ICsgICAgICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAg
ICAgIGVudW06Cj4gKyAgICAgICAgICAgICAgLSByb2NrY2hpcCxya25uLWNvcmUKCnNob3VsZCBi
ZSByb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlCgo+ICsgICAgdGhlbjoKPiArICAgICAgcHJvcGVy
dGllczoKPiArICAgICAgICBjbG9ja3M6Cj4gKyAgICAgICAgICBtYXhJdGVtczogMgo+ICsgICAg
ICAgIGNsb2NrLW5hbWVzOgo+ICsgICAgICAgICAgbWF4SXRlbXM6IDIKCgpIZWlrbwoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
