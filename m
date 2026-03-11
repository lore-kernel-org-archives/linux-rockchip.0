Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E447BFD88D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 02:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkNVgI2JwbdEeOp5zIaWzTpUJWuJzySO4EEdFKmqd9w=; b=DxQJNrUmCDjGJI
	Ev6Kgojq/hXvfYwypw+huX9XKSaWy0HQDN23eP5O94cYLIJXTXvzerk91KwTC+Vv5RUtko1ODsPO3
	BeOqEOBlGggRSlKKBFUUg7dLZxtVJmDxRh58g0ka2TLBfjKXyretNVko+iRylHb1Z7M9VMaLn+3Vs
	MLopq/wscVsLKEu3/tQLoGxDfM4tOd+3KECcwjS5YqxKuVrv2+S0K2zg2uDGWzYsfGCjLL0qjnAp8
	CGrUmYtcLZpJBUFI+6862eUkLaPVGGL7xq6mZ8h/MlrrOEjTLD8yj4qu1/xOjwF4nm0mrxMv8JydB
	Ofw0hE8PdiN1FIzIGhdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w08z2-0000000AWwX-3qRa;
	Wed, 11 Mar 2026 02:07:36 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w08z0-0000000AWvA-2YF7
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 02:07:35 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-5a0ff30b240so8038072e87.0
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 19:07:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773194852; cv=none;
        d=google.com; s=arc-20240605;
        b=F61NV5jlef31GCftn1TYteWIzNTF70wr77dlsf92lTSUvLjq1ZlyYDyoKz/FPEUsgo
         Pt8loKs8w7CV+tuKbHunA4gtkywWySttdmD5cXwP6WDVb5tYLG3aZDZyPRt7t1iUjpC4
         C/QOdwJPoB6v9X95KEM4rDy+HTJVuuiX/+WUZ/QywlDwME3i6RJuy1/day/ROmBMB18t
         pTNq8Fry43Emv/tSrbZWsEO+Mhy+37vJvw0FRAeETS2c0XbunE7bzEOddmnyKSYQ5PKi
         2ppf5l5H2mvH2g9/rHLoXB8jQVYdadsysXzgmC/eLKRIlipqdCLN6kWL5F3B2Sr2+ah/
         paEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+zLBLQzKjcztDlxJqoLP6w+B6xnZmfHibV4jlBQCebA=;
        fh=ZQ0H5zgmxhx8SJPbYcx1RFMzmbdgve5/VSkwrqf5/Hk=;
        b=c34roZ764g/YC12G24NC6r2/76cvRhgeBnSggspYltjl2Ab/SBQcGXjE9h8GLSVPKG
         vcgVNaMdAsc+D4YFPh7TKWKKb9hno2JVgbW731DozRVRYeOGh7Eu0P/8M3bSwVccK6wx
         tb8Bh2YMnfOTt9YNg7M2scbp7nIbpW8gJVV7+F4Zr+F1NyQQrGfev4yWmkR662D6le/r
         Gs/xml2Ej8Q5hiVOrg16iNyhWKYM8X85LjHiSYkL+SfdoyapqBizlJcYQM+8QlUvmwlQ
         ZzRPd+qf7/xJnfB/NIzhBCMb5Xa6uaE959IZCCfAY+pLoM6F0yywiaTbEarf8GRHnNHp
         ZQ5Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773194852; x=1773799652; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+zLBLQzKjcztDlxJqoLP6w+B6xnZmfHibV4jlBQCebA=;
        b=PzEHk3NiglQgJfhJeYkTNvHoMw/lMyzRA9V2mLe1UJL/g18Kl5oed7i2cWQrfE2o9H
         NtppMWYzqXiTt1DE90qeUS5PBeXZvlJmQQefG64/dNfEKzoXkhIfErg5brmqFdlPxioj
         wfV3X9nVZs+6cC1gihkjV8Kvwed+dWT/5PQxc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773194852; x=1773799652;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+zLBLQzKjcztDlxJqoLP6w+B6xnZmfHibV4jlBQCebA=;
        b=kSJXizrexkh1cHHK47gKRW/B13HmucCwCk/dmPwjJx7nq6j5sBbGYpZgKtcwdODF2M
         YO8MLkdFgKtIlykrcBE3rmCqGyKOp20aL7/Z2ADxJIcLUptRPu/O3928ybAu1i73QPfy
         d81jEdy059ciFZ1NU/fJrUQto/s9TfwXD9u58FE9SVrEfAairVScnkkB3RFF1mBsrDmt
         byxRW/+4qiyrTt5vmIy7KOIHUxPQUS23MVSWdh493ze4DosUeIuUmoXVSie4Mweljk0K
         fRtQjjN+mXTs7ATRVrkzrN3+s+l8EMuWHxgcgna6+gnlEaG8llxdZeX/ZopRMhRWcYz3
         4+XQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKPS5zoe3zxo6FlrcpmQalyVLpj8Ck4ED1DUmnmBYlt6z78HA/jbtX/afDt4xPV6PppI2IHtXGSyaIZRyKQQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwuMFj3OZ41L0C4nd9MXD+WRcAp7ZVLrlLwaALWXeW70wssW4Z1
	egp6dYd83jxT7L4PABWjW9z9PHGAoKIlOoFRiu4oUIW10Sbpkydq2dLIcZuKkf16iXDHmskHNkD
	G+6hvMxr20rLruXt6y+KfKRN24SZL3YbiMbMop7Oj
