Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA239C25B74
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 May 2024 14:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FubLJ68AdUpkbTK5aRG3qu1/TQY0H2NczhH4G0hkOJg=; b=wZb74PIOkv711D
	TycXM+YWPoqJndVOUsR0ghGpvo7n1DCBI7K9biMIE9AukHsMxsqq/gZvg1ZqlsltCaqMM+vYg+WFE
	mMTiDrRwl7NLMVe0oslk8ZyhxKdXGMUc6eiqStNIYrdoTjeN3T8P/RRYBJwITriZPIYm4ybpL6+Yy
	mDC6XhJQJzsr2f8BPh0QiXY0q3VojEc2Kk19chIUcZI/g5ct9++7++HKRMRDKnJFAktT9EIXIlpid
	yJyPyg8vG9l4BM8rYBQmnoHvo2g+qDbBWaqiUHKcid236VH5TqXipoPM8OfIJM04F3mMtb0/LXEwi
	MPTOBx+YT9ad8i4dGFfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6X5V-0000000DFkZ-21kD;
	Mon, 13 May 2024 14:55:37 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6X5R-0000000DFjh-3zD3;
	Mon, 13 May 2024 14:55:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715612132;
	bh=/zuMT5Y4ZRWt6Ev/Pe1bed+f3UqPLoYxack4eF1uwkE=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=GLlZAvFN/grbmJC42rwU4WfEUpGd/4bdKMD1jtecZnGh8Q5im5TXf75rOKBLjbV7f
	 34cuinhwjH39OZcWptmvm5aRhocT3xZ2O7EtHADqQujXUHM02vkA6SJMwsg9gTCZWm
	 n2+JuAeh35odoXSogxfm1o3DoH/FVWH2Mai8AYlJwvx72v6oyO0y6+ZoXNc9cTvVL5
	 Pwrs+Do1xAKi0xSkutB6a7wTugBHP/hTwYzJ3CTiMxZEknEr03R2rzxs4R1MUemSp7
	 go+qc+ZHMIT0/fnMvc742YgijHyrwRmtoYkZSZTUKugRnHnHlOWycP00rF9HANbj8A
	 P8cjcBW7VYoXg==
Received: from nicolas-tpx395.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 96BF8378217F;
	Mon, 13 May 2024 14:55:30 +0000 (UTC)
Message-ID: <d2876f64774d09db10ddae01f98889d542563507.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: AV1: Be more fexible on postproc
 capabilities
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Date: Mon, 13 May 2024 10:55:24 -0400
In-Reply-To: <20240328093439.18712-1-benjamin.gaignard@collabora.com>
References: <20240328093439.18712-1-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.52.1 (3.52.1-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_075534_143464_7FF3D7E3 
X-CRM114-Status: GOOD (  10.88  )
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

TGUgamV1ZGkgMjggbWFycyAyMDI0IMOgIDEwOjM0ICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCBh
IMOpY3JpdMKgOgo+IFJLMzU4OCBwb3N0LXByb2Nlc3NvciBibG9jayBpcyBhYmxlIHRvIGNvbnZl
cnQgMTAgYml0cyBzdHJlYW1zCj4gaW50byA4IGJpdHMgcGl4ZWxzIGZvcm1hdC4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3Jh
LmNvbT4KPiBGaXhlczogMDAzYWZkYTk3YzY1ICgibWVkaWE6IHZlcmlzaWxpY29uOiBFbmFibGUg
QVYxIGRlY29kZXIgb24gcmszNTg4IikKClJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxu
aWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdV9ody5jIHwgMSAtCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1X2h3LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdV9ody5jCj4gaW5kZXggZjk3NTI3NjcwNzgzLi45NjQx
MjJlN2MzNTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9yb2NrY2hpcF92cHVfaHcuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNp
bGljb24vcm9ja2NoaXBfdnB1X2h3LmMKPiBAQCAtODIsNyArODIsNiBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IGhhbnRyb19mbXQgcm9ja2NoaXBfdnB1OTgxX3Bvc3Rwcm9jX2ZtdHNbXSA9IHsKPiAg
CXsKPiAgCQkuZm91cmNjID0gVjRMMl9QSVhfRk1UX05WMTIsCj4gIAkJLmNvZGVjX21vZGUgPSBI
QU5UUk9fTU9ERV9OT05FLAo+IC0JCS5tYXRjaF9kZXB0aCA9IHRydWUsCj4gIAkJLnBvc3Rwcm9j
ZXNzZWQgPSB0cnVlLAo+ICAJCS5mcm1zaXplID0gewo+ICAJCQkubWluX3dpZHRoID0gUk9DS0NI
SVBfVlBVOTgxX01JTl9TSVpFLAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
