Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1963CF9C5C
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Sep 2024 23:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sbh6t0bUx/FH3gFXGyhXoLFN0IS3tE7ubjNW/jK3TSM=; b=Z1VYsAfPDC1vwj
	Np2dp78hhgc84eLLIvq6xVM2S4L44s+Nb1hFfXmaS4J/N1dWLT0PRi5jep1OLJO84uVBij3dfOgWa
	TIHhoZrtc5n+M+7Q4ycpCyFpxcr/6+VD2tbEApoMaKUjwROGANhdd/VpwcZL9XqUuaKSYoOYhsWDx
	0CVmafn5nOonsb9VA+8pgzWDRmFf3UvTda2jUF8LlsIeNoQacQVfL6GniC16ZXsV4G44cKvmQ8XJp
	GSypAgqHPjPyNvZm4w0l+x5cBZNhvYlKhPTUyTtG/Vl6UTErFvF/jmHyN2ED9K2O+hAkD5+kjozpx
	TPHw7R8R4uJBQ5c0f1Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srmfI-0000000D2oY-3Dnc;
	Fri, 20 Sep 2024 23:03:52 +0000
Received: from mail-lf1-f49.google.com ([209.85.167.49])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srmfF-0000000D2oD-3RSV
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Sep 2024 23:03:51 +0000
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5365c512b00so3162822e87.3
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Sep 2024 16:03:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726873424; x=1727478224;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6iPFS2iKcHR05KyOahfVFcvAwOHUoUZTGTIHlLSaJSg=;
        b=I5fjSXE01EbnOnEwJaHqTK83l+pfrZxGvVgJAYlRVE4lqhijWawdKv/Ob5unZW8rRT
         x2OzGVbBN/g27YJtmr20NHje/tVokzpnxMji2yNDm+2fizZppbs0vUHXqt6zXvG54Qgf
         yxRW0bk0cNxFu3h5a/QxxZU3VIqlYRznBiLBFHYlwqjMoO+xryIR5Ow0PkMZRTfmAZ9X
         00E9vC1N0A8mTN5/WgHgJBcAOuO1zwKGlUGJhywZGg9FVmAvaiiONfny/lU8VFHqYwuw
         kJsrzFu/69/aYIP+6jjnwQJ2aN+agl14TzT8PFs11iHqyh8/TRBpJcoBAFPJGplrQapW
         852w==
X-Forwarded-Encrypted: i=1; AJvYcCUnncRUMdaNc3b9ZIXyaDxHpLL7k5NeNDK19rz+/pqLxnvm2N9ZomQUSGRNd1WrcZ4PmM33aSE8WdZdTCazMw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxD0vXjNMMs3uems1jijB3XgaiSPKkwVMBMyGx0YTt/B+G70TIA
	XvNNGY2jpc4WP7IRrpy/xWuOurUViSR+JnATFcVSDACf0QdWPiH9mZNL0Qq8xkU=
X-Google-Smtp-Source: AGHT+IE8GzS/6n8DXASi+g6oEdhNhqG+1OMjtv94YvfUwHe5s/LedFr6R91VtUN1iWPTEB6ldgAIHw==
X-Received: by 2002:a05:6512:ba8:b0:52c:e054:4149 with SMTP id 2adb3069b0e04-536ac2e523fmr2953692e87.15.1726873424093;
        Fri, 20 Sep 2024 16:03:44 -0700 (PDT)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com. [209.85.208.174])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53687096890sm2331962e87.130.2024.09.20.16.03.42
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Sep 2024 16:03:43 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2f763e9e759so30523221fa.3
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Sep 2024 16:03:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXyLVtJyobaTV0e7cJP9DjpMhaH17xnMnjXqNJbDSVkX0VLKbsfkNstM0ZXU2VN3LdpXNMmKOs/ebpbk2y9oA==@lists.infradead.org
X-Received: by 2002:a05:651c:1992:b0:2f5:a29:5a42 with SMTP id
 38308e7fff4ca-2f7cb3190f8mr31560601fa.14.1726873422580; Fri, 20 Sep 2024
 16:03:42 -0700 (PDT)
MIME-Version: 1.0
References: <20240919091834.83572-1-sebastian.reichel@collabora.com> <20240919091834.83572-6-sebastian.reichel@collabora.com>
In-Reply-To: <20240919091834.83572-6-sebastian.reichel@collabora.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sat, 21 Sep 2024 01:03:26 +0200
X-Gmail-Original-Message-ID: <CAGb2v66SNkrkXa4Q2gy7fNFZq74WTkxTMYymOKAiYY4HdsRPfg@mail.gmail.com>
Message-ID: <CAGb2v66SNkrkXa4Q2gy7fNFZq74WTkxTMYymOKAiYY4HdsRPfg@mail.gmail.com>
Subject: Re: [PATCH v2 5/6] pmdomain: rockchip: add regulator support
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Elaine Zhang <zhangqing@rock-chips.com>, 
	=?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240920_160349_888071_0D1E03F9 
