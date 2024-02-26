Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC5DCC5478C
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Feb 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eIfe4v2uQ/8Cx9gSf5uULl9Ah4O+8KLYpyEw71Pm0mQ=; b=gfSIdQnYJMyAKz5tUFdMERqAjT
	8HNSN/sSpjX3iKl8uRIeINeoaIHIkHBiyfe3UhLiiUHnxWVlZnRASu12qO6fFeHV5Fy2mX6keZIdx
	sHjw7/XVhXo204vWEmBaEFmFfOjBl8pUaAUH0GW+d0TMEnIxGXt0m90r5LiSFqdF1OdvEbPn3rYMV
	Jzxy4vJ6iG4q4bawDHSx62u6jQilOpo+o0U6OPwsQ/X8Ac1ELcHjboFh+PBYpSs7mm95nkXwPvWPF
	e9tYATphC/zJ5xd+PcVJc9IOzOd5Spn8cYKeWvTlrMYcDedL1HebCfGxJOQtuXN3DYWE1bJFMspyz
	UhVRRNiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rehdw-00000002XFZ-0xih;
	Mon, 26 Feb 2024 20:32:08 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rehdl-00000002XDx-3aQz;
	Mon, 26 Feb 2024 20:32:05 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1708979513;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TgkhkzFTn7wBSSzufZLmACRcoMW2v8xqIcKy+t/APpQ=;
	b=ebeCCNm46pYWMAGDQgJWbwV1W1KLshsDhPpoMisXIYeU6s13a1Bf7gH2L8/SzH+BCBgG8X
	c5NRnUmtYcZhR105DjnCh8LhLeC6Hb8QSpiAtXFTm05Yj6JLG0aI812v+vQ4AW9Mp+b1fl
	rukat8h10wEaX4T5LzJeN7ieYL4/+i1PkpEraYD4y4AGyXhByVTfQvPuMLjQmkm+BBVYJo
	SMIRK/kd0LjunaCJfgHyTHJat6EASwf+5+QsrQcGacnlz3OWsKlRzzIk57ns9dPedYDTAe
	ABBgOqBqPQTnfumdSHcCymlBIfgNyXxS5WrDhsDK5y99xavc7ChSRNiQlvo8/Q==
Date: Mon, 26 Feb 2024 21:31:51 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>, Quentin Schulz
 <foss+kernel@0leil.net>, Jonathan Cameron <jic23@kernel.org>, Lars-Peter
 Clausen <lars@metafoo.de>, Heiko Stuebner <heiko@sntech.de>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>, Simon Xue <xxm@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Cameron
 <Jonathan.Cameron@huawei.com>, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] iio: adc: rockchip_saradc: replace custom logic with
 devm_reset_control_get_optional_exclusive
In-Reply-To: <CAHp75Vft3kJEF9JiuEqVsS3biQ6YsuDXON_P3FOZRjtb8NaB2w@mail.gmail.com>
References: <20240223-saradcv2-chan-mask-v1-0-84b06a0f623a@theobroma-systems.com>
 <20240223-saradcv2-chan-mask-v1-3-84b06a0f623a@theobroma-systems.com>
 <CAHp75VfVTJsQDwaPoPgGiT6jnymXAR3WpETqaKai8rXAC70iLw@mail.gmail.com>
 <6f76ffab-69fe-4afb-9d7e-d3cdfe37c28c@theobroma-systems.com>
 <CAHp75Vft3kJEF9JiuEqVsS3biQ6YsuDXON_P3FOZRjtb8NaB2w@mail.gmail.com>
Message-ID: <d2a7954926e328cbf898aac0a42a6e24@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_123204_325784_75E9F1E4 
X-CRM114-Status: GOOD (  20.96  )
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

