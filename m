Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A1FFC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 10:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbJHQ2jI2wReo8Xhy6zj4mRlT+MCR8QMDGMMxbu0rtI=; b=yOWP2txXFx/YAM
	y2r9eEt3moHfYqJqUjKU0zYwvazi6Szz4Apzlw7Gy7QgHoiwXsnjczT6t7QiVW/ggBUcXCggfYrCs
	K0+upVY90byUTvcjlmhh5DJjjzZB1R7s+sRg/nudV80A8Zvl0nq5HGhIIV5nfh9h1bDSyPcibCVmq
	lHuxL9aGwJae1x+m4mYG1hIaKhE3RG6rNB2bb3Zv8lGR1VcfKSITfybuxO7+CGaDagdSCabF72nqK
	jqxhTjTOHK8JLSfslJQsVeftGqKNJRRZk2Jzk1YqY+NDNTmag1zLhnzf+FoGH8zIsZkYHA2kzAzcg
	7XCGFfHVvLCP1zKsPJQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBXnq-00FCiT-25;
	Fri, 08 Dec 2023 10:09:50 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBXnn-00FCf0-1r
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Dec 2023 10:09:49 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c9ea37ac87so24952541fa.3
        for <linux-rockchip@lists.infradead.org>; Fri, 08 Dec 2023 02:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1702030183; x=1702634983; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mgm4+5mLyg3a8iR5LpLfRJSzy3+3KXcyiTQTp3SFGoI=;
        b=1VzUJ5GtIiNhG4hHPOS/oIK/0SRyMaCVN9Ugm5gHgAMptAyX5KlVUJS+pa1CPXqCsH
         LSESFliWi30fWH6b4xkHqjUk2vXLQ9CB/kTkYFtrnrM7m55D8VNPvn6JIirCo5BTp3KT
         HOyQlOiMwo7cZxbivQxmYX67SGO6Are+p3QxvQ2kVs4YFxb31KPUxZEF+6DKV9LH84M2
         MlIOVV+q0rsYqKSP9Wq/jHpp/UBUF4ADaJL1Ry1jUKibUlg6rmL5E4FPGWjwdbvDB/On
         x7nofAnraCKERPpx6X+gymOWY36kIdz3vtxL9R+igqh4qrqopZRfewrIXpm2zrJDZuiI
         iufA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702030183; x=1702634983;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mgm4+5mLyg3a8iR5LpLfRJSzy3+3KXcyiTQTp3SFGoI=;
        b=GzBYF93bIwVpjjp5ksOjxYMhLAsouP0zTBc+2JN2O1VLn5/f99hqAcjQYlk/1J0CyW
         iWYRgTSUtQ/l8j5fi0Q057S1B03WlW01ljn7beU5yyltyF1/UsLCPaVoxiAtTWylRGbS
         IBL4fawkXIVdGK4+p3MUQBPQ/iEwpLy7Eqgv0roIHDl3u7fdrcrs+9WldFds/7yBKYO8
         wWrhopXfCXkBSWNJvOp/FN8TtKJPqPEctabdN6MhbPpgxZ31tExyI5lnh0k0cwz+cJvc
         WgZA9GCGvltDY6cMH2lT7rGXxmbWkQe8AJ2WNr2bqvYwARz0Rb9VaHPw1nZrdWSJm0+K
         8pTw==
X-Gm-Message-State: AOJu0YyPiHQtHEppr8AtbE/Zh86B1gKCuNXc6iUn+//pjM/1eThorbQn
	jpqL1DhrzpexdBiMdE3Zb+UIiy7Q6uWLAqTZyjWN+g==
X-Google-Smtp-Source: AGHT+IE/1eSv/4Q7Nahziuy2r+02WdQQMpsBXwHSy4fFbQ5Vu7E3qtjIPTCWOAI+GMt350pTUc/GMA==
X-Received: by 2002:a05:6512:10c3:b0:50b:e80c:5e3 with SMTP id k3-20020a05651210c300b0050be80c05e3mr2382155lfg.25.1702030182806;
        Fri, 08 Dec 2023 02:09:42 -0800 (PST)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com. [209.85.208.182])
        by smtp.gmail.com with ESMTPSA id o1-20020a056512230100b0050aa8c0dfc3sm171378lfu.31.2023.12.08.02.09.42
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Dec 2023 02:09:42 -0800 (PST)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2c9ea37ac87so24952191fa.3
        for <linux-rockchip@lists.infradead.org>; Fri, 08 Dec 2023 02:09:42 -0800 (PST)
X-Received: by 2002:a2e:9bd2:0:b0:2c9:f3b5:fdd2 with SMTP id
 w18-20020a2e9bd2000000b002c9f3b5fdd2mr2410626ljj.36.1702030181926; Fri, 08
 Dec 2023 02:09:41 -0800 (PST)
