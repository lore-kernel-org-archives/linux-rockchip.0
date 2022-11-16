Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E23A1C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 18:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+ecG0LKZTR+IUFR8/fZfy30Zivhz/+g1Q1F0vH8vVU=; b=vXUH2MAkcrvsMi
	qNNVIuszcrdByjBhzCJf6MfBY26Aw8zLMxOdBlROQdHE7CarzHHFoJkocS0J2KkMlo/9Y2qsn+AY1
	q9jLOI2It3NGnUiOu2cMShK73JlvCvNnGlqVkgjcb0vafVplWlR535fcfrzAbLppg4c7jBs1WYyuM
	+ZcfueZw+EQ/jvCaoOAqGuE3Iv1vxAvlkkKCVBvIYW49uY0sJkPobtU18357NyjY50lh9As+XC621
	MOlrK/uWrcXUrhMIAJ13ED+MKv1R6Bb2VRLpEWjAFWM3o6NzL/Hn1B91b+aLoPEcGvzXU7e5CjDm8
	lZJdLYGQ6G0FYvqFhxHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovMqO-006pR7-De; Wed, 16 Nov 2022 18:09:04 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovMqL-006pPR-6W
	for linux-rockchip@lists.infradead.org; Wed, 16 Nov 2022 18:09:03 +0000
Received: by mail-lf1-x129.google.com with SMTP id d6so30789920lfs.10
        for <linux-rockchip@lists.infradead.org>; Wed, 16 Nov 2022 10:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sGPzAc+Fwv9glX3kTXQZEC8wdiu/HXobhJKfPZvAq8Q=;
        b=lIb6GWkjW3nm9obLcbKwJ5hHecVrnM0Mwa8ygrNEjhDOkvpSJv+SUgMFXMuyRTL9Eu
         pnoaEk7Fn5/f9OIwhrP9ZIoTQpKi6O5sRmEqXa/GFqzWM13SmBANP51XdQgklOv0Afn6
         CbMGyTtIaIqY0UigE/CDv7sOJ3aQFxjcRtoY5JkeKXqZNpLRQCGgEo6bt4DqBYghyOE3
         RbQRjO7OfoDIHP2XFFbg8tIcHNQLV0QWRE2SGHo+AvJ4PX2fDO1ju5FvCQBNBhnqXzgu
         XxAo8pJ8nvUa2GBbATBB3Q8bRY/AbissW9BjhEwtInKeGYPY77tsZDa/6Q1OasqJ+sSt
         5ycg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sGPzAc+Fwv9glX3kTXQZEC8wdiu/HXobhJKfPZvAq8Q=;
        b=yz4ZCbz7bO0aDtX7KTX6GuQntjt1qaSoWx4D2bRy5RQoEP3/RCR/Goi1R6wY/CnArU
         Rdzs6B9DjEarwiDprmaeyGHJaunM5h5Aj4YY3lbwch/XGdcFVYQwxW4gyvl8VN2nJoju
         LSGtDCe7W02ZYheOJta3GIg1UxhFEEUq5l7NK30efJ5asH7qjkTy8DBcBZsV07nS5Wph
         MZLA4flU7mmShIYKpGDECnkJF+Nl1UesZuJ9JB0w9Q1aiLHJpSeGZMsNPFBKbqGjNf6S
         imW7yuNSESgn+dFSiiQJMPhrmAv/CmwS1OPQYyYkEjvdvwKrLx9TNFZ4pbbJT14SByhW
         Ih4Q==
X-Gm-Message-State: ANoB5pl7eEAYbnatyX/rxri6L3jvtC+0ZF2B2J8IzyyEhNODmQcN+E0e
	EuUgTWHznjMcWmuZC8c5AQ8beWFcQ6x7qQ==
X-Google-Smtp-Source: AA0mqf6Z9JMkR/b8e0qR+12V9efjvNZdrN1ukzJGnaa6eiokmlSLuDOIPzOVDtVZQripHRf/klb7Vg==
X-Received: by 2002:a05:6512:3d8d:b0:4a2:4aad:8fff with SMTP id k13-20020a0565123d8d00b004a24aad8fffmr7197273lfv.445.1668622132777;
        Wed, 16 Nov 2022 10:08:52 -0800 (PST)
Received: from razdolb (95-31-190-12.broadband.corbina.ru. [95.31.190.12])
        by smtp.gmail.com with ESMTPSA id i6-20020a2ea366000000b00278e5d12be3sm3033465ljn.127.2022.11.16.10.08.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 10:08:51 -0800 (PST)
