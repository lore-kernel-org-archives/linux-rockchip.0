Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DBCFC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Nov 2022 15:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+eFkQnhxUPXsBOlMDyzNSwpbmijmDyiX86eIe4/CgkA=; b=k2aiUAhsPVejKH
	mTrHLUgYKZkk7PMAJh2Tt24bZ3hldLS9m9KnGJf9hOv8hFWanpn24zG0lufncdboZNatzVieY2D4R
	EGQbXCCTHavSY4L3i4AqSoboJDTK5M1ThKOrNlaGFs4pXN6ztjsvVKJQjHRUCbzfceabwOWWvlzw3
	qiJcjbXY7/YtAB+kimRgc1xPKruOsbPl7guQ/lF7cZn2HPVBiSCJ9bPqMDrpsyLtNinvloTCjGLJQ
	YUqvSWlZylf+fHicB/8AQuhkaIWJYBlRwgbqq6p8A09jWhMQ5wHB/2LdpxZSXx6NqUVHIc7hCMdgQ
	yEZ4NKAfvgyypXgAiNVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxUqJ-00ABv9-V6; Tue, 22 Nov 2022 15:05:48 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxUqC-00ABqP-HV
	for linux-rockchip@lists.infradead.org; Tue, 22 Nov 2022 15:05:45 +0000
Received: by mail-lf1-x130.google.com with SMTP id be13so23988013lfb.4
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Nov 2022 07:05:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:from:to:cc:subject:date
         :message-id:reply-to;
        bh=joRULvf1dWJkA5gWRTFhFCk8AeaMUxC+7TLKjnw2DLE=;
        b=ER2Fw8emECT/rQge+eiBNkkviWG3kjbWsZCbV4x/Kgaljhp2rzXGAQygNJar3+6u44
         QevH09MxTl6kJbQ0qPaESjwxa4GjqJr5YoXGhhnbrnofLSwud68+an31l+2EwkoR/nKs
         Jg/cq7+qg2c1ILnIHDzqchGtMVrSKVGnJqH2FWFWAtbSvYbvhMwEa8bHPst5szIVBUuz
         E85pH8kn9kRscODxb12XOnTFG+LM/br7nINFu+sS95yQ+OAwa+nmSbUSpQRV2lK1igRp
         pQYKCnvgr/K31pf+OvF/dh9Xe0hZmw9rDcyEPaxUi6by+xYUymVne6HaWNeGLjtJRNg8
         JEXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=joRULvf1dWJkA5gWRTFhFCk8AeaMUxC+7TLKjnw2DLE=;
        b=lDSVRMVXbsPR6IQdmIzttXCtBTgvjeX/SLyol+GhRVaEoVepOvSMzwucGQZ5Ja0XnT
         y0s5wEAAffwgWQLRX8ykauX+azTHGinauPylIsfRv97J1DMWkZh2CO9dw0abaH7GlQAa
         IjSuwT52gEtcvomseFZOeSb0X/TNAeCeZXdeKsjtSNVaVV7ofTPcMfKMVL1ykM5Z96ho
         JKfL36D5uoFDR2zidi79xD2xpJaaN+zf/yQpKO3RkSwI4TPBcSB/P6y1AcGB15z7nraT
         /8Dqf3dNG34d0/ufIhxT6k4Ffq+r959ikLsHWpYi+yE6uqhfUtcTT32RE5IRHn35Hqc6
         AhBQ==
X-Gm-Message-State: ANoB5plqU/qROHu3IWW2rqp6EoIbUhFXGuHb9CebIaWHP5IT8Ewu63S/
	XHrUXOrA0Oc7w5gQ5Hginqyw/RK11kBPkw==
X-Google-Smtp-Source: AA0mqf5OHYaGctuWCwcgr2ujiVoDrGqiB2RNftQYRObwVAsJZmt9XYndfhnGYv2vqwN8PdQGXddxvA==
X-Received: by 2002:ac2:4a6a:0:b0:4b1:753b:e66f with SMTP id q10-20020ac24a6a000000b004b1753be66fmr2180872lfp.276.1669129536433;
        Tue, 22 Nov 2022 07:05:36 -0800 (PST)