MIME-Version: 1.0
References: <CAHc5_t0N7tDDKvWvviBXTKK_0UAEtKLxuvMYi8qZ6hp_f6LNew@mail.gmail.com>
 <6c89feb8ca7701d2a45710485fef8fc8@manjaro.org> <CACdvmAhzOnR=uQ-6MH30jiH1wyzO=fuqk4U4ayp03H53hqA3gQ@mail.gmail.com>
 <2ab01ab4d93dd22fd8b7bb48fdc8d41f@manjaro.org> <CACdvmAgDdjG_smJ0mWtOQWyMAtEMhLsUTN3PdcrYmxCqkzfoKg@mail.gmail.com>
In-Reply-To: <CACdvmAgDdjG_smJ0mWtOQWyMAtEMhLsUTN3PdcrYmxCqkzfoKg@mail.gmail.com>
From: Shantur Rathore <i@shantur.com>
Date: Fri, 8 Dec 2023 10:09:30 +0000
X-Gmail-Original-Message-ID: <CAHc5_t2OHZ9Q+rQHfjhT90ZPtpDtSF7vaOdCbXDKszCNWCjHtw@mail.gmail.com>
Message-ID: <CAHc5_t2OHZ9Q+rQHfjhT90ZPtpDtSF7vaOdCbXDKszCNWCjHtw@mail.gmail.com>
Subject: Re: Rk3399 - Typec - Extcon
To: Da Xue <da@lessconfused.com>
Cc: Dragan Simic <dsimic@manjaro.org>, Jagan Teki <jagan@amarulasolutions.com>, 
	cw00.choi@samsung.com, tom@radxa.com, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, dmitry.baryshkov@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_020947_612791_1FDA5B04 
X-CRM114-Status: GOOD (  22.41  )
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

