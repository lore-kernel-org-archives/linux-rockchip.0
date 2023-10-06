Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADDCAE94136
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Oct 2023 22:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+HjVMtv5fVm88biLbn+7cVAAUhvWjx8BGdKPPzZMxY=; b=0p4Yvo2mkbgzzE
	Ikg4PASpLwg/FPgtfYkYwm99Cr9D/Gnzo08Sf787jlQS6k4nmoye/u/CXNspJp3nJ+o8mKD6vFHSs
	M7kZA0/OOXK/41o5RsdK+6VGGKvkMJ5+0bfN5quBDBk2AxeHGUPE6mczBdzFJG9KaJA/aGMvjnvrw
	b+WeckqjnQGTUs/q87N/u04aHHhH4rRcQxCF+mAfH6DF65/8OQfksqqBcwj2C8/i7j1dZb4lHul7u
	QQAeKwuTeUDI/7CQg6d01eMrBihKgyXshDwssM5ull36X7Kgs3movjgtb82KltlVm75/RLdwS9x0Q
	Q81gl5fB9VIBmLUZn4wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qotmW-006cbj-2N;
	Fri, 06 Oct 2023 22:58:52 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qotmT-006cb2-02;
	Fri, 06 Oct 2023 22:58:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E3F3F612E1;
	Fri,  6 Oct 2023 22:58:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8639CC433D9;
	Fri,  6 Oct 2023 22:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696633127;
	bh=VfpPsL7bm6HmerXk75YQFSWmkvZ5EqPcTozDyLPJ7ZE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=rcV3x9OFyzgcq5JnKP7XyajjlUizbG7zv6TwJX1iaKrCN8FqIuecH1Zs6kZmhQOEZ
	 P5swnL8g91dfdtAH5uD7CUPfp58B/0YpSIN3ixWWJxQCviyKPUkQq+hsY1llVzxYks
	 n7hsv2wXXYKbSOT/lGjFXr+QCVT1bYxu2KJgb8h/w4I/W4nHsezboD2QmBMGg+JS+c
	 fddknGRh0stdSH0IZPgrnL/3usGUh990pEG/HYNmtGfKnUEX0brB5XNw5LeEfdwL77
	 yiA6xNpKXtTYNHFZcFfGboeB8buBhEtSzb/U6IMxeUW700lfF9/6Pry8ADjWXuuya7
	 fqO4GAuHBxKnQ==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-50336768615so3437201e87.0;
        Fri, 06 Oct 2023 15:58:47 -0700 (PDT)
X-Gm-Message-State: AOJu0YyG/o6btcE2E4Wu7IkTwUjJPuA8OqHNxdwht4AaTODhHcwhKkyV
	kZdTWo2JrjsB5bOV2fuse25+xBnz0V4NbahaPg==
X-Google-Smtp-Source: AGHT+IGLN4usMWBOz3e69x4mdRwL549LapQyzyV9YwhpOdQ+Wbn8qFwQJDLpXo6dG/GqnWIxylZDOOe8h7XSov2Ays4=
X-Received: by 2002:a19:6414:0:b0:4fb:8435:3efc with SMTP id
 y20-20020a196414000000b004fb84353efcmr7215825lfb.16.1696633125695; Fri, 06
 Oct 2023 15:58:45 -0700 (PDT)
MIME-Version: 1.0
References: <20231006213959.334439-1-robh@kernel.org> <CAA8EJpp7yKZP3SAHdZAJg57vbyRjYAS=vDEV-353mc9yzHe4vw@mail.gmail.com>
In-Reply-To: <CAA8EJpp7yKZP3SAHdZAJg57vbyRjYAS=vDEV-353mc9yzHe4vw@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 6 Oct 2023 17:58:33 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ0O=-vNqSUjgr_Po=Xy1G+7Zdz7Dz+euUDjcpBAqtGqA@mail.gmail.com>
Message-ID: <CAL_JsqJ0O=-vNqSUjgr_Po=Xy1G+7Zdz7Dz+euUDjcpBAqtGqA@mail.gmail.com>
Subject: Re: [PATCH] clk: Use device_get_match_data()
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Charles Keepax <ckeepax@opensource.cirrus.com>, 
	Richard Fitzgerald <rf@opensource.cirrus.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, David Lechner <david@lechnology.com>, Sekhar Nori <nsekhar@ti.com>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Tomasz Figa <tomasz.figa@gmail.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Tero Kristo <kristo@kernel.org>, patches@opensource.cirrus.com, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-omap@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_155849_160340_D3FCC376 