X-CRM114-Status: GOOD (  30.39  )
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
Reply-To: wens@csie.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBTZXAgMTksIDIwMjQgYXQgMTE6MjfigK9BTSBTZWJhc3RpYW4gUmVpY2hlbAo8c2Vi
YXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4KPiBTb21lIHBvd2VyIGRvbWFp
bnMgcmVxdWlyZSBleHRyYSB2b2x0YWdlcyB0byBiZSBhcHBsaWVkLiBGb3IgZXhhbXBsZQo+IHRy
eWluZyB0byBlbmFibGUgdGhlIEdQVSBkb21haW4gb24gUkszNTg4IGZhaWxzIHdoZW4gdGhlIFNv
QyBkb2VzIG5vdAo+IGhhdmUgVkREIEdQVSBlbmFibGVkLgo+Cj4gVGhlIHNvbHV0aW9uIHRvIHRl
bXBvcmFyaWx5IGNoYW5nZSB0aGUgZGV2aWNlJ3MgZGV2aWNlIHRyZWUgbm9kZSBoYXMKPiBiZWVu
IHRha2VuIG92ZXIgZnJvbSB0aGUgTWVkaWF0ZWsgcG93ZXIgZG9tYWluIGRyaXZlci4KPgo+IFRo
ZSByZWd1bGF0b3IgaXMgbm90IGFjcXVpcmVkIGF0IHByb2JlIHRpbWUsIHNpbmNlIHRoYXQgY3Jl
YXRlcyBjaXJjdWxhcgo+IGRlcGVuZGVuY2llcy4gVGhlIHBvd2VyIGRvbWFpbiBkcml2ZXIgbXVz
dCBiZSBwcm9iZWQgZWFybHksIHNpbmNlIFNvQwo+IHBlcmlwaGVyYWxzIG5lZWQgaXQuIFJlZ3Vs
YXRvcnMgb24gdGhlIG90aGVyIGhhbmQgZGVwZW5kIG9uIFNvQwo+IHBlcmlwaGVyYWxzIGxpa2Ug
U1BJLCBJMkMgb3IgR1BJTy4KPgo+IFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29A
c250ZWNoLmRlPgo+IFRlc3RlZC1ieTogQWRyaWFuIExhcnVtYmUgPGFkcmlhbi5sYXJ1bWJlQGNv
bGxhYm9yYS5jb20+ICMgT24gUm9jayA1Qgo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWlj
aGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3Bt
ZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYyB8IDU2ICsrKysrKysrKysrKysrKysrKysrKysr
KystCj4gIDEgZmlsZSBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jIGIv
ZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPiBpbmRleCA2NjNkMzkwZmFh
ZWIuLjRiYzE3YjU4ODQxOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlw
L3BtLWRvbWFpbnMuYwo+ICsrKyBiL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlu
cy5jCj4gQEAgLTE4LDYgKzE4LDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L29mX2Nsay5oPgo+ICAj
aW5jbHVkZSA8bGludXgvY2xrLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9yZWdtYXAuaD4KPiArI2lu
Y2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25zdW1lci5oPgo+ICAjaW5jbHVkZSA8bGludXgvbWZk
L3N5c2Nvbi5oPgo+ICAjaW5jbHVkZSA8c29jL3JvY2tjaGlwL3BtX2RvbWFpbnMuaD4KPiAgI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL3Bvd2VyL3B4MzAtcG93ZXIuaD4KPiBAQCAtODksNiArOTAsOCBA
QCBzdHJ1Y3Qgcm9ja2NoaXBfcG1fZG9tYWluIHsKPiAgICAgICAgIHUzMiAqcW9zX3NhdmVfcmVn
c1tNQVhfUU9TX1JFR1NfTlVNXTsKPiAgICAgICAgIGludCBudW1fY2xrczsKPiAgICAgICAgIHN0
cnVjdCBjbGtfYnVsa19kYXRhICpjbGtzOwo+ICsgICAgICAgc3RydWN0IGRldmljZV9ub2RlICpu
b2RlOwo+ICsgICAgICAgc3RydWN0IHJlZ3VsYXRvciAqc3VwcGx5Owo+ICB9Owo+Cj4gIHN0cnVj
dCByb2NrY2hpcF9wbXUgewo+IEBAIC01NzEsMTggKzU3NCw2NiBAQCBzdGF0aWMgaW50IHJvY2tj
aGlwX3BkX3Bvd2VyKHN0cnVjdCByb2NrY2hpcF9wbV9kb21haW4gKnBkLCBib29sIHBvd2VyX29u
KQo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIH0KPgo+ICtzdGF0aWMgaW50IHJvY2tjaGlwX3BkX3Jl
Z3VsYXRvcl9kaXNhYmxlKHN0cnVjdCByb2NrY2hpcF9wbV9kb21haW4gKnBkKQo+ICt7Cj4gKyAg
ICAgICByZXR1cm4gcGQtPnN1cHBseSA/IHJlZ3VsYXRvcl9kaXNhYmxlKHBkLT5zdXBwbHkpIDog
MDsKPiArfQo+ICsKPiArc3RhdGljIGludCByb2NrY2hpcF9wZF9yZWd1bGF0b3JfZW5hYmxlKHN0
cnVjdCByb2NrY2hpcF9wbV9kb21haW4gKnBkKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3Qgcm9ja2No
aXBfcG11ICpwbXUgPSBwZC0+cG11Owo+ICsgICAgICAgc3RydWN0IGRldmljZV9ub2RlICptYWlu
X25vZGU7Cj4gKwo+ICsgICAgICAgaWYgKCFwZC0+c3VwcGx5KSB7Cj4gKyAgICAgICAgICAgICAg
IC8qCj4gKyAgICAgICAgICAgICAgICAqIEZpbmQgcmVndWxhdG9yIGluIGN1cnJlbnQgcG93ZXIg
ZG9tYWluIG5vZGUuCj4gKyAgICAgICAgICAgICAgICAqIGRldm1fcmVndWxhdG9yX2dldCgpIGZp
bmRzIHJlZ3VsYXRvciBpbiBhIG5vZGUgYW5kIGl0cyBjaGlsZAo+ICsgICAgICAgICAgICAgICAg
KiBub2RlLCBzbyBzZXQgb2Zfbm9kZSB0byBjdXJyZW50IHBvd2VyIGRvbWFpbiBub2RlIHRoZW4g
Y2hhbmdlCj4gKyAgICAgICAgICAgICAgICAqIGJhY2sgdG8gb3JpZ2luYWwgbm9kZSBhZnRlciBy
ZWd1bGF0b3IgaXMgZm91bmQgZm9yIGN1cnJlbnQKPiArICAgICAgICAgICAgICAgICogcG93ZXIg
ZG9tYWluIG5vZGUuCj4gKyAgICAgICAgICAgICAgICAqLwo+ICsgICAgICAgICAgICAgICBtYWlu
X25vZGUgPSBwbXUtPmRldi0+b2Zfbm9kZTsKPiArICAgICAgICAgICAgICAgcG11LT5kZXYtPm9m
X25vZGUgPSBwZC0+bm9kZTsKPiArICAgICAgICAgICAgICAgcGQtPnN1cHBseSA9IGRldm1fcmVn
dWxhdG9yX2dldChwbXUtPmRldiwgImRvbWFpbiIpOwoKSG93IGRvIHlvdSBkaWZmZXJlbnRpYXRl
IGJldHdlZW4gYSBwb3dlciBkb21haW4gbm90IG5lZWRpbmcgYSBzdXBwbHksCnZzIGEgcG93ZXIg
ZG9tYWluIHRoYXQgaXMgbWlzc2luZyBpdHMgc3VwcGx5IGluIERUPwoKWW91J3JlIHVzaW5nIHRo
ZSBub3JtYWwgImRldm1fcmVndWxhdG9yX2dldCgpIiBoZXJlIChubyAiX29wdGlvbmFsKSwKd2hp
Y2ggZ2l2ZXMgdGhlIGR1bW15IHN1cHBseSBpZiBubyBzdXBwbHkgaXMgc3BlY2lmaWVkIGluIHRo
ZSBEVCwgYW5kCkkgdGhpbmsgdGhhdCB3b3VsZG4ndCB3b3JrIHByb3Blcmx5LgoKSSdtIHRyeWlu
ZyB0byB3b3JrIG91dCBpZiBoYXZpbmcgImRldm1fb2ZfcmVndWxhdG9yX2dldCgpIiBpcyBuZWVk
ZWQgb3IKbm90LgoKQWxzbywgdGhpcyBjb3VsZCByZXR1cm4gLUVQUk9CRV9ERUZFUi4gSSBndWVz
cyBpdCB3b3JrcyB3aXRoIHRoZSBpbml0aWFsCnBtX2RvbWFpbl9hdHRhY2goKSBmcm9tIHRoZSBk
cml2ZXIgY29yZT8KCgpUaGFua3MKQ2hlbll1CgoKPiArICAgICAgICAgICAgICAgcG11LT5kZXYt
Pm9mX25vZGUgPSBtYWluX25vZGU7Cj4gKyAgICAgICAgICAgICAgIGlmIChJU19FUlIocGQtPnN1
cHBseSkpIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBwZC0+c3VwcGx5ID0gTlVMTDsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gMDsKPiArICAgICAgICAgICAgICAgfQo+ICsg
ICAgICAgfQo+ICsKPiArICAgICAgIHJldHVybiByZWd1bGF0b3JfZW5hYmxlKHBkLT5zdXBwbHkp
Owo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50IHJvY2tjaGlwX3BkX3Bvd2VyX29uKHN0cnVjdCBnZW5l
cmljX3BtX2RvbWFpbiAqZG9tYWluKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3Qgcm9ja2NoaXBfcG1f
ZG9tYWluICpwZCA9IHRvX3JvY2tjaGlwX3BkKGRvbWFpbik7Cj4gKyAgICAgICBpbnQgcmV0Owo+
ICsKPiArICAgICAgIHJldCA9IHJvY2tjaGlwX3BkX3JlZ3VsYXRvcl9lbmFibGUocGQpOwo+ICsg
ICAgICAgaWYgKHJldCkgewo+ICsgICAgICAgICAgICAgICBkZXZfZXJyKHBkLT5wbXUtPmRldiwg
IkZhaWxlZCB0byBlbmFibGUgc3VwcGx5OiAlZFxuIiwgcmV0KTsKPiArICAgICAgICAgICAgICAg
cmV0dXJuIHJldDsKPiArICAgICAgIH0KPgo+IC0gICAgICAgcmV0dXJuIHJvY2tjaGlwX3BkX3Bv
d2VyKHBkLCB0cnVlKTsKPiArICAgICAgIHJldCA9IHJvY2tjaGlwX3BkX3Bvd2VyKHBkLCB0cnVl
KTsKPiArICAgICAgIGlmIChyZXQpCj4gKyAgICAgICAgICAgICAgIHJvY2tjaGlwX3BkX3JlZ3Vs
YXRvcl9kaXNhYmxlKHBkKTsKPiArCj4gKyAgICAgICByZXR1cm4gcmV0Owo+ICB9Cj4KPiAgc3Rh
dGljIGludCByb2NrY2hpcF9wZF9wb3dlcl9vZmYoc3RydWN0IGdlbmVyaWNfcG1fZG9tYWluICpk
b21haW4pCj4gIHsKPiAgICAgICAgIHN0cnVjdCByb2NrY2hpcF9wbV9kb21haW4gKnBkID0gdG9f
cm9ja2NoaXBfcGQoZG9tYWluKTsKPiArICAgICAgIGludCByZXQ7Cj4KPiAtICAgICAgIHJldHVy
biByb2NrY2hpcF9wZF9wb3dlcihwZCwgZmFsc2UpOwo+ICsgICAgICAgcmV0ID0gcm9ja2NoaXBf
cGRfcG93ZXIocGQsIGZhbHNlKTsKPiArICAgICAgIGlmIChyZXQpCj4gKyAgICAgICAgICAgICAg
IHJldHVybiByZXQ7Cj4gKwo+ICsgICAgICAgcm9ja2NoaXBfcGRfcmVndWxhdG9yX2Rpc2FibGUo
cGQpOwo+ICsgICAgICAgcmV0dXJuIHJldDsKPiAgfQo+Cj4gIHN0YXRpYyBpbnQgcm9ja2NoaXBf
cGRfYXR0YWNoX2RldihzdHJ1Y3QgZ2VuZXJpY19wbV9kb21haW4gKmdlbnBkLAo+IEBAIC02NjMs
NiArNzE0LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9wbV9hZGRfb25lX2RvbWFpbihzdHJ1Y3Qg
cm9ja2NoaXBfcG11ICpwbXUsCj4KPiAgICAgICAgIHBkLT5pbmZvID0gcGRfaW5mbzsKPiAgICAg
ICAgIHBkLT5wbXUgPSBwbXU7Cj4gKyAgICAgICBwZC0+bm9kZSA9IG5vZGU7Cj4KPiAgICAgICAg
IHBkLT5udW1fY2xrcyA9IG9mX2Nsa19nZXRfcGFyZW50X2NvdW50KG5vZGUpOwo+ICAgICAgICAg
aWYgKHBkLT5udW1fY2xrcyA+IDApIHsKPiAtLQo+IDIuNDUuMgo+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
