Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 685D7C79FBA
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jan 2026 19:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOkwqDPiJtuNJF0CXxG5thdkm6dcpqHCQ4V+TlfWnQ0=; b=neJXttU5PAcCSk
	EHIbFXZMDSXn2WoYvgCi6Gva3S4yys/CmsMErCr57ow/cAq5ll/4IAf4Osti3+tTrgGwL+IcEZe/q
	INrBWvYY3iJlkZ83xJakhG8f9yz6Tbc+umXDJaKlOzqWH4vdezSb8fEf44uSXGuRRT9Ud/jIouf01
	9fg6TkND2fI+4PKSA7kRPvhJDNShZRn3A9wEI0D7KbxT+4LrZmwuI+OsKFWyoNTQykGCIt6B7oxtq
	2G9Ldhho3fE6657ui6/iqXng+7cd7Ow7ajuZvAjSeGYSNI3P3eeyb0N/trjuDWslEqY/021Qwd+kD
	yLc/sSHT5I4mF6157Shg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcqMo-0000000BzGB-3EZm;
	Mon, 05 Jan 2026 19:35:50 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcqMg-0000000BzFG-3aoF
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Jan 2026 19:35:49 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-64d0d41404cso381148a12.0
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Jan 2026 11:35:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1767641739; x=1768246539; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cCvkvL2C/5gj+RhnXidCQE8qJ7m+kanbEcL9OclNPb4=;
        b=g7AklKKac3z+zSV8AkisHWJYANZUAFfk6rISttgwg2CNrVxEngJd6Fmf4g5c4NMgli
         GPq+h6AbTeiNop7SA3WnhTKYfcZSQumMsaylA8PVQ4Qsf1kS5S1E5X4TZ/G0PusAem/L
         nO7rvnhPQDjtpbasajJB8nhK40XfGNIyIEQSc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767641739; x=1768246539;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cCvkvL2C/5gj+RhnXidCQE8qJ7m+kanbEcL9OclNPb4=;
        b=agusD3zA9Wv8c3dGv+44aKMPGOjT37pwe5HUNlPpOIHGt+MaUj+edO04gTKyTpth3b
         iCcfakDLklbN+2P+SDASxqJiKGKE0d2xdXGGYaHZmeHMe3dlYfmq/JGWYlBHL2/EnOOl
         H6ugwCsPl4edKJS7YYojYwu4E93xndhYe6HrHPod1kmjav92Aez1nR3DlhF3m89Jk5uv
         9gm4amYap0YzZUoHrVV5lnLR/hoZEhTsLIyhsciW9QWMdSVij2JQ/qVemCDUfbrjKu0Q
         TABpnte9DjcWdNzgsmCheDc8DJd2EogrZ55Bh1TareThDzu2e8Qc2JsEoNF4iqVBBsB9
         2oMQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/8EwFmqAo+QsTByaB65gzY2U6j0IC2Doa1VVMQQ/4zSdCjuqlqE5lKCiRb5KfjxPbBQX7RT0ptZAwnL35xw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxZq1Bv9VAysRyYxSXpFjeiumTYC8bnaNIGIpmp1h7WOhYS4YUb
	NsDQGl+VXBJOV9ZybuMuaVN7Ior0EKexbQlMR6kxavSAyJhrCuwIpCH6QtB4uxXO2OyGjncC3qG
	aMLReTQ==
X-Gm-Gg: AY/fxX7U4scG/8ZBhkd6f8L7Rbw+Ht2QiCwTY4vBj0xEzBzQJnTy8Hm91fU+LdVJsrS
	1jCKjKIhBPqqnYLO9NxMy/VlWeIJqLEsMcu6R9S7exnp/CnKZbxU+F95PFBWCCB8BqaEvRcC6lX
	cIdwmBty8cMWLBDNRraGXaj+rO1k/Wq0wLZ8Cj79Yo1CT3TKmQE3mORdyo8h1MfKBAPu2jg/1c4
	n/KfBJOl+xTaWRqXnEQ/mSQ7DvkLXueaY7hPGTp1RlKNQ7DLft00IV8RvJvDKcDVCLZ9HO4EZCp
	Dvw8KjxtrmqeUkTaUk92P5+9ohTMEnYg/ciJn2LVCJmwH5cDLhcLmvIcX9mM5XcudODzKt9ms5K
	FFbe80DcGArOF9I9e5Dhe65khMdyvFBlWHGBVcXWRDJCqo9Qwq7EcikrBVSduw/gRYSthXNg8TJ
	d4fgoUBi0UT9uZMYWPNwaq2n+Q3u0wpzCYc0+wlN1yWHZ41cTLMSW+A7E20SU1
