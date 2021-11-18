Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 737DEC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 12:07:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2542A611CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 12:07:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2542A611CC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPnBE47gm2XNzHYrqcVpL+4xIU54sBCIPqxO7oXOzxY=; b=vj2jQfCzgJ/5Xs
	WySGu5pBxECa7HNVXiLnYE9nJR9zpVVcRgfO+cS4SLskYf3WNXbg6rmOW8bC32TgU5QweyX81T5A1
	LvUt4xQNirgE7on5H9I3YUGDWxuH4sdncdunpEvo2e6xTI2FHgixJGBhV25VyumurAi66ghajGbUn
	Pl4matZY7eVIkX+5SPgQhnbe/RufraxvB15amV2Eiea9jKaANpTMbJznC+LZFchRhdVBZKx4XVPo/
	VjSKbDxWBACMKaQs11gw76Yzw13O6wrj/lSv1kQTfqPpGJNltHIQms3ZZJPBIz1A9MexSjgI1ayzA
	PiENmiNZYOijRhRpWzug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mngCh-007h2z-Cv; Thu, 18 Nov 2021 12:07:47 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mngCe-007h1I-JZ
 for linux-rockchip@lists.infradead.org; Thu, 18 Nov 2021 12:07:46 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id d10so17356940ybe.3
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Nov 2021 04:07:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xwZffm/5Q8IyR874NzvVEMvt4aoVvniu9ZnJ+G9kWsk=;
 b=gacIVoLMap3lXg4tEH0YwcCLfAkqG5ikXwvtcn15HF9vj31J4B+VGr0sZYN3Je+vAQ
 BaEDod3ldNon04MG0LZoL0x1bEnWZllYeoWfnQFsOJHVAVjSYD66bkMahT/uQyQU/+oc
 zETPeEZ6Fqd0dphOvpeT9KbkEtdYz8hJPH9DMRZZNb6n4xr/T0WmeBZBlMbWs+wj1+VL
 R8N5un9YMXJPuM/g4XfFtPweXpRTGHkX/e6u/dIBJUuMhNtI6+5Rgfq0D9yABnU3caVz
 7+/tE/MXx648QKl9SCOkT6LZ3YOtQxbIu945mWxzLssEVIJkuj97w7l3IgOnK5KiBfpD
 twZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xwZffm/5Q8IyR874NzvVEMvt4aoVvniu9ZnJ+G9kWsk=;
 b=nDmBe1Mi/v1liFTdWzd02aP38gUaw5lQyqK84mVOwE5IDqGmFCVL9844zTW8LhAqfV
 8Rr/JITSB0qZZKaVbNO3yzAmIfKM+j2zal1XYb781FCd0ZsAtrxYHl1tndxDo6+jn95E
 X+gSQ0vjSQpNkjvttSH0bbvYt0DyUa8Wj92arTOW/BBQ56hSxZPMzmnswWVFBTg+DHQJ
 rD3jduFV2ZWsPEdgaYcsgBrnlzZ2sCG/DdDTk9qLgJJoMs1l8U9caJqrxM90N2AKims1
 1J0Foi1ltTTcLuGcEDezpH9wKw5uh36sKRPPYj2kx/mFvF+zFVc+hmiXAqSXXVohVFKP
 cnyg==
X-Gm-Message-State: AOAM533IJtuBuPVYTZHcaKL7+VlTTux6PW2KlnpbR8rVBUynYjOo2Sk5
 AcPfPTVlfWtULXZ3YzCSZ8NthP3jni+hk9Ut0j/V6g==
X-Google-Smtp-Source: ABdhPJwqejr342bjBGHcXh7vBbdNrU3UD/weVqxCR1HxxrtvQbdgNXlL1TDGAVwz6geozxJn0DtlK138DNBc8N7xqWw=
X-Received: by 2002:a05:6902:4d3:: with SMTP id
 v19mr26182915ybs.500.1637237260529; 
 Thu, 18 Nov 2021 04:07:40 -0800 (PST)
MIME-Version: 1.0
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <3bbf42f3-bd9c-ed66-e421-8d78fbeb22ad@rock-chips.com>
 <4310886.V3yF0ifEZO@diego>
 <CAPj87rPNSt7nZX93prAYD3Emf-34RdTZWp_1TOuAybBebObZhQ@mail.gmail.com>
 <fba695b7-863a-c492-0209-41bc07c7baee@rock-chips.com>
In-Reply-To: <fba695b7-863a-c492-0209-41bc07c7baee@rock-chips.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 18 Nov 2021 12:07:27 +0000
Message-ID: <CAPj87rO86Mom-076Z5QX9hd=0bQi=AQcofkc1fSR4-VV2Zo6aQ@mail.gmail.com>
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
To: Kever Yang <kever.yang@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de, 
 =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>, 
 linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_040744_754188_3DD9C986 
