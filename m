Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30C3FD232CA
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 01:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6MvL92uR7NODFXnTNZ3H3t9thLWzphDd+BF8IkgW5w=; b=Kt0YSlZZNd1saJ
	A/b74dJE1P3j7IcP2XDe4frUbZftNYExfepL0UGC6gOjcsMSnlM/pqdpHMfUJBpQlXLKTHCm47WzX
	kJkwFOf9eRDyeX0N+FvrZGal8igPBqZK+vBjQw5u5cDhzljM97zN7nedhN4nRrwVit2VC+DaJBnzu
	nf0KFPocRSylCL7dO/Vc2F9XZolVKZoT8EFtpQToqaj9kYvqtsXNj4QyKtlh+DvzUqa0cBPaeS2lr
	V+zK79KaeHqMBfRNiXRZbRTNu9lY75MY9q13B2WRxAesH0l0xZ5tOmoD+vYpsYvqjbjRqO9WYGS4s
	RzDxrJACHMjQUjtrLgbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve1Ga-000000014JH-3MEU;
	Fri, 09 Jan 2026 01:26:16 +0000
Received: from mail-m3275.qiye.163.com ([220.197.32.75])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve1GW-000000014I3-1jRi;
	Fri, 09 Jan 2026 01:26:14 +0000
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3002cb6fd;
	Fri, 9 Jan 2026 09:26:02 +0800 (GMT+08:00)
Message-ID: <4e01f121-1912-4897-98e8-cb543a501707@rock-chips.com>
Date: Fri, 9 Jan 2026 09:26:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] drm/rockchip: Drop ROCKCHIP_IOMMU depend for
 DRM_ROCKCHIP
To: Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Chaoyi Chen <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org
References: <20251106020632.92-1-kernel@airkyi.com>
 <20251106020632.92-9-kernel@airkyi.com> <4072834.X9hSmTKtgW@phil>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <4072834.X9hSmTKtgW@phil>
X-HM-Tid: 0a9ba05c4d8f03abkunm1426e5ab1f2143
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkhKTlZCS0gaTUhNS0NDTx9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=GY6B1+W46frWd3oLL1NM66g6O0EUywg5e7gk4XfQ3+7+led+dGGAoMeVwkHlhjufEtT6S0JKF8Ui/NstMhkxCh8FkpHFb3JVv/f+FQiHYJd8kjAsXth6LNavSgbTlumydJfio2Zlgs31cMsy3m+jrDNfczdZ39KJiNyjhMpbMuo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=IjEhf4jC5xnT6sGVRluMHT0B2HAAj6xJis8dbhxb8WM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_172613_102079_1FFBF27F 
X-CRM114-Status: GOOD (  19.31  )
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

