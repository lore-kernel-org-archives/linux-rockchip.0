Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF56AC43327
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 08:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4E6ke3l+jIPxZ70xoB30VCx07NH3UdOK4eqgVEjgNs=; b=3q7pNliGv7odgX
	MkQFoaWbO6TJhWeARo+RuUsPG3ZzF6cHji9Cpe6uFfhXQEAR2GskEJyIqoZplxsmDralaSvgcrfmB
	3TCVC6LrE4K8woTgI6bSrQK3WZ5VM3T+RgUgqJee4Uip+ghpK1vGadmoSmAozzGsKVJWDqOX+uBKr
	/rQLBAQPrw2Jead0dzz+RLGsNy8FDXMuTSABZXQChx8vCZcS0HiruqX4rSLSOB2Xs9r06ZORcfFEm
	UcPy/BylKDANeHvpct2EfInV9AfKUvio/QavKSyZ8g72eiu0HtWl0+YUu2AwjLITlQfHtxe6MiiW4
	CKWhQDSTstNykpakLN2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7iv-0000000E2ek-34ro;
	Mon, 29 Jun 2026 08:52:13 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7it-0000000E2du-0niJ
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jun 2026 08:52:12 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-80bb41f7f3cso27910897b3.2
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Jun 2026 01:52:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782723130; cv=none;
        d=google.com; s=arc-20260327;
        b=K79btfJJU6btli5bYvGTAQss71VCvzuWA/EBil31CCpOkHUb89h23p8bZrkUlfVUqF
         Q4d4XRFeeA7ZzKpXUrzRdNRS6urcWaWjOa5tChAOSw1qUNS9eTOMVi71Mz5XzYms+Qby
         l6Bg+ghUaDGGmbFW6sehwyijOL2fauV0T0RAskkgWrwajpnV8Ww/gUQBnaBLTWzwBjn1
         omtdaoN63/bhCNDO0RIhrZF6NVmlwTUJUfy9sfr/IpMy5M7cYfE55jt7GMXIlkxhqTeo
         7eKMKoUZp/QYgK7hz9+LNgjErJEtkMXdH1bb0qrh0rBx6fOCNnzlrQAQEKREGzE+DUbN
         MU+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=Q24aG9NkOoTB6HWBhLb/xRPsEmPyRkg3AgUHCrzNw7g=;
        fh=y9Yq/VAmy3nGsfki+AFqZicH16IGlXKcmprqStEaKkE=;
        b=rVjtLg6gdsKQJL5FuBG3Nxpf4/fsqimANwmuEp1WgKv+4NXCdtq7aCm4XahPKUfQ6k
         iNv/JXm/YE2tQqPVTK1n42ylY1vwLegd9le6iOFGGgEXhTyYgDnCk5IgjTrGSl7XWnKQ
         jwwUPnm3YrER/AGjiSuMP2gUYfisU/sPub65kdtoSmJ5jn3bKuPtohwsQHKx7iNmmgQT
         CK7g3w5brVQUI474Xnkmd0m5gdG0fhYuJy4Y1OFUkMmC6mStVw5XICDqvHzNTPvHbvxe
         wLI6tJq1lGF/Dd9NpE2fWe38xo9jdO4lol2VKk3zDCCLxHfUao1QZ1UtZfn7eHnEKBCd
         EIVg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782723130; x=1783327930; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Q24aG9NkOoTB6HWBhLb/xRPsEmPyRkg3AgUHCrzNw7g=;
        b=ZPFt5i8ulZ+Txrvxl3VtNeSIOtPA62cr3yZRX9q/n1k8okCimnO37QjpCZqGalo0Jw
         7lOX5la0LoKfTGEGKVUl2r1VO0qZAQF1R5fIUj+xV/cb1E6yehtULTksZ6IFWi2pKjLz
         HsG4TCcAhT58EHr9TUYX9t9TsfsAmNnOH3ahf4EbOcgOa0TX5Qop1l/DaGg/K74Q+sDc
         zgVehV5nHpbgu2Xjg32HQ05eafL0Cy0EGhEJitFmoJXv5LEhfNVoCVy2TzvVHpTvYTfu
         PbrGiWoEJL0rTM0k0f8+2C6WX2iX1WpTNkI3QWCiWz2vZj/LnqFhcFncDYl/yovpCFGH
         sigg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782723130; x=1783327930;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q24aG9NkOoTB6HWBhLb/xRPsEmPyRkg3AgUHCrzNw7g=;
        b=hYfbNCMtUtV+cyS6jIaSki5N2rnIlCuPBSbUAkVGQUhJbW6vIR7kBS8VGnlSliIBpK
         Be0HXpg/bJ+kFEcYJ/hcnvw6ct0G7+OnPsbfOLTnavC/VhXYmFUl5080LtWYmJuuSo0M
         YrriI0GD1TpHDx7BTdApK/iK2X/y68RzWsUyWq5Z7D7+7YDxhWAwTD3vfE0LRrVkZjmh
         y3AN675mwB+I56q768nqILqcOgw2s7NBBVAAPfyJqXMAU4Aus72WFznBRXbOecH7My0X
         mKEQpRYTA06KX0Y7ghkRFOj4fhu85SZyo4XwRgpVd7uG8dNAk4/xhTIEbO5aAWE41mrs
         XSVQ==
