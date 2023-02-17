Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE244C636D6
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Feb 2023 23:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkeHGZMO2Y9KbTHJ+Crm7GyCdogKPfc9Xv0OduSdbXM=; b=m8I1ME2h9U/hMQ
	qoUFNEY+r0CgI/OCBqJ7Psz5vUsLhoXfRXCnmWr+uRxl84cfralZj7Bz0ZTO6MmCtUoKmR8UHaDg9
	T1VV1Pd42w+TqIhVACXLuZHH84peCk9KxRywDkpZX726LQvKePuImTgBbH/tXoplzCVp/H6nmiykV
	rZlT4/+mGLqst8St8RZnkg0YivRlbkE7zHr52C193Me9zCEHXqXpKL7WXPYm+l4KEGna6LL/Ofaby
	JJ6TW4XLb5aoTKyRvvxy0Os2aWSyy6fvRRb6VkvBapa7N84+qg1J50PaWLqwAam1Ovd7IEh3xSbXk
	5+Sz85ABGx+gdNM0rV0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTA4D-00FwWW-Or; Fri, 17 Feb 2023 23:23:01 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTA43-00FwUC-0z
	for linux-rockchip@lists.infradead.org; Fri, 17 Feb 2023 23:22:52 +0000
Received: by mail-pg1-x535.google.com with SMTP id i10so1447766pgm.4
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Feb 2023 15:22:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112; t=1676676167;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vp0LGpjYzO/wQ9ZofO0IRZ1ED/HKTJwiOg1DwBrCimM=;
        b=NdK9YgJuCiRBPef42LxjEXowdPk2FNt7IFRfxwrka182KEunsBMkBxz2q5Xx6jkUyt
         F5bSIeHYtNDZh7wDkOMX4DPh9yCEeN44tSosIh6FDoJN2FDDkyOYHhbP4dpyBu+tEZEI
         yNnsFXGQgQwF9HtBXm+NMXfGqCYHNokqjDwCiNkFmmX3rX6wkbZWQ8LGqxRpUwry9E2v
         bIGr57rdbVa7GejjmMnXxUCuC2V8bqAWCe01TtCBBtvaI/C6HMyHV0vVurHHz4zEMSBq
         A6QMl4ztxIO9wlrurOcNFBZLD+xq+I8wsx6+WDAQJml6uhGA9kKvRl4UGeXzfrGKX7Ra
         RR3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1676676167;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vp0LGpjYzO/wQ9ZofO0IRZ1ED/HKTJwiOg1DwBrCimM=;
        b=ow1SjN4yqAgGdt2CzF28Kt9I1dBQRyD/OFhNDQIUcmHIsXERgKimbrlW22od8orwth
         +axCo+DkOX3chvZyNyL+MpYUTqIizhBFm+poxZPL/xRUoYKpYozMYActvSrwk+32O1ln
         REc51FZ9ZfIAjaBO0gdPHi3V9QKfA+QpOQttJKF4UmfLCFMBZTEx6cE6SsYyvjrbbXzk
         4aFqsQiBehhU7kxtOkQUzFtV+5RivZyp0h9LXrK/u9YN1vs1yQULwz7oB1DqT1+IiGwT
         /oqO8R4enw6tTWPuUignw7WK3p7k1Srr5hzlV3oN/+1UhsGgl31tQ+yLr/Tr9l+H19dX
         nDkQ==
X-Gm-Message-State: AO0yUKVDz7qnCDOEZMTOwXoOGHmlUkjiwMgi40zAaIxy/d/fQolj+bus
	XOFACPJ11JtXMbUj5GmoQCtAc2R4wg3yw35pFGYpsQ==
X-Google-Smtp-Source: AK7set/Ex/ecKPrR1luvpvNS73pruiK8LWXsXHD5h8XUEHu9Li0cAuOYgCrUqfiDSq8tL5kWg9fU4wNtM7sMcvZ4W60=
X-Received: by 2002:aa7:980f:0:b0:5a8:4dea:7015 with SMTP id
 e15-20020aa7980f000000b005a84dea7015mr132186pfl.36.1676676167036; Fri, 17 Feb
 2023 15:22:47 -0800 (PST)
