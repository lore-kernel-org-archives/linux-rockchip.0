Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4608DECE564
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 13:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJAbcQq0hPxTMFw+vVfzBWBGoGQ+xZYpYF2CcnJIzXI=; b=T1wshW2h2nG9Ei
	1t6HJPcsYRhvbWM9qi9v+IE4NHi4/rdcFTbz298VPTcG0fAmdb4Qoi11ApLFFjNLF4AyQcOiZMRyW
	Mvf8qt1hCYkGZ4yS2wP8GEtmWVcUqMP/Kg/bDXefAW1R7wbiZYCG+pK0N7xOTrXHI7XmbXK2/jXZF
	C/Ddk24UEoT3E82fMHhRN+bTRMeelRcwS7T01d4Npf82tP9nnYWP2FIQEN6spbzPlJGbASOoSF2AP
	6pXo4+G16072NZq1BOb6/g+Uf0Vgf6WT9621gaANK8DtIqgUnDjwiKfIyC1g+vhHxj1oIdg31X7r3
	IYNPnT0Qsrez6z+zb2hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so0iR-00000005gCr-3m1J;
	Tue, 10 Sep 2024 13:15:31 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snzda-00000005UMO-1p86;
	Tue, 10 Sep 2024 12:08:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1725969983;
	bh=5G2bEKkJcecYb9XE+wS/gPtywdeG0cO3XP6VeQpEfNo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=GJZyv6xw5Qm7FPXTcKy0CZ7+P31lxGKdzJcpjFJPgTbvz4ctuZi6LXPv6hzyvKg4n
	 Jb5Nc4KywTamuEiuyQHqZYOQ7Ur7YsmP/0SKqPvJF5jigNlEUtSOaVZFH0/YY4IUJK
	 0kXFU9420xXNqGVh68ycI581XIbrILDmOuHtxMRPvF/Nq3Ng35GRisJy+TK9/Pqn4n
	 lWFYhNEufGVSZg0SdrZms6Q5TL8bnpbfXIRjARj/fhS73YZlkDpWEoBKvfZfzb2aDj
	 PbaTMBPUfJWI2gKCZatxzuLykuSc7Ac+8yieHYvGc4rejfHxRMXRYSb3fWDl3EqjOS
	 PUZuVZIyCcPRw==