SGVsbG8gQW5keSBhbmQgUXVlbnRpbiwKCk9uIDIwMjQtMDItMjMgMTU6MzksIEFuZHkgU2hldmNo
ZW5rbyB3cm90ZToKPiBPbiBGcmksIEZlYiAyMywgMjAyNCBhdCAzOjEw4oCvUE0gUXVlbnRpbiBT
Y2h1bHoKPiA8cXVlbnRpbi5zY2h1bHpAdGhlb2Jyb21hLXN5c3RlbXMuY29tPiB3cm90ZToKPj4g
T24gMi8yMy8yNCAxNDowMCwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+PiA+IE9uIEZyaSwgRmVi
IDIzLCAyMDI0IGF0IDI6NDbigK9QTSBRdWVudGluIFNjaHVseiA8Zm9zcytrZXJuZWxAMGxlaWwu
bmV0PiB3cm90ZToKPiAKPiAuLi4KPiAKPj4gPj4gQ2M6IFF1ZW50aW4gU2NodWx6IDxmb3NzK2tl
cm5lbEAwbGVpbC5uZXQ+Cj4+ID4KPj4gPiBZb3UgbWF5IHVzZSB0aGUgLS1jYyBvcHRpb24gdG8g
YGdpdCBzZW5kLWVtYWlsYCBpbnN0ZWFkIG9mIHBvbGx1dGluZwo+PiA+IGNvbW1pdCBtZXNzYWdl
cywgb3IgbW92ZSB0aGlzIGFmdGVyIHRoZSAnLS0tJyBjdXR0ZXIgbGluZS4KPj4gCj4+IFRoZSB3
aG9sZSBwb2ludCBpcyB0aGF0IG15IFNvQiBhbmQgYXV0aG9yc2hpcCBpcyBmcm9tIG15IHByb2Zl
c3Npb25hbAo+PiBtYWlsIGFkZHJlc3Mgd2hpY2ggaXMgbGlrZWx5IHRvIGNoYW5nZSBvdmVyIHRp
bWUsIHRoZSBDYyBpcyBteSAKPj4gcGVyc29uYWwKPj4gb25lIGZvciBkZXZlbG9wbWVudC4gQmFz
aWNhbGx5LCBpbiB0aGUgZXZlbnQgdGhhdCBJIGNoYW5nZSBteSAKPj4gZW1wbG95ZXIsCj4+IEkg
d291bGQgc3RpbGwgYmUgcmVhY2hhYmxlIGF0IHRoYXQgQ2MgYWRkcmVzcyB3aXRob3V0IGhhdmlu
ZyB0byBtb2RpZnkKPj4gdGhlIC5tYWlsbWFwIGFmdGVyIHRoZSBmYWN0ICh3aGljaCB3b24ndCBt
YWtlIGl0IHRvIGFuIGVhcmxpZXIgdmVyc2lvbgo+PiBvZiB0aGUga2VybmVsIGZvciBleGFtcGxl
KS4gU29tZSBtYWludGFpbmVycyBkb24ndCByZWFsbHkgbGlrZSB0aGlzLAo+PiBzb21lIGRvbid0
IG1pbmQsIHdlJ2xsIHNlZSBpbiB3aGljaCBjYXRlZ29yeSB0aGUgSUlPIG1haW50YWluZXIocykg
Cj4+IGZhbGwKPj4gaW4gOikgKEkgZG9uJ3QgbWluZCBlaXRoZXIgd2F5IGp1c3QgdG8gYmUgY2xl
YXIpLgo+IAo+IE15IHBvaW50IGlzIHRoYXQgQ2MgYW5kIG90aGVyIHNpbWlsYXIgKG5vbi1yZWFs
LXRhZ3MpIHN0dWZmIGlzCj4gcG9sbHV0aW5nIGNvbW1pdCBtZXNzYWdlcy4gSXQgbWVhbnMgdGhh
dCB0aGlzIHdpbGwgYmUgY29waWVkIHRvIHRoZQo+IEdpdCBpbmRleCB0byBhbGwga2VybmVsIGdp
dCByZXBvc2l0b3JpZXMgaW4gdGhlIHdvcmxkIGZyb20gbm93IGFuZAo+IHRoZW4sIFRoaXMgaXMg
YXQgYmFyZSBtaW5pbXVtIG1ha2VzIGFkZGl0aW9uYWwgYnVyZGVuIG9uIGdpdCBsb2cgKGFuZAo+
IHBhcnNpbmcgYW5kIHNvIG9uKSBhbmQgbW9yZW92ZXIsIHdhc3RlcyByZXNvdXJjZXMgYmVjb21p
bmcgbGVzcwo+IGVudmlyb25tZW50IGZyaWVuZGx5IChubyBqb2tlcykuIFVzaW5nIC0tY2Mgb3Ig
bW92aW5nIHRvIHRoZSBiZWhpbmQKPiB0aGUgY29tbWl0IG1lc3NhZ2Ugd2lsbCBrZWVwIGVtYWls
IGNvcGllZCB3aXRoIGNsZWFuZXIgY29tbWl0Cj4gbWVzc2FnZXMuIFlldCwgYWxsIGVtYWlsIHRh
Z3MgYXJlIGF2YWlsYWJsZSBpbiBsb3JlIGFyY2hpdmUKPiAobG9yZS5rZXJuZWwub3JnKS4gUGxl
YXNlLCByZWFsbHkgcmVjb25zaWRlciB0aGUgY29tbWl0IG1lc3NhZ2VzCj4gY29udGVudCBpbiB0
aGUgTGludXgga2VybmVsIHByb2plY3QgYW5kIGVsc2V3aGVyZSwgaXQgd2lsbCBoZWxwIHRvCj4g
bWFrZSB0aGUgd29ybGQgbW9yZSBmcmllbmRseS4KCkJlbGlldmUgaXQgb3Igbm90LCBJJ20gd29y
a2luZyBvbiBzb21lIHBhdGNoZXMgZm9yIEdpdCB0aGF0LCBJIGJlbGlldmUsCnNob3VsZCBoZWxw
IGEgbG90IHdoZW4gaXQgY29tZXMgdG8gaGFuZGxpbmcgQ2M6IGFkZHJlc3Nlcy4gIFdvdWxkIHlv
dQpsaWtlIHRvIGJlIGluY2x1ZGVkIGluIHRoZSBsaXN0IG9mIHJlY2lwaWVudHMgZm9yIHRob3Nl
IEdpdCBwYXRjaGVzLCBzbwp5b3UgY291bGQsIGhvcGVmdWxseSwgcHJvdmlkZSBzb21lIGZlZWJh
Y2s/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