MIME-Version: 1.0
References: <932DEB17-70FB-4416-80B3-C48A7C31848F@kohlschutter.com> <20220825212842.7176-1-christian@kohlschutter.com>
In-Reply-To: <20220825212842.7176-1-christian@kohlschutter.com>
From: Saravana Kannan <saravanak@google.com>
Date: Fri, 17 Feb 2023 15:22:10 -0800
Message-ID: <CAGETcx__Ez8i9O2O30-Q1R00xOqBjkKMCwt37_AGAQjNvZqpdg@mail.gmail.com>
Subject: Re: [PATCH v5] regulator: core: Resolve supply name earlier to
 prevent double-init
To: =?UTF-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
Cc: broonie@kernel.org, m.szyprowski@samsung.com, heiko@sntech.de, 
	lgirdwood@gmail.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, m.reichl@fivetechno.de, 
	robin.murphy@arm.com, vincent.legoll@gmail.com, wens@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_152251_097518_9AAFA16C 
X-CRM114-Status: GOOD (  25.62  )
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

T24gVGh1LCBBdWcgMjUsIDIwMjIgYXQgMjoyOCBQTSBDaHJpc3RpYW4gS29obHNjaMO8dHRlcgo8
Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5jb20+IHdyb3RlOgo+Cj4gUHJldmlvdXNseSwgYW4gdW5y
ZXNvbHZlZCByZWd1bGF0b3Igc3VwcGx5IHJlZmVyZW5jZSB1cG9uIGNhbGxpbmcKPiByZWd1bGF0
b3JfcmVnaXN0ZXIgb24gYW4gYWx3YXlzLW9uIG9yIGJvb3Qtb24gcmVndWxhdG9yIGNhdXNlZAo+
IHNldF9tYWNoaW5lX2NvbnN0cmFpbnRzIHRvIGJlIGNhbGxlZCB0d2ljZS4KPgo+IFRoaXMgaW4g
dHVybiBtYXkgaW5pdGlhbGl6ZSB0aGUgcmVndWxhdG9yIHR3aWNlLCBsZWFkaW5nIHRvIHZvbHRh
Z2UKPiBnbGl0Y2hlcyB0aGF0IGFyZSB0aW1pbmctZGVwZW5kZW50LiBBIHNpbXBsZSwgdW5yZWxh
dGVkIGNvbmZpZ3VyYXRpb24KPiBjaGFuZ2UgbWF5IGJlIGVub3VnaCB0byBoaWRlIHRoaXMgcHJv
YmxlbSwgb25seSB0byBiZSBzdXJmYWNlZCBieQo+IGNoYW5jZS4KCkluIHlvdXIgY2FzZSwgY2Fu
IHlvdSBlbGFib3JhdGUgd2hpY2ggcGFydCBvZiB0aGUgY29uc3RyYWludHMvaW5pdAp0d2ljZSBj
YXVzZWQgdGhlIGlzc3VlPwoKSSdtIHRyeWluZyB0byBzaW1wbGlmeSBzb21lIG9mIHRoZSBzdXBw
bHkgcmVzb2x2aW5nIGNvZGUgYW5kIEknbQp0cnlpbmcgdG8gbm90IGJyZWFrIHlvdXIgdXNlIGNh
c2UuCgotU2FyYXZhbmEKCj4KPiBPbmUgc3VjaCBleGFtcGxlIGlzIHRoZSBTRC1DYXJkIHZvbHRh
Z2UgcmVndWxhdG9yIGluIGEgTmFub1BJIFI0UyB0aGF0Cj4gd291bGQgbm90IGluaXRpYWxpemUg
cmVsaWFibHkgdW5sZXNzIHRoZSByZWdpc3RyYXRpb24gZmxvdyB3YXMganVzdAo+IGNvbXBsZXgg
ZW5vdWdoIHRvIGFsbG93IHRoZSByZWd1bGF0b3IgdG8gcHJvcGVybHkgcmVzZXQgYmV0d2VlbiBj
YWxscy4KPgo+IEZpeCB0aGlzIGJ5IHJlLWFycmFuZ2luZyByZWd1bGF0b3JfcmVnaXN0ZXIsIHRy
eWluZyByZXNvbHZlIHRoZQo+IHJlZ3VsYXRvcidzIHN1cHBseSBlYXJseSBlbm91Z2ggdGhhdCBz
ZXRfbWFjaGluZV9jb25zdHJhaW50cyBkb2VzIG5vdAo+IG5lZWQgdG8gYmUgY2FsbGVkIHR3aWNl
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEtvaGxzY2jDvHR0ZXIgPGNocmlzdGlhbkBr
b2hsc2NodXR0ZXIuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3JlZ3VsYXRvci9jb3JlLmMgfCA1OCAr
KysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAzNSBpbnNlcnRpb25zKCspLCAyMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3JlZ3VsYXRvci9jb3JlLmMgYi9kcml2ZXJzL3JlZ3VsYXRvci9jb3JlLmMKPiBpbmRleCA3
N2Y2MGVlZjk2MC4uMmZmMGFiMjczMGYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9yZWd1bGF0b3Iv
Y29yZS5jCj4gKysrIGIvZHJpdmVycy9yZWd1bGF0b3IvY29yZS5jCj4gQEAgLTUzOTEsNiArNTM5
MSw3IEBAIHJlZ3VsYXRvcl9yZWdpc3Rlcihjb25zdCBzdHJ1Y3QgcmVndWxhdG9yX2Rlc2MgKnJl
Z3VsYXRvcl9kZXNjLAo+ICAgICAgICAgYm9vbCBkYW5nbGluZ19vZl9ncGlvZCA9IGZhbHNlOwo+
ICAgICAgICAgc3RydWN0IGRldmljZSAqZGV2Owo+ICAgICAgICAgaW50IHJldCwgaTsKPiArICAg
ICAgIGJvb2wgcmVzb2x2ZWRfZWFybHkgPSBmYWxzZTsKPgo+ICAgICAgICAgaWYgKGNmZyA9PSBO
VUxMKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPiBAQCAtNTQ5
NCwyNCArNTQ5NSwxMCBAQCByZWd1bGF0b3JfcmVnaXN0ZXIoY29uc3Qgc3RydWN0IHJlZ3VsYXRv
cl9kZXNjICpyZWd1bGF0b3JfZGVzYywKPiAgICAgICAgIEJMT0NLSU5HX0lOSVRfTk9USUZJRVJf
SEVBRCgmcmRldi0+bm90aWZpZXIpOwo+ICAgICAgICAgSU5JVF9ERUxBWUVEX1dPUksoJnJkZXYt
PmRpc2FibGVfd29yaywgcmVndWxhdG9yX2Rpc2FibGVfd29yayk7Cj4KPiAtICAgICAgIC8qIHBy
ZWZvcm0gYW55IHJlZ3VsYXRvciBzcGVjaWZpYyBpbml0ICovCj4gLSAgICAgICBpZiAoaW5pdF9k
YXRhICYmIGluaXRfZGF0YS0+cmVndWxhdG9yX2luaXQpIHsKPiAtICAgICAgICAgICAgICAgcmV0
ID0gaW5pdF9kYXRhLT5yZWd1bGF0b3JfaW5pdChyZGV2LT5yZWdfZGF0YSk7Cj4gLSAgICAgICAg
ICAgICAgIGlmIChyZXQgPCAwKQo+IC0gICAgICAgICAgICAgICAgICAgICAgIGdvdG8gY2xlYW47
Cj4gLSAgICAgICB9Cj4gLQo+IC0gICAgICAgaWYgKGNvbmZpZy0+ZW5hX2dwaW9kKSB7Cj4gLSAg
ICAgICAgICAgICAgIHJldCA9IHJlZ3VsYXRvcl9lbmFfZ3Bpb19yZXF1ZXN0KHJkZXYsIGNvbmZp
Zyk7Cj4gLSAgICAgICAgICAgICAgIGlmIChyZXQgIT0gMCkgewo+IC0gICAgICAgICAgICAgICAg
ICAgICAgIHJkZXZfZXJyKHJkZXYsICJGYWlsZWQgdG8gcmVxdWVzdCBlbmFibGUgR1BJTzogJXBl
XG4iLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEVSUl9QVFIocmV0KSk7Cj4g
LSAgICAgICAgICAgICAgICAgICAgICAgZ290byBjbGVhbjsKPiAtICAgICAgICAgICAgICAgfQo+
IC0gICAgICAgICAgICAgICAvKiBUaGUgcmVndWxhdG9yIGNvcmUgdG9vayBvdmVyIHRoZSBHUElP
IGRlc2NyaXB0b3IgKi8KPiAtICAgICAgICAgICAgICAgZGFuZ2xpbmdfY2ZnX2dwaW9kID0gZmFs
c2U7Cj4gLSAgICAgICAgICAgICAgIGRhbmdsaW5nX29mX2dwaW9kID0gZmFsc2U7Cj4gLSAgICAg
ICB9Cj4gKyAgICAgICBpZiAoaW5pdF9kYXRhICYmIGluaXRfZGF0YS0+c3VwcGx5X3JlZ3VsYXRv
cikKPiArICAgICAgICAgICAgICAgcmRldi0+c3VwcGx5X25hbWUgPSBpbml0X2RhdGEtPnN1cHBs
eV9yZWd1bGF0b3I7Cj4gKyAgICAgICBlbHNlIGlmIChyZWd1bGF0b3JfZGVzYy0+c3VwcGx5X25h
bWUpCj4gKyAgICAgICAgICAgICAgIHJkZXYtPnN1cHBseV9uYW1lID0gcmVndWxhdG9yX2Rlc2Mt
PnN1cHBseV9uYW1lOwo+Cj4gICAgICAgICAvKiByZWdpc3RlciB3aXRoIHN5c2ZzICovCj4gICAg
ICAgICByZGV2LT5kZXYuY2xhc3MgPSAmcmVndWxhdG9yX2NsYXNzOwo+IEBAIC01NTMzLDEzICs1
NTIwLDM4IEBAIHJlZ3VsYXRvcl9yZWdpc3Rlcihjb25zdCBzdHJ1Y3QgcmVndWxhdG9yX2Rlc2Mg
KnJlZ3VsYXRvcl9kZXNjLAo+ICAgICAgICAgICAgICAgICBnb3RvIHdhc2g7Cj4gICAgICAgICB9
Cj4KPiAtICAgICAgIGlmIChpbml0X2RhdGEgJiYgaW5pdF9kYXRhLT5zdXBwbHlfcmVndWxhdG9y
KQo+IC0gICAgICAgICAgICAgICByZGV2LT5zdXBwbHlfbmFtZSA9IGluaXRfZGF0YS0+c3VwcGx5
X3JlZ3VsYXRvcjsKPiAtICAgICAgIGVsc2UgaWYgKHJlZ3VsYXRvcl9kZXNjLT5zdXBwbHlfbmFt
ZSkKPiAtICAgICAgICAgICAgICAgcmRldi0+c3VwcGx5X25hbWUgPSByZWd1bGF0b3JfZGVzYy0+
c3VwcGx5X25hbWU7Cj4gKyAgICAgICBpZiAoKHJkZXYtPnN1cHBseV9uYW1lICYmICFyZGV2LT5z
dXBwbHkpICYmCj4gKyAgICAgICAgICAgICAgIChyZGV2LT5jb25zdHJhaW50cy0+YWx3YXlzX29u
IHx8Cj4gKyAgICAgICAgICAgICAgICByZGV2LT5jb25zdHJhaW50cy0+Ym9vdF9vbikpIHsKPiAr
ICAgICAgICAgICAgICAgcmV0ID0gcmVndWxhdG9yX3Jlc29sdmVfc3VwcGx5KHJkZXYpOwo+ICsg
ICAgICAgICAgICAgICBpZiAocmV0ICE9IDApCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmRl
dl9kYmcocmRldiwgIlVuYWJsZSB0byByZXNvbHZlIHN1cHBseSBlYXJseTogJXBlXG4iLAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEVSUl9QVFIocmV0KSk7Cj4gKwo+ICsgICAg
ICAgICAgICAgICByZXNvbHZlZF9lYXJseSA9IHRydWU7Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAg
ICAgLyogcGVyZm9ybSBhbnkgcmVndWxhdG9yIHNwZWNpZmljIGluaXQgKi8KPiArICAgICAgIGlm
IChpbml0X2RhdGEgJiYgaW5pdF9kYXRhLT5yZWd1bGF0b3JfaW5pdCkgewo+ICsgICAgICAgICAg
ICAgICByZXQgPSBpbml0X2RhdGEtPnJlZ3VsYXRvcl9pbml0KHJkZXYtPnJlZ19kYXRhKTsKPiAr
ICAgICAgICAgICAgICAgaWYgKHJldCA8IDApCj4gKyAgICAgICAgICAgICAgICAgICAgICAgZ290
byB3YXNoOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIGlmIChjb25maWctPmVuYV9ncGlvZCkg
ewo+ICsgICAgICAgICAgICAgICByZXQgPSByZWd1bGF0b3JfZW5hX2dwaW9fcmVxdWVzdChyZGV2
LCBjb25maWcpOwo+ICsgICAgICAgICAgICAgICBpZiAocmV0ICE9IDApIHsKPiArICAgICAgICAg
ICAgICAgICAgICAgICByZGV2X2VycihyZGV2LCAiRmFpbGVkIHRvIHJlcXVlc3QgZW5hYmxlIEdQ
SU86ICVwZVxuIiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEVS
Ul9QVFIocmV0KSk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgZ290byB3YXNoOwo+ICsgICAg
ICAgICAgICAgICB9Cj4gKyAgICAgICAgICAgICAgIC8qIFRoZSByZWd1bGF0b3IgY29yZSB0b29r
IG92ZXIgdGhlIEdQSU8gZGVzY3JpcHRvciAqLwo+ICsgICAgICAgICAgICAgICBkYW5nbGluZ19j
ZmdfZ3Bpb2QgPSBmYWxzZTsKPiArICAgICAgICAgICAgICAgZGFuZ2xpbmdfb2ZfZ3Bpb2QgPSBm
YWxzZTsKPiArICAgICAgIH0KPgo+ICAgICAgICAgcmV0ID0gc2V0X21hY2hpbmVfY29uc3RyYWlu
dHMocmRldik7Cj4gLSAgICAgICBpZiAocmV0ID09IC1FUFJPQkVfREVGRVIpIHsKPiArICAgICAg
IGlmIChyZXQgPT0gLUVQUk9CRV9ERUZFUiAmJiAhcmVzb2x2ZWRfZWFybHkpIHsKPiAgICAgICAg
ICAgICAgICAgLyogUmVndWxhdG9yIG1pZ2h0IGJlIGluIGJ5cGFzcyBtb2RlIGFuZCBzbyBuZWVk
cyBpdHMgc3VwcGx5Cj4gICAgICAgICAgICAgICAgICAqIHRvIHNldCB0aGUgY29uc3RyYWludHMK
PiAgICAgICAgICAgICAgICAgICovCj4gLS0KPiAyLjM2LjIKPgo+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