X-CRM114-Status: GOOD (  24.21  )
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

T24gRnJpLCBPY3QgNiwgMjAyMyBhdCA1OjEw4oCvUE0gRG1pdHJ5IEJhcnlzaGtvdgo8ZG1pdHJ5
LmJhcnlzaGtvdkBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIFNhdCwgNyBPY3QgMjAyMyBhdCAw
MDo0MSwgUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPgo+ID4gVXNlIHBy
ZWZlcnJlZCBkZXZpY2VfZ2V0X21hdGNoX2RhdGEoKSBpbnN0ZWFkIG9mIG9mX21hdGNoX2Rldmlj
ZSgpIHRvCj4gPiBnZXQgdGhlIGRyaXZlciBtYXRjaCBkYXRhLiBXaXRoIHRoaXMsIGFkanVzdCB0
aGUgaW5jbHVkZXMgdG8gZXhwbGljaXRseQo+ID4gaW5jbHVkZSB0aGUgY29ycmVjdCBoZWFkZXJz
Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4g
PiAtLS0KPiA+ICBkcml2ZXJzL2Nsay9jbGstbG9jaG5hZ2FyLmMgICAgICAgICAgICAgfCAgOSAr
Ky0tLS0tLS0KPiA+ICBkcml2ZXJzL2Nsay9kYXZpbmNpL2RhOHh4LWNmZ2NoaXAuYyAgICAgfCAg
OCArKystLS0tLQo+ID4gIGRyaXZlcnMvY2xrL2RhdmluY2kvcGxsLmMgICAgICAgICAgICAgICB8
IDEwICsrKy0tLS0tLS0KPiA+ICBkcml2ZXJzL2Nsay9kYXZpbmNpL3BzYy5jICAgICAgICAgICAg
ICAgfCAxMCArKystLS0tLS0tCj4gPiAgZHJpdmVycy9jbGsvcWNvbS9nY2MtbXNtODk2MC5jICAg
ICAgICAgIHwgMTMgKysrKystLS0tLS0tLQo+ID4gIGRyaXZlcnMvY2xrL3Fjb20vZ2NjLW1zbTg5
NzQuYyAgICAgICAgICB8IDEwICsrKy0tLS0tLS0KPiA+ICBkcml2ZXJzL2Nsay9xY29tL2twc3Mt
eGNjLmMgICAgICAgICAgICAgfCAgOSArKy0tLS0tLS0KPiA+ICBkcml2ZXJzL2Nsay9xY29tL2ty
YWl0LWNjLmMgICAgICAgICAgICAgfCAxNCArKysrKy0tLS0tLS0tLQo+ID4gIGRyaXZlcnMvY2xr
L3Fjb20vbW1jYy1tc204OTYwLmMgICAgICAgICB8IDE2ICsrKysrLS0tLS0tLS0tLS0KPiA+ICBk
cml2ZXJzL2Nsay9xY29tL21tY2Mtc2RtNjYwLmMgICAgICAgICAgfCAgOCArKy0tLS0tLQo+ID4g
IGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzOTkuYyAgICAgICB8ICA5ICsrLS0tLS0tLQo+
ID4gIGRyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vcy1jbGtvdXQuYyB8ICA4ICsrKy0tLS0t
Cj4gPiAgZHJpdmVycy9jbGsvdGkvYWRwbGwuYyAgICAgICAgICAgICAgICAgIHwgMTQgKysrKy0t
LS0tLS0tLS0KPiA+ICAxMyBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCA5NiBkZWxl
dGlvbnMoLSkKPiA+Cgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3Fjb20vbW1jYy1tc204
OTYwLmMgYi9kcml2ZXJzL2Nsay9xY29tL21tY2MtbXNtODk2MC5jCj4gPiBpbmRleCA2YmY5MDhh
NTFmNTMuLjUwNjM4YWIzNDFlYyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvY2xrL3Fjb20vbW1j
Yy1tc204OTYwLmMKPiA+ICsrKyBiL2RyaXZlcnMvY2xrL3Fjb20vbW1jYy1tc204OTYwLmMKPiA+
IEBAIC04LDkgKzgsOSBAQAo+ID4gICNpbmNsdWRlIDxsaW51eC9lcnIuaD4KPiA+ICAjaW5jbHVk
ZSA8bGludXgvZGVsYXkuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+
Cj4gPiArI2luY2x1ZGUgPGxpbnV4L3Byb3BlcnR5Lmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L21v
ZHVsZS5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+ID4gLSNpbmNsdWRlIDxsaW51eC9v
Zl9kZXZpY2UuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4gPiAgI2luY2x1ZGUgPGxp
bnV4L2Nsay1wcm92aWRlci5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9yZWdtYXAuaD4KPiA+IEBA
IC0zMTA1LDMwICszMTA1LDI0IEBAIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIG1tY2NfbXNtODk2
MF9tYXRjaF90YWJsZSk7Cj4gPgo+ID4gIHN0YXRpYyBpbnQgbW1jY19tc204OTYwX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgewo+ID4gLSAgICAgICBjb25zdCBzdHJ1
Y3Qgb2ZfZGV2aWNlX2lkICptYXRjaDsKPiA+ICAgICAgICAgc3RydWN0IHJlZ21hcCAqcmVnbWFw
Owo+ID4gLSAgICAgICBib29sIGlzXzgwNjQ7Cj4gPiAgICAgICAgIHN0cnVjdCBkZXZpY2UgKmRl
diA9ICZwZGV2LT5kZXY7Cj4gPiArICAgICAgIGNvbnN0IHN0cnVjdCBxY29tX2NjX2Rlc2MgKmRl
c2MgPSBkZXZpY2VfZ2V0X21hdGNoX2RhdGEoZGV2KTsKPiA+Cj4gPiAtICAgICAgIG1hdGNoID0g
b2ZfbWF0Y2hfZGV2aWNlKG1tY2NfbXNtODk2MF9tYXRjaF90YWJsZSwgZGV2KTsKPiA+IC0gICAg
ICAgaWYgKCFtYXRjaCkKPiA+IC0gICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiA+IC0K
PiA+IC0gICAgICAgaXNfODA2NCA9IG9mX2RldmljZV9pc19jb21wYXRpYmxlKGRldi0+b2Zfbm9k
ZSwgInFjb20sbW1jYy1hcHE4MDY0Iik7Cj4KPiBDYW4gd2UgcGxlYXNlIGtlZXAgb2ZfZGV2aWNl
X2lzX2NvbXBhdGlibGUgaGVyZT8gSXQgaXMgbW9yZSBleHBsaWNpdAo+IGFuZCBzZWxmLWRvY3Vt
ZW50aW5nLgoKV2h5IGRvIHdlIG5lZWQgdG8gbWF0Y2ggMyB0aW1lcyAobWF0Y2gsIGRldmljZV9n
ZXRfbWF0Y2hfZGF0YSwKb2ZfZGV2aWNlX2lzX2NvbXBhdGlibGUpPwoKUGVyaGFwcyBwdXQgaXQg
aW4gdGhlIG1hdGNoIGRhdGE/IE9yIG1ha2UgYSBoZWxwZXIgZnVuY3Rpb24gaXNfODA2NCgpCnRo
YXQgZG9lcyB0aGUgY29tcGFyaXNvbiB0byB0aGUgbWF0Y2ggZGF0YT8KCj4gQWxzbywgaXQgd291
bGQgYmUgcmVhbGx5IG5pY2UgdG8gaGF2ZSBwZXItcGxhdGZvcm0gcGF0Y2hlcywgc28gdGhhdAo+
IG91ciBtYWludGFpbmVycyBjYW4gcGljayB0aGVtLCBvdGhlcndpc2UgdGhlIHJpc2sgb2YgY29u
ZmxpY3RzIGlzCj4gcHJldHR5IGhpZ2guCgpOby4KCkknbSBkb2luZyB0aGlzIHRyZWV3aWRlLiBJ
dCdzIGFscmVhZHkgcHJldHR5IHVubWFuYWdlYWJsZS4gQnV0IGZlZWwKZnJlZSB0byBzdWJtaXQg
YSBzZXBhcmF0ZSBwYXRjaCBpZiB5b3UgcHJlZmVyIHRvIHRoaXMgZm9yIFFDb20uIFdoZW4gSQpz
cGxpdCB0aGluZ3MgdXAgYnkgc3ViLWFyY2gsIHRoZW4gSSBhbHNvIGhhdmUgdG8gc3BlbmQgdGlt
ZSBjaGFzaW5nCmRvd24gbm9uLXJlc3BvbnNpdmUgbWFpbnRhaW5lcnMuCgpSb2IKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
