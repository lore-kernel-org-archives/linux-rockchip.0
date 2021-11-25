Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 119FCC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Nov 2021 15:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBUsIzVbSyLLQu63TVSvscJPyb9ru5S5Kft1BWlSdXk=; b=aFOMKU5S1wtRee
	xE1JFP5HN33BNKQVlUaNC9pEMUhqeMxl6ctiEt4xVe92H7A+a8VKyq+wxUzUU6vgln3Lilap4zmeN
	99Mv/hhsNdn3YtPi7s+uGFgNfs0s5g7/X+KJPqbd17LGg7xoOtcDtG6mU+h7uwKVS4o15b5bDn5ka
	x7s6eY2AMib+ZUjTKL9K7ij2bBMUJu3L865dM52vIH8JQn2iEr/wHJO/en4g1pfB4yZetns/ih3Pt
	0jwRauQq6rjzgY4gPDnb8Bl24rPSmsxs1604Aa+hZ/cgFAQB/CMzRt9cVaBxRIuTRZAGcJtLI30hf
	7NTP3ewndDBc8NFyyujQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqGs8-0085ES-2d; Thu, 25 Nov 2021 15:41:16 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqGs5-0085CL-BW
 for linux-rockchip@lists.infradead.org; Thu, 25 Nov 2021 15:41:14 +0000
Received: by mail-qt1-x82c.google.com with SMTP id q14so6437027qtx.10
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Nov 2021 07:41:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=FuDCLMnZBcG4FXTRkAszIGwlmrXUvRfGWOLMCeO71r4=;
 b=bXR88lw6LhPPgAj95Af7RQ3lMoQa/7QnY5KgsSf2wLn5Ddu9/ssuMn2l/td39RVEIb
 4v7Oi/qiWyJJZDGAg6wzKKJrOyB8i7GE2EjN9Oun8j7+piRbo+bUZXoY3rn0cF0esrSI
 gxYh/FDRYGyCFu3CjIY1jI2rMzqQa1wi4thijh0d4JhwwcC1otAA4pdzvVdtzgCWSB5h
 bC1pEynddVfYbKyWU/9F7iSEPK3q0F9MT/gDy3k/dCc0UdUDfNTJyaUF9oP1XXHhR9iH
 /RoQRNek3++ONIY6C2j0NRb/LnMwTItrAKbeZcIYBLofV/RFm4ZznjWbnW0b9/LvxkHE
 exKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=FuDCLMnZBcG4FXTRkAszIGwlmrXUvRfGWOLMCeO71r4=;
 b=KMho680/6xTLzBtxH/wuxEuw01UcX/e3Z7/9dG2jY2opXxUB0yYwj0jcLnsrnuVYXh
 fWWDdjjlLFmW7gKEVV+CcWEmJdGbiRtuvi8Ab0uf60lH2L2eHIRk+MOz579x2vbHpCt0
 MyZGOoWo1ps7ktVgk9EU87XxuC5GvnhsCRHlrXeWfMW4ZyvuC3v0CL/xOgHYphYivn6v
 v8dDKxpDXhSlQd45qBGzCVpjtGsgqIp5/vmXIDKQoW0bFGuTJUXaVq8S6OgUimK9nSYW
 xYyHm1dJ7cpLvGv1tTIBTXN+kEHM36PPrUmp93hrd++WDUiLNKd2iCZAR7qterfP3dj7
 JGDQ==
X-Gm-Message-State: AOAM530huNaB0Jy/fm6JahxpVhuwsQtnmgSXtn7HeSbYjFP6XqMjXAH7
 KdSNXVv5GawvpvIbHCCfr4iN6A==
X-Google-Smtp-Source: ABdhPJwtFMy/514J4UaQ0/ybTKHlbOITeEKfMCQ7UenTYDSOaJPjLAG9D4Wac2FvXHGB65/bJM8mVQ==
X-Received: by 2002:a05:622a:1045:: with SMTP id
 f5mr18225139qte.319.1637854868860; 
 Thu, 25 Nov 2021 07:41:08 -0800 (PST)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id y18sm1666411qkp.120.2021.11.25.07.41.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 07:41:08 -0800 (PST)
