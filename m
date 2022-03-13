Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9DB6C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Mar 2022 10:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHu7HjkHmj8dE4J78i0j5o7DGL9PsmsO8GKPPw3fxKs=; b=rzswhinJiHSlUB
	834U80gNGsMcPoF5rHy3CT+pp2O4qfeXWhCBL0nqrsxtNqR8csc9XYyY4G56ukZNBSPtFXoxo27Rw
	nQmnIU8ij/q7qvfgYvTGSoo1ykw7XHabun6+5f75rScAMJ0sbnDudCgJ7p1oyRQq8R7aN1ySXWL8L
	4wQwEDIup5U/lJMGLQdHoFecgCoc1lbe8fWxVAlCBkd0zPDawj6C5PaqfUlyrZJz42dcXKo4jQlH6
	kuqqJGuyUXePm9YriFErlF5KsdmNH0RvWSg0ChR8tq2PPAAcnPS8z8fhWoryz7Je2ZBYCD7jLnSEG
	VIsPHuOZzVPM6gEYGsdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTLDm-002X0G-On; Sun, 13 Mar 2022 10:13:06 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTLDj-002Wzk-NJ
 for linux-rockchip@lists.infradead.org; Sun, 13 Mar 2022 10:13:05 +0000
Received: by mail-lf1-x12e.google.com with SMTP id l20so22226843lfg.12
 for <linux-rockchip@lists.infradead.org>; Sun, 13 Mar 2022 03:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=m2Ai362wiP1vbbI9s63xOoA0fn/s0S5gwcjrtQUOdC0=;
 b=Xb2KG/qzbCzKWRqqkFkNLDfgZbNIdJq0K48cH98toOKzlr++cToOqHLTfu6dONqa9n
 E4l0UR2UGi2dW6U+ARQf6VscmLDjBYT3A6EBOGd34QBivuhQ9RVHylgsSjxO/MvlUgdt
 CkidXajy0njCyepY4aBdXlDLMRXsIf+1ufVPdpqE4qiu6v9tkMMfyW8I9CM1D0bUDg9A
 aXq1TrhMc8QyQSkfuf9tSJE5U4fJQanWybZm1Y8VW3ZDIilhUPWz2ho+TYbdl9cEDdVj
 gfW3YiVi62q8A8osD/oTlUEZVcwCH0A0RJuIqiH6blQyygQsyjDbr/zvU0m2Zjjngrow
 S/wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=m2Ai362wiP1vbbI9s63xOoA0fn/s0S5gwcjrtQUOdC0=;
 b=r2enlNxX6xZHXuft1R09UZdVT/a7/i1kMHLEo9uB/yCNO1pXsSphqgIX64SRtr3yOI
 3OjdBGery0GoO4PqjKfPzPjzpO8/2soK/S0mXp2WCSL188Kv6SUVekiV/XEXbbP95sAA
 QCg+6/WYJSZs4HlNCSNW6IenwM4vRpMETDwd9ZNyJ7PXM/oh0DGa02hw4OCzebihsWvi
 qKWrvGprG/wLvhs3MY1DN1i1WPup5in7HHfS9RCoz4cZvjnh8VdUlqdD75Pe+63fbTM+
 zwglYOdU+LUQWYNJE1oWuOF/Ngn1smN20YSS3C/divvAa5DO6pNpUxYKb4d0x3D6Vn2I
 hq/Q==
X-Gm-Message-State: AOAM5333Mn2IhLc8c0+oHbl/zS6hzH0vwXTUZV4P5QuiAAXpkzxTJ3zN
 T55ylHK/Zy2ofs0o3j4fX/o=