X-Gm-Gg: ATEYQzxoqcPDtsPwfr3a2gVA3lJdnwbGhOqa+jH+HNGr5++hZWE9pd52PBZ4URD2X4G
	uaLcUenTAfOLwR2ApOK3lG8ItLSAv0Yqi+PXwC7PzVofqQw5hRgNt9Ce/61zIm9wUh42AU11+Bi
	6vb4IA3JaXW3C6QgMoiPxwNVX9obLKcps8BSfI/T0Dz8l7Kk84fH+NczpMB6I+TzUNC4hFaJeeq
	/5LBeaqudAR4IkvDIRvNwmPEzT6jxDpSflDJiy+rbYKTjkAIEUqk4bdDwzblUaPDTu2suJEse07
	eReBZxGmSg==
X-Received: by 2002:ac2:4427:0:b0:5a1:3134:9bac with SMTP id
 2adb3069b0e04-5a156cbd1bbmr169453e87.28.1773194852284; Tue, 10 Mar 2026
 19:07:32 -0700 (PDT)
MIME-Version: 1.0
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de> <20260310-b4-is_err_or_null-v1-56-bd63b656022d@avm.de>
In-Reply-To: <20260310-b4-is_err_or_null-v1-56-bd63b656022d@avm.de>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 11 Mar 2026 11:07:21 +0900
X-Gm-Features: AaiRm5028PWt8n-JnveiRgn8oYMksdR_-_nk4JOkvxMfplWs-GDr7RRk-OxICyw
Message-ID: <CAGXv+5FQAVaJjqhv+Xq-ysOc4SHQn2mCNTgCAp8XocmWBWGGoA@mail.gmail.com>
Subject: Re: [PATCH 56/61] clk: Prefer IS_ERR_OR_NULL over manual NULL check
To: Philipp Hahn <phahn-oss@avm.de>
Cc: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com, 
	bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr, 
	dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org, 
	gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org, 
	intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev, kvm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-block@vger.kernel.org, 
	linux-bluetooth@vger.kernel.org, linux-btrfs@vger.kernel.org, 
	linux-cifs@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-erofs@lists.ozlabs.org, linux-ext4@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-hyperv@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-mips@vger.kernel.org, linux-mm@kvack.org, 
	linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org, 
	linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
	linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org, ntfs3@lists.linux.dev, 
	samba-technical@lists.samba.org, sched-ext@lists.linux.dev, 
	target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net, 
	v9fs@lists.linux.dev, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Thomas Gleixner <tglx@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_190734_734847_744655E2 
X-CRM114-Status: GOOD (  20.76  )
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

