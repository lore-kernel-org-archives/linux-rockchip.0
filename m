Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04965CD68ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 07:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJhTewP6msXqhQW5nHLecnKkWNfNI28in90O1sMjWy8=; b=PSBkce+dIs2/hD
	9Om9WnxkhQu2vCy8U0dcVfDbwhpxIL7fe7fJ1EN3IDXO/mqE/XeDYEmpeASNF6Ipg996jj1hKaqmB
	NiwgpRP59/DxPYT3zpiFWwcUIdLpRHSFw2J0Ceq/U1HhaOWWCgx1pZQumeBfwXrUFkYl0H7c+ETRx
	ctJo/9unyuCH5YtyYfkFb4O+lEhmFk30t3aqdrBh1FIlqPWq1KGFiO+eT/orn/gMfoG8KOkLafWbZ
	TzNASMDNKC0VPr/9b9zVgmKBN4LsQXK/d6RjzU6dgmib2MC8ZrIpKaf2V8BKVFULrMStLuPbjvlLM
	+iCeFUxzdxDTK3MJpwiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qq76m-00ChIz-1t;
	Tue, 10 Oct 2023 07:24:48 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qq76j-00ChHm-1S
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Oct 2023 07:24:47 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-51e28cac164so13760237a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Oct 2023 00:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696922683; x=1697527483; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/syq8ytqEVVLR5LPpwNw1IDlUH5yOpNp+fIln7oE6uM=;
        b=iR29vBlB1RprLAxBZmUSEytqda4hXLlMgDXEisRw/k2tYqC1+BOxoIztkkRkj40R1N
         MjgZwL9CTAyMdD8yLsfstTdPjtHiULrLhF8d+fqntW+dOJwQRt/+J/JVNDndV/T5Wxx0
         +8KPfsfcmE03gCccqQTsSDGOMdnyNls8/AtEzbve0pyd0GDj3eyzWJperWTJ1/k0QTPs
         MiNfrzjoOUySZwD6ENRAKW9eu7L7Qh7Fu4zX1pprU1Mzmn/dx7fyZ0E//+6lUDKCp8uq
         rAHidiNTI2PZh+vLfwds01FMWMugqO3mssgFVVDM21UwDtYzg2RaDTnCe4FTowO/kJG/
         7eoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696922683; x=1697527483;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/syq8ytqEVVLR5LPpwNw1IDlUH5yOpNp+fIln7oE6uM=;
        b=dmBQJL5EhoiIPcyQ2jSEA+4IeOunUddJDwMu3O/lJXlXsP06UvqXu7d4SbgpgGJBnE
         OPk2WEqym+wvPw+tNWVCDvqSQ+0bPnYH+rgEuEZ0izNNm2vAzjJfjE3ApBfZoHcOALbl
         Tvs4qyPM5lqy/QHKWxeTqUvmeJqkzvSvSghYcwhSck5L9AOYnkch3dhUMYk7TK4Ez12z
         yUIVwjvnhxsJtN8SWEXP7BqBGTeHInVTOuM9DVhvRRfluWaXK5ClPxozIeFm4LO2X+Sx
         0mc3qZrtKibQ6ucVTOQwZ6/GUbooenYYgxMaJrrTZfTpIbRcF+VyrFq0+9irTKHo+FTx
         nHrg==
X-Gm-Message-State: AOJu0YzreDc+TwtMM07xjiNNaoAL6ChThM5TpQj005cd+yE14RWn8BKm
	AHe4rMlwAMcqq0/1Hv2rJZwQIApv5UAAitCK7ls=
X-Google-Smtp-Source: AGHT+IEQ3/acSyAA4ucUYLVNOmmesDL0q56Gxzgoys4CWUGfwLmNpe7b6gPvix547H250vcBIN/G1nvl+GjuuHfOD4A=
X-Received: by 2002:a17:906:30d4:b0:9b2:b15b:383d with SMTP id
 b20-20020a17090630d400b009b2b15b383dmr13688360ejb.11.1696922683028; Tue, 10
 Oct 2023 00:24:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAG0V13R4Z2iMTYHDqdKR5pkXicLz5eFPWsaLGVGBdXD-n=3Kzw@mail.gmail.com>
 <20231010062046.GC3114228@pengutronix.de>
In-Reply-To: <20231010062046.GC3114228@pengutronix.de>
From: Doug Brewer <brewer.doug@gmail.com>
Date: Tue, 10 Oct 2023 15:24:31 +0800
Message-ID: <CAG0V13Qghe3yaFUL=1K4LiCD=v56m5+opYBTSWf-FJFEiAL7ng@mail.gmail.com>
Subject: Re: RK356x hdmi doesn't support resolutions up to 4k@60Hz
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_002445_494180_1CECE4AD 
X-CRM114-Status: GOOD (  27.19  )
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