SGkgSGVpa28sCgpPbiAxLzkvMjAyNiAzOjAzIEFNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBB
bSBEb25uZXJzdGFnLCA2LiBOb3ZlbWJlciAyMDI1LCAwMzowNjozMSBNaXR0ZWxldXJvcMOkaXNj
aGUgTm9ybWFsemVpdCBzY2hyaWViIENoYW95aSBDaGVuOgo+PiBGcm9tOiBDaGFveWkgQ2hlbiA8
Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4+Cj4+IE9uIHRoZSBSSzM1MDYgcGxhdGZvcm0s
IHRoZXJlIGlzIG5vIGlvbW11IGhhcmR3YXJlLiBBbmQgZXZlbiBvbgo+PiBwbGF0Zm9ybSB0aGF0
IGhhdmUgaW9tbXUgaGFyZHdhcmUsIGl0IHNob3VsZCBiZSBwb3NzaWJsZSB0byB1c2UKPj4gVk9Q
IHdpdGhvdXQgZW5hYmxpbmcgaW9tbXUuIEluIHRoaXMgY2FzZSwgYSBjb250aWd1b3VzIG1lbW9y
eQo+PiBzcGFjZSBsaWtlIENNQSBzaG91bGQgYmUgdXNlZC4KPj4KPj4gU28gdGhpcyBwYXRjaCBy
ZW1vdmVzIHRoZSBkZXBlbmRlbmN5IG9uIFJPQ0tDSElQX0lPTU1VLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+PiAg
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcgfCAzICsrLQo+PiAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
S2NvbmZpZwo+PiBpbmRleCBiN2IwMjU4MTRlNzIuLmEwNTZkNDE5MTkwYyAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcKPj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL0tjb25maWcKPj4gQEAgLTEsNyArMSw4IEBACj4+ICAjIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKPj4gIGNvbmZpZyBEUk1fUk9DS0NISVAKPj4gIAl0
cmlzdGF0ZSAiRFJNIFN1cHBvcnQgZm9yIFJvY2tjaGlwIgo+PiAtCWRlcGVuZHMgb24gRFJNICYm
IFJPQ0tDSElQX0lPTU1VCj4+ICsJZGVwZW5kcyBvbiBEUk0KPj4gKwlkZXBlbmRzIG9uIFJPQ0tD
SElQX0lPTU1VIHx8ICFST0NLQ0hJUF9JT01NVQo+IAo+IEkgZG9uJ3QgcmVhbGx5IHVuZGVyc3Rh
bmQgdGhpcyB5ZXMrbm8gbGluZSA6LSkKPiAKPiBDYW4ndCB5b3UganVzdAo+IC0gZHJvcCB0aGUg
ZGVwZW5kZW5jeSBhbHRvZ2V0aGVyCj4gb3IKPiAtIGRvIGEgZGVwZW5kcyBvbiBST0NLQ0hJUF9J
T01NVSBpZiBBUk02NAo+IAo+CgpUaGlzIHRyaWNrIGlzIGNhbGxlZCBvcHRpb25hbC1kZXBlbmRl
bmNpZXMgWzBdLiBJbiBhZGRpdGlvbiB0byB0aGUgCmZhbWlsaWFyIGRlcGVuZHMgb24gUk9DS0NI
SVBfSU9NTVUgcGFydCwgdGhlIG5ld2x5IGFkZGVkICFST0NLQ0hJUF9JT01NVQplbnN1cmVzIHRo
YXQgRFJNX1JPQ0tDSElQIGNhbiBzdGlsbCBiZSBidWlsdCBldmVuIHdoZW4gUk9DS0NISVBfSU9N
TVUKaXMgbm90IGJ1aWxkLgoKWzBdOiBodHRwczovL2RvY3Mua2VybmVsLm9yZy9rYnVpbGQva2Nv
bmZpZy1sYW5ndWFnZS5odG1sI29wdGlvbmFsLWRlcGVuZGVuY2llcwoKSWYgd2UganVzdDoKLSBk
cm9wIHRoZSBkZXBlbmRlbmN5IGFsdG9nZXRoZXIgCgpXaGVuIElPTU1VIGlzIGVuYWJsZWQsIHRo
ZSBkZXBlbmRlbmN5IHJlbGF0aW9uc2hpcCBjYW5ub3QgYmUgaGFuZGxlZCAKY29ycmVjdGx5LiBG
b3IgZXhhbXBsZSwgdGhlIGZvbGxvd2luZyBjb25maWd1cmF0aW9uIGlzIHBvc3NpYmxlOiAKUk9D
S0NISVBfSU9NTVU9bSwgRFJNX1JPQ0tDSElQPXksIHdoaWNoIGxlYWRzIHRvIGEgYnVpbGQgZmFp
bHVyZS4KCi0gZG8gYSBkZXBlbmRzIG9uIFJPQ0tDSElQX0lPTU1VIGlmIEFSTTY0CgpUaGlzIGNo
YW5nZXMgdGhlIHNlbWFudGljcy4gT24gYXJtNjQgd2Ugc2hvdWxkIGFsc28gYmUgYWJsZSB0byB3
b3JrCndpdGhvdXQgSU9NTVUgYmVpbmcgZW5hYmxlZC4KCi0tIApCZXN0LCAKQ2hhb3lpCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