Message-ID: <ae2fa5b455fce8f159e02b3156800b162e424a21.camel@ndufresne.ca>
Subject: Re: [PATCH] media: hantro: Hook up RK3399 JPEG encoder output
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Hans Verkuil <hverkuil@xs4all.nl>, Chen-Yu Tsai <wenst@chromium.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Date: Thu, 25 Nov 2021 10:41:07 -0500
In-Reply-To: <41d75ec1-b3b6-b991-33f0-7188869eb59c@xs4all.nl>
References: <20211119074654.470729-1-wenst@chromium.org>
 <5d23258a954eb0076cacf89d6c88b5e6ef13695f.camel@ndufresne.ca>
 <CAGXv+5Gf-gsB7JXnLiZF_R=0RdxXS7CDZaFftyZ+aESXLXy1Ew@mail.gmail.com>
 <85e9830ff0c2ed5eb77ce52ec7fde82a08368a2a.camel@ndufresne.ca>
 <41d75ec1-b3b6-b991-33f0-7188869eb59c@xs4all.nl>
User-Agent: Evolution 3.42.1 (3.42.1-1.fc35) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_074113_411450_971FBE7D 
X-CRM114-Status: GOOD (  33.22  )
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

TGUgamV1ZGkgMjUgbm92ZW1icmUgMjAyMSDDoCAwOTo0NCArMDEwMCwgSGFucyBWZXJrdWlsIGEg
w6ljcml0wqA6Cj4gT24gMjMvMTEvMjAyMSAyMDozOSwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToK
PiA+IExlIGx1bmRpIDIyIG5vdmVtYnJlIDIwMjEgw6AgMTE6NTcgKzA4MDAsIENoZW4tWXUgVHNh
aSBhIMOpY3JpdMKgOgo+ID4gPiBPbiBTYXQsIE5vdiAyMCwgMjAyMSBhdCAxMjowMCBBTSBOaWNv
bGFzIER1ZnJlc25lIDxuaWNvbGFzQG5kdWZyZXNuZS5jYT4gd3JvdGU6Cj4gPiA+ID4gCj4gPiA+
ID4gTGUgdmVuZHJlZGkgMTkgbm92ZW1icmUgMjAyMSDDoCAxNTo0NiArMDgwMCwgQ2hlbi1ZdSBU
c2FpIGEgw6ljcml0IDoKPiA+ID4gPiA+IFRoZSBKUEVHIGVuY29kZXIgZm91bmQgaW4gdGhlIEhh
bnRybyBIMSBlbmNvZGVyIGJsb2NrIG9ubHkgcHJvZHVjZXMgYQo+ID4gPiA+ID4gcmF3IGVudHJv
cHktZW5jb2RlZCBzY2FuLiBUaGUgZHJpdmVyIGlzIHJlc3BvbnNpYmxlIGZvciBidWlsZGluZyBh
IEpQRUcKPiA+ID4gPiA+IGNvbXBsaWFudCBiaXRzdHJlYW0gYW5kIHBsYWNpbmcgdGhlIGVudHJv
cHktZW5jb2RlZCBzY2FuIGluIGl0LiBSaWdodAo+ID4gPiA+ID4gbm93IHRoZSBkcml2ZXIgdXNl
cyBhIGJvdW5jZSBidWZmZXIgZm9yIHRoZSBoYXJkd2FyZSB0byBvdXRwdXQgdGhlIHJhdwo+ID4g
PiA+ID4gc2NhbiB0by4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSW4gY29tbWl0IGU3NjVkYmExMWVj
MiAoImhhbnRybzogTW92ZSBoYW50cm9fZW5jX2J1Zl9maW5pc2ggdG8gSlBFRwo+ID4gPiA+ID4g
Y29kZWNfb3BzLmRvbmUiKSwgdGhlIGNvZGUgdGhhdCBjb3BpZXMgdGhlIHJhdyBzY2FuIGZyb20g
dGhlIGJvdW5jZQo+ID4gPiA+ID4gYnVmZmVyIHRvIHRoZSBjYXB0dXJlIGJ1ZmZlciB3YXMgbW92
ZWQsIGJ1dCB3YXMgb25seSBob29rZWQgdXAgZm9yIHRoZQo+ID4gPiA+ID4gSGFudHJvIEgxICh0
aGVuIFJLMzI4OCkgdmFyaWFudC4gVGhlIFJLMzM5OSB2YXJpYW50IHdhcyBicm9rZW4sCj4gPiA+
ID4gPiBwcm9kdWNpbmcgYSBKUEVHIGJpdHN0cmVhbSB3aXRob3V0IHRoZSBzY2FuLCBhbmQgdGhl
IGNhcHR1cmUgYnVmZmVyJ3MKPiA+ID4gPiA+IC5ieXRlc3VzZWQgZmllbGQgdW5zZXQuCj4gPiA+
ID4gPiAKPiA+ID4gPiA+IEZpeCB0aGlzIGJ5IGR1cGxpY2F0aW5nIHRoZSBjb2RlIHRoYXQgaXMg
ZXhlY3V0ZWQgd2hlbiB0aGUgSlBFRyBlbmNvZGVyCj4gPiA+ID4gPiBmaW5pc2hlcyBlbmNvZGlu
ZyBhIGZyYW1lLiBBcyB0aGUgZW5jb2RlZCBsZW5ndGggaXMgcmVhZCBiYWNrIGZyb20KPiA+ID4g
PiA+IGhhcmR3YXJlLCBhbmQgdGhlIHZhcmlhbnRzIGhhdmluZyBkaWZmZXJlbnQgcmVnaXN0ZXIg
bGF5b3V0cywgdGhlCj4gPiA+ID4gPiBjb2RlIGlzIGR1cGxpY2F0ZWQgcmF0aGVyIHRoYW4gc2hh
cmVkLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBGaXhlczogZTc2NWRiYTExZWMyICgiaGFudHJvOiBN
b3ZlIGhhbnRyb19lbmNfYnVmX2ZpbmlzaCB0byBKUEVHIGNvZGVjX29wcy5kb25lIikKPiA+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc3RAY2hyb21pdW0ub3JnPgo+ID4g
PiA+ID4gLS0tCj4gPiA+ID4gPiBUaGlzIHdhcyBkZXZlbG9wZWQgb24gdGhlIGRvd25zdHJlYW0g
Q2hyb21lT1MgNS4xMCBrZXJuZWwgKHdpdGggYSBoYWNrCj4gPiA+ID4gPiBmb3IgLmRhdGFfb2Zm
c2V0KSBhbmQgdGVzdGVkIHdpdGggQ2hyb21lT1MncyBqcGVnX2VuY29kZV9hY2NlbGVyYXRvcl91
bml0dGVzdAo+ID4gPiA+ID4gcGF0Y2hlZCB0byBhY2NlcHQgbm9uLUpGSUYgSlBFRyBzdHJlYW1z
IChodHRwczovL2NycmV2LmNvbS9jLzMyOTE0ODApLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGlz
IHdhcyB0aGVuIGZvcndhcmQtcG9ydGVkIHRvIG1haW5saW5lIChuYW1lIGFuZCBmaWxlbmFtZSBj
aGFuZ2VzKSBhbmQKPiA+ID4gPiA+IGNvbXBpbGUgdGVzdGVkIG9ubHkuCj4gPiA+ID4gCj4gPiA+
ID4gVGVzdGVkIHdpdGggR1N0cmVhbWVyIG9uIHRvcCBvZiA1LjE2LXJjMSBmcm9tIG1lZGlhX3N0
YWdlLmdpdC4gTm90IHBlcmZlY3QgYnV0Cj4gPiA+ID4gYXQgbGVhc3QgdGhlIHRoZSBvdXRwdXQg
aXQgdmFsaWQuIFRlc3QgY29tbWFuZCB3YXM6Cj4gPiA+ID4gCj4gPiA+ID4gICBnc3QtbGF1bmNo
LTEuMCB2aWRlb3Rlc3RzcmMgbnVtLWJ1ZmZlcnM9MiAhIHY0bDJqcGVnZW5jICEgZmlsZXNpbmsK
PiA+ID4gPiBsb2NhdGlvbj10ZXN0LmpwZwo+ID4gPiA+IAo+ID4gPiA+IE5vdGljZSB0aGF0IEkg
ZW5jb2RlIHR3byBmcmFtZXMsIGl0IHNlZW1zIGxpa2UgdGhlIGRyYWluaW5nIGZsb3cgaXMgYnJv
a2VuIGluCj4gPiA+ID4gdGhpcyBkcml2ZXIuIEdTdHJlYW1lciB3aWxsIHF1ZXVlIHRoZSBmcmFt
ZSBhbmQgaXNzdWUgQ01EX1NUQVJUIGltbWVkaWF0ZWx5LCB0aGUKPiA+ID4gPiBkcml2ZXIgd2ls
bCBza2lwIHRoZSBlbmNvZGUsIGxlYXZpbmcgbWUgd2l0aCBhbiBlbXB0eSBmaWxlLgo+ID4gPiAK
PiA+ID4gVGhlIGhhbnRybyBkcml2ZXIgZG9lc24ndCBpbXBsZW1lbnQgRU5DX0NNRCwgd2hpY2gg
SUlSQyBpcyB1c2VkIGZvciB0aGUKPiA+ID4gZHJhaW5pbmcgZmxvdy4gSSBndWVzcyB0aGF0J3Mg
c29tZXRoaW5nIHRvIGZpeCwgc2luY2UgdGhlIG1lbTJtZW0gc3RhdGVmdWwKPiA+ID4gZW5jb2Rl
ciBzcGVjIHNlZW1zIHRvIHJlcXVpcmUgaXQuIE9yIGRvZXMgdGhhdCBzcGVjIG5vdCBhcHBseSB0
byB0aGUgSlBFRwo+ID4gPiBlbmNvZGVycz8KPiA+IAo+ID4gSSdtIHByZXR0eSBzdXJlIGl0cyBy
ZXF1aXJlZC4gQnV0IHRoaXMgaXNuJ3QgYSByZWdyZXNzaW9uIGZyb20gdGhpcyBwYXRjaC4KPiAK
PiBJIGRvbid0IHRoaW5rIGl0IGlzIHJlcXVpcmVkIGZvciBKUEVHIGVuY29kZXJzIHRvZGF5LiBF
YWNoIGZyYW1lIGlzIGluZGVwZW5kZW50IG9mCj4gYW55IG90aGVyLCBzbyBpdCBiZWhhdmVzIGp1
c3QgbGlrZSBhIG0ybSBzY2FsZXIgZm9yIGV4YW1wbGUuCj4gCj4gSXQgZG9lc24ndCBodXJ0IHRv
IHN1cHBvcnQgaXQsIGJ1dCBpdCBzaG91bGRuJ3QgYmUgbmVjZXNzYXJ5IGZvciBqcGVnIGNvZGVj
cy4KCkkgYmVsaWV2ZSB0aGUgcmVxdWlyZW1lbnQgaW4gdGhlIHNwZWMgaXMgZGVsaWJlcmF0ZSB0
byBhdm9pZCBtYWtpbmcgdXNlcmxhbmQKd29yayBhIG5pZ2h0IG1hcmUuIElmIGRyYWluaW5nIGEg
ZmlsbGVkIHF1ZXVlIHJlcXVpcmVzIGNvdW50aW5nIGZyYW1lcyBvbiB0b3Agb2YKdXNpbmcgQ01E
X1NUT1AsIHlvdSBhcmUgZHVwbGljYXRpbmcgdGhlIGVmZm9ydC4KCkkgaGF2ZSBhIHN0cm9uZyBv
cGluaW9uIGFib3V0IHRoaXMsIEkgYmVsaWV2ZSBjb25zaXN0ZW5jeSBpcyBrZXksIHRoZSBmcmFt
ZSB3b3JrCnNob3VsZCBwcm92aWRlIHRoaXMgZmVhdHVyZSBmb3IgSlBFRyBkZWNvZGVyL2VuY29k
ZXIgdHJpdmlhbGx5IGltaG8gYW5kIHVudGlsCnRoZW4sIGRyaXZlciBzaG91bGQgYWxsIHN1cHBv
cnQgdGhlIHNhbWUgZHJhaW5pbmcgZmxvdy4gSSdtIG5vdCBnb2luZyB0byByZWxheAp0aGlzIGlu
IEdTdHJlYW1lci4KCk5pY29sYXMKCj4gCj4gSWYgdGhlcmUgaXMgYSByZWFzb24gd2h5IHRoaXMg
aXMgbmVlZGVkLCB0aGVuIGl0IHdvdWxkIGxpa2VseSBhbHNvIGJlIG5lZWRlZCBmb3IKPiBtMm0g
ZGV2aWNlcyBsaWtlIHNjYWxlcnMuCj4gCj4gUmVnYXJkcywKPiAKPiAJSGFucwo+IAo+ID4gCj4g
PiA+IAo+ID4gPiA+IFRlc3RlZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNu
ZUBjb2xsYWJvcmEuY29tPgo+ID4gPiAKPiA+ID4gVGhhbmtzIQo+ID4gPiAKPiA+ID4gQ2hlbll1
Cj4gPiAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
