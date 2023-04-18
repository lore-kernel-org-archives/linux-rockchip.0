Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C96C9C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 07:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7qTGtuUd+h5QtQZVthnpYNZfC/pKGa4V32RYgNKWfyg=; b=DDk3ItappJT9+B
	S9ULvtrZKWjAh+jHLGUxyxwLHXXlEDb5EjjeyAxqrkQ9oq9zePSvffCRL6FiPoqYy7e57dOLA1zuG
	uLMYBXiq2yi2dYv+77Oli7404anMUX8tfozP3dR0XXaOfPhPzjvIdTryfzZVVsE/3DksSxFWC7xln
	E5M0TuGU5fLcUFzUIyGDwggncTlQsiIZfMm1uAlIVN5HDPRPRV/iQqiBqsBv2Mx8WDfz24OkJ8zf5
	z2ly+339i2tL56UY1AxC116o/ga7y1FvcsI+Cvd7pF3yHQ5kcxrxyNY7vL1WLMATSO2FfTXqlO9y/
	K6WYxprVhY291bjzTSVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pog8C-001DiB-0h;
	Tue, 18 Apr 2023 07:52:04 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pog89-001DgF-0y;
	Tue, 18 Apr 2023 07:52:02 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6a5f7341850so279553a34.2;
        Tue, 18 Apr 2023 00:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681804319; x=1684396319;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5XKhV+MHr8awDXVQkhnmJAIOVO3SkBSAcDrv3qZeqRM=;
        b=aCpLWNji4OTAE4e5fab5SPjEOKIo46qFJyBYha9QKlWykMiHxa6UERPbBDt9Zp0t1X
         8fbo8Gn8e54SuwT97ilMsuMFBxwsP/mSq1+WA271x5ybmv5s5kCUfCZ2ESrLW/4b0AzW
         Vs2wo5uZ1uVf255k4v3bNKEDRXX8kOC2KL358LkEW+9shsQXAgQ8ZYmBRsKHDNIFVVIN
         j5DjjuYbQWDpy+b6nMS3grMz8T7lrPSMY1QIn8kvnfkDBGgg5hzKj71swjDZ6F8vfyCK
         RQtjAyiqZnfl036n9iwluFGmmX9KYwxYX48aEs33dbfB5O52aW1/gx9mItfUCHeVoO8V
         wfYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681804319; x=1684396319;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5XKhV+MHr8awDXVQkhnmJAIOVO3SkBSAcDrv3qZeqRM=;
        b=B11EPLeXyPk3Lp7S6JipdhBx4SbW9AdCMqcf+DgO9TPSvMTqmH8KEp/bAI1cPHjoGw
         oa3pucq9PuLghAjJKHtW/cHabCw44A4MednwYBQIU5bGmiShmcJpCRuQM4hckfUy+lq/
         RYJDDFBoFAX/DHsNHj6kCYkoZ0O1GDQBJuODAll+Tw5drLVMKBI1yDwgk2kf+WulgXlK
         QZHJ8ukpLJiw8B85Kj/5gUy6JVNkk/7ceuEcsTgUS06OKpuOVQjwdpV6AHvy+xU+imSV
         ymqORCE5zUl20sCOL4qMia3MckLbb3SEqaMqSoFyV6eolGLrWaFt0umo10X5ftln7s2D
         zkaQ==
X-Gm-Message-State: AAQBX9cVhIn1ia4H2xuO4iI0q9JmxjDySWhQ/Vt97DWZeFrj0BnlGZKg
	IZocEyN6iU4XfRX49WzPXYwLyf7sPLkFAWufNaU=
X-Google-Smtp-Source: AKy350Zf3sU1nYlYoPeOkzMHw/dQgTtJBMd+Y2Opy7BQqFfpE+zvN8yJAMYfsfPRC6Nae8Yrf/jpNP/3BUrfesjrWtA=
X-Received: by 2002:a05:6830:1486:b0:6a4:3385:7a6f with SMTP id
 s6-20020a056830148600b006a433857a6fmr412331otq.4.1681804317971; Tue, 18 Apr
 2023 00:51:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230417092631.347976-1-rick.wertenbroek@gmail.com> <ea29e339-6f61-5bbb-7290-03df629d5b11@kernel.org>
In-Reply-To: <ea29e339-6f61-5bbb-7290-03df629d5b11@kernel.org>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Tue, 18 Apr 2023 09:51:21 +0200
Message-ID: <CAAEEuhpj4TZNrPEPn7LuGOHHoYt1FbCEGH1d9g+8iKMeoBA+=Q@mail.gmail.com>
Subject: Re: [PATCH v4 00/11] PCI: rockchip: Fix RK3399 PCIe endpoint
 controller driver