X-CRM114-Status: GOOD (  35.44  )
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

SGkgS2V2ZXIsCgpPbiBUaHUsIDE4IE5vdiAyMDIxIGF0IDEwOjUwLCBLZXZlciBZYW5nIDxrZXZl
ci55YW5nQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPiBPbiAyMDIxLzExLzE4IOS4i+WNiDU6NTMs
IERhbmllbCBTdG9uZSB3cm90ZToKPiA+IEV4YWN0bHkgd2hhdCBIZWlrbyBzYWlkLiBJZiB5b3Ug
d291bGQgbGlrZSB0byB1cHN0cmVhbSB0aGUgZHJpdmVyIHRoZW4KPiA+IHRoYXQgd291bGQgYmUg
ZmFudGFzdGljIHRvIHNlZSwgYnV0IEknbSBhZnJhaWQgeW91IGRvIG5vdCBnZXQgdG8KPiA+IHBy
ZXZlbnQgc29tZW9uZSBlbHNlIGZyb20gZG9pbmcgdGhlIHdvcmsgdGhlbXNlbHZlcy4KPgo+IEZp
cnN0IG9mIGFsbCwgd2UgbmV2ZXIgc3RvcCBhbnkgb25lIHRvIGRvaW5nIHRoZXJlIHdvcmsgb24g
dXBzdHJlYW0gaWYKPiB0aGUgc291cmNlIGNvZGUgaXMgd3JpdGUgdG90YWxseSBieSB0aGVtc2Vs
dmVzLgo+Cj4gU2Vjb25kLCB0aGVyZSBhcmUgYWxzbyBtYW55IG1vZHVsZXMgYXJlIHVwc3RyZWFt
IGJ5IGRldmVsb3BlcnMgYmFzZWQgb24KPiBSb2NrY2hpcCBzb3VyY2UgY29kZSwgcGxlYXNlIG5v
dGUgdGhhdAo+IGFsbCBvZiB0aGVtIGhhdmUgYmFzaWMgcmVzcGVjdCB0byBvdXIgd29yaywgdGhl
eSBkbyBjb21tdW5pY2F0ZSB3aXRoIHVzCj4gZmlyc3QuCj4KPiBCdXQgdGhpcyBjb21taXR0ZXIg
ZG8gbm90IHRha2UgYW55IHJlc3BlY3QgdG8gb3VyIGVuZ2luZWVycyBhbmQgdGhlaXIKPiBoYXJk
IHdvcmtpbmc6Cj4gLSBIZSBkaWRuJ3QgY29udGFjdCB3aXRoIHVzOwo+IC0gVGhlcmUgaXNuJ3Qg
IGFueSBpbmZvcm1hdGlvbiBhYm91dCBvcmlnaW5hbCBhdXRob3IgaW4gdGhlIGNvbW1pdCBtZXNz
YWdlOwo+ICAgICAgQXMgSSBoYXZlIGtub3duLCBpZiBJIHVzZSBzb3VyY2UgY29kZSBmcm9tIGFu
b3RoZXIgZGV2ZWxvcGVyLCBJCj4gbmVlZCB0byBhdCBsZWFzdCBhZGQgYSAiU2lnbmVkLW9mZi1i
eSIgd2l0aCBvcmlnaW5hbCBhdXRob3I7Cj4gLSBUaGlzIGNvbW1pdCBhbmQgbWFpbCBkb2VzIG5v
dCBldmVuIGhhdmUgYSAnQ0MnIHRvIG9yaWdpbmFsIGF1dGhvci4KPgo+IEkgTkFLIGJlY2F1c2Ug
SSAgdGhpbmsgdGhpcyBpcyBub3QgcGFydCBvZiB0aGUgIG9wZW4gc291cmNlIHNwaXJpdCwgYW5k
Cj4gdGhpcyBraW5kIG9mICBiZWhhdmlvciBzaG91bGQgbm90IGJlIGVuY291cmFnZWQuCgpPSywg
SSBzZWUgd2hlcmUgeW91J3JlIGNvbWluZyBmcm9tLCBhbmQgSSBhZ3JlZSB0aGF0IHRoZSBhdHRy
aWJ1dGlvbgpzaG91bGQgaGF2ZSBiZWVuIGhhbmRsZWQgbW9yZSBjYXJlZnVsbHkuCgpPbiB0aGUg
b3RoZXIgaGFuZCwgcGxlYXNlIGNvbnNpZGVyIHRoaXMgZnJvbSB0aGUgb3RoZXIgcGVyc3BlY3Rp
dmUuClNhc2NoYSBoYXMgYmVlbiBmcmVlIHRvIHRha2UgdGhlIGRvd25zdHJlYW0gUm9ja2NoaXAg
QlNQIGNvZGUgYW5kCmF0dGVtcHQgdG8gdXBzdHJlYW0gaXQgdG8gdGhlIExpbnV4IGtlcm5lbCwg
d2hpY2ggeW91IGFyZSB1bmhhcHB5CmFib3V0LiBCdXQgdGhlbiB0aGUgUm9ja2NoaXAgZHJpdmVy
IHdhcyBkZXZlbG9wZWQgdG90YWxseSBkb3duc3RyZWFtLAp3aXRoIG5vIGF0dGVtcHQgdG8gZXZl
ciBjb21tdW5pY2F0ZSB3aXRoIHRoZSB1cHN0cmVhbSBMaW51eCBvciBEUk0vS01TCmRldmVsb3Bl
cnMuIFJvY2tjaGlwIGFkdmVydGlzZXMgdGhhdCBpdCBpcyBzaGlwcGVkIGFzIGEgTGludXgga2Vy
bmVsCndpdGggYSBLTVMgZHJpdmVyLiBCdXQgd2Ugd2VyZSBuZXZlciBpbmZvcm1lZCwgb3IgQ0Nl
ZCwgb3IgYW55dGhpbmcuCgpJZiB5b3Ugd291bGQgbGlrZSB0aGUgY29tbXVuaXR5IHRvIG1vcmUg
YWN0aXZlbHkgd29yayB3aXRoIHlvdSAtIHRoZW4KcGxlYXNlIHlvdXJzZWxmIHdvcmsgbW9yZSBh
Y3RpdmVseSB3aXRoIHRoZSBjb21tdW5pdHkuIFRoZSBmaXJzdApjb21taXQgb2YgdGhlIFZPUDIg
ZHJpdmVyIHdhcyBpbiBKdWx5IDIwMjAsIGFuZCB0aGF0IHdhcyBvZiB0aGUgZnVsbApkcml2ZXIg
c28gcHJlc3VtYWJseSBpdCBzdGFydGVkIHF1aXRlIHNvbWUgdGltZSBiZWZvcmUgdGhlbi4gU28g
dGhhdAppcyBhIG1pbmltdW0gb2YgMTcgbW9udGhzIHRoYXQgeW91IGhhdmUgaGFkIHRvIGVuZ2Fn
ZSB3aXRoIHVwc3RyZWFtCi4uLgoKVGVjaG5pY2FsbHksIHRoZSBkcml2ZXIgY2Fubm90IGJlIHVw
c3RyZWFtZWQgYXMtaXMuIEl0IGxvb2tzIGFzIGlmIGl0CndlcmUgYSBwcmUtYXRvbWljIGRyaXZl
ciwgdGhhdCB3YXMgaGFsZi1jb252ZXJ0ZWQgdG8gYXRvbWljLCBhbmQgdGhlbgpoYXMgYmVlbiBo
YWxmLWNvbnZlcnRlZCB0byBhdG9taWMgaGVscGVycyBhcyB3ZWxsLiBUaGluZ3MgbGlrZQpyZWZl
cmVuY2UgY291bnRpbmcgYW5kIGdsb2JhbCBzdGF0ZSBhcmUgbm90IGhhbmRsZWQgY29ycmVjdGx5
IGF0IGFsbC4KWW91IGNhbiBzZWUgdGhpcyBpZiB5b3UgdHJ5IHRvIHJ1biBXZXN0b24gb24gdG9w
IG9mIHRoZSBWT1AyIGRyaXZlcjoKdGhlIGZyYW1lcmF0ZSBpcyBkZWNpbWF0ZWQgYmVjYXVzZSB0
aGUgZXZlbnQgaGFuZGxpbmcgbWFzc2l2ZWx5Cm92ZXItc3luY2hyb25pc2VzLCBhbmQgdGhlIGV2
ZW50IHRpbWVzdGFtcHMgd2hpY2ggYXJyaXZlIGFyZQppbmNvcnJlY3QuIFRoaXMgd291bGQgYmUg
Zml4ZWQgYnkgY29ycmVjdGx5IHVzaW5nIHRoZSBldmVudCBoZWxwZXJzCnRoYXQgd2UgaGF2ZSBo
YWQgaW4gdGhlIHRyZWUgZm9yIHllYXJzICh3aGljaCB3b3VsZCBhbHNvIGVsaW1pbmF0ZSB0aGUK
dW5uZWNlc3NhcnkgZnJhbWVidWZmZXIgcmVmZXJlbmNlIGhhbmRsaW5nKS4gSXQgYWxzbyBkb2Vz
IG5vdCB3b3JrCndpdGggdGhlIEdQVSBkcml2ZXJzIGluIHRoZSB0cmVlIGJlY2F1c2UgaXQgbGFj
a3MgdGhlIG9uZS1saW5lciB0bwpjb3JyZWN0bHkgaGFuZGxlIGRtYV9yZXN2IHN5bmNocm9uaXNh
dGlvbiwgd2hpY2ggbWFrZXMgaXQgYm90aCB0b28KZmFzdCBhcyBpdCBkaXNwbGF5cyBjb250ZW50
IHdoaWNoIGlzIG5vdCByZWFkeSwgYW5kIHRvbyBzbG93IGJlY2F1c2UKaXQgY2FuJ3QgZG8gaXQg
YXQgZnVsbCBmcmFtZSByYXRlLgoKU2ltaWxhcmx5LCBvbiB0aGUgUkszNTY2IEVWQiwgdGhlIERT
SSBkb2VzIG5vdCB3b3JrIHVubGVzcyBIRE1JIGlzCmFsc28gYWN0aXZlLCBidXQgd2hlbiBIRE1J
IGlzIGFjdGl2ZSBhdCB0aGUgc2FtZSB0aW1lIGFzIERTSSwgaXQganVzdApzaG93cyBhIGJsYW5r
IHNjcmVlbi4gSSBiZWxpZXZlIHRoZSByb290IGNhdXNlIG9mIHRoaXMgaXMgdGhhdCB0aGUKVk9Q
MiBkcml2ZXIgZG9lcyBub3QgdXNlIGFueSBvZiB0aGUgYXRvbWljIHN0YXRlIGNvcnJlY3RseSwg
YW5kCmluc3RlYWQgc3RvcmVzIGl0cyBvd24gc3RhdGUgaW4gZHJpdmVyLWdsb2JhbCBzdHJ1Y3R1
cmVzLCB1c2luZyBhIGxvdApvZiB1bm5lY2Vzc2FyeSBtdXRleGVzIHRvIHRyeSB0byBzeW5jaHJv
bmlzZSB0aGlzIHN0YXRlLiBOb3Qgb25seSBkb2VzCnRoaXMgc3luY2hyb25pc2F0aW9uIG5vdCBh
Y3R1YWxseSB3b3JrLCBidXQgaXQgY2F1c2VzIGEgc2V2ZXJlCnBlcmZvcm1hbmNlIGRlZ3JhZGF0
aW9uIGR1ZSB0byBtdXRleCBjb250ZW50aW9uLgoKSSBiZWxpZXZlIHRoZSBiZXN0IHBhdGggZm9y
d2FyZCB0byBhbiB1cHN0cmVhbSBWT1AyIGRyaXZlciBpcyBhIHBhdGNoCnNlcmllcyBjb25zaXN0
aW5nIG9mOgogIC0gc3RhcnQgZnJvbSBhIGJsYW5rIHNsYXRlLCB1c2luZyB0aGUgYXRvbWljIGZy
YW1ld29yayBhbmQgaGVscGVycwphcyB0aGV5IHdlcmUgaW50ZW5kZWQgdG8gYmUsIHdpdGggYmFz
aWMgc3VwcG9ydCBmb3IgdGhlIFZPUDIgYW5kIG9uZQpvciB0d28gY29ubmVjdG9yIHR5cGVzLCBk
b2luZyBsaW5lYXIgWFJHQiBvbmx5CiAgLSBhbnkgY2xlYW51cHMgd2hpY2ggd291bGQgZW5hYmxl
IHRoaXMgdG8gc2hhcmUgbW9yZSBjb2RlIHdpdGgKICAtIGFkZCBZVVYgc3VwcG9ydCwgaW5jbHVk
aW5nIHBsYW5hciBidWZmZXJzCiAgLSBhZGQgQUZCQyBzdXBwb3J0LCB3aXRoIHRoZSBBRkJDIGVu
YWJsZS9kaXNhYmxlIGNvcnJlY3RseQpzeW5jaHJvbmlzZWQgdGhyb3VnaCBhdG9taWMgc3RhdGUg
KHRoaXMgaXMgbmVjZXNzYXJ5IHNpbmNlIHRoZSBBRkJDCmRlY29kZXIgaXMgbm90IGRpcmVjdGx5
IG9uIHRoZSBwbGFuZXMgcGVyIHNlIGJ1dCBzaGFyZWQpCiAgLSBhZGQgbW9yZSBjb25uZWN0b3Ig
dHlwZXMKICAtIGFkZCB3cml0ZWJhY2sgc3VwcG9ydAogIC0gYWRkIG90aGVyIFJvY2tjaGlwLXNw
ZWNpZmljIGNvZGVwYXRocyBzdWNoIGFzIEhEUjEwCgpDaGVlcnMsCkRhbmllbAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