X-Forwarded-Encrypted: i=1; AHgh+Rq2HPzGB7xXWIyfAcmnj0YJbC1Pd1GHs02aBNyVkq3CRL6mXdhp2y+8gEyyDSu/54CDuwjcQFaxYSTHsbfWOw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzGboC1OrRDcih/bJQBcd1OP6sYxY7MjKJWC+IKwvsg6d3zA7w9
	AziRP0L8OS7XX7ornYKjcFYLiPrFTMhrsd/mn7Iwzu5nJ6UOdZs4eoJcCVQ7eToRC0qGUO0fZiz
	cifK4EU9CKOFMouOPxIDM8O5CvYjLEb4=
X-Gm-Gg: AfdE7cmusluzE6mPbbFJ8ElD1UDuCyHv9iycDTAgD/XH/Vvj0NcUVmZdXNUlw071UsF
	UC8L7ibyL0JFZxbYg3bYAyYdXrKMXT+btMT+Aqb5D/4UamItjoP9IKXHHAmmZA/dFS6NPdEYNr0
	5/E54mRyr341Pvi/k4Tz0ljTk69SiAJLGkOKR6oQ6ApBXQkXTLpZuJXp6XItnAvIYDOXASj40qX
	bOK7XszkGZk/DkfEsnlD0YagDGePudcMEbDmaAVVVK8k0EhUAdQhzvO6SzvyEor1RPvI/dC34pv
	t3gpoT/WQpEcROCmVctShZunvlTk
X-Received: by 2002:a05:690c:4d46:b0:80c:85e5:873f with SMTP id
 00721157ae682-80c85e58a3cmr91884837b3.61.1782723129982; Mon, 29 Jun 2026
 01:52:09 -0700 (PDT)
MIME-Version: 1.0
References: <aj5neetgYdu0QpcK@GRAPHRT> <20260629094419.6bb56d99@fedora-2.home> <CABPQNSa0-wqQTm0CzLFojWZLVY5OqQxWTXrpO=O4p8go52808Q@mail.gmail.com>
In-Reply-To: <CABPQNSa0-wqQTm0CzLFojWZLVY5OqQxWTXrpO=O4p8go52808Q@mail.gmail.com>
From: Erik Faye-Lund <kusmabite@gmail.com>
Date: Mon, 29 Jun 2026 10:51:32 +0200
X-Gm-Features: AVVi8Cf5m_RZPXcC8e-k50YPGdbuE1-CSqK1ujQU-qXEgiBfhg_pV5oHfBEqMOA
Message-ID: <CABPQNSbwC=VtjjQiDd6B9ExT4GhgJOGUu-_tTeZ8TvgqDDbqKQ@mail.gmail.com>
Subject: Re: [BUG] drm/panthor: intermittent freezes in Xorg xserver
To: Boris Brezillon <boris.brezillon@collabora.com>
Cc: Marius Dinu <m95d+git@psihoexpert.ro>, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, Steven Price <steven.price@arm.com>, 
	Liviu Dudau <liviu.dudau@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_015211_242225_65397CF0 