T24gVHVlLCBNYXIgMTAsIDIwMjYgYXQgOTo1N+KAr1BNIFBoaWxpcHAgSGFobiA8cGhhaG4tb3Nz
QGF2bS5kZT4gd3JvdGU6Cj4KPiBQcmVmZXIgdXNpbmcgSVNfRVJSX09SX05VTEwoKSBvdmVyIHVz
aW5nIElTX0VSUigpIGFuZCBhIG1hbnVhbCBOVUxMCj4gY2hlY2suCj4KPiBTZW1hbnRpY2ggY2hh
bmdlOiBQcmV2aW91c2x5IHRoZSBjb2RlIG9ubHkgcHJpbnRlZCB0aGUgd2FybmluZyBvbiBlcnJv
ciwKPiBidXQgbm90IHdoZW4gdGhlIHBvaW50ZXIgd2FzIE5VTEwuIE5vdyB0aGUgd2FybmluZyBp
cyBwcmludGVkIGluIGJvdGgKPiBjYXNlcyEKPgo+IENoYW5nZSBmb3VuZCB3aXRoIGNvY2NpbmVs
bGUuCj4KPiBUbzogTWljaGFlbCBUdXJxdWV0dGUgPG10dXJxdWV0dGVAYmF5bGlicmUuY29tPgo+
IFRvOiBTdGVwaGVuIEJveWQgPHNib3lkQGtlcm5lbC5vcmc+Cj4gVG86IERhbmllbCBMZXpjYW5v
IDxkYW5pZWwubGV6Y2Fub0BrZXJuZWwub3JnPgo+IFRvOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhA
a2VybmVsLm9yZz4KPiBDYzogbGludXgtY2xrQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC1r
ZXJuZWxAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogUGhpbGlwcCBIYWhuIDxwaGFo
bi1vc3NAYXZtLmRlPgo+IC0tLQo+ICBkcml2ZXJzL2Nsay9jbGsuYyAgICAgICAgICAgICAgIHwg
NCArKy0tCj4gIGRyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItcHhhLmMgfCAyICstCj4gIDIgZmls
ZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvY2xrL2Nsay5jIGIvZHJpdmVycy9jbGsvY2xrLmMKPiBpbmRleCA0NzA5M2Nk
YTlkZjMyMjIzYzExMjBjMzcxMDI2MTI5NjAyN2M0Y2QzLi4zNTE0NmUzODY5YTdkZDkzNzQxZDEw
YjcyMjNkNDQ4OGE5MjE2ZWQxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL2Nsay5jCj4gKysr
IGIvZHJpdmVycy9jbGsvY2xrLmMKPiBAQCAtNDU1OCw3ICs0NTU4LDcgQEAgdm9pZCBjbGtfdW5y
ZWdpc3RlcihzdHJ1Y3QgY2xrICpjbGspCj4gICAgICAgICB1bnNpZ25lZCBsb25nIGZsYWdzOwo+
ICAgICAgICAgY29uc3Qgc3RydWN0IGNsa19vcHMgKm9wczsKPgo+IC0gICAgICAgaWYgKCFjbGsg
fHwgV0FSTl9PTl9PTkNFKElTX0VSUihjbGspKSkKPiArICAgICAgIGlmIChXQVJOX09OX09OQ0Uo
SVNfRVJSX09SX05VTEwoY2xrKSkpCj4gICAgICAgICAgICAgICAgIHJldHVybjsKPgo+ICAgICAg
ICAgY2xrX2RlYnVnX3VucmVnaXN0ZXIoY2xrLT5jb3JlKTsKPiBAQCAtNDc0NCw3ICs0NzQ0LDcg
QEAgdm9pZCBfX2Nsa19wdXQoc3RydWN0IGNsayAqY2xrKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3Qg
bW9kdWxlICpvd25lcjsKPgo+IC0gICAgICAgaWYgKCFjbGsgfHwgV0FSTl9PTl9PTkNFKElTX0VS
UihjbGspKSkKPiArICAgICAgIGlmIChXQVJOX09OX09OQ0UoSVNfRVJSX09SX05VTEwoY2xrKSkp
CgpjbGtfZ2V0X29wdGlvbmFsKCkgcmV0dXJucyBOVUxMIGlmIHRoZSBjbGsgaXNuJ3QgcHJlc2Vu
dC4KCkRyaXZlcnMgd291bGQganVzdCBwYXNzIHRoaXMgdG8gY2xrX3B1dCgpLiBZb3VyIGNoYW5n
ZSBoZXJlIHdvdWxkIGNhdXNlCnRoaXMgcGF0dGVybiB0byBlbWl0IGEgdmVyeSBiaWcgd2Fybmlu
Zy4KCkkgZG9uJ3QgdGhpbmsgdGhpcyBjaGFuZ2Ugc2hvdWxkIGJlIGxhbmRlZC4KCgpDaGVuWXUK
Cj4gICAgICAgICAgICAgICAgIHJldHVybjsKPgo+ICAgICAgICAgY2xrX3ByZXBhcmVfbG9jaygp
Owo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLXB4YS5jIGIvZHJpdmVy
cy9jbG9ja3NvdXJjZS90aW1lci1weGEuYwo+IGluZGV4IDdhZDBlNWFkYjJmZmFjNDEyNWMzNDcx
MGZjNjdmNGI0NWYzMDMzMWQuLmY2NWZiMGI3ZmMzMThiNzY2MjI3ZTVlN2E0YzBmYjA4YmExMWM4
ZjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1weGEuYwo+ICsrKyBi
L2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItcHhhLmMKPiBAQCAtMjE4LDcgKzIxOCw3IEBAIHZv
aWQgX19pbml0IHB4YV90aW1lcl9ub2R0X2luaXQoaW50IGlycSwgdm9pZCBfX2lvbWVtICpiYXNl
KQo+Cj4gICAgICAgICB0aW1lcl9iYXNlID0gYmFzZTsKPiAgICAgICAgIGNsayA9IGNsa19nZXQo
TlVMTCwgIk9TVElNRVIwIik7Cj4gLSAgICAgICBpZiAoY2xrICYmICFJU19FUlIoY2xrKSkgewo+
ICsgICAgICAgaWYgKCFJU19FUlJfT1JfTlVMTChjbGspKSB7Cj4gICAgICAgICAgICAgICAgIGNs
a19wcmVwYXJlX2VuYWJsZShjbGspOwo+ICAgICAgICAgICAgICAgICBweGFfdGltZXJfY29tbW9u
X2luaXQoaXJxLCBjbGtfZ2V0X3JhdGUoY2xrKSk7Cj4gICAgICAgICB9IGVsc2Ugewo+Cj4gLS0K
PiAyLjQzLjAKPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
