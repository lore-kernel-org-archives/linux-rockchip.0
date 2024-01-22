Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6152CC46CD2
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 22:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7cAYbdjKJamuy8dy/0787JtS6FJDV8LeUBy88OfJ7Ik=; b=x30byWXqgOBz+A
	OxQrVbBDjFOcTsETzL1iuR5B7J5rhnzDWnRl+i9IX9J2EnB80euFpTrNW+9h8qpb4qu+ajLDVK1XK
	sximfuSW67qyZIBdqZmTfAXwIHc9dDqrYcvRu1rEd6O8btNCyNBGgoUZHp4X/kwd0IF4AucJUB/2C
	SfkryochoIDSj0KA2g4GwAn1mcvCmnL/1N6vNHiJ+7xync7LBBAmQNzmcfL8R+gih1AJadPkTb5xO
	RqwfBe3+7cZhD/YEu3WJc68JAfb1SdcLS+xhTWjcb6MC1BpgROYES2AiQ4fXgCgmv/NFMNmD/dNrw
	dNnIhz+7Ss+YTpkBZJYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rS2UO-00EFbm-18;
	Mon, 22 Jan 2024 22:09:56 +0000
Received: from luna.linkmauve.fr ([82.65.109.163])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rS2UK-00EFac-2C;
	Mon, 22 Jan 2024 22:09:54 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
	id C026DDDAEC3; Mon, 22 Jan 2024 23:09:41 +0100 (CET)
Date: Mon, 22 Jan 2024 23:09:41 +0100
From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	=?utf-8?B?VGFtw6FzIFN6xbFjcw==?= <szucst@iit.uni-miskolc.hu>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	John Clark <inindev@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Alexey Charkov <alchark@gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add the rk3588 thermal zones
Message-ID: <Za7npejeTD4i9y2h@desktop>
References: <20240122203502.3311520-1-linkmauve@linkmauve.fr>
 <20240122203502.3311520-2-linkmauve@linkmauve.fr>
 <c2963862-9d22-438a-8357-eccf14fead7d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c2963862-9d22-438a-8357-eccf14fead7d@linaro.org>
Jabber-ID: linkmauve@linkmauve.fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_140952_873298_52EFF80D 
X-CRM114-Status: GOOD (  15.92  )
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

T24gTW9uLCBKYW4gMjIsIDIwMjQgYXQgMDk6NTI6MTBQTSArMDEwMCwgRGFuaWVsIExlemNhbm8g
d3JvdGU6Cj4gCj4gSGkgRW1tYW51ZWwsCgpIaSBEYW5pZWwsCgo+IAo+IHBsZWFzZSBzeW5jIHVw
IHdpdGggQWxleGV5IENoYXJrb3YgKGFkZGVkIGluIENjKSB3aG8gaXMgZG9pbmcgYSBzaW1pbGFy
Cj4gY29uZmlndXJhdGlvbiBbMV0gd2hpY2ggd2FzIHJldmlld2VkLgoKT2gsIEkgd2FzbuKAmXQg
YXdhcmUgb2YgdGhpcyB3b3JrLCBpdCBzZWVtcyB0aGVyZSBpcyBub3RoaW5nIHRoaXMgc2VyaWVz
CmFkZCBvdmVyIEFsZXhleeKAmXMgc28gSSB3aWxsIGRyb3AgaXQuCgpJcyB0aGVyZSBhIGRvY3Vt
ZW50IHRyYWNraW5nIHlvdXIgdXBzdHJlYW1pbmcgd29yaz8gIEkgd2FzIHBsYW5uaW5nIG9uCnNl
bmRpbmcgYSBzZXJpZXMgZW5hYmxpbmcgdGhlIFZFUFUxMjEgaGFyZHdhcmUgZW5jb2RlcnMgbmV4
dCwgYnV0IGlmCnlvdeKAmXJlIGFsc28gd29ya2luZyBvbiBpdCBJIGNhbiBkcm9wIGl0IHRvbyAo
YWx0aG91Z2ggSSBkb27igJl0IHNlZSBhbnkKc2VyaWVzIGZyb20gYSBxdWljayBzZWFyY2gpLiAg
SeKAmXZlIG5vdyBzdWJzY3JpYmVkIHRvIHRoZSBsaW51eC1yb2NrY2hpcAptYWlsaW5nIGxpc3Qg
c28gSSBzaG91bGRu4oCZdCBtaXNzIGFueSBuZXcgc2VyaWVzLgoKPiAKPiBUaGFua3MKPiAgIC0t
IERhbmllbAo+IAo+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvQ0FCamQ0WXlMMVp3
Tk9KcldQd1p0Yzc9ZTRoMThhOXRRT251S1A2c295PWlUSHYtV0VBQG1haWwuZ21haWwuY29tLwo+
IAo+IE9uIDIyLzAxLzIwMjQgMjE6MzQsIEVtbWFudWVsIEdpbCBQZXlyb3Qgd3JvdGU6ClvigKZd
Cj4gCj4gLS0gCj4gPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4g
c291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29Dcwo+IAo+IEZvbGxvdyBMaW5hcm86ICA8aHR0cDov
L3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8Cj4gPGh0dHA6Ly90d2l0
dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo+IDxodHRwOi8vd3d3LmxpbmFyby5vcmcv
bGluYXJvLWJsb2cvPiBCbG9nCj4gCgpUaGFua3MsCgotLSAKTGluayBNYXV2ZQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