Received: from [192.168.1.90] (unknown [188.27.55.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D6EC017E10C7;
	Tue, 10 Sep 2024 14:06:22 +0200 (CEST)
Message-ID: <de3a907a-bafe-4cd0-a0e4-264015151e86@collabora.com>
Date: Tue, 10 Sep 2024 15:06:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] drm/rockchip: Add basic RK3588 HDMI output support
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
References: <20240906-b4-rk3588-bridge-upstream-v6-0-a3128fb103eb@collabora.com>
 <20240906-b4-rk3588-bridge-upstream-v6-3-a3128fb103eb@collabora.com>
 <2241188.nHSHbJBgIm@diego>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <2241188.nHSHbJBgIm@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_050626_654070_F95E8D66 
X-CRM114-Status: GOOD (  14.35  )
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

T24gOS8xMC8yNCAyOjI3IFBNLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBGcmVpdGFnLCA2
LiBTZXB0ZW1iZXIgMjAyNCwgMDM6MTc6NDIgQ0VTVCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRl
YToKPj4gVGhlIFJLMzU4OCBTb0MgZmFtaWx5IGludGVncmF0ZXMgdGhlIG5ld2VyIFN5bm9wc3lz
IERlc2lnbldhcmUgSERNSSAyLjEKPj4gUXVhZC1QaXhlbCAoUVApIFRYIGNvbnRyb2xsZXIgSVAg
YW5kIGEgSERNSS9lRFAgVFggQ29tYm8gUEhZIGJhc2VkIG9uIGEKPj4gU2Ftc3VuZyBJUCBibG9j
ay4KPj4KPj4gQWRkIGp1c3QgdGhlIGJhc2ljIHN1cHBvcnQgZm9yIG5vdywgaS5lLiBSR0Igb3V0
cHV0IHVwIHRvIDRLQDYwSHosCj4+IHdpdGhvdXQgYXVkaW8sIENFQyBvciBhbnkgb2YgdGhlIEhE
TUkgMi4xIHNwZWNpZmljIGZlYXR1cmVzLgo+Pgo+PiBDby1kZXZlbG9wZWQtYnk6IEFsZ2VhIENh
byA8YWxnZWEuY2FvQHJvY2stY2hpcHMuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBBbGdlYSBDYW8g
PGFsZ2VhLmNhb0Byb2NrLWNoaXBzLmNvbT4KPj4gVGVzdGVkLWJ5OiBIZWlrbyBTdHVlYm5lciA8
aGVpa29Ac250ZWNoLmRlPgo+PiBTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNy
aXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9LY29uZmlnICAgICAgICAgICAgICAgfCAgIDggKwo+PiAgZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgICAgICB8ICAgMSArCj4+ICBkcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jIHwgNDM3ICsrKysrKysrKysrKysr
KysrKysrKysrKysKPj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2
LmMgICAgfCAgIDIgKwo+PiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9k
cnYuaCAgICB8ICAgMSArCj4+ICA1IGZpbGVzIGNoYW5nZWQsIDQ0OSBpbnNlcnRpb25zKCspCj4+
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnCj4+IGluZGV4IDdkZjg3NWUzODUxNy4uNGRhN2Nl
ZjI0ZjU3IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZwo+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZwo+PiBAQCAtOCw2ICs4LDcg
QEAgY29uZmlnIERSTV9ST0NLQ0hJUAo+PiAgCXNlbGVjdCBWSURFT01PREVfSEVMUEVSUwo+PiAg
CXNlbGVjdCBEUk1fQU5BTE9HSVhfRFAgaWYgUk9DS0NISVBfQU5BTE9HSVhfRFAKPj4gIAlzZWxl
Y3QgRFJNX0RXX0hETUkgaWYgUk9DS0NISVBfRFdfSERNSQo+PiArCXNlbGVjdCBEUk1fRFdfSERN
SV9RUCBpZiBST0NLQ0hJUF9EV19IRE1JX1FQCj4+ICAJc2VsZWN0IERSTV9EV19NSVBJX0RTSSBp
ZiBST0NLQ0hJUF9EV19NSVBJX0RTSQo+PiAgCXNlbGVjdCBHRU5FUklDX1BIWSBpZiBST0NLQ0hJ
UF9EV19NSVBJX0RTSQo+PiAgCXNlbGVjdCBHRU5FUklDX1BIWV9NSVBJX0RQSFkgaWYgUk9DS0NI
SVBfRFdfTUlQSV9EU0kKPj4gQEAgLTYzLDYgKzY0LDEzIEBAIGNvbmZpZyBST0NLQ0hJUF9EV19I
RE1JCj4+ICAJICBlbmFibGUgSERNSSBvbiBSSzMyODggb3IgUkszMzk5IGJhc2VkIFNvQywgeW91
IHNob3VsZCBzZWxlY3QKPj4gIAkgIHRoaXMgb3B0aW9uLgo+PiAgCj4+ICtjb25maWcgUk9DS0NI
SVBfRFdfSERNSV9RUAo+PiArCWJvb2wgIlJvY2tjaGlwIHNwZWNpZmljIGV4dGVuc2lvbnMgZm9y
IFN5bm9wc3lzIERXIEhETUkgUVAiCj4gCj4gdGhpcyBuZWVkcyBhCj4gKyAgICAgICBzZWxlY3Qg
RFJNX0JSSURHRV9DT05ORUNUT1IKPiAKPiBub3csIG90aGVyd2lzZSBpdCBjYW4ndCBsaW5rIHRo
ZSBkcm1fYnJpZGdlX2Nvbm5lY3Rvcl9pbml0IGZ1bmN0aW9uCgpUaGF0J3MgYmVjYXVzZSBvZiBh
IHJlY2VudCBjaGFuZ2UgWzFdIHdoaWNoIEkgd2FzIGF3YXJlIG9mLCBidXQgZGlkbid0CmFjdHVh
bGx5IGZvbGxvdyB3aGVuIHRoYXQgZ290IG1lcmdlZC4gIFRoaXMgc2VyaWVzIGlzIHN0aWxsIGJh
c2VkIG9uCnY2LjExLXJjMSwgaGVuY2Ugd2Ugc2hvdWxkIHByb2JhYmx5IHN3aXRjaCB0byBsaW51
eC1uZXh0IHN0YXJ0aW5nIHdpdGggdGhlCm5leHQgcmV2aXNpb24uCgpUaGFua3MsCkNyaXN0aWFu
CgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjQwNzE1LWRybS1icmlk
Z2UtY29ubmVjdG9yLWZpeC1oZG1pLXJlc2V0LXY0LTQtNjFlNjQxN2NmZDk5QGxpbmFyby5vcmcv
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
