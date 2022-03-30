Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A071C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 23:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iUkFR9jGjuwc1J9SH2YTGZvMcch1Sq74L/sFTVSNP5o=; b=wywOOTVnVEl6kF
	K3T3+KH+Ya5Z9auyyBaYPaBce53FpClyb5PEfYmRy08mQFsF8mB95026KiSyQAIbevKuLeHc8cRbW
	Ls3d2jYJY3ZXkGrrCL7HqsFVF6lJJRZkvSWAB1fDoibZypAleY41v9gR5s/d5tzSpPkCrW4KggGrC
	qCMlD1+a1D/Y+UyU3C0HEariMhCVrTHHDZ1Ir6XF9f3OAY8VpLQV4jFJ98yLjNStJiJd5UWqJFI3R
	SFqxY5WV0Jo48M0tN5nz+ySi4w7Q4BEgTTMwrlkwwZVLcPmoG6IFhACL4KyLZDuPuBDDL8DXlVvor
	CeA7YFkvH06b934PeDzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZhyJ-00076F-EJ; Wed, 30 Mar 2022 23:43:27 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZhyF-00075X-Fh
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 23:43:25 +0000
Received: by mail-ej1-x62f.google.com with SMTP id j15so44564609eje.9
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Mar 2022 16:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iREdRJSlGkex49OSzIjV0KsFYd3jZkgqeIW8XLnqJVg=;
 b=v3+DvT6MCRwfRE2AsrD6YG1zSiTxbEnxL6aEqZFU/4zqeuCy5A6lE4iTeY+xbiG8I5
 x5sI51qPvKIaTNBzbsgmeiUriNZA6Kn1CbUpdVh6K0ARyes4hEwCSxnpaTpGQo8CsY8I
 68ayLJPCkYZ1TBvBlm8Jy3i/0yq4T7lOHGm4oaGQB57zlbrm14e6zjQ30W4QWlJ1na8B
 yluIPxS3F2ANatES130GX7cIUfWGFbkaMSpvwt/xt4mBXmWxaWn0vCtU6Y9ontlzRgGK
 MnvGuNkZ8A4FkSalHvCMKXkPXM6NSnLvgCAUZybrfmU2m0axLV54Da5AyNWnee/FFq0D
 RkmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iREdRJSlGkex49OSzIjV0KsFYd3jZkgqeIW8XLnqJVg=;
 b=SD47KGP/lCkQzIYvWIiGdn7D9AvCIo/wOMGm80klqd6wJSXgMSvLyJg7EA6/Y8YEk5
 q3egwHZJxLcrUozSrfDJNDv1n57eeAMiCH5smgsPFiU8oGwbT6JJ8lKTM0UsCJLBJAM7
 424SuzMYsL9dS9Ta9GcweSpzPJKhsHkT5QisrdGo2op67OhEELfts5oomm3NTVQ56Aht
 C3JdWmlw7HyMRcHMY0ZqDrusl04PMiaLgnhhPXswY10mBlisteNcfgKLolm5doAT8oU4
 d04W18HZ4COedp1368WqiGBaXwHq1V3HISaIqcGCfWprmYG13sNJRg0nMyMj4O9n3ffx
 iPrw==
X-Gm-Message-State: AOAM5308pl6ObPOVrq5C4C9qlmg6f7qhZ5l4SzIRh0koivqd+nLxAjSm
 WuQqkpwhLlnRHz56K1eImV0BbfVSD6eKRX/FPBXiaQ==
X-Google-Smtp-Source: ABdhPJxy8IQdc1GvtVhMWnjfsuJqWeXYQSzpSc7eTZXkFj106tgToJ42geM6ymErC4zrL4G/l3YiOH/g+QiNb7AA6bE=
X-Received: by 2002:a17:907:168a:b0:6da:9177:9fdd with SMTP id
 hc10-20020a170907168a00b006da91779fddmr2232289ejc.757.1648683800778; Wed, 30
 Mar 2022 16:43:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-23-nicolas.dufresne@collabora.com>
 <20220330075913.wfl3prsyw5fvsv4t@basti-XPS-13-9310>
 <4740735d92c0dac3708aa922b3d73db7a61fbdda.camel@collabora.com>
