Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 532BEC47422
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jan 2024 07:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gwsXD2a54uANbc0qTc3oN+Fu+MThaWhUNk3OIAKN6b0=; b=Bwwj7Y5xLIGHoDXlOck/RBZVvv
	c2bhfiQ9G9gUIrd4j3LkWOIQWzPpzv2c6OvD2LuTYDtVHVYH5yVsJLJ6q8W7GqnlDo+Fu1VvhUHHc
	vSjWY1YgK/KRJyMc5Br2Ljo/l1H+aBaOAkE+LlgqKpmg4/0+JFYVQ1k9gIfm+poVTsWJCEmTVCnsZ
	Iyn6WgCv8Dem62jz6QTU+RY+AQYRPw/kb22lJkXSXngxPo5NLmgjn4AxYBBeUXn+Qinz0/DbP4Edg
	9AVu/N9uQWQWU+hqKgO0Sg1d2prEl07NNyP5M85xGBKM1iQCaQrFJICtJ+KxfTcb10NbcJ40UcCxf
	wnffwHcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUMEj-0000000BdKv-1r0F;
	Mon, 29 Jan 2024 07:39:21 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUMEe-0000000BdJU-3zQS;
	Mon, 29 Jan 2024 07:39:18 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1706513953;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BtL+amYsa1SIE2IJHAmNtDoN4s2BdOEcZ5ZmhpQDTJY=;
	b=ktkcbnqtnOzyLtZjoky1OOrr/ZXuVNKhAd/p8fPHS52+r33KM4d4bSvMlpO4e2a/gboOFe
	5VB25a5EK/o54vP6ReMWowJfEVUiBE1HchSgXN41EuI8u/Y6zSFnW8xf4ClXnt8P0kHxRY
	OaBKHHbAd8VFWIPz0vuTI80ua0G3u5Vn3G/brQHOZR4+Xg1muMQpL8/HXj0DxMy6NfOblR
	0jFIUjl1noVvQ1ehIUsZyG1L/mbnMcK0XgkksUkDpbx5dVvMRfCAylknkEM0hntj0dIjeW
	XBNPZ1EWx0b63ZhTkxawLfH0PAszMaqnzR2a5Hz1jJcXdjSRc9KyU3dJKIN3Cg==
Date: Mon, 29 Jan 2024 08:39:11 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Add OPP data for CPU cores on
 RK3588
In-Reply-To: <a5fb28fa0f973ed1393dc3edc6bc729c@manjaro.org>
References: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
 <20240125-rk-dts-additions-v1-4-5879275db36f@gmail.com>
 <731aac66-f698-4a1e-b9ee-46a7f24ecae5@linaro.org>
 <ccc004cfae513195351ce0a79e12f6af@manjaro.org>
 <CABjd4YxSTLZjrnSCn0fh81US682-uhZ16-cgydzz97shhCpq4w@mail.gmail.com>
 <1f0608831cfb95c80edf16cd751eee76@manjaro.org>
 <CABjd4Yx06igrZQvHA4q-mcr2oSEf7eQyUS+KEATUGbw6qLc2sg@mail.gmail.com>
 <528a37d84cdd871e717b4ebf648bb8a7@manjaro.org>
 <9b72b688-be63-464e-a5dc-cf6051ccee12@linaro.org>
 <CABjd4YzdD9ciMn=p=opEK+fdxCkeCodsryph7pkqgsEUNcNrUQ@mail.gmail.com>
 <5ef9bab979260884866efe30d19ba8f1@manjaro.org>
 <CABjd4YyyuB9ou-BaOrvt_rrv1-jPE=wtwWDHDqNqyT4a0E51wg@mail.gmail.com>
 <9fda41efe365241ce06bd58974c8e055@manjaro.org>
 <CABjd4Ywfy8zT4sJ5v77CZQ9BNC=nkB7ZQq3QQyONST7gVHq=AA@mail.gmail.com>
 <a5fb28fa0f973ed1393dc3edc6bc729c@manjaro.org>
Message-ID: <436a3e3afbd862743034ac50d1be43cf@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240128_233917_619919_637EBBE6 
X-CRM114-Status: GOOD (  22.24  )
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