Received: from razdolb (95-31-185-17.broadband.corbina.ru. [95.31.185.17])
        by smtp.gmail.com with ESMTPSA id o6-20020a05651205c600b0049478cc4eb9sm2499071lfo.230.2022.11.22.07.05.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 07:05:35 -0800 (PST)
References: <20220919210025.2376254-1-Jason@zx2c4.com>
 <32f8797a-4b65-69df-ee8e-7891a6b4f1af@arm.com>
 <YzMm4d3sZBHpitm9@aurel32.net> <YzNTB+RQK6yITi7/@Red>
 <YzNthZ0MtfwjIqdH@aurel32.net> <YzVNBcF7TCDldPwF@Red>
 <87y1sasrf2.fsf@gmail.com> <Y3zOn5IO1ziJXKUT@Red>
User-agent: mu4e 1.9.0; emacs 28.2
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: Corentin LABBE <clabbe@baylibre.com>
Cc: Robin Murphy <robin.murphy@arm.com>, "Jason A. Donenfeld"
 <Jason@zx2c4.com>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Lin Jinhan <troy.lin@rock-chips.com>, wevsty <ty@wevs.org>, Heiko Stuebner
 <heiko@sntech.de>, Lin Huang <hl@rock-chips.com>, Shawn Lin
 <shawn.lin@rock-chips.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] hw_random: rockchip: import driver from vendor tree
Date: Tue, 22 Nov 2022 18:04:00 +0300
In-reply-to: <Y3zOn5IO1ziJXKUT@Red>
Message-ID: <877cznni69.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_070540_643003_74D44279 
X-CRM114-Status: GOOD (  28.08  )
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

