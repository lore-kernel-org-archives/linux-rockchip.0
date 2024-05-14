Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2240C04FFE
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 May 2024 20:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xIAXlWOLBPSuHde60JRQbKAQUgkAtJPWTZqPrkIcf2w=; b=vY2rdKftV2rRAt
	GIHXri4z+wCeKsJqUAhuTBcOAVEjAJ88jJr9+B4Tqphj7eILYXc8V8/hmImyHfmIOlRwUlGGNzS+6
	Q2RUZj8EUvUQQ4Cqd6euHp+pQvW/JdK+6IfPt8QM8ZFWGCnYPX2RFVRrth7spi+RdSkMM4wR343A+
	SLKIrz/bV/mpqot+0l8keIn1/MV6yk/+cSxFxwAFK5SC9KB4LoOBwS/k3tBBdovPG+D8aiFvsd61u
	m+DQzblc6yZgvP8V7ZsbNshAlpFbUkkMGH+JcM7M2gJFVYtEchUDt9mN1MAIn7Xln/EmC82eB0mzd
	NLcj+ic4916/RK33qnOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6yRJ-0000000H2WT-0NEA;
	Tue, 14 May 2024 20:07:57 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6yRG-0000000H2Vl-0qMb
	for linux-rockchip@lists.infradead.org;
	Tue, 14 May 2024 20:07:55 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-792b934de39so520980985a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 14 May 2024 13:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1715717270; x=1716322070; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vb0UKKfHIuC/I3bhXCJ6Vce1eZRAne4WwGjNCda9wdY=;
        b=WEV6//IYEbI4epMh1el2SqhObCiVf4kjFYVZx7pBZz+GtVE59oKor7dmpwlTJMLKGJ
         eeyxaMBCm/LYXku76UvrtwoxeGWjU4S7bThxhjl4YrtNo9yjYsOupOdoNmhkH84bBdEK
         q3QxS+xCwrOo8slXRM7q+ycx60A/b7vuRZA39LsXQoFUFlWPQCMpa0e1ADqwFzBlVQMO
         iNuxqrsb6rmoNM4yptP+DPy/ioumIYMVXdSkiUfJoc7p5dgnGJ75a5ysW6XWQonp45oU
         1vO7vBBmSA5ZkaIR4uYjquiCH6FAFukgBFnsgwuPsYS9gaEj5MscHsjpnbPVj16b0T4w
         yy/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715717270; x=1716322070;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vb0UKKfHIuC/I3bhXCJ6Vce1eZRAne4WwGjNCda9wdY=;
        b=reIOVWxHKwAz3NkSWhKWmWkbjDYoi+ORyIPx7u8jlJNDSZHHZOR31kc/lQX53B1QQM
         dTrfKjGvrAAe99Jmn5JHbNG8ZbIy0jWg4VDXtfwmOAz2p+4LNPcX6qsmwHrc2uAFjZxU
         a1PI+tYz7b3JG8GKDW//khC1nw7Siy7qQn8sbxbezcomc4W3U815KzahkbKhPx8XmBNk
         Mdiffvh1GwGPdav6UrkxE13N6JqA6bMBC8BY25i3wultlvGixXyyD9Jbq9Gc8Aa3E/yl
         TlbIQw+agfz0wZmVjjR3iIl8TQr3WmhRUAPBcC9R7yNV+sjoumYXNfKhcBJ5xiobTu5F
         GOvA==
X-Forwarded-Encrypted: i=1; AJvYcCUh5kHkO1O4fgPJKUGr/WASN0QvdELgmgXo0S+gVkM0qNUvgyjzyF3oDBiAoyfjkh466zPPrep+udoP5K8Hfta0Vr7Tmse/S/pGdLna/w673zBq
X-Gm-Message-State: AOJu0YyFAbEYJr4FkJvg57MGSKm+RXhijz7nxlh12y6jvSfUcK1g3sQY
	DA01blmBVBq+W6pUqCLcswGl5fAOj81lbFKnjgVc733RGIexEANcuR56xx+LPPM=
X-Google-Smtp-Source: AGHT+IF3thX8SgvM4yonafhVQxSjjJkNE7UDA+c3/H6eAkRIIaHDe33Q3N9n5NZSsmCPQOku+LQk9w==
X-Received: by 2002:ae9:c103:0:b0:790:cb19:3205 with SMTP id af79cd13be357-792c75ffa6emr1539120285a.74.1715717269774;
        Tue, 14 May 2024 13:07:49 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:17:6448::7a9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-792bf2972cdsm595605885a.54.2024.05.14.13.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 May 2024 13:07:49 -0700 (PDT)
Message-ID: <95484ab70cd762ef92d32669d6b3551fd5931bd4.camel@ndufresne.ca>
Subject: Re: [PATCH 2/2] media: rkisp1: Mark subdev state pointers as const
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	linux-media@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org, Sakari Ailus <sakari.ailus@iki.fi>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>, Dafna Hirschfeld <dafna@fastmail.com>,
 linux-rockchip@lists.infradead.org