SGVsbG8gQWxleGV5LAoKT24gMjAyNC0wMS0yOSAwMTowOSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+
IE9uIDIwMjQtMDEtMjggMjA6MTQsIEFsZXhleSBDaGFya292IHdyb3RlOgo+PiBPbiBTdW4sIEph
biAyOCwgMjAyNCBhdCA3OjM14oCvQU0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+
IAo+PiB3cm90ZToKPj4+IEp1c3QgY2hlY2tpbmcsIHJ1bm5pbmcgdGhlIHRlc3Qgb24ganVzdCB0
d28gQ1BVIGNvcmVzIHdhcyBlbm91Z2ggdG8KPj4+IGtlZXAgdGhlIHBhY2thZ2UgdGVtcGVyYXR1
cmUgYXQgYXJvdW5kIDgwIG9DPwo+PiAKPj4gTm8sIG5vdCBldmVuIHJlbW90ZWx5Lgo+PiAKPj4g
SSBrZXB0IHRoZSBjb250aW51b3VzIDYgZGhyeXN0b25lIHRocmVhZHMgcnVubmluZyBvbiBhbGwg
dGhlIG90aGVyCj4+IGNvcmVzIChgdGFza3NldCAtYyAwLTUgLi9kaHJ5c3RvbmUgLXQgNiAtciA2
MDAwYCkgdG8gbGV0IGl0IHJlYWNoIHRoZQo+PiB0aHJvdHRsaW5nIHRlbXBlcmF0dXJlLiBUaGlz
IGFkZHMgZnVydGhlciBpbXByZWNpc2lvbiB0byB0aGUgYmVuY2htYXJrCj4+IG9mIGNvdXJzZSwg
YmVjYXVzZSB0aGUgZ292ZXJub3IgbWlnaHQgY2hvb3NlIHRvIHRocm90dGxlIHNvbWUgb2YgdGhl
Cj4+IGNvcmVzIHRoYXQgZG8gbm90IHBhcnRpY2lwYXRlIGluIHRoZSB0aW1lZCBiZW5jaG1hcmtp
bmcgcnVuLCBhbmQgdGh1cwo+PiBsZW5kIHNvbWUgdGhlcm1hbCBoZWFkcm9vbSB0byB0aGUgbGF0
dGVyLiBUaGF0IGRpZG4ndCBzZWVtIHRvIGhhcHBlbgo+PiBmcm9tIG15IG5ha2VkLWV5ZSBvYnNl
cnZhdGlvbiB2aWEgYHdhdGNoICJjcHVwb3dlciAtYyAwLDQsNgo+PiBmcmVxdWVuY3ktaW5mbyB8
IGdyZXAgY3VycmVudCJgLCBhbHRob3VnaCBJIGFkbWl0IHRoYXQgSSBkaWRuJ3QgcmVjb3JkCj4+
IG1vcmUgZ3JhbnVsYXIgbG9ncyBvZiBmcmVxdWVuY3kgc3RhdGVzLCBhbmQgc29tZSBxdWljayB0
cmFuc2l0aW9ucyB0bwo+PiBsb3dlciBmcmVxdWVuY2llcyBjb3VsZCBhbHNvIGhhdmUgaGFwcGVu
ZWQgb24gdGhlIG90aGVyIGNvcmVzLiBEb24ndAo+PiB0aGluayBpdCdzIGEgbWFqb3IgaW5mbHVl
bmNlIHRob3VnaCwgYmVjYXVzZSBhIHF1aWNrIHRyYW5zaXRpb24gYmFjawo+PiBhbmQgZm9ydGgg
c2hvdWxkbid0IGhhdmUgY29udHJpYnV0ZWQgbXVjaCB0byB0aGUgdGhlcm1hbCBvdXRwdXQuCj4g
Cj4gVGhhbmsgeW91IGZvciB0aGUgY2xhcmlmaWNhdGlvbiEKPiAKPiBZb3UncmUgcmlnaHQsIHRo
YXQgbWlnaHQgaGF2ZSBpbnRyb2R1Y2VkIHNvbWUgaW5hY2N1cmFjeSBpbnRvIHRoZSB0ZXN0Cj4g
cmVzdWx0cywgYW5kIGl0IGFsc28gbWFkZSB0aGUgdGVzdHMga2luZCBvZiBoYXJkbHkgcmVwZWF0
YWJsZS4gIE9uIHRoZQo+IG90aGVyIGhhbmQsIHRoYXQgd2F5IHRoZSBzeW50aGV0aWMgQ1BVIHRl
c3QgZmVlbHMgYSBiaXQgbW9yZSBsaWtlIHNvbWUKPiByZWFsLXdvcmxkIENQVSBsb2FkLCBpbiB3
aGljaCBtdWx0aXBsZSByZXNvdXJjZS1odW5ncnkgdGFza3MgdXN1YWxseQo+IGNvbXBldGUgZm9y
IHRoZSBDUFUgY29yZXMgYW5kIHRoZSB0aGVybWFsIGJ1ZGdldC4KPiAKPiBUaG91Z2gsIGFzIHdl
IGtub3cgcmVwZWF0YWJpbGl0eSBpcyB0aGUga2V5IGZvciBhIHNjaWVudGlmaWMgYXBwcm9hY2gs
Cj4gYnV0IGl0IGFsc28gdXN1YWxseSBjb250cmFkaWN0cyB3aXRoIHNpbXVsYXRpbmcgcmVhbC13
b3JsZCBsb2FkcyB0aGF0Cj4gYXJlIG9mIHJhdGhlciByYW5kb20gbmF0dXJlLiAgV2VsbCwgdGVz
dGluZyBpcyBoYXJkLiA6KQo+IAo+IEknbGwgdGhpbmsgYSBiaXQgbW9yZSBhYm91dCBhbGwgdGhp
cywgYW5kIEknbGwgY29tZSBiYWNrIHdpdGggYW4gCj4gdXBkYXRlLgo+IE1heWJlIEknbGwgYWxz
byBiZSBhYmxlIHRvIGpvaW4gdGhlIHRlc3RpbmcuCgpHb29kIG5ld3MhIDopICBUaGFua3MgdG8g
UmFkeGEsIEknbGwgYmUgYWJsZSB0byBkbyB0aGUgdGVzdGluZyBvbiBteQpzaWRlLCBwZXJoYXBz
IGluIGFib3V0IGEgd2VlayBvciB0d28uICBJZiB5b3UgYWdyZWUsIGl0IG1pZ2h0IGJlIHRoZSAK
YmVzdAp0byB3YWl0IGZvciB0aG9zZSB0ZXN0IHJlc3VsdHMgYXMgd2VsbDsgIG9mIGNvdXJzZSwg
SSdsbCBrZWVwIHRoaW5raW5nCmFib3V0IHNvbWUga2luZCBvZiBhIHRlc3Qgc3VpdGUgaW4gdGhl
IG1lYW50aW1lLCB3aGljaCB3ZSBzaG91bGQgYmUgYWJsZQp0byB1c2Ugb24gb3RoZXIgYm9hcmRz
IGFzIHdlbGwuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