References: <20220919210025.2376254-1-Jason@zx2c4.com>
 <32f8797a-4b65-69df-ee8e-7891a6b4f1af@arm.com>
 <YzMm4d3sZBHpitm9@aurel32.net> <YzNTB+RQK6yITi7/@Red>
 <YzNthZ0MtfwjIqdH@aurel32.net> <YzVNBcF7TCDldPwF@Red>
User-agent: mu4e 1.9.0; emacs 28.2
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: LABBE Corentin <clabbe@baylibre.com>
Cc: Robin Murphy <robin.murphy@arm.com>, "Jason A. Donenfeld"
 <Jason@zx2c4.com>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Lin Jinhan <troy.lin@rock-chips.com>, wevsty <ty@wevs.org>, Heiko Stuebner
 <heiko@sntech.de>, Lin Huang <hl@rock-chips.com>, Shawn Lin
 <shawn.lin@rock-chips.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] hw_random: rockchip: import driver from vendor tree
Date: Wed, 16 Nov 2022 21:04:07 +0300
In-reply-to: <YzVNBcF7TCDldPwF@Red>
Message-ID: <87y1sasrf2.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_100901_256930_808E4CB7 
X-CRM114-Status: GOOD (  25.59  )
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

Ck9uIDIwMjItMDktMjkgYXQgMDk6NDUgKzAyLCBMQUJCRSBDb3JlbnRpbiA8Y2xhYmJlQGJheWxp
YnJlLmNvbT4gd3JvdGU6Cj4gTGUgVHVlLCBTZXAgMjcsIDIwMjIgYXQgMTE6Mzk6MTdQTSArMDIw
MCwgQXVyZWxpZW4gSmFybm8gYSDDqWNyaXQgOgo+PiBPbiAyMDIyLTA5LTI3IDIxOjQ2LCBMQUJC
RSBDb3JlbnRpbiB3cm90ZToKPj4gPiBMZSBUdWUsIFNlcCAyNywgMjAyMiBhdCAwNjozNzo1M1BN
ICswMjAwLCBBdXJlbGllbiBKYXJubyBhIMOpY3JpdCA6Cj4+ID4gPiBPbiAyMDIyLTA5LTIwIDEw
OjM1LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+ID4gPiA+IE9uIDIwMjItMDktMTkgMjI6MDAsIEph
c29uIEEuIERvbmVuZmVsZCB3cm90ZToKPj4gPiA+ID4gPiBUaGUgUm9ja2NoaXAgZHJpdmVyIGhh
cyBsb25nIGV4aXN0ZWQgb3V0IG9mIHRyZWUsIGJ1dCBub3QgdXBzdHJlYW0uCj4+ID4gPiA+ID4g
VGhlcmUgaXMgc3VwcG9ydCBmb3IgaXQgdXBzdHJlYW0gaW4gdS1ib290LCBidXQgbm90IGluIExp
bnV4IHByb3Blci4KPj4gPiA+ID4gPiBUaGlzIGNvbW1pdCBpbXBvcnRzIHRoZSBHUEx2MiBkcml2
ZXIgd3JpdHRlbiBieSBMaW4gSmluaGFuLCB0b2dldGhlcgo+PiA+ID4gPiA+IHdpdGggdGhlIERU
UyBhbmQgY29uZmlnIGJsb2JzIGZyb20gV2V2c3R5Lgo+PiA+ID4gPgo+PiA+ID4gPiBOb3RlIHRo
YXQgQ29yZW50aW4gaGFzIGEgc2VyaWVzIGVuYWJsaW5nIHRoZSBmdWxsIGNyeXB0byBkcml2ZXIg
Zm9yCj4+ID4gPiA+IFJLMzMyOCBhbmQgUkszMzk5WzFdLCBzbyBpdCB3b3VsZCBzZWVtIG1vcmUg
c2Vuc2libGUgdG8gYWRkIFRSTkcgc3VwcG9ydAo+PiA+ID4gPiB0byB0aGF0LiBIYXZpbmcgY29u
ZmxpY2l0aW5nIGNvbXBhdGlibGVzIGZvciB0aGUgc2FtZSBoYXJkd2FyZSB0aGF0Cj4+ID4gPiA+
IGZvcmNlIHRoZSB1c2VyIHRvIGNoYW5nZSB0aGVpciBEVCB0byBjaG9vc2Ugb25lIGZ1bmN0aW9u
YWxpdHkgb3IgdGhlCj4+ID4gPiA+IG90aGVyIGlzbid0IGdvb2QgKHBsdXMgdGhlcmUncyBhbHNv
IG5vIGJpbmRpbmcgZm9yIHRoaXMgb25lKS4KPj4gPiA+Cj4+ID4gPiBJdCBtaWdodCBtYWtlIHNl
bnNlIGZvciB0aGUgY3J5cHRvdjEtcm5nIGRyaXZlciAoSSBoYXZlbid0IGNoZWNrZWQpLiBGb3IK
Pj4gPiA+IHRoZSBjcnlwdG92Mi1ybmcgZHJpdmVyLCBJIGxvb2tlZCBhdCB0aGUgUkszNTY4IFRS
TSAoSSBjYW4ndCBmaW5kIHRoZQo+PiA+ID4gUkszNTg4IG9uZSksIGFuZCBmcm9tIHdoYXQgSSB1
bmRlcnN0YW5kIGNyeXB0byBhbmQgVFJORyBhcmUgdHdvCj4+ID4gPiBkaWZmZXJlbnQgZGV2aWNl
cywgdXNpbmcgZGlmZmVyZW50IGFkZHJlc3Mgc3BhY2VzLCBjbG9jaywgcmVzZXQgYW5kCj4+ID4g
PiBpbnRlcnJ1cHRzLiBUaGUgdmVuZG9yIGtlcm5lbCB1c2VzIHR3byBkaWZmZXJlbnQgZHJpdmVy
cy4KPj4gPiA+Cj4+ID4KPj4gPiBJIGNvbmZpcm0gdGhhdCBUUk5HIGlzIG5vdCBvbiB0aGUgc2Ft
ZSBJUCBvbiByazM1NjgsIHNvbWV0aGluZyBJIGRpZG50IHJlbWFyayB3aGVuIGRvaW5nIG15IFYy
IGRyaXZlci4gKEkgbmVlZCB0byByZW1vdmUgcm5nIGNsb2NrIGZyb20gcmszNTY4IGR0KS4KPj4g
PiBCdXQgdGhlIHJrMzU4OCBjcnlwdG8gSVAgYW5kIHRoZSBUUk5HIGFyZSBpbiB0aGUgc2FtZSBk
ZXZpY2UuCj4+Cj4+IE9rLCB0aGFua3MgZm9yIGNvbmZpcm1pbmcgYWJvdXQgdGhlIHJrMzU2OC4g
SXQgc2VlbXMgdGhlIG9ubHkgb25lIGluIHRoZQo+PiBmYW1pbHkgd2l0aCBzZXBhcmF0ZSBkZXZp
Y2VzIGZvciBUUk5HIGFuZCBjcnlwdG8uIERvZXMgaXQgbWVhbnMgd2UgbmVlZAo+PiBhIHNlcGFy
YXRlIFRSTkcgZHJpdmVyIG9ubHkgZm9yIGl0PyBPciBjb3VsZCB3ZSBoYW5kbGUgaXQgdGhlIHNh
bWUgd2F5Cj4+IHRoYW4gZm9yIGluc3RhbmNlIHJrMzU4OCBhbnl3YXk/Cj4KPiBJIGp1c3QgZ290
IG5vdyB0aGUgcGFydCAxIG9mIHJrMzU4OCBUUk0gd2hpY2ggSSBoYXMgbWlzc2luZyBhbmQgaXQg
c2hvdyBzb21lIGNvbmZsaWN0aW5nIGluZm9ybWF0aW9uLgo+IHJrMzU4OCBzZWVtcyB0byBoYXZl
IGJvdGggYSBkZWRpY2F0ZWQgVFJORyAoVFJOR19OUy9UUk5HX1MpIHdpdGggZGVkaWNhdGVkIGFk
ZHJlc3Mgc3BhY2UgYW5kIGEgVFJORyBpbnNpZGUgdGhlIGNyeXB0byBJUC4KPiBCdXQgZm9yIHRo
ZSBtb21lbnQsIHRoZSBUUk5HIGluc2lkZSBjcnlwdG8gSVAgc2VlbXMgZGVmZWN0aXZlLgoKU28g
d2hhdCdzIHRoZSB1bHRpbWF0ZSBkZWNpc2lvbj8gRG9lcyBhbnlvbmUgd29yayBvbiBtZXJnaW5n
IHRoaXMgaW50bwp0aGUgZXhpc3RpbmcgY3J5cHRvIGRyaXZlcj8gSSBoYXZlIGEgdXNlIGNhc2Ug
d2l0aCBhbiByazMzOTktYmFzZWQgYm9hcmQsCndoZXJlIGhhdmluZyBoYXJkd2FyZSBybmcgZW5o
YW5jZXMgYm9vdCB0aW1lcyBkcmFtYXRpY2FsbHkgKGF0IGxlYXN0IGZvcgpzb21lIHVzZXJzcGFj
ZXM7IHNlZSBhbHNvIFsxXSkuCgpbMV0gaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3df
YnVnLmNnaT9pZD0yMTY1MDIKCi0tCkJlc3QgcmVnYXJkcywKTWlraGFpbCBSdWRlbmtvCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