X-CRM114-Status: GOOD (  21.41  )
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
Reply-To: kusmabite@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

U2lsbHkgbWUsIEkgZm9yZ290IHRvIGRpc2FibGUgSFRNTCBlbWFpbCwgc28gdGhpcyBvbmUgYm91
bmNlZCBmb3IKc29tZSwgcmVzZW5kaW5nLiBTb3JyeSBhYm91dCB0aGUgZHVwbGljYXRlLgoKSSB3
b25kZXIgaWYgeW91J3JlIGV4cGVyaWVuY2luZyB0aGUgc2FtZSBpc3N1ZSBhcyB0aGlzPwoKaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL21lc2EvbWVzYS8tL3dvcmtfaXRlbXMvMTUxMTYK
CgpPbiBNb24sIEp1biAyOSwgMjAyNiBhdCAxMDozMeKAr0FNIEVyaWsgRmF5ZS1MdW5kIDxrdXNt
YWJpdGVAZ21haWwuY29tPiB3cm90ZToKPgo+IEkgd29uZGVyIGlmIHlvdSdyZSBleHBlcmllbmNp
bmcgdGhlIHNhbWUgaXNzdWUgYXMgdGhpcz8KPgo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9tZXNhL21lc2EvLS93b3JrX2l0ZW1zLzE1MTE2Cj4KPiBPbiBNb24sIEp1biAyOSwgMjAy
NiBhdCAxMDoyNOKAr0FNIEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9y
YS5jb20+IHdyb3RlOgo+Pgo+PiBPbiBGcmksIDI2IEp1biAyMDI2IDE0OjUwOjE3ICswMzAwCj4+
IE1hcml1cyBEaW51IDxtOTVkK2dpdEBwc2lob2V4cGVydC5ybz4gd3JvdGU6Cj4+Cj4+ID4gSGku
Cj4+ID4KPj4gPiBUaGUgc3lzdGVtIGlzIFJhZHhhIFJvY2sgNSBJVFgsIFJLMzU4OCwgMzJHQiBS
QU0sCj4+ID4gbWFpbmxpbmUga2VybmVsIHY3LjEuMCB3aXRoIHBhbnRob3IgZHJpdmVyLCBtZXNh
IDI2LjAuNyB3aXRoIHBhbmZyb3N0IGRyaXZlciwKPj4gPiB4b3JnLXNlcnZlciB2MjEuMS4yMiBh
Y2NlbGVyYXRlZCBieSBtb2Rlc2V0dGluZyBkcml2ZXIsIHgxMXBlcmYgdjEuNy4wLgo+Pgo+PiBB
cmUgd2Ugc3VyZSB0aGF0J3MgYSBwYW50aG9yIGlzc3VlPyBBbHNvLCBpcyB0aGlzIGEgcmVncmVz
c2lvbgo+PiBpbnRyb2R1Y2VkIGJ5IHRoZSBsYXRlc3Qga2VybmVsIHZlcnNpb24sIG9yIGhhcyBp
dCBiZWVuIGxpa2UgdGhhdCBmcm9tCj4+IHRoZSBzdGFydD8KPj4KPj4gQWxzbywgd291bGQgeW91
IG1pbmQgb3BlbmluZyBhbiBpc3N1ZSBvbiBbMV0/Cj4+Cj4+ID4KPj4gPiBUaGUgbW9zdCBjbGVh
biB3YXkgdG8gcmVwcm9kdWNlIHRoaXMgYnVnOgo+PiA+IEZvcm0gYSBjb25zb2xlIG9yIHNzaCBz
ZXNzaW9uLCBzdGFydCBYb3JnIGluIGJhY2tncm91bmQsIHdpdGhvdXQgYSB3aW5kb3cKPj4gPiBt
YW5hZ2VyLCBhbmQgdGhlbiBydW4geDExcGVyZiBvbiB0aGF0IGRpc3BsYXkuCj4+ID4KPj4gPiBY
b3JnIDowICYKPj4gPiB4MTFwZXJmIC1hbGwgLWRpc3BsYXkgOjAKPj4gPgo+PiA+IFRoZSBidWc6
IHdlaXJkIGludGVybWl0dGVudCBwZXJmb3JtYW5jZSBpc3N1ZXMgaW4gc29tZSBvZiB0aGUgdGVz
dHMuCj4+ID4gRXhhbXBsZXM6Cj4+ID4KPj4gPiAgICAgMTAwMCByZXBzIEAgIDE4LjA3OTkgbXNl
YyAoICAgIDU1LjMvc2VjKTogMTB4MTAgcmVjdGFuZ2xlIG91dGxpbmUKPj4gPiAgICAgMTAwMCBy
ZXBzIEAgIDE4LjA3OTEgbXNlYyAoICAgIDU1LjMvc2VjKTogMTB4MTAgcmVjdGFuZ2xlIG91dGxp
bmUKPj4gPiAgICAgMTAwMCByZXBzIEAgIDE4LjA3OTAgbXNlYyAoICAgIDU1LjMvc2VjKTogMTB4
MTAgcmVjdGFuZ2xlIG91dGxpbmUKPj4gPiAgICAgMTAwMCByZXBzIEAgIDE4LjA3ODkgbXNlYyAo
ICAgIDU1LjMvc2VjKTogMTB4MTAgcmVjdGFuZ2xlIG91dGxpbmUKPj4gPiAgICAgMTAwMCByZXBz
IEAgICAwLjAyODcgbXNlYyAoIDM0ODAwLjAvc2VjKTogMTB4MTAgcmVjdGFuZ2xlIG91dGxpbmUK
Pj4gPiAgICAgNTAwMCB0cmVwIEAgIDE0LjQ2OTEgbXNlYyAoICAgIDY5LjEvc2VjKTogMTB4MTAg
cmVjdGFuZ2xlIG91dGxpbmUKPj4gPgo+PiA+ICA1MDAwMDAwIHJlcHMgQCAgIDAuMDAyOSBtc2Vj
ICgzNDUwMDAuMC9zZWMpOiAxLXBpeGVsIHNvbGlkIGNpcmNsZQo+PiA+ICA1MDAwMDAwIHJlcHMg
QCAgIDAuMDAwOSBtc2VjICgxMTAwMDAwLjAvc2VjKTogMS1waXhlbCBzb2xpZCBjaXJjbGUKPj4g
PiAgNTAwMDAwMCByZXBzIEAgICAwLjAwMTIgbXNlYyAoODE4MDAwLjAvc2VjKTogMS1waXhlbCBz
b2xpZCBjaXJjbGUKPj4gPiAgNTAwMDAwMCByZXBzIEAgICAwLjAwMDAgbXNlYyAoMjA5MDAwMDAu
MC9zZWMpOiAxLXBpeGVsIHNvbGlkIGNpcmNsZQo+PiA+ICA1MDAwMDAwIHJlcHMgQCAgIDAuMDAw
MCBtc2VjICgzMjMwMDAwMC4wL3NlYyk6IDEtcGl4ZWwgc29saWQgY2lyY2xlCj4+ID4gMjUwMDAw
MDAgdHJlcCBAICAgMC4wMDEwIG1zZWMgKDk3OTAwMC4wL3NlYyk6IDEtcGl4ZWwgc29saWQgY2ly
Y2xlCj4+ID4KPj4gPiAgICAgMTAwMCByZXBzIEAgIDMxLjY2MDcgbXNlYyAoICAgIDMxLjYvc2Vj
KTogRmlsbCAxMHgxMCB0cmFwZXpvaWQKPj4gPiAgICAgMTAwMCByZXBzIEAgIDE2LjkwMTIgbXNl
YyAoICAgIDU5LjIvc2VjKTogRmlsbCAxMHgxMCB0cmFwZXpvaWQKPj4gPiAgICAgMTAwMCByZXBz
IEAgICAwLjAyMzQgbXNlYyAoIDQyNzAwLjAvc2VjKTogRmlsbCAxMHgxMCB0cmFwZXpvaWQKPj4g
PiAgICAgMTAwMCByZXBzIEAgICAwLjAyNzIgbXNlYyAoIDM2NzAwLjAvc2VjKTogRmlsbCAxMHgx
MCB0cmFwZXpvaWQKPj4gPiAgICAgMTAwMCByZXBzIEAgIDMyLjEyNjggbXNlYyAoICAgIDMxLjEv
c2VjKTogRmlsbCAxMHgxMCB0cmFwZXpvaWQKPj4gPiAgICAgNTAwMCB0cmVwIEAgIDE2LjE0Nzkg
bXNlYyAoICAgIDYxLjkvc2VjKTogRmlsbCAxMHgxMCB0cmFwZXpvaWQKPj4gPgo+PiA+IFRoZXJl
IGFyZSBubyBtZXNzYWdlcyBpbiBrZXJuZWwgbG9nIG9yIFhvcmcgbG9nLgo+PiA+Cj4+ID4gVmlz
dWFsbHksIG1vc3Qgb2YgdGhlIHRlc3RzIHJ1bnMgZmFzdCBhcyBleHBlY3RlZCwgYnV0IGluIHNv
bWUgb2YgdGhlIHRlc3RzCj4+ID4gaXQgZ2V0cyAic3R1Y2siIHJhbmRvbWx5LiBUaGUgdGVzdCBz
dWRkZW5seSBmcmVlemVzIHdoaWxlIGRyYXdpbmcgdGhlIHBhdHRlcm4uCj4+ID4gVGhlbiwgYWZ0
ZXIgYSB3aGlsZSAoYSBmZXcgc2Vjb25kcyB1cCB0byBhIGNvdXBsZSBvZiBtaW51dGVzKSwgaXQg
Z2V0cwo+PiA+IHVuc3R1Y2sgYnkgaXRzZWxmLCBkcmF3cyBhIGZldyBtb3JlIHBhdHRlcm5zIGV4
dHJlbWVseSBmYXN0IGZvciBsZXNzIHRoYW4gYQo+PiA+IHNlY29uZCwgYW5kIHRoZW4gaXQgZ2V0
cyBzdHVjayBhZ2Fpbi4KPj4KPj4gSXQgc21lbGxzIGxpa2UgYSBzaWduYWxsaW5nIGlzc3VlLiBD
YW4geW91IGNoZWNrIHRoZSBDUFUgYWN0aXZpdHkgYW5kCj4+IHJlcG9ydCBhbnkgb3V0c3RhbmRp
bmcgcHJvY2Vzcz8gQ2FuIHlvdSBtYXliZSBjb25uZWN0IGEgZ2RiIHRvIHRoZQo+PiB4MTFwZXJm
IHRvIHNlZSB3aGVyZSBpdCdzIGJsb2NrZWQsIGFuZCBwb3N0IHRoZSBiYWNrdHJhY2UgaGVyZSAo
b3IgaW4KPj4gdGhlIGdpdGxhYiBpc3N1ZSk/Cj4+Cj4+IFJlZ2FyZHMsCj4+Cj4+IEJvcmlzCj4+
Cj4+IFsxXWh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9tZXNhL21lc2EKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