T24gVHVlLCBPY3QgMTAsIDIwMjMgYXQgMjoyMOKAr1BNIFNhc2NoYSBIYXVlciA8cy5oYXVlckBw
ZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBPbiBUdWUsIE9jdCAxMCwgMjAyMyBhdCAxMToxNToy
MkFNICswODAwLCBEb3VnIEJyZXdlciB3cm90ZToKPiA+IEhpLAo+ID4KPiA+IEkgdGVzdGVkIHRo
ZSBMaW51eCBrZXJuZWwgNi41LjYgb24gUm9jayAzQSwgdGhlIGhkbWkgZG9lc24ndCBzdXBwb3J0
Cj4gPiByZXNvbHV0aW9ucyB1cCB0byA0a0A2MEh6LiAgNGtAMzBIeiB3b3JrcyBmb3IgbWUuCj4g
PiBBbnkgaWRlYSBob3cgdG8gZml4IGl0PyAgVGhhbmtzLgo+ID4KPgo+IFllcywgNGtANjAgaXMg
bm90IHlldCB3b3JraW5nLiBJbiBwcmluY2lwbGUgYWxsIHRoYXQncyBtaXNzaW5nIHNob3VsZCBi
ZQo+IHRoZSBwYXRjaCBiZWxvdy4gSG93ZXZlciwgaXQgZGlkbid0IHdvcmsgZm9yIG1lIHRoZSB0
aW1lIEkgdGVzdGVkIGl0LCBzbwo+IEkgaGF2ZW4ndCB0cmllZCB1cHN0cmVhbWluZyBpdC4KCldp
dGggdGhpcyBwYXRjaCwgNGtANjBoeiB3b3JrcyBmb3IgbWUhICBUaGFua3MuCgo+IFNhc2NoYQo+
Cj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS04PC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPgo+IEZyb20gMDY5Y2U4NzRhNThkYmQxNjQ4MjUyMDczNzdjNDIxODM3ZGUw
ZjBlOCBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKPiBGcm9tOiBTYXNjaGEgSGF1ZXIgPHMuaGF1
ZXJAcGVuZ3V0cm9uaXguZGU+Cj4gRGF0ZTogTW9uLCAyMyBKYW4gMjAyMyAxMjozNzozMiArMDEw
MAo+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL3JvY2tjaGlwOiBkd19oZG1pOiBBZGQgc3VwcG9ydCBm
b3IgNGtANjAgcmVzb2x1dGlvbgo+Cj4gRG9lcyBub3Qgd29yayB5ZXQgb24gb3VyIFNhbXN1bmcg
bW9uaXRvciwgaXQgbG9vc2VzIHN5bmNocm9uaXphdGlvbgo+IGV2ZXJ5IG5vdyBhbmQgdGhlbi4K
Pgo+IFNpZ25lZC1vZmYtYnk6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4K
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYyB8IDcg
KysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMKPiBpbmRleCA3MjU5NTI4MTE3NTJi
Li5lZjIxOWNjNmUxY2RkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9k
d19oZG1pLXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRt
aS1yb2NrY2hpcC5jCj4gQEAgLTE2OCw2ICsxNjgsMTIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBk
d19oZG1pX21wbGxfY29uZmlnIHJvY2tjaGlwX21wbGxfY2ZnW10gPSB7Cj4gICAgICAgICAgICAg
ICAgICAgICAgICAgeyAweDVhNjQsIDB4MDAwMyB9LAo+ICAgICAgICAgICAgICAgICB9LAo+ICAg
ICAgICAgfSwgewo+ICsgICAgICAgICAgICAgICA2MDAwMDAwMDAsIHsKPiArICAgICAgICAgICAg
ICAgICAgICAgICB7IDB4MWE0MCwgMHgwMDAzIH0sCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
eyAweDNiNGMsIDB4MDAwMyB9LAo+ICsgICAgICAgICAgICAgICAgICAgICAgIHsgMHg1YTY0LCAw
eDAwMDMgfSwKPiArICAgICAgICAgICAgICAgfSwKPiArICAgICAgIH0sewo+ICAgICAgICAgICAg
ICAgICB+MFVMLCB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgeyAweDAwYTAsIDB4MDAwYSB9
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgIHsgMHgyMDAxLCAweDAwMGYgfSwKPiBAQCAtMjA0
LDYgKzIxMCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHdfaGRtaV9waHlfY29uZmlnIHJvY2tj
aGlwX3BoeV9jb25maWdbXSA9IHsKPiAgICAgICAgIHsgNzQyNTAwMDAsICAweDgwMDksIDB4MDAw
NCwgMHgwMjcyfSwKPiAgICAgICAgIHsgMTQ4NTAwMDAwLCAweDgwMmIsIDB4MDAwNCwgMHgwMjhk
fSwKPiAgICAgICAgIHsgMjk3MDAwMDAwLCAweDgwMzksIDB4MDAwNSwgMHgwMjhkfSwKPiArICAg
ICAgIHsgNTk0MDAwMDAwLCAweDgwMzksIDB4MDAwMCwgMHgwMTlkfSwKPiAgICAgICAgIHsgfjBV
TCwgICAgICAweDAwMDAsIDB4MDAwMCwgMHgwMDAwfQo+ICB9Owo+Cj4gLS0KPiAyLjM5LjIKPgo+
IC0tCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwKPiBTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAg
ICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAo+IDMxMTM3IEhpbGRl
c2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTct
MCAgICB8Cj4gQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4
OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