X-Google-Smtp-Source: ABdhPJyCp5AaYs+cO005a0E86TOpIdIPyD2467a87+CRiH9PN/jRXTTSeStgacBI42adrU6kiqdj6g==
X-Received: by 2002:a05:6512:e90:b0:448:6d41:c736 with SMTP id
 bi16-20020a0565120e9000b004486d41c736mr7125972lfb.453.1647166381462; 
 Sun, 13 Mar 2022 03:13:01 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 bp4-20020a056512158400b0044332792f30sm2649522lfb.175.2022.03.13.03.13.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 13 Mar 2022 03:13:01 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH] drm/bridge: synopsys/dw-hdmi: set cec clock rate
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220126202427.3047814-1-pgwipeout@gmail.com>
Date: Sun, 13 Mar 2022 11:12:59 +0100
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Robert Foss <robert.foss@linaro.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Pierre-Hugues Husson <phh@phh.me>, Archit Taneja <architt@codeaurora.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Robin Murphy <robin.murphy@arm.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 dri-devel@lists.freedesktop.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-Id: <3AFD1DD4-AF0A-4ECC-B4F5-E6BD6B9F1BB7@gmail.com>
References: <20220126202427.3047814-1-pgwipeout@gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220313_031303_785090_DD0AA7C6 
X-CRM114-Status: GOOD (  19.64  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFp
bC5jb20+IHcgZG5pdSAyNi4wMS4yMDIyLCBvIGdvZHouIDIxOjI0Ogo+IAo+IFRoZSBoZG1pLWNl
YyBjbG9jayBtdXN0IGJlIDMya2h6IGluIG9yZGVyIGZvciBjZWMgdG8gd29yayBjb3JyZWN0bHku
Cj4gRW5zdXJlIGFmdGVyIGVuYWJsaW5nIHRoZSBjbG9jayB3ZSBzZXQgaXQgaW4gb3JkZXIgZm9y
IHRoZSBoYXJkd2FyZSB0bwo+IHdvcmsgYXMgZXhwZWN0ZWQuCj4gV2FybiBvbiBmYWlsdXJlLCBp
biBjYXNlIHRoaXMgaXMgYSBzdGF0aWMgY2xvY2sgdGhhdCBpcyBzbGlnaHR5IG9mZi4KPiBGaXhl
cyBoZG1pLWNlYyBzdXBwb3J0IG9uIFJvY2tjaGlwIGRldmljZXMuCj4gCj4gRml4ZXM6IGViZTMy
YzNlMjgyYSAoImRybS9icmlkZ2U6IHN5bm9wc3lzL2R3LWhkbWk6IEVuYWJsZSBjZWMgY2xvY2si
KQo+IAo+IFNpZ25lZC1vZmYtYnk6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFpbC5jb20+Cj4g
LS0tCj4gZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmMgfCA3ICsrKysr
KysKPiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmMKPiBpbmRleCA1NGQ4ZmRhZDM5NWYuLjFhOTZkYTYw
ZTM1NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhk
bWkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5jCj4g
QEAgLTQ4LDYgKzQ4LDkgQEAKPiAKPiAjZGVmaW5lIEhETUkxNF9NQVhfVE1EU0NMSwkzNDAwMDAw
MDAKPiAKPiArLyogSERNSSBDRUMgbmVlZHMgYSBjbG9jayByYXRlIG9mIDMya2h6ICovCj4gKyNk
ZWZpbmUgSERNSV9DRUNfQ0xLX1JBVEUJMzI3NjgKPiArCj4gZW51bSBoZG1pX2RhdGFtYXAgewo+
IAlSR0I0NDRfOEIgPSAweDAxLAo+IAlSR0I0NDRfMTBCID0gMHgwMywKPiBAQCAtMzM0Nyw2ICsz
MzUwLDEwIEBAIHN0cnVjdCBkd19oZG1pICpkd19oZG1pX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYsCj4gCQkJCXJldCk7Cj4gCQkJZ290byBlcnJfaWFoYjsKPiAJCX0KPiArCj4g
KwkJcmV0ID0gY2xrX3NldF9yYXRlKGhkbWktPmNlY19jbGssIEhETUlfQ0VDX0NMS19SQVRFKTsK
PiArCQlpZiAocmV0KQo+ICsJCQlkZXZfd2FybihoZG1pLT5kZXYsICJDYW5ub3Qgc2V0IEhETUkg
Y2VjIGNsb2NrIHJhdGU6ICVkXG4iLCByZXQpOwo+IAl9Cj4gCj4gCS8qIFByb2R1Y3QgYW5kIHJl
dmlzaW9uIElEcyAqLwo+IC0tIAo+IDIuMjUuMQo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKClBldGVyLAoKT24gbXkg
NS4xNy1yYzcgd2l0aCBhcHBsaWVkIHJrMzU2eCBWT1AyIHY4IHNlcmllcyAtIHRoaXMgcGF0Y2gg
bWFrZXMgQ0VDIHdvcmtpbmcgb24gcmszNTY2LgpVbmZvcnR1bmF0ZWx5IGl0IGJyZWFrcyB3b3Jr
aW5nIG9rIENFQyBvbiByazMzOTkgcm9ja3BpLTRiLgoKUmV2ZXJ0aW5nIHRoaXMgcGF0Y2ggYnJp
bmdzIGJhY2sgQ0VDIG9uIHJrMzM5OSAtIGJ1dCByazMzNjYgYmVjb21lcyB3aXRoIG5vbiB3b3Jr
aW5nIENFQwogCkknbSBub3Qgc3VyZSBob3cgdG8gbW92ZSBmb3J3YXJkIHdpdGggdGhpcy4uLi4K
IApicgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