Ck9uIDIwMjItMTEtMjIgYXQgMTQ6MjkgKzAxLCBDb3JlbnRpbiBMQUJCRSA8Y2xhYmJlQGJheWxp
YnJlLmNvbT4gd3JvdGU6Cgo+IExlIFdlZCwgTm92IDE2LCAyMDIyIGF0IDA5OjA0OjA3UE0gKzAz
MDAsIE1pa2hhaWwgUnVkZW5rbyBhIMOpY3JpdCA6Cj4+Cj4+IE9uIDIwMjItMDktMjkgYXQgMDk6
NDUgKzAyLCBMQUJCRSBDb3JlbnRpbiA8Y2xhYmJlQGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4+ID4g
TGUgVHVlLCBTZXAgMjcsIDIwMjIgYXQgMTE6Mzk6MTdQTSArMDIwMCwgQXVyZWxpZW4gSmFybm8g
YSDDqWNyaXQgOgo+PiA+PiBPbiAyMDIyLTA5LTI3IDIxOjQ2LCBMQUJCRSBDb3JlbnRpbiB3cm90
ZToKPj4gPj4gPiBMZSBUdWUsIFNlcCAyNywgMjAyMiBhdCAwNjozNzo1M1BNICswMjAwLCBBdXJl
bGllbiBKYXJubyBhIMOpY3JpdCA6Cj4+ID4+ID4gPiBPbiAyMDIyLTA5LTIwIDEwOjM1LCBSb2Jp
biBNdXJwaHkgd3JvdGU6Cj4+ID4+ID4gPiA+IE9uIDIwMjItMDktMTkgMjI6MDAsIEphc29uIEEu
IERvbmVuZmVsZCB3cm90ZToKPj4gPj4gPiA+ID4gPiBUaGUgUm9ja2NoaXAgZHJpdmVyIGhhcyBs
b25nIGV4aXN0ZWQgb3V0IG9mIHRyZWUsIGJ1dCBub3QgdXBzdHJlYW0uCj4+ID4+ID4gPiA+ID4g
VGhlcmUgaXMgc3VwcG9ydCBmb3IgaXQgdXBzdHJlYW0gaW4gdS1ib290LCBidXQgbm90IGluIExp
bnV4IHByb3Blci4KPj4gPj4gPiA+ID4gPiBUaGlzIGNvbW1pdCBpbXBvcnRzIHRoZSBHUEx2MiBk
cml2ZXIgd3JpdHRlbiBieSBMaW4gSmluaGFuLCB0b2dldGhlcgo+PiA+PiA+ID4gPiA+IHdpdGgg
dGhlIERUUyBhbmQgY29uZmlnIGJsb2JzIGZyb20gV2V2c3R5Lgo+PiA+PiA+ID4gPgo+PiA+PiA+
ID4gPiBOb3RlIHRoYXQgQ29yZW50aW4gaGFzIGEgc2VyaWVzIGVuYWJsaW5nIHRoZSBmdWxsIGNy
eXB0byBkcml2ZXIgZm9yCj4+ID4+ID4gPiA+IFJLMzMyOCBhbmQgUkszMzk5WzFdLCBzbyBpdCB3
b3VsZCBzZWVtIG1vcmUgc2Vuc2libGUgdG8gYWRkIFRSTkcgc3VwcG9ydAo+PiA+PiA+ID4gPiB0
byB0aGF0LiBIYXZpbmcgY29uZmxpY2l0aW5nIGNvbXBhdGlibGVzIGZvciB0aGUgc2FtZSBoYXJk
d2FyZSB0aGF0Cj4+ID4+ID4gPiA+IGZvcmNlIHRoZSB1c2VyIHRvIGNoYW5nZSB0aGVpciBEVCB0
byBjaG9vc2Ugb25lIGZ1bmN0aW9uYWxpdHkgb3IgdGhlCj4+ID4+ID4gPiA+IG90aGVyIGlzbid0
IGdvb2QgKHBsdXMgdGhlcmUncyBhbHNvIG5vIGJpbmRpbmcgZm9yIHRoaXMgb25lKS4KPj4gPj4g
PiA+Cj4+ID4+ID4gPiBJdCBtaWdodCBtYWtlIHNlbnNlIGZvciB0aGUgY3J5cHRvdjEtcm5nIGRy
aXZlciAoSSBoYXZlbid0IGNoZWNrZWQpLiBGb3IKPj4gPj4gPiA+IHRoZSBjcnlwdG92Mi1ybmcg
ZHJpdmVyLCBJIGxvb2tlZCBhdCB0aGUgUkszNTY4IFRSTSAoSSBjYW4ndCBmaW5kIHRoZQo+PiA+
PiA+ID4gUkszNTg4IG9uZSksIGFuZCBmcm9tIHdoYXQgSSB1bmRlcnN0YW5kIGNyeXB0byBhbmQg
VFJORyBhcmUgdHdvCj4+ID4+ID4gPiBkaWZmZXJlbnQgZGV2aWNlcywgdXNpbmcgZGlmZmVyZW50
IGFkZHJlc3Mgc3BhY2VzLCBjbG9jaywgcmVzZXQgYW5kCj4+ID4+ID4gPiBpbnRlcnJ1cHRzLiBU
aGUgdmVuZG9yIGtlcm5lbCB1c2VzIHR3byBkaWZmZXJlbnQgZHJpdmVycy4KPj4gPj4gPiA+Cj4+
ID4+ID4KPj4gPj4gPiBJIGNvbmZpcm0gdGhhdCBUUk5HIGlzIG5vdCBvbiB0aGUgc2FtZSBJUCBv
biByazM1NjgsIHNvbWV0aGluZyBJIGRpZG50IHJlbWFyayB3aGVuIGRvaW5nIG15IFYyIGRyaXZl
ci4gKEkgbmVlZCB0byByZW1vdmUgcm5nIGNsb2NrIGZyb20gcmszNTY4IGR0KS4KPj4gPj4gPiBC
dXQgdGhlIHJrMzU4OCBjcnlwdG8gSVAgYW5kIHRoZSBUUk5HIGFyZSBpbiB0aGUgc2FtZSBkZXZp
Y2UuCj4+ID4+Cj4+ID4+IE9rLCB0aGFua3MgZm9yIGNvbmZpcm1pbmcgYWJvdXQgdGhlIHJrMzU2
OC4gSXQgc2VlbXMgdGhlIG9ubHkgb25lIGluIHRoZQo+PiA+PiBmYW1pbHkgd2l0aCBzZXBhcmF0
ZSBkZXZpY2VzIGZvciBUUk5HIGFuZCBjcnlwdG8uIERvZXMgaXQgbWVhbnMgd2UgbmVlZAo+PiA+
PiBhIHNlcGFyYXRlIFRSTkcgZHJpdmVyIG9ubHkgZm9yIGl0PyBPciBjb3VsZCB3ZSBoYW5kbGUg
aXQgdGhlIHNhbWUgd2F5Cj4+ID4+IHRoYW4gZm9yIGluc3RhbmNlIHJrMzU4OCBhbnl3YXk/Cj4+
ID4KPj4gPiBJIGp1c3QgZ290IG5vdyB0aGUgcGFydCAxIG9mIHJrMzU4OCBUUk0gd2hpY2ggSSBo
YXMgbWlzc2luZyBhbmQgaXQgc2hvdyBzb21lIGNvbmZsaWN0aW5nIGluZm9ybWF0aW9uLgo+PiA+
IHJrMzU4OCBzZWVtcyB0byBoYXZlIGJvdGggYSBkZWRpY2F0ZWQgVFJORyAoVFJOR19OUy9UUk5H
X1MpIHdpdGggZGVkaWNhdGVkIGFkZHJlc3Mgc3BhY2UgYW5kIGEgVFJORyBpbnNpZGUgdGhlIGNy
eXB0byBJUC4KPj4gPiBCdXQgZm9yIHRoZSBtb21lbnQsIHRoZSBUUk5HIGluc2lkZSBjcnlwdG8g
SVAgc2VlbXMgZGVmZWN0aXZlLgo+Pgo+PiBTbyB3aGF0J3MgdGhlIHVsdGltYXRlIGRlY2lzaW9u
PyBEb2VzIGFueW9uZSB3b3JrIG9uIG1lcmdpbmcgdGhpcyBpbnRvCj4+IHRoZSBleGlzdGluZyBj
cnlwdG8gZHJpdmVyPyBJIGhhdmUgYSB1c2UgY2FzZSB3aXRoIGFuIHJrMzM5OS1iYXNlZCBib2Fy
ZCwKPj4gd2hlcmUgaGF2aW5nIGhhcmR3YXJlIHJuZyBlbmhhbmNlcyBib290IHRpbWVzIGRyYW1h
dGljYWxseSAoYXQgbGVhc3QgZm9yCj4+IHNvbWUgdXNlcnNwYWNlczsgc2VlIGFsc28gWzFdKS4K
Pj4KPj4gWzFdIGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjE2
NTAyCj4+Cj4KPiBIZWxsbwo+Cj4gSSBzdGFydGVkIHRvIHdvcmsgb24gYWRkaW5nIFJORyB0byBy
azMyODhfY3J5cHRvLgo+IEkgbmVlZCB0byBwdWJsaXNoIHRoZSB3b3JrIG9uIG15IGdpdGh1YiBh
bmQgdGFrZSB0aW1lIHRvIHNlbmQgaXQgZm9yIHJldmlldy4KCkdsYWQgdG8gaGVhciB5b3UgYXJl
IHdvcmtpbmcgb24gdGhpcy4gUGxlYXNlIGNjIG1lIHdoZW4gcG9zdGluZyBwYXRjaGVzIDopCgo+
Cj4gUmVnYXJkcwoKLS0KQmVzdCByZWdhcmRzLApNaWtoYWlsIFJ1ZGVua28KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