X-Google-Smtp-Source: AGHT+IFOH9UWMaZnrYnp3wjfulAFp5FE6/EDQljR3Pkkh83i3j1An5noe1ixHQIiwEuUjW2mNSqdbw==
X-Received: by 2002:a05:6402:354e:b0:64b:7ab2:9f83 with SMTP id 4fb4d7f45d1cf-65079685997mr404275a12.31.1767641739619;
        Mon, 05 Jan 2026 11:35:39 -0800 (PST)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com. [209.85.221.51])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b9eb402sm273888a12.15.2026.01.05.11.35.38
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 11:35:38 -0800 (PST)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-4327790c4e9so116640f8f.2
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Jan 2026 11:35:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVn9tG9mcS5qQQDbT6uiDPte6JNwNqzwl7/7FSxwNkBLL+hQcEXfZCIFgExX4soZwNK4Ll9IUfcRmCHRAPBbQ==@lists.infradead.org
X-Received: by 2002:a05:6000:2089:b0:431:53:1f49 with SMTP id
 ffacd0b85a97d-432bca5166emr1151221f8f.41.1767641738057; Mon, 05 Jan 2026
 11:35:38 -0800 (PST)
MIME-Version: 1.0
References: <cover.1767111804.git.robin.murphy@arm.com>
In-Reply-To: <cover.1767111804.git.robin.murphy@arm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 5 Jan 2026 11:35:26 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UkCYRPbs3u3jGRZaqs4EW4-zA75iAaqM+=Weom1uojmw@mail.gmail.com>
X-Gm-Features: AQt7F2qVclSy_2QUaj476pwucQuko2WJOWlBn7va8S3tPYkC358gB4ruqkJGhvQ
Message-ID: <CAD=FV=UkCYRPbs3u3jGRZaqs4EW4-zA75iAaqM+=Weom1uojmw@mail.gmail.com>
Subject: Re: [PATCH 0/4] Properly support FriendlyElec HD702E
To: Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, neil.armstrong@linaro.org, thierry.reding@gmail.com, 
	sam@ravnborg.org, jesszhan0024@gmail.com, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_113547_084958_2C713F33 
X-CRM114-Status: GOOD (  16.60  )
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

SGksCgpPbiBUdWUsIERlYyAzMCwgMjAyNSBhdCA5OjIw4oCvQU0gUm9iaW4gTXVycGh5IDxyb2Jp
bi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4KPiBIaSBhbGwsCj4KPiBJJ3ZlIGJlZW4gdXNpbmcg
dGhlIEhENzAyRSBMQ0QvdG91Y2hzY3JlZW4gb24gbXkgTmFub1BDLVQ0IGZvciBhIGZldwo+IHll
YXJzIHVzaW5nIG15IG93biBEVCB3aXRoIHRoZSAic2ltcGxlLXBhbmVsIiBiaW5kaW5nLCBidXQg
bm93IHdlIGhhdmUKPiB1cHN0cmVhbSBvdmVybGF5cyBJIGZpZ3VyZWQgaXQncyBhYm91dCB0aW1l
IHRvIHRyeSBkb2luZyBpdCBwcm9wZXJseS4KPiBUaGUgc2NyZWVuIGl0c2VsZiBkb2Vzbid0IHNl
ZW0gdG8gd2FudCB0byB3b3JrIGFzIGEgZ2VuZXJpYyAiZWRwLXBhbmVsIiwKPiBhcyBpdCBhcHBl
YXJzIHRoZSBFRElEIGlzbid0IHJlYWRhYmxlIHVudGlsIGFmdGVyIHRoZSB3aG9sZSBsb3QgaXMK
PiBlbmFibGVkIC0gSSdtIGd1ZXNzaW5nIHRoaXMgbWlnaHQgYmUgdG8gZG8gd2l0aCB0aGUgQW5h
bG9naXggZHJpdmVyJ3MKPiBmb3JjZS1ocGQgYmVoYXZpb3VyIC0gYnV0IHNpbmNlIHdlIGRvIGFs
cmVhZHkgaGF2ZSB0aGUgbGVnYWN5IGRhdGEsIGl0Cj4gZG9lc24ndCBzZWVtIHVucmVhc29uYWJs
ZSB0byBrZWVwIHVzaW5nIGl0LgoKT2gsIEkgZ3Vlc3MgSSBzaG91bGQgaGF2ZSByZWFkIHRoZSBj
b3ZlciBsZXR0ZXIgYmVmb3JlIHRoZSBwYXRjaGVzLiBTb3JyeSEgOigKCkknbSBob3BpbmcgdGhh
dCB3aXRoIHRoZSAiaHBkLWFic2VudC1kZWxheS1tcyIgeW91J2xsIGJlIGFibGUgdG8gcmVhZAp0
aGUgRURJRC4gSSdkIGJlIHN1cnByaXNlZCBpZiBzb21ldGhpbmcgZWxzZSBpcyByZXF1aXJlZCwg
YnV0IGxldCBtZQprbm93IGlmIHRoYXQgZG9lc24ndCB3b3JrLgoKLURvdWcKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
