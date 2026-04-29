Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A366CCFA13
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 17:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZhK7MGVXPOSxZf1hsHw2kW5tUhz7XXk3238JEYQDi8=; b=QIX8JSr0P4Yjq7
	zvSb/V9g8gtmt5kGnANK5bmacB1g7AqND1SEDxGyrkwXF86qqbAp5kLP30VTAfEVDKL4YRQljJzDx
	s3IKohQPmAuGXd3GeMj/tjBHwLqlJWJ+pS34I+/yyQNfy9tOCM/M2t1fIuHYiG+ALz9Wh1AFHe9Y4
	HjkfzstneiEpt8GaOZc0bqSxg9xp6R5Pcmp6+lFnfYRRrmrra2wPrwB5OFSScndNhzW9nRVo/af0E
	5iYBK0C/x8Uf80lrlmHhSGwsX2Cic90cymu5QfTOAJuCm7abP/ihg/beM6MoCCdcwXSmNZSH6W0DD
	LYObhVnO99g9o6xjwfxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI8TG-00000003xHO-1IZX;
	Wed, 29 Apr 2026 17:13:10 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI8TE-00000003xGg-1U4h
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Apr 2026 17:13:09 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-82735a41920so27930b3a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Apr 2026 10:13:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777482787; cv=none;
        d=google.com; s=arc-20240605;
        b=YNSJTjUHtlv+UUln92Ij9EMOOIx2CN8z6iq33ddof6D1700XiSJGTJiv01npVpTyKK
         UNaHgnjdY3pp6K39cguuZ2+CyEWtyYhNr8pASpCNcS1Qiw4zSgDN9lZWKO0ChsmCqfy9
         KsdpWuCqOOglcq0s0aGcH8JAXllwtnX6wb+ILHil2w+eeAsZ5c8VLwvVoFZpIm9g49Ac
         pulDPmCa5QFaBLS7T19Rf+Dx/2xc4lKBv5GGbQsskU4z6uS6O6klfEcRJeyNRLkXpjih
         /+5fOzlL0h6Lx0V24vBeQ7jTuSQulUiTrGBVUd310BdxpReLD/fGRwO0Qp89vGuP7C32
         ub/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=keKJyATHH/9XZlJC+tuXNxKnBFaRlDa69beG7NG/Ie0=;
        fh=PAX3Sc94md+RVg9vs8LyTf1Yx1OAEb1IggF8v+Fv30A=;
        b=clYF577BEfVRPgAxHXZ5vvltv6xGYlJasvpR4pVcFSO5RRTBFLLD9jg3mjA2AtW995
         e+D8cB4S6gSPtOE/5POu+ipjzxQFW95M+h8IwgIG/8UQm85bxljvgyODGMzFSJvQcp/Q
         lgPsNvC99XLI/iCt3LYBHZ5G5yLqdvIjc6ONePuBrfxFh4t8femeuowQ9xgprLf4CvD0
         mJcLBTKJfN3LjGOCxcLVyc06tXDU2v75xWKbXnpWlnoetzj1DcJDr9mqGxXYTnHIOF6G
         pV2zUc4p9tu2yntOnbniaswWa+DYaFHzKf2B0OxYkgx6IO3KJC4TKH6mGg1UOL6rB3Lp
         RwUA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777482787; x=1778087587; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=keKJyATHH/9XZlJC+tuXNxKnBFaRlDa69beG7NG/Ie0=;
        b=bKdl5iUNA3O9BKMdyxJu/8DkkMr1yxNEVjlAFOy5eKyWxdZllSJmH9kxMc3rwXI3/i
         gWmuZtKIIugz5qJ/7NgJwRZhLUQRtaQ3TXnLVRzYduvSnqfjrdipcsk5JjMQNMbJ9cLZ
         rdmVtopHmZm4yOdQh4ER9fRwMjwmtb6ErXkaKG49wbYmNApuNNg3YHUZZDlugUu/C2FY
         ufSy6p7QQ76S6Z9xnk2yf6AvbcCPBe++Ras58RXdv3p8JDrpyMNxfl+vkEK5olsPnE+a
         yNMt05K0OsioaCqT++AULcui/CFts0WHHKK1R32bTpWgZHgo7yeCPGLuWv6fNLUZCGGL
         jQNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777482787; x=1778087587;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=keKJyATHH/9XZlJC+tuXNxKnBFaRlDa69beG7NG/Ie0=;
        b=eJHSlIMNJ9BQVGLbRXkPLiEpDhm4TFU74zwYuRkIsuY0jCkaH4k9OU2Ejd1qb3ODjp
         M3TdH5jn3fV95V7ebStQfNQ0dNNpJivSR4yr7apsu4xfUX8FT5eIaMwE9AJ8tCuCYGWj
         tpzC/p8Z9ZncvxMjrhcuJzdto8VAtMxr6R8QpqclYrVfYwfHxUqsiYClaCMGok4YPXZD
         gsdTh9/Uq3153u9rVRLqPhVS1EmbxBTk5j95WuQQaYv+0TvFLA6ze4+wU/76U9EzoK8u
         bWcYaWxel5GsexScm1dc5uW91cGUFx2i0q2byttaJcLQudjAP+0fDkuQeqMQTSaM92wc
         WA1Q==