In-Reply-To: <4740735d92c0dac3708aa922b3d73db7a61fbdda.camel@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Wed, 30 Mar 2022 20:43:08 -0300
Message-ID: <CAAEAJfCH+m7mzU2EHkyxdKiNs7p=qfSfnvDzS+hLOftFE=n9CA@mail.gmail.com>
Subject: Re: [PATCH v1 22/24] media: hantro: h264: Make dpb entry management
 more robust
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Sebastian Fricke <sebastian.fricke@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Collabora Kernel ML <kernel@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, 
 linux-media <linux-media@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_164323_773858_443E695F 
X-CRM114-Status: GOOD (  33.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gV2VkLCBNYXIgMzAsIDIwMjIgYXQgMTI6MTYgUE0gTmljb2xhcyBEdWZyZXNuZQo8bmljb2xh
cy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IExlIG1lcmNyZWRpIDMwIG1hcnMg
MjAyMiDDoCAwOTo1OSArMDIwMCwgU2ViYXN0aWFuIEZyaWNrZSBhIMOpY3JpdCA6Cj4gPiBIZXkg
Tmljb2xhcywKPiA+Cj4gPiBPbiAyOC4wMy4yMDIyIDE1OjU5LCBOaWNvbGFzIER1ZnJlc25lIHdy
b3RlOgo+ID4gPiBGcm9tOiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+Cj4gPiA+Cj4g
PiA+IFRoZSBkcml2ZXIgbWFpbnRhaW5zIHN0YWJsZSBzbG90IGxvY2F0aW9uIGZvciByZWZlcmVu
Y2UgcGljdHVyZXMuIFRoaXMKPiA+Cj4gPiBzL3Nsb3QgbG9jYXRpb24vc2xvdCBsb2NhdGlvbnMv
Cj4gPgo+ID4gPiBjaGFuZ2UgbWFrZXMgdGhlIGNvZGUgbW9yZSByb2J1c3QgYnkgdXNpbmcgdGhl
IHJlZmVyZW5jZV90cyBhcyBrZXkgYW5kCj4gPiA+IGJ5IG1hcmtpbmcgYWxsIGVudHJpZXMgaW52
YWxpZCByaWdodCBmcm9tIHRoZSBzdGFydC4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9u
YXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFz
IER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cj4gPiA+IC0tLQo+ID4g
PiBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19oMjY0LmMgfCAxMCArKysrLS0t
LS0tCj4gPiA+IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0p
Cj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hh
bnRyb19oMjY0LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19oMjY0LmMK
PiA+ID4gaW5kZXggMjI4NjI5ZmIzY2RmLi43Mzc3ZmMyNmY3ODAgMTAwNjQ0Cj4gPiA+IC0tLSBh
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2gyNjQuYwo+ID4gPiArKysgYi9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19oMjY0LmMKPiA+ID4gQEAgLTI1OCw4
ICsyNTgsNyBAQCBzdGF0aWMgdm9pZCBwcmVwYXJlX3RhYmxlKHN0cnVjdCBoYW50cm9fY3R4ICpj
dHgpCj4gPiA+IHN0YXRpYyBib29sIGRwYl9lbnRyeV9tYXRjaChjb25zdCBzdHJ1Y3QgdjRsMl9o
MjY0X2RwYl9lbnRyeSAqYSwKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3Ry
dWN0IHY0bDJfaDI2NF9kcGJfZW50cnkgKmIpCj4gPiA+IHsKPiA+ID4gLSAgIHJldHVybiBhLT50
b3BfZmllbGRfb3JkZXJfY250ID09IGItPnRvcF9maWVsZF9vcmRlcl9jbnQgJiYKPiA+ID4gLSAg
ICAgICAgICBhLT5ib3R0b21fZmllbGRfb3JkZXJfY250ID09IGItPmJvdHRvbV9maWVsZF9vcmRl
cl9jbnQ7Cj4gPiA+ICsgICByZXR1cm4gYS0+cmVmZXJlbmNlX3RzID09IGItPnJlZmVyZW5jZV90
czsKPiA+ID4gfQo+ID4gPgo+ID4gPiBzdGF0aWMgdm9pZCB1cGRhdGVfZHBiKHN0cnVjdCBoYW50
cm9fY3R4ICpjdHgpCj4gPiA+IEBAIC0yNzMsMTMgKzI3MiwxMyBAQCBzdGF0aWMgdm9pZCB1cGRh
dGVfZHBiKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4gPiA+Cj4gPiA+ICAgICAvKiBEaXNhYmxl
IGFsbCBlbnRyaWVzIGJ5IGRlZmF1bHQuICovCj4gPiA+ICAgICBmb3IgKGkgPSAwOyBpIDwgQVJS
QVlfU0laRShjdHgtPmgyNjRfZGVjLmRwYik7IGkrKykKPiA+ID4gLSAgICAgICAgICAgY3R4LT5o
MjY0X2RlYy5kcGJbaV0uZmxhZ3MgJj0gflY0TDJfSDI2NF9EUEJfRU5UUllfRkxBR19BQ1RJVkU7
Cj4gPiA+ICsgICAgICAgICAgIGN0eC0+aDI2NF9kZWMuZHBiW2ldLmZsYWdzID0gMDsKPiA+Cj4g
PiBFaG0gLi4uIHdlIGp1c3QgcmVtb3ZlIGFsbCBmbGFncz8gQ2FuJ3QgdGhpcyBoYXZlIGFueSB1
bndhbnRlZCBzaWRlCj4gPiBlZmZlY3RzIGxpa2UgcmVtb3ZpbmcgYSBmbGFnIHRoYXQgd2UgYWN0
dWFsbHkgd2FudGVkIHRvIGtlZXA/Cj4gPiAoTGlrZSBsb25nIHRlcm0gb3IgdGhlIGZpZWxkIGZs
YWdzPykKPgo+IFRoaXMgaXMgYSBsb2NhbCBjb3B5IG9mIHRoZSBkcGIsIHRoZSBEUEIgaXMgZnVs
bHkgcGFzc2VkIGZvciBldmVyeSBkZWNvZGUuIFNvCj4gdGhlc2UgZmxhZ3Mgd2lsbCBiZSBmdWxs
eSByZXN0b3JlZCBsb3dlciB3aGVuIHdlIGNvcHkgdGhlIGZvdW5kIGVudHJ5LiBJbiBmYWN0LAo+
IGhvbGRpbmcgYSBzdGF0ZSBoZXJlIHdvdWxkIG5vdCByZXByZXNlbnQgd2VsbCB0aGUgdXNlcmxh
bmQgaW50ZW50aW9uIGFuZCBjYW4KPiBoYXZlIG5lZ2F0aXZlIHNpZGUgZWZmZWN0IG9uIHRoZSBk
ZWNvZGluZy4gRmxhZ3MgYXJlIG5vdCBpbW11dGFibGUgYmV0d2Vlbgo+IGRlY29kZSBhbmQgY2Fu
IGNoYW5nZS4gVGhpcyBzaW1wbGlmeSB0aGUgY29kZSwgYW5kIG1ha2UgdGhpbmdzIGxlc3MgZXJy
b3IgcHJvbmUuCj4gVGhpcyBwYXJ0IG9mIHRoZSBjb2RlIGlzIGFscmVhZHkgYSBiaXQgY29tcGxl
eCwgbm8gbmVlZCBmb3IgYW4gZXh0cmEgbGF5ZXIuCj4KPiA+IElmIHdlIGp1c3Qgd2FudCB0byBz
ZXQgdGhlIERQQiBlbnRyeSBpbmFjdGl2ZSwgdGhlbiByZW1vdmluZyB0aGUgQUNUSVZFCj4gPiBm
bGFnIHNlZW1zIGxpa2UgdGhlIGNvcnJlY3QgYXBwcm9hY2ggdG8gbWUuCj4gPiBJZiB3ZSB3YW50
IHRvIGdldCByaWQgb2YgdGhlIFZBTElEIGZsYWcgYXMgd2VsbCwgdGhlbiB3ZSBjb3VsZCBqdXN0
IGRvOgo+ID4gICAgICAgICAgICAgICBjdHgtPmgyNjRfZGVjLmRwYltpXS5mbGFncyAmPQo+ID4g
ICAgICAgIH4oVjRMMl9IMjY0X0RQQl9FTlRSWV9GTEFHX0FDVElWRSB8IFY0TDJfSDI2NF9EUEJf
RU5UUllfRkxBR19WQUxJRCk7Cj4gPgo+ID4gSW4gY2FzZSB3ZSByZWFsbHkgd2FudCB0byByZXNl
dCBhbGwgZmxhZ3MsIEknZCBzYXkgYWRqdXN0IHRoZSBjb21tZW50Cj4gPiBhYm92ZSBpdDoKPiA+
IGBgYAo+ID4gLSAgICAgLyogRGlzYWJsZSBhbGwgZW50cmllcyBieSBkZWZhdWx0LiAqLwo+ID4g
KyAgICAgLyogUmVzZXQgdGhlIGZsYWdzIGZvciBhbGwgZW50cmllcyBieSBkZWZhdWx0LiAqLwo+
ID4gYGBgCj4KPiBUaGlzIHJlYWRzIHRoZSBzYW1lIHRvIG1lLCBidXQgSSBjYW4gZG8gdGhhdCB5
ZXMuIHVuZGVyc3RhbmQgdGhhdCBWQUxJRCBtZWFucwo+IHRoZSByZWZlcmVuY2UgZXhpc3QgYW5k
IHRoZSBUUyBzaG91bGQgcG9pbnQgdG8gc29tZSBleGlzdGluZyBwYXN0IHJlZmVyZW5jZQo+ICh1
bmxlc3MgdGhlcmUgd2FzIHNvbWUgZGVjb2RlIGVycm9yLCB3aGljaCB0aGUgdXNlcmxhbmQgbWF5
IG5vdCBiZSBhd2FyZSB5ZXQgYXMKPiB0aGlzIGlzIGFzeW5jaHJvbm91cykuIFdoaWxlIEFDVElW
RSBtZWFucyB0aGF0IGl0IGlzIHVzZWQgYXMgYSByZWZlcmVuY2UuIEZGTVBFRwo+IGlzIGtub3du
IG5vdCB0byBmaWx0ZXIgaW5hY3RpdmUgcmVmZXJlbmNlcy4gQUNUSVZFIGlzIGp1c3QgYSBmbGFn
IHdpdGhvdXQgYnVuY2gKPiBvZiBvdGhlciBmbGFncyB0aGF0IGNhbiBjaGFuZ2UgZm9yIGV2ZXJ5
IGRlY29kZS4gU28gbm9uZSBvZiB0aGlzIG1ha2Ugc2Vuc2UKPiBiZXR3ZWVuIDIgZGVjb2Rlcy4K
PgoKUGxlYXNlIGxlYXZlIHRoZSBjb21tZW50IGFzLWlzLCAnRGlzYWJsZSBhbGwgZW50cmllcycg
aXMgcmVhZGFibGUuCgpBcyBtdWNoIGFzIEknZCBsb3ZlIHRvIGhhdmUgdmVyeSBjbGVhciBjb21t
ZW50cyBldmVyeXdoZXJlLAp3ZSBoYXZlIHRvIGFjY2VwdCB0aGF0IG9ubHkgcGVvcGxlIHdpdGgg
aW5zaWdodCBvbiBjb2RlYyBkZXRhaWxzCmFyZSBleHBlY3RlZCB0byBtYWtlIHNlbnNlIG9mIGRy
aXZlciBkZXRhaWxzIDotKQoKVGhhbmtzLApFemVxdWllbAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