To: Damien Le Moal <dlemoal@kernel.org>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com, 
	Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Heiko Stuebner <heiko@sntech.de>, Brian Norris <briannorris@chromium.org>, 
	Johan Jonker <jbx6244@gmail.com>, Caleb Connolly <kc@postmarketos.org>, 
	Corentin Labbe <clabbe@baylibre.com>, Judy Hsiao <judyhsiao@chromium.org>, 
	Arnaud Ferraris <arnaud.ferraris@collabora.com>, Hugh Cole-Baker <sigmaris@gmail.com>, 
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_005201_337011_2DFAB06E 
X-CRM114-Status: GOOD (  28.80  )
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

T24gVHVlLCBBcHIgMTgsIDIwMjMgYXQgMjowOeKAr0FNIERhbWllbiBMZSBNb2FsIDxkbGVtb2Fs
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gNC8xNy8yMyAxODoyNiwgUmljayBXZXJ0ZW5icm9l
ayB3cm90ZToKPiA+IFRoaXMgaXMgYSBzZXJpZXMgb2YgcGF0Y2hlcyB0aGF0IGZpeGVzIHRoZSBQ
Q0llIGVuZHBvaW50IGNvbnRyb2xsZXIgZHJpdmVyCj4gPiBmb3IgdGhlIFJvY2tjaGlwIFJLMzM5
OSBTb0MuIFRoZSBkcml2ZXIgd2FzIGludHJvZHVjZWQgaW4gY29tbWl0Cj4gPiBjZjU5MGIwNzgz
OTEgKCJQQ0k6IHJvY2tjaGlwOiBBZGQgRVAgZHJpdmVyIGZvciBSb2NrY2hpcCBQQ0llIGNvbnRy
b2xsZXIiKQo+ID4gVGhlIG9yaWdpbmFsIGRyaXZlciBoYWQgaXNzdWVzIGFuZCB3b3VsZCBub3Qg
YWxsb3cgZm9yIHRoZSBSSzMzOTkgdG8KPiA+IG9wZXJhdGUgaW4gUENJZSBlbmRwb2ludCBtb2Rl
IGNvcnJlY3RseS4gVGhpcyBwYXRjaCBzZXJpZXMgZml4ZXMgdGhhdCBzbwo+ID4gdGhhdCB0aGUg
UENJZSBjb3JlIGNvbnRyb2xsZXIgb2YgdGhlIFJLMzM5OSBTb0MgY2FuIG5vdyBhY3QgYXMgYSBQ
Q0llCj4gPiBlbmRwb2ludC4gVGhpcyBpcyB2NCBvZiB0aGUgcGF0Y2ggc2VyaWVzIGFuZCBhZGRy
ZXNzZXMgdGhlIGNvbW1lbnRzIHJlY2VpdmVkCj4gPiBkdXJpbmcgdGhlIHJldmlldyBvZiB0aGUg
djMgWzFdLiBUaGUgY2hhbmdlcyB0byB0aGUgdjMgYXJlIG1pbm9yIGFuZCBub25lIG9mCj4gPiB0
aGVtIGNoYW5nZSB0aGUgbG9naWMgb2YgdGhlIGRyaXZlci4KPiA+Cj4gPiBUaGFuayB5b3UgaW4g
YWR2YW5jZSBmb3IgcmV2aWV3aW5nIHRoaXMgcGF0Y2ggc2VyaWVzIGFuZCBob3BlZnVsbHkKPiA+
IGdldHRpbmcgdGhpcyBtZXJnZWQuIEhhdmluZyBhIGZ1bmN0aW9uYWwgUENJZSBlbmRwb2ludCBj
b250cm9sbGVyCj4gPiBkcml2ZXIgZm9yIHRoZSBSSzMzOTkgd291bGQgYWxsb3cgdG8gZGV2ZWxv
cCBmdXJ0aGVyIFBDSWUgZW5kcG9pbnQKPiA+IGZ1bmN0aW9ucyB0aHJvdWdoIHRoZSBMaW51eCBQ
Q0llIGVuZHBvaW50IGZyYW1ld29yayB1c2luZyB0aGlzIFNvQy4KPiA+Cj4gPiBbMV0gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcGNpLzIwMjMwNDA0MDgyNDI2LjM4ODA4MTItMS1yaWNr
LndlcnRlbmJyb2VrQGdtYWlsLmNvbS8KPiA+Cj4gPiBTdW1tYXJ5IG9mIGNoYW5nZXMgdG8gVjMg
Ogo+ID4KPiA+ICogU2V0IHRoZSBmaWVsZHMgaW4gdGhlIHN0YW5kYXJkIG9yZGVyIGluIHRoZSBk
dHNpIGFuZCByZW1vdmVkIHVubmVjZXNzYXJ5Cj4gPiAgIGNoYW5nZSBpbiBhc3NvY2lhdGVkIGRv
Y3VtZW50YXRpb24sIHRoYW5rcyB0byBLcnp5c3p0b2YgZm9yIHBvaW50aW5nIHRoaXMgb3V0Lgo+
ID4gKiBBZGRlZCBjb21tZW50IHRvIGV4cGxhaW4gaG93IE1TSS1YIGNhcGFiaWxpdGllcyBhZHZl
cnRpc2VtZW50IHdhcyByZW1vdmVkLgo+ID4gKiBDaGFuZ2VkIERhbWllbiBMZSBNb2FsIDxkYW1p
ZW4ubGVtb2FsQG9wZW5zb3VyY2Uud2RjLmNvbT4gYWRkcmVzcyB0byBoaXMKPiA+ICAga2VybmVs
Lm9yZyBhZGRyZXNzIERhbWllbiBMZSBNb2FsIDxkbGVtb2FsQGtlcm5lbC5vcmc+IGluIHRhZ3Mu
Cj4gPiAqIFttaW5vcl0gU2ltcGxpZmllZCBjb2RlIHdoZXJlIGEgcG93ZXIgb2YgMiB3YXMgYXBw
bGllZCBmb2xsb3dlZCBieSBhIGlsb2cyCj4gPiAgIG9wZXJhdGlvbi4KPiA+ICogW21pbm9yXSBT
bWFsbCBjb2RlIGNoYW5nZXMsIHJlcGxhY2VkIGNvbnN0YW50IHZhcmlhYmxlIGJ5IG1hY3JvLCBz
cGxpdAo+ID4gICByZW1haW5pbmcgbG9uZyBsaW5lcy4KPgo+IEkgcmV0ZXN0ZWQgdGhpcyBzZXJp
ZXMsIGFsbCBnb29kLiBTbyBteSBUZXN0ZWQtYnkgdGFnIHN0YW5kcy4KPgo+IExvcmVuem8sIEty
enlzenRvZiwgQmpvcm4sCj4KPiBMZXQncyBwbGVhc2UgZ2V0IHRoaXMgc2VyaWVzIHF1ZXVlZCBm
b3IgNi40IEFTQVAgYXMgb3RoZXJ3aXNlIHRoZSByb2NrY2hpcCBFUAo+IGNvbnRyb2xsZXIgaXMg
dW51c2FibGUuCj4KPiBBbHNvIHBsZWFzZSBub3RlIHRoYXQgd29ya2luZyB3aXRoIFJpY2sgb2Zm
LWxpc3QsIHdlIGZvdW5kIG91dCB0aGF0IG1vcmUgZml4ZXMKPiBhcmUgaW4gZmFjdCBuZWVkZWQg
Zm9yIHRoZSBQQ0kgYWRkcmVzcyBtYXBwaW5nIChBVFUgcHJvZ3JhbW1pbmcpIG9uIHRvcCBvZiB0
aGlzCj4gc2VyaWVzLiBCdXQgdGhlIHByb2JsZW1zIGRldGVjdGVkIGFyZSBzdWJ0bGUgYW5kIGhh
cmRlciB0byB0cmlnZ2VyLiBUaGUgZml4ZXMKPiBuZWVkZWQgaW52b2x2ZSBjaGFuZ2VzIHRvIHRo
ZSBFUEMgY29yZSBBUEkgc28gd2UgYXJlIHN0aWxsIHdvcmtpbmcgb24gdGhlIGJlc3QKPiB3YXkg
dG8gZG8gdGhhdC4gV2UnbGwgd29yayBvbiBhbm90aGVyIHNlcmllcyBvbiB0b3Agb2YgdGhpcyBv
bmUgZm9yIGFkZHJlc3NpbmcKPiB0aGVzZSBpc3N1ZXMuCj4KPgoKVGhhbmsgeW91IERhbWllbiBm
b3IgdGFraW5nIHRoZSB0aW1lIHRlc3RpbmcgYW5kIHJldmlld2luZyB0aGlzLCBpdCBpcwpoaWdo
bHkgYXBwcmVjaWF0ZWQuCkkganVzdCBzZW50IGEgdjUgWzFdIGFkZHJlc3NpbmcgeW91ciBjb21t
ZW50cyBhbmQgYWRkZWQgdGhlIHRhZ3MuCgpCZXN0IHJlZ2FyZHMsClJpY2sKClsxXSBodHRwczov
L2xvcmUua2VybmVsLm9yZy9saW51eC1wY2kvMjAyMzA0MTgwNzQ3MDAuMTA4MzUwNS0xLXJpY2su
d2VydGVuYnJvZWtAZ21haWwuY29tLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