VGhhbmtzIGZvciByZXBsaWVzIGd1eXMsCgoKT24gRnJpLCBEZWMgOCwgMjAyMyBhdCA1OjM44oCv
QU0gRGEgWHVlIDxkYUBsZXNzY29uZnVzZWQuY29tPiB3cm90ZToKPgo+IE9uIFRodSwgRGVjIDcs
IDIwMjMsIDk6NDggUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3RlOgo+
Pgo+PiBPbiAyMDIzLTEyLTA4IDA1OjE4LCBEYSBYdWUgd3JvdGU6Cj4+ID4gT24gVGh1LCBEZWMg
NywgMjAyMyBhdCA3OjA34oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdy
b3RlOgo+PiA+PiBIZWxsbyBTaGFudHVyLAo+PiA+Pgo+PiA+PiBPbiAyMDIzLTEyLTA3IDIyOjEy
LCBTaGFudHVyIFJhdGhvcmUgd3JvdGU6Cj4+ID4+ID4gSGkgSmFnYW4sCj4+ID4+ID4KPj4gPj4g
PiBXaGlsZSB0cnlpbmcgdG8gZmlndXJlIG91dCBpc3N1ZXMgd2l0aCBUeXBlYyBBbHRNb2RlICsg
U3VwZXJTcGVlZCBvbgo+PiA+PiA+IG1haW5saW5lIGZvciBSazMzOTkgYmFzZWQgUm9ja1BybzY0
LCBJIGNhbWUgYWNyb3NzIHlvdXIgcHJvcG9zZWQgcGF0Y2gKPj4gPj4gPiBmb3IgVHlwZUMgVmly
dHVhbCBQRCBEcml2ZXIgWzBdLgo+Cj4KPiBNYW51ZmFjdHVyZXJzIHRoYXQganVzdCB0aHJvdyBo
YXJkd2FyZSBpbiB0aGUgd2lsZCBjYXVzZSBzZXJpb3VzIGRpcy1pbnZlc3RtZW50IGluIHVwc3Ry
ZWFtLiBUaGVyZSBhcmUgYSBkb3plbiB2ZW5kb3JzIHVzaW5nIEZVU0IzMDIgYW5kIFJLMzM5OSBi
dXQgdGhleSBqdXN0IGRvbid0IGNhcmUgZW5vdWdoIHRvIHB1dCBtb25leSBvciB0aW1lIHRvIHNv
bHZlIGZ1bmRhbWVudGFsIGlzc3VlcyBvbiB0aGVzZSBwbGF0Zm9ybXMuCj4KClRoYXQncyBub3Qg
YW4gaWRlYWwgc2l0dWF0aW9uIGFuZCB0aGlzIGlzIG9uZSBvZiB0aGUgcmVhc29ucyB3aHkgdGhl
c2UKcGxhdGZvcm1zIGFyZW4ndCB0aGUgbW9zdCBwb3B1bGFyIGV2ZW4gd2hlbiB0aGV5IGFyZSBy
ZWFsbHkgY2FwYWJsZS4KCj4+ID4KPj4gPiBJIHdlbnQgdG8gdGhlIEZVU0IzMDIvVENQTSBzdGFj
ayBpc3N1ZXMgZm9yIFJPQy1SSzMzOTktUEMsIHNlZSB0aGUKPj4gPiBwYXRjaGVzIG5lZWRlZCBo
ZXJlCj4+ID4gaHR0cHM6Ly9naXRodWIuY29tL2xpYnJlLWNvbXB1dGVyLXByb2plY3QvbGlicmV0
ZWNoLWJ1aWxkZXItc2ltcGxlL2lzc3Vlcy8yI2lzc3VlY29tbWVudC0xODM3MjY5NDc1Cj4+ID4K
Pj4gPiBBIG1ham9yIGlzc3VlIGlzIHRoZSBsYWNrIG9mIGEgZHJpdmVyIGluIHUtYm9vdCB3aGlj
aCBjYXVzZXMgbWFueQo+PiA+IG5vbi1jb25mb3JtYW50IHBvd2VyIHN1cHBsaWVzIHRvIHRpbWUg
b3V0IGNhdXNpbmcgZXJyb3IgbWVzc2FnZXMuIFRoZQo+PiA+IHBhdGNoZXMgYWJvdmUgZG8gdGhl
aXIgYmVzdCB0byBrZWVwIHRoZSBzdGFjayB3b3JraW5nIGRlc3BpdGUgdGhpcy4KPj4KPj4gSHVo
LCB5b3UgbWFkZSBhIGdvb2QgcG9pbnQsIHRoYW5rcyEgIFRoYXQncyBzb21ldGhpbmcgdG8gdGhp
bmsgYSBsb3QKPj4gYWJvdXQ7ICBhY3R1YWxseSwgYSBzaW1pbGFyIFBEIGlzc3VlIHdhcyBkaXNj
dXNzZWQgaW4gdGhlIFBpbmU2NAo+PiBjb21tdW5pdHkgY2hhdHMgYSBmZXcgdGltZXMsIHdoaWxl
IGRpc2N1c3Npbmcgc29tZSBQaW5lYm9vayBQcm8ncwo+PiBwb3dlci1yZWxhdGVkIGlzc3Vlcy4K
Pj4KPj4gPj4gPiBXb3VsZCB5b3Uga25vdyBpZiB0aGVyZSdzIGJlZW4gYW55IG90aGVyIGRldmVs
b3BtZW50IG9uIHN1cHBvcnRpbmcKPj4gPj4gPiBSb2NrY2hpcC1UeXBlQy1QaHkgd2l0aCBGVVNC
MzAyIGJvYXJkcyBsaWtlIFJvY2tQcm82NCBvciBQaW5lQm9vayBQcm8uCj4+ID4+ID4KPj4gPj4g
PiBbMF0gLQo+PiA+PiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMDA5MDQxOTE4
MzAuMzg3Mjk2LTMtamFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20vVC8jbTdiNWQ2NzQ3NjQzNzky
NTM1NjhhNDkxNWYyZjk5ODhkNzRjODY1OTMKPj4gPj4KPj4gPj4gQmFzaWNhbGx5LCB3ZSBuZWVk
IHRvIGdldCByaWQgb2YgdGhlIHdob2xlIGV4dGNvbiBoYWNrLCBhcyBkZXNjcmliZWQKPj4gPj4g
aW4KPj4gPj4gdGhlIHRocmVhZCBsaW5rZWQgYWJvdmUsIHdoaWNoIGlzIGEgbWFzc2l2ZSBqb2Ig
dGhhdCBib3JkZXJzIHdpdGggYQo+PiA+PiBjb21wbGV0ZSByZXdyaXRlLiAgSSdsbCBwcm9iYWJs
eSAoYW5kIGhvcGVmdWxseSA6KSBkaXZlIGludG8gYWxsIHRoYXQKPj4gPj4gaW4KPj4gPj4gdGhl
IGZvcmVzZWVhYmxlIGZ1dHVyZS4KClRoYXQgd291bGQgYmUgYXdlc29tZS4gRG9lcyB0aGlzIGFs
c28gYWZmZWN0IHRoZSBTdXBlclNwZWVkCmltcGxlbWVudGF0aW9uIG9uIFBCUCBUeXBlQyBwb3J0
ID8KIEFzIFBCUCBhbmQgUlA2NCBoYXZlIHZlcnkgc2ltaWxhciBoYXJkd2FyZSwgSSBhbSBob3Bp
bmcgdG8gZ2V0ClN1cGVyU3BlZWQgd29ya2luZyBvbiBUeXBlQyBwb3J0IG9uIG1haW5saW5lIG9u
IFJQNjQuCgo+PiA+Cj4+ID4gZXh0Y29uIGlzIGEgZGVhZCBlbmQuIERtaXRyaSBpcyB1c2luZyBz
b21ldGhpbmcgZWxzZSBmb3IgUXVhbGNvbW0gYnV0Cj4+ID4gSSdtIG5vdCBzdXJlIGhvdyBtdWNo
IG92ZXJsYXAgdGhlcmUgaXMgd2l0aCB0aGUgc3RhbmRhcmQgVENQTS4KPj4KPj4gQUZBSUssIHNv
bWUgUXVhbGNvbW0tYmFzZWQgc21hcnRwaG9uZXMsIGUuZy4gT25lUGx1cyA2VCwgdXNlIHNvbWUK
Pj4gbm9uLXN0YW5kYXJkIGNoYXJnZXIgbmVnb3RpYXRpb24gbWVjaGFuaXNtLiAgSSBjb3VsZCBl
YXNpbHkgYmUgd3JvbmcKPj4gdGhlcmUsIHRob3VnaC4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