X-Forwarded-Encrypted: i=1; AFNElJ/uQwfQvfrfo6RwmJyFSqwuWUjwcMO5j/hS15de0frFym+EHccfRssSdnrXSYRDCoX+Osv4MrReE8AW8pSlvg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4od8FMZMveSd8vmKcfbSOpwT1SEpLX+Y2TErcyGkHzVDRoTmj
	XUxXU8h8UC5vHw7LDiAriTdSNanjfIGm137p08f4qioNTv72udbr5cxEYL77y6JPz8bDdBtXidD
	uOoU9PXoBDgCIzQ+3RqH/884sKSVFjX0=
X-Gm-Gg: AeBDievPsQs4I6fe1KJa9rMv/Cd2jVr+v/pWhwz9OWvk+QJfSLg5ewu2ckVXd9GEoM9
	Lo/fH0TwKbw9JsEdmIThpHhcpc4VFlQRE1V8Avy3wuR4+808lUw8akYjcYncfg1w00pXXsd9Ths
	SxLl4s3Nk49pjNFPtU33zZz6DFdgKZzLRdxDAK8jbiqHs+05y7eDFDPOiK/LjfC5P9WJm5JD9a+
	NyafT8NeVjpD2b3UKoxptjhSQOyZ2FsM453jsE2QptEx6mrU2SZvuEa1ZtXTh2ysPbFjaZuLGJu
	+8tB9njqxrDsIaLCzjFyH7LP58nqRsXqMY8tkhmmiMvQjoRdsMvLLJ7/WlXZbszuUtrUegA4qlS
	vRgm59Fw=
X-Received: by 2002:a05:6a00:338e:b0:82a:5d55:5807 with SMTP id
 d2e1a72fcca58-834ea5688a1mr4806793b3a.6.1777482787258; Wed, 29 Apr 2026
 10:13:07 -0700 (PDT)
MIME-Version: 1.0
References: <20260423042831.21114-1-phucduc.bui@gmail.com> <20260423042831.21114-2-phucduc.bui@gmail.com>
 <20260423-ingenious-psychedelic-jaybird-40bb4d@quoll> <CAABR9nGH4yZcgyzm=wNYVHB2vLhojZJSHKOC6dSeQPm0rbh4KQ@mail.gmail.com>
 <ce219aa2-0bb1-4a74-b40d-bd753f1a22dd@kernel.org>
In-Reply-To: <ce219aa2-0bb1-4a74-b40d-bd753f1a22dd@kernel.org>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Thu, 30 Apr 2026 00:12:55 +0700
X-Gm-Features: AVHnY4I11t3zhGT597ar3Rdt0vn7aUxGwU6Xnaq00d5qQJd5Fda2EZBP9xaayKI
Message-ID: <CAABR9nHaGBU9KAWJZrnBy8HO0Waccp8CCGmBdKJ3QOEb8WZsXA@mail.gmail.com>
Subject: Re: [PATCH 2/2] ASoC: dt-bindings: drop redundant wakeup-source definitions
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Joseph Chen <chenjh@rock-chips.com>, 
	Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, 
	David Rau <David.Rau.opensource@dm.renesas.com>, 
	Animesh Agarwal <animeshagarwal28@gmail.com>, devicetree@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_101308_405592_8164E539 
X-CRM114-Status: GOOD (  27.39  )
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