Date: Tue, 14 May 2024 16:07:48 -0400
In-Reply-To: <20240506175255.24394-3-laurent.pinchart+renesas@ideasonboard.com>
References: <20240506175255.24394-1-laurent.pinchart+renesas@ideasonboard.com>
	 <20240506175255.24394-3-laurent.pinchart+renesas@ideasonboard.com>
User-Agent: Evolution 3.52.1 (3.52.1-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_130754_266294_51D4EC68 
X-CRM114-Status: GOOD (  14.33  )
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

SnVzdCBwYXNzZWQgYnkgdGhpcyBvbmUgLi4uCgpMZSBsdW5kaSAwNiBtYWkgMjAyNCDDoCAyMDo1
MiArMDMwMCwgTGF1cmVudCBQaW5jaGFydCBhIMOpY3JpdMKgOgo+IFNldmVyYWwgc3ViZGV2IHN0
YXRlIHBvaW50ZXJzIGFyZSB1c2VkIHRvIGFjY2VzcyB0aGUgc3RhdGUgcmVhZC1vbmx5Lgo+IE1h
cmsgdGhlbSBhcyBjb25zdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMYXVyZW50IFBpbmNoYXJ0IDxs
YXVyZW50LnBpbmNoYXJ0K3JlbmVzYXNAaWRlYXNvbmJvYXJkLmNvbT4KClJldmlld2VkLWJ5OiBO
aWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+
ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtaXNwLmMgICAg
IHwgOCArKysrLS0tLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9y
a2lzcDEtcmVzaXplci5jIHwgOCArKysrLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0
aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWlzcC5jIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWlzcC5jCj4gaW5kZXggZTQ1YTIxM2JhZjQ5Li45
MTMwMWQxN2QzNTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9ya2lzcDEvcmtpc3AxLWlzcC5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9ya2lzcDEvcmtpc3AxLWlzcC5jCj4gQEAgLTE3Myw3ICsxNzMsNyBAQCBzdGF0aWMgdm9p
ZCBya2lzcDFfZ2Fza2V0X2Rpc2FibGUoc3RydWN0IHJraXNwMV9kZXZpY2UgKnJraXNwMSkKPiAg
ICogb3IgYXQgdGhlIGZyYW1lIGVuZCBpbnRlcnJ1cHQKPiAgICovCj4gIHN0YXRpYyB2b2lkIHJr
aXNwMV9jb25maWdfaXNtKHN0cnVjdCBya2lzcDFfaXNwICppc3AsCj4gLQkJCSAgICAgIHN0cnVj
dCB2NGwyX3N1YmRldl9zdGF0ZSAqc2Rfc3RhdGUpCj4gKwkJCSAgICAgIGNvbnN0IHN0cnVjdCB2
NGwyX3N1YmRldl9zdGF0ZSAqc2Rfc3RhdGUpCj4gIHsKPiAgCWNvbnN0IHN0cnVjdCB2NGwyX3Jl
Y3QgKnNyY19jcm9wID0KPiAgCQl2NGwyX3N1YmRldl9zdGF0ZV9nZXRfY3JvcChzZF9zdGF0ZSwK
PiBAQCAtMjAxLDcgKzIwMSw3IEBAIHN0YXRpYyB2b2lkIHJraXNwMV9jb25maWdfaXNtKHN0cnVj
dCBya2lzcDFfaXNwICppc3AsCj4gICAqIGNvbmZpZ3VyZSBJU1AgYmxvY2tzIHdpdGggaW5wdXQg
Zm9ybWF0LCBzaXplLi4uLi4uCj4gICAqLwo+ICBzdGF0aWMgaW50IHJraXNwMV9jb25maWdfaXNw
KHN0cnVjdCBya2lzcDFfaXNwICppc3AsCj4gLQkJCSAgICAgc3RydWN0IHY0bDJfc3ViZGV2X3N0
YXRlICpzZF9zdGF0ZSwKPiArCQkJICAgICBjb25zdCBzdHJ1Y3QgdjRsMl9zdWJkZXZfc3RhdGUg
KnNkX3N0YXRlLAo+ICAJCQkgICAgIGVudW0gdjRsMl9tYnVzX3R5cGUgbWJ1c190eXBlLCB1MzIg
bWJ1c19mbGFncykKPiAgewo+ICAJc3RydWN0IHJraXNwMV9kZXZpY2UgKnJraXNwMSA9IGlzcC0+
cmtpc3AxOwo+IEBAIC0zMDksNyArMzA5LDcgQEAgc3RhdGljIGludCBya2lzcDFfY29uZmlnX2lz
cChzdHJ1Y3Qgcmtpc3AxX2lzcCAqaXNwLAo+ICAJaWYgKHNyY19mbXQtPnBpeGVsX2VuYyA9PSBW
NEwyX1BJWEVMX0VOQ19CQVlFUikgewo+ICAJCXJraXNwMV9wYXJhbXNfZGlzYWJsZSgmcmtpc3Ax
LT5wYXJhbXMpOwo+ICAJfSBlbHNlIHsKPiAtCQlzdHJ1Y3QgdjRsMl9tYnVzX2ZyYW1lZm10ICpz
cmNfZnJtOwo+ICsJCWNvbnN0IHN0cnVjdCB2NGwyX21idXNfZnJhbWVmbXQgKnNyY19mcm07Cj4g
IAo+ICAJCXNyY19mcm0gPSB2NGwyX3N1YmRldl9zdGF0ZV9nZXRfZm9ybWF0KHNkX3N0YXRlLAo+
ICAJCQkJCQkgICAgICAgUktJU1AxX0lTUF9QQURfU09VUkNFX1ZJREVPKTsKPiBAQCAtNDI5LDcg
KzQyOSw3IEBAIHN0YXRpYyB2b2lkIHJraXNwMV9jb25maWdfY2xrKHN0cnVjdCBya2lzcDFfaXNw
ICppc3ApCj4gIH0KPiAgCj4gIHN0YXRpYyBpbnQgcmtpc3AxX2lzcF9zdGFydChzdHJ1Y3Qgcmtp
c3AxX2lzcCAqaXNwLAo+IC0JCQkgICAgc3RydWN0IHY0bDJfc3ViZGV2X3N0YXRlICpzZF9zdGF0
ZSwKPiArCQkJICAgIGNvbnN0IHN0cnVjdCB2NGwyX3N1YmRldl9zdGF0ZSAqc2Rfc3RhdGUsCj4g
IAkJCSAgICBzdHJ1Y3QgbWVkaWFfcGFkICpzb3VyY2UpCj4gIHsKPiAgCXN0cnVjdCBya2lzcDFf
ZGV2aWNlICpya2lzcDEgPSBpc3AtPnJraXNwMTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLXJlc2l6ZXIuYyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1yZXNpemVyLmMKPiBpbmRleCA2ZjM5
MzFjYTViNTEuLjFmYTk5MTIyN2ZhOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtcmVzaXplci5jCj4gKysrIGIvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLXJlc2l6ZXIuYwo+IEBAIC0xMzUsMTEg
KzEzNSwxMSBAQCBzdGF0aWMgdm9pZCBya2lzcDFfZGNyb3BfZGlzYWJsZShzdHJ1Y3Qgcmtpc3Ax
X3Jlc2l6ZXIgKnJzeiwKPiAgCj4gIC8qIGNvbmZpZ3VyZSBkdWFsLWNyb3AgdW5pdCAqLwo+ICBz
dGF0aWMgdm9pZCBya2lzcDFfZGNyb3BfY29uZmlnKHN0cnVjdCBya2lzcDFfcmVzaXplciAqcnN6
LAo+IC0JCQkJc3RydWN0IHY0bDJfc3ViZGV2X3N0YXRlICpzZF9zdGF0ZSkKPiArCQkJCWNvbnN0
IHN0cnVjdCB2NGwyX3N1YmRldl9zdGF0ZSAqc2Rfc3RhdGUpCj4gIHsKPiAgCXN0cnVjdCBya2lz
cDFfZGV2aWNlICpya2lzcDEgPSByc3otPnJraXNwMTsKPiAtCXN0cnVjdCB2NGwyX21idXNfZnJh
bWVmbXQgKnNpbmtfZm10Owo+IC0Jc3RydWN0IHY0bDJfcmVjdCAqc2lua19jcm9wOwo+ICsJY29u
c3Qgc3RydWN0IHY0bDJfbWJ1c19mcmFtZWZtdCAqc2lua19mbXQ7Cj4gKwljb25zdCBzdHJ1Y3Qg
djRsMl9yZWN0ICpzaW5rX2Nyb3A7Cj4gIAl1MzIgZGNfY3RybDsKPiAgCj4gIAlzaW5rX2Nyb3Ag
PSB2NGwyX3N1YmRldl9zdGF0ZV9nZXRfY3JvcChzZF9zdGF0ZSwgUktJU1AxX1JTWl9QQURfU0lO
Syk7Cj4gQEAgLTI2NCw3ICsyNjQsNyBAQCBzdGF0aWMgdm9pZCBya2lzcDFfcnN6X2NvbmZpZ19y
ZWdzKHN0cnVjdCBya2lzcDFfcmVzaXplciAqcnN6LAo+ICB9Cj4gIAo+ICBzdGF0aWMgdm9pZCBy
a2lzcDFfcnN6X2NvbmZpZyhzdHJ1Y3Qgcmtpc3AxX3Jlc2l6ZXIgKnJzeiwKPiAtCQkJICAgICAg
c3RydWN0IHY0bDJfc3ViZGV2X3N0YXRlICpzZF9zdGF0ZSwKPiArCQkJICAgICAgY29uc3Qgc3Ry
dWN0IHY0bDJfc3ViZGV2X3N0YXRlICpzZF9zdGF0ZSwKPiAgCQkJICAgICAgZW51bSBya2lzcDFf
c2hhZG93X3JlZ3Nfd2hlbiB3aGVuKQo+ICB7Cj4gIAljb25zdCBzdHJ1Y3Qgcmtpc3AxX3Jzel95
dXZfbWJ1c19pbmZvICpzaW5rX3l1dl9pbmZvLCAqc3JjX3l1dl9pbmZvOwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
