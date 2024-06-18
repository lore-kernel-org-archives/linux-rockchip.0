Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBEE8C27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 16:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXvtxwvkfOoLozg4ztP+XNwHmrj0y+MELcktN3Ossrk=; b=O5ums23ITGKrg7
	XKW4xtoN+yUgHG+Oh5uKXN/VJ/ldpsMt3hXyvzyIlkGDECuh5LUrl8P4pARgS8PRJ0vgfsMmwuQDF
	LYMo7XMj0VO4dCbWgHM2Ai0EflrmAxz/eQNut9yKdofIrAI4M9v2cFjocSrxu1OuFYb8ZPmtww7XZ
	Wxd5Dgja/ZADSBPiEvsxDVEgBlzOh4iIbTjBOtaQq86ijKsJzbtjDULwMXufnjDq9TjQT7zhIHwRm
	EhjNI0Ve/bj+8OTfiG0Ve9Uc6oWhj7hxzC4Lc4t9NpGFpBm6k1OsJVnSWvppLJdJJx2Nrme9JrUdN
	8h6sGcxMlwNSo5iE2S9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbmi-0000000FsJc-2Ns8;
	Tue, 18 Jun 2024 16:34:16 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbmf-0000000FsGL-3KTF
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Jun 2024 16:34:15 +0000
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-7961fb2d1cfso483255985a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Jun 2024 09:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1718728450; x=1719333250; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UyATPdua0xIvG9IEZTu2KPUCxjrD23ixmP+LULFeCqg=;
        b=pFRdbGcrKhf445QQ03xUT1x7f6J+DorhjbGnjH+pkwxwpl2wGVRGtOG3PnT+eC9nO7
         Uhtc/T8AB2jCGRYcGMcODLeVtVLF1xEFXz/j/6UrpxJOPkkJcmL0RfMlOSR+MRWzXZF7
         NUvtTESrQMOmKbBdO/uXAi6kFXPYcqeO74VK5xXW/IWXd3or89RJZl2c6BS2juBXBvts
         3lxXnOt/CRxAyPucUGcm2cbHFf3tztfzU93IiPljP921SeW2iw1Hyqyp2GF+EnhSCkeO
         21451MNhAtqhFNZ9hymzRUGJH49NgJkoPbhibCqKx1VmHsj06YaUEJVYTcJIWEXL8PXb
         YAOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718728450; x=1719333250;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UyATPdua0xIvG9IEZTu2KPUCxjrD23ixmP+LULFeCqg=;
        b=n+sKWp4DDG233637o4qZnL5+xDN1+mrQaUdoHAA0K5rLGTYcB14gVAj0YqsCUPO39u
         K62QsinKUlGAw1ohgha8MPqeDFsj2snMKFjVaxJP96qE+DY06tYc6OPN/QGlEMy9eIfK
         NxT7k7I+hePQYflRaR7SGu6rOerDquHIjSndGh8Sbna06S6cDj9B1O6ZBLxQcUFwXIfL
         h38pJRo6XH8LosSd1YuZIYpIDPC36HVoJWADFz9ikq5w7cQm+63SDO/2qua0aOhmEukC
         et3G/hrzPW+rRFrKLbMpJ2LrDXC3DGBplZ/yT8pMOmmMlTBrCtauJZ2CO8aGeQ0lPn0z
         8nGw==
X-Forwarded-Encrypted: i=1; AJvYcCVi8l1uO+N2vRyN19+Jx0FNS5E1k5S9sljikt1BPNZj7QhgvxsVXL0kuk/VrJ3NZ7qPqsF8nmx5YjgLH5ab5dUQb+iwp3XckZK7XSq+iVCQ4Tkj
X-Gm-Message-State: AOJu0YyeLb8RSAy3MXY0fEn6FyfZPKJEbZQ6IUffzLYW0GeR5k2Qi7dj
	+su2HYtz4OaZAWPGSSYCOa2ILlo6e+se8s2pDxJc6CkP1f+Lnd6aoKV1SoC8B5M=