SGksCgo+IFllcy4gQW5kIHRoZSBBQkkuIFlvdSBjYW5ub3QgaGF2ZSBBQkkgd2hpY2ggaGFzIGFu
IGluY29tcGF0aWJsZQo+IGltcGxlbWVudGF0aW9uLiBJT1csIHdoZW4gaW1wbGVtZW50YXRpb24g
Y29udHJhZGljdHMgdGhlIEFCSSwgc29tZXRoaW5nCj4gaXMgd3JvbmcuCj4KPiBUaGUgcXVlc3Rp
b24gb2YgY291cnNlIGlmIHJlYWRfYm9vbCgpIGlzIGhlcmUgaW5jb21wYXRpYmxlLiBGcm9tIHRo
ZQo+IGFjdHVhbCBjb2RlIHBvaW50IG9mIHZpZXcsIGl0IGlzIGNvbXBhdGlibGUsIGJ1dCBob3cg
aXQgaXMgZG9jdW1lbnRlZAo+IGFuZCBob3cgaXQgaXMgaW50ZW5kZWQgdG8gdXNlOiBpdCBpcyBu
b3QgY29tcGF0aWJsZS4KPgo+IEFsc28gaWYgZnV0dXJlIHNjaGVtYS1rZXJuZWwtQUJJIGNoZWNr
ZXIgZ2V0cyBpbXBsZW1lbnRlZCwgdGhlIHRvb2wKPiBtaWdodCByZXBvcnQgaGVyZSBhIG1pc3Rh
a2UgZm9yIHRoYXQgcmVhc29uLiByZWFkX2Jvb2woKSBtZWFucyBwcm9wZXJ0eQo+IGlzIGJvb2wu
Cj4KPgo+ID4gSWYgdGhlIGhhcmR3YXJlIHN1cHBvcnRzIHdha2V1cCBmdW5jdGlvbmFsaXR5LAo+
ID4gcmVmZXJlbmNpbmcgdGhlIGNvcmUgc2NoZW1hIGlzIHN1ZmZpY2llbnQuIEhhcmR3YXJlIGRl
c2NyaXB0aW9uIHNob3VsZAo+ID4gbm90IGJlIGNvbnN0cmFpbmVkIGJ5IHRoZSBjdXJyZW50IGRy
aXZlciBpbXBsZW1lbnRhdGlvbgo+ID4gKCBlLmcuIHRoZSB1c2Ugb2YgZGV2aWNlX3Byb3BlcnR5
X3JlYWRfYm9vbCgpICkuCj4gPiBCaW5kaW5ncyBzaG91bGQgcmVtYWluIHN0YWJsZSBhbmQgZ2Vu
ZXJpYywgd2hpbGUgZHJpdmVycyBjYW4gZXZvbHZlIG92ZXIgdGltZS4KPiBTbyB5b3UgY2xhaW0g
dGhhdCBiaW5kaW5ncyBjYW4gZGVmaW5lIHByb3BlcnR5IGFzIGludGVnZXIsIGJ1dCBkcml2ZXJz
Cj4gY2FuIGV2b2x2ZSBhbmQgZm9yIGV4YW1wbGUgcmVhZCBpdCBhcyBzdHJpbmc/CgpJIHNlZSB5
b3VyIHBvaW50IHJlZ2FyZGluZyB0aGUgQUJJIHNlbWFudGljcyBhbmQgdGhlIGludGVuZGVkIHVz
ZSBvZgpyZWFkX2Jvb2woKS4KTXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IHRoZSBJMkMgY29yZSBj
dXJyZW50bHkgdXNlcyBvZl9wcm9wZXJ0eV9yZWFkX2Jvb2woKQpmb3Igd2FrZXVwLXNvdXJjZSBh
cyBhIHByZXNlbmNlIGNoZWNrLCBldmVuIHRob3VnaCBpdCBoYXMgbm8gd2F5IHRvCmRldGVybWlu
ZSBpbiBhZHZhbmNlIHdoZXRoZXIgYSBzcGVjaWZpYyBkZXZpY2Ugd2lsbCBkZWZpbmUgdGhlIHBy
b3BlcnR5IGFzCmEgYm9vbGVhbiBvciBhIHBoYW5kbGUtYXJyYXkgaW4gaXRzIERUUy4KCkZyb20g
YSBiZWhhdmlvcmFsIHBvaW50IG9mIHZpZXcsIHN3aXRjaGluZyB0byBvZl9wcm9wZXJ0eV9wcmVz
ZW50KCkgd291bGQKbm90IGNoYW5nZSBhbnl0aGluZywgYnV0IGl0IHdvdWxkIGJldHRlciByZWZs
ZWN0IHRoYXQgdGhlIGRyaXZlciBvbmx5IGNoZWNrcwpmb3IgdGhlIGV4aXN0ZW5jZSBvZiB0aGUg
cHJvcGVydHkgd2l0aG91dCBhc3N1bWluZyBpdHMgdHlwZS4KCklmIHRoZSBleHBlY3RhdGlvbiBp
cyB0byBzdHJpY3RseSBmb2xsb3cgdGhlIGJpbmRpbmcgdHlwZXMsIHRoZW4Kb2ZfcHJvcGVydHlf
cHJlc2VudCgpCnNlZW1zIG1vcmUgYXBwcm9wcmlhdGUgaGVyZS4KSSBjYW4gcHJlcGFyZSBhIHBh
dGNoIGFjY29yZGluZ2x5IGFuZCBzZW5kIGl0IHRvIHRoZSBJMkMgbWFpbnRhaW5lcnMgZm9yCnJl
dmlldyBhbmQgZmVlZGJhY2suCgo+ID4KPiA+IFJlLWRlZmluaW5nIHRoZSB0eXBlIGxvY2FsbHkg
ZHVwbGljYXRlcyB0aGUgY29yZSBkZWZpbml0aW9uLiBJZiB0aGUKPiA+IGNvcmUgc2NoZW1hIGV2
b2x2ZXMsCj4KPiBUaGVyZSBpcyBubyByZS1kZWZpbml0aW9uIGhlcmUuIFRoaXMgaXMgY2hvaWNl
IG9mIHN1YnNldCBvZiB0eXBlcy4KClRoZSBmbG93IGlzOiBjb3JlIHNjaGVtYSDihpIgWUFNTCBi
aW5kaW5nIChBQkkpIOKGkiBEVFMgKGFjdHVhbCB1c2FnZSkuCkZyb20gYSBoaWdoLWxldmVsIHBl
cnNwZWN0aXZlLCB0aGUgYmluZGluZyBtYXkgYXBwZWFyIHRvIHJlZGVmaW5lIHRoZQpwcm9wZXJ0
eSB0eXBlIGJ5IG5hcnJvd2luZyBpdHMgc2NvcGUsIHdoaWxlIHRoZSBEVFMgc2VsZWN0cyBvbmUg
dmFsaWQKcmVwcmVzZW50YXRpb24gZnJvbSB0aGUgcGVybWl0dGVkIHNldC4KCj4gV2hlcmUgaXMg
Um9iJ3Mgc3VnZ2VzdGlvbiB0byBkbyBzdWNoIGNsZWFudXBzIGZvciBFWElTVElORyBjb2RlPyBJ
IG9ubHkKPiBzZWUgdGhhdCBuZXcgY29kZSBzaG91bGQgY29tZSBsaWtlIHRoYXQuCj4KPiBBbnl3
YXksIHlvdXIgY29tbWl0IG1zZyBpcyBmb3IgbWUgaW5jb3JyZWN0IGJlY2F1c2UgaXQgbWlzc2Vz
IGFsbCB0aGlzCj4gcG9pbnRzIEkgbWFkZS4gV2hldGhlciB0aGUgc2NoZW1hIGNvZGUgaXMgY29y
cmVjdCwgSSdsbCBkZWZlciB0byBSb2IsCj4gYWx0aG91Z2ggSSBzdGlsbCBjbGFpbSB0aGUgc2Ft
ZSBJIGNsYWltZWQgYmVmb3JlIGF0IHYyIG9yIHYzIG9mIHlvdXIKPiBwcmV2aW91cyB3b3JrIC0g
dGhpcyBzaG91bGQgaGF2ZSBkZWZpbmVkIHR5cGUuCgpZb3UgYXJlIHJpZ2h0IHRoYXQgUm9iIGRp
ZCBub3QgZXhwbGljaXRseSByZXF1ZXN0IGNsZWFudXBzIHRvIGV4aXN0aW5nIGNvZGUuCkkgaW5j
bHVkZWQgdGhlbSB0byBpbXByb3ZlIGNvbnNpc3RlbmN5IHdoaWxlIHdvcmtpbmcgb24gdGhlIG5l
dyBwYXJ0cywKYnV0IGZvciBub3csIEkgd2lsbCBzdG9wIG1vZGlmeWluZyB0aGUgZXhpc3Rpbmcg
Y29kZSBhbmQgd2FpdCBmb3IKUm9iJ3MgZmVlZGJhY2suClNpbmNlIHRoZXJlIGFyZSBkaWZmZXJp
bmcgcGVyc3BlY3RpdmVzLCBJIHdvdWxkIGFwcHJlY2lhdGUgYSBjb25zZW5zdXMKb24gdGhlIHBy
ZWZlcnJlZAphcHByb2FjaCBiZWZvcmUgSSBzZW5kIG91dCB0aGUgbmV4dCB2ZXJzaW9uIHRvIGF2
b2lkIHJlZHVuZGFudCByZXdvcmsuCgpCZXN0IHJlZ2FyZHMsClBodWMKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