X-Google-Smtp-Source: AGHT+IHobfGlJhLnHEFotyk1CGxdoLtB4S8IrrxZ0v/h08LqEqBMy+9LORb68TjsMWCIXoDBM5yDLA==
X-Received: by 2002:a05:6214:80c:b0:6b0:724a:6ed9 with SMTP id 6a1803df08f44-6b501e1e3acmr2439486d6.17.1718728450578;
        Tue, 18 Jun 2024 09:34:10 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:17:5fb9::7a9])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5bf1f96sm68175396d6.12.2024.06.18.09.34.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 09:34:10 -0700 (PDT)
Message-ID: <0e8561108c4fc99291ad7cdc0c6af2dbb8e58f02.camel@ndufresne.ca>
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Detlev Casanova <detlev.casanova@collabora.com>, Jianfeng Liu
	 <liujianfeng1994@gmail.com>
Cc: alchark@gmail.com, andy.yan@rock-chips.com, conor+dt@kernel.org, 
	cristian.ciocaltea@collabora.com, devicetree@vger.kernel.org, 
	didi.debian@cknow.org, dsimic@manjaro.org, gregkh@linuxfoundation.org, 
	heiko@sntech.de, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	mchehab@kernel.org, robh@kernel.org, sebastian.reichel@collabora.com
Date: Tue, 18 Jun 2024 12:34:07 -0400
In-Reply-To: <4302165.yKVeVyVuyW@arisu>
References: <4116468.VLH7GnMWUR@arisu>
	 <20240618121329.79936-1-liujianfeng1994@gmail.com>
	 <4302165.yKVeVyVuyW@arisu>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_093413_857727_6D32BACD 
X-CRM114-Status: GOOD (  18.25  )
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

SGksCgpMZSBtYXJkaSAxOCBqdWluIDIwMjQgw6AgMDg6MzkgLTA0MDAsIERldGxldiBDYXNhbm92
YSBhIMOpY3JpdMKgOgo+IE9uIFR1ZXNkYXksIEp1bmUgMTgsIDIwMjQgODoxMzoyOSBBLk0uIEVE
VCBKaWFuZmVuZyBMaXUgd3JvdGU6Cj4gPiBIaSBEZXRsZXYsCj4gPiAKPiA+IE9uIEZyaSwgMTQg
SnVuIDIwMjQgMjE6NTY6MjcgLTA0MDAsIERldGxldiBDYXNhbm92YSB3cm90ZToKPiA+ID4gKwkJ
LmZybXNpemUgPSB7Cj4gPiA+ICsJCQkubWluX3dpZHRoID0gMTYsCj4gPiA+ICsJCQkubWF4X3dp
ZHRoID0gIDY1NTIwLAo+ID4gPiArCQkJLnN0ZXBfd2lkdGggPSAxNiwKPiA+ID4gKwkJCS5taW5f
aGVpZ2h0ID0gMTYsCj4gPiA+ICsJCQkubWF4X2hlaWdodCA9ICA2NTUyMCwKPiA+ID4gKwkJCS5z
dGVwX2hlaWdodCA9IDE2LAo+ID4gPiArCQl9LAo+ID4gCj4gPiBJIHRoaW5rIHRoZSBtaW4vbWF4
IHdpZHRoL2hlaWdodCBhcmUgaW5jb3JyZWN0LiBGcm9tIHJvY2tjaGlwJ3MgVFJNIFYxLjAKPiA+
IFBhcnQxIHBhZ2UgMzc0LCBzdXBwb3J0ZWQgaW1hZ2Ugc2l6ZSBpcyA2NHg2NCB0byA2NTQ3Mng2
NTQ3Mi4KPiBpLAo+IFBhZ2UgMzc0IHNob3dzIHRoZSBzaXplcyBmb3IgaDI2NS4gaDI2NCBpcyB0
aGUgbmV4dCB0YWJsZSwgd2hlcmUgMTZ4MTYgYW5kIAo+IDY1NTIweDY1NTIwIGlzIGRvY3VtZW50
ZWQuCgpKdXN0IGEgdGhlb3J5LCBidXQgNjR4NjQgbG9va3MgbGlrZSBNYWxpIEdQVSByZXF1aXJl
bWVudCB0byBtZS4gQ2FuIHlvdSBnaXZlCm1vcmUgZGV0YWlscyBob3cgaXQgZmFpbHMgZXhhY3Rs
eSA/CgpNZWFud2hpbGUsIGlmIGZsdXN0ZXIgc3VpdGUgZG9lcyBub3QgZXhlcmNpc2UgaXQgYWxy
ZWFkeSwgd2UgY2FuIGNyYWZ0IGEgc3RyZWFtCnRvIHZlcmlmeSB0aGUgaXRzIGRlY29kZXMgZmlu
ZS4gV2UgYWxzbyBoYXZlIGlzc3VlcyBpbiBya3ZkZWMgd2VyZSB0aGUgZHJpdmVyCnJlcG9ydHMg
Q0FQVFVSRSBxdWV1ZSBjb25zdHJhaW50cyBmb3IgT1VUUFVUIGZvcm1hdHMuCgpOaWNvbGFzCgo+
IAo+ID4gQW5kIG15Cj4gPiBjaHJvbWl1bSBjYW4ndCB1c2Ugcmt2ZGVjMiBiZWNhdXNlIG1pbiB3
aWR0aC9oZWlnaHQgYXJlIHNldCB0byAxNiwgd2hpY2gKPiA+IAo+ID4gd2lsbCBjYXVzZSBlcnJv
ciBhdCBoZXJlIGluIHJrdmRlYzJfaDI2NF92YWxpZGF0ZV9zcHM6Cj4gPiA+ICsJaWYgKHdpZHRo
ID4gY3R4LT5jb2RlZF9mbXQuZm10LnBpeF9tcC53aWR0aCB8fAo+ID4gPiArCSAgICBoZWlnaHQg
PiBjdHgtPmNvZGVkX2ZtdC5mbXQucGl4X21wLmhlaWdodCkKPiA+ID4gKwkJcmV0dXJuIC1FSU5W
QUw7Cj4gPiAKPiA+IHdpZHRoIGlzIDE2LCBoZWlnaHQgaXMgMzIgd2hpbGUgY3R4LT5jb2RlZF9m
bXQuZm10LnBpeF9tcC53aWR0aCBhbmQKPiA+IGN0eC0+Y29kZWRfZm10LmZtdC5waXhfbXAuaGVp
Z2h0IGFyZSBib3RoIDE2Lgo+IAo+IE1heWJlCj4gCj4gaWYgKCEoc3BzLT5mbGFncyAmIFY0TDJf
SDI2NF9TUFNfRkxBR19GUkFNRV9NQlNfT05MWSkpCj4gCWhlaWdodCAqPSAyOwo+IAo+IGlzIGNh
dXNpbmcgaXNzdWVzIGluIHRoaXMgY2FzZSwgSSBjYW4gY2hlY2suCj4gCj4gPiBBZnRlciBjaGFu
Z2luZyB0aGVtIHRvIDY0IG15IGNocm9taXVtIGNhbiB1c2Ugcmt2ZGVjMiB0byBkZWNvZGUgaDI2
NAo+ID4gdmlkZW9zIG5vdy4KPiA+IAo+ID4gQW55d2F5IG1hbnkgdGhhbmtzIHRvIHlvdXIgYW1h
emluZyB3b3JrIQo+ID4gCj4gPiBCZXN0IHJlZ2FyZHMsCj4gPiBKaWFuZmVuZwo+IAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
