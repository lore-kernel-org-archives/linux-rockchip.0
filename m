Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20BB5CD3424
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Apr 2026 23:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFVxYlyrqWfb/IfDgNJ/osNii7R0f7QNjXp0Q5dKWds=; b=PXKjfJ+ycroZTU
	4ECaIeETSFhSP/V6I9iUedP9HDKwelFKE2kzB4yZyAbafcnMHmpnKhF5Qv/4L4j73ueG6t5/DVuwE
	2NJwvPlp3/T+cKGdqEuUwcOGm1Ff4bYQQ/P848d69o6KsLT4wP5xaVtR+YsOQIuz4s6nRAjQ7uFYI
	WsKGyU7STJExnAYSoA/Zfx399dUUdOoq2LTVA/g4qEt92lNSosi0cV4u8FE92aY6OTVgBbDTBqQsH
	T7JTnvKQcj3PjsKts38jU+tqOtvmKZZ1G/bNeBIbeEQJbHnIfrRWxA5UGNOCM7m/B+zWXOEJdtTPl
	oU8jsAKt6qBoVzNlxrXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIbDQ-000000068fA-0Mjg;
	Thu, 30 Apr 2026 23:54:44 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIbDN-000000068eW-1OEk
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Apr 2026 23:54:42 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-baa8c78ac7fso194851266b.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2026 16:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777593277; x=1778198077; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o6F0Zles587cKnPSm5xIL1UTxvPC2KivgOEAzPu9dSY=;
        b=ihtlU7guluKKIJjyemGAA92DtjW4AOFMJG846lZV2iE2KfoFojBsed0ehkRhKyd/Pg
         pJM78H49RIBn/6G7Cs1sKvdZzlLcj9NvwxzBkJ+B+7hFkzX8lQZeqBIMfjuT4xQq2Fao
         BGMC18llvF9zjqpPva0CV6Ay6dvq4/6AqxOB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777593277; x=1778198077;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=o6F0Zles587cKnPSm5xIL1UTxvPC2KivgOEAzPu9dSY=;
        b=UqLGIk88ZaDFidAqnxvqyjS1IMl04rf3pqrY61b1onk4Jh76p1uR5/v0lXF76589pF
         tXLL22nYzmWMyJ0GIuRMttApZ2/Dy13Om3rQBqztJp+JMmcm0Cj8aUN7Mu/wauqtux5J
         7uhZfEEIsyMoQCsn1Xbl9Prn4nw+CmeK2Te2PK5FSFUP2tqauYHEDcGvgHBK+eEbv2nF
         iOnZzKnwgfg5P/X7+QcGI90PzojZzxkXjOwYEAmojpcHDyjZTOsibICKC9+6tO4Q9wPF
         ogaXVLoLuGDXHCD86nXHQ9JhlNdsQIDLakQjY7+EWfFsXI83Tkunbe+r0NgLAEVC+/CX
         LP2w==
X-Forwarded-Encrypted: i=1; AFNElJ8MmW5PbrhFBqpX20PO2OyICZcXPIBt6ciuPiiK+FA9CJobwXXqDlgslZVn8Cn2zG2zj3oxosFgr+S0IvDQyQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzxqWZr1sEvUCG7733ngj8tcniM/oFkjf7NjZC8O7hPAYO7RP1e
	OVbGAhlRoDrdk82LTIX5SBv2IYLGeNveWUb503IDE4D31RAo278ybQdLIOzcOgeKmNQAzO3EwbS
	AMn/M5Q==
X-Gm-Gg: AeBDieurKwul677WbQNirLgH71Ra5ltOnQZtejH+LWR0uJ1r1JVwcz9AbN7epOk9aYY
	9YEXJmv5T3BqDOJ93tV3Z/s3GHKUrR22nFr4UTb6CiIZurFAe6IVf7JRL7WryEShkFjcqHvaXPr
	F+yOKdq/ka7PAvAal9PZrGUZ4hN64n10cmxukeh/2XNvIUDsHlObGgaZHSNXF1XK6+DqHPzRI/E
	4P6sFnKKbvCb1zUAYIIMR3ZcBbQa3Ta/rMdQq5xYsKSONIg95Dg6sl+kuahqxmXFxlrVe0Nr7eB
	NONpqZs6fEJxqFKS6mimEdLv6B3NFNk3qnwB/iaE/yS5gWm2QsDYHxXOxPYxTLt7z48acnXRHkQ
	DdpXhHkZwzdu0D5uBIZQTiOsDMYXx0miqPkyXkrjPDj1HAS4dVp5XGlQQ5N7OUhd12bMVK3zMGr
	kRGaUdsuZ5EiByDbgD19gMObPEBfbR62qP27K97TIyXHo2ii8ZxTFgLnbMFvq5klgOgnYP0Rl1
X-Received: by 2002:a17:907:e111:b0:ba6:1412:9339 with SMTP id a640c23a62f3a-bbac6bbd16amr196261866b.20.1777593277518;
        Thu, 30 Apr 2026 16:54:37 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com. [209.85.221.45])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bbe6d97e486sm49232866b.49.2026.04.30.16.54.36
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2026 16:54:36 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-4486b5fcf3cso1296833f8f.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2026 16:54:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ92oW9rtdqHhJdM3yJ7BrNZ+SlLVNtyiAyHfId+/LEEvNPn8L4oX/uko43YxwHz1gD83UzQDW/ndyI5EIgOqA==@lists.infradead.org
X-Received: by 2002:a5d:584a:0:b0:43d:6a0c:9571 with SMTP id
 ffacd0b85a97d-4493dcd3c71mr8939823f8f.11.1777593275557; Thu, 30 Apr 2026
 16:54:35 -0700 (PDT)
MIME-Version: 1.0
References: <20260428200712.2660635-1-briannorris@chromium.org> <20260428200712.2660635-3-briannorris@chromium.org>
In-Reply-To: <20260428200712.2660635-3-briannorris@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 30 Apr 2026 16:54:24 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VFCEEBKYY8Wnt6JEK_N4NaUvvhWXYR1pbt6teLL=zYeA@mail.gmail.com>
X-Gm-Features: AVHnY4Kl-1ca-wbSwPcS9uBBAU6zbdhWLbd9Fj0fAjnpUI5H2rQOrfd8cK8P088
Message-ID: <CAD=FV=VFCEEBKYY8Wnt6JEK_N4NaUvvhWXYR1pbt6teLL=zYeA@mail.gmail.com>
Subject: Re: [PATCH 2/7] ARM: dts: rockchip: Add #{address,size}-cells to
 Chromium-based /firmware
To: Brian Norris <briannorris@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Heiko Stuebner <heiko@sntech.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Tzung-Bi Shih <tzungbi@kernel.org>, chrome-platform@lists.linux.dev, 
	linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, cros-qcom-dts-watchers@chromium.org, 
	linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_165441_389260_FDE13E91 
X-CRM114-Status: GOOD (  18.36  )
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

SGksCgpPbiBUdWUsIEFwciAyOCwgMjAyNiBhdCAxOjA34oCvUE0gQnJpYW4gTm9ycmlzIDxicmlh
bm5vcnJpc0BjaHJvbWl1bS5vcmc+IHdyb3RlOgo+Cj4gQ2hyb21pdW0vRGVwdGhjaGFyZ2UgYm9v
dGxvYWRlcnMgbWF5IGR5bmFtaWNhbGx5IGFkZCBhIGZldyBkZXZpY2Ugbm9kZXMKPiB0byBhIHN5
c3RlbSdzIERUQiB1bmRlciBhIC9maXJtd2FyZSBub2RlLiBBIHR5cGljYWwgRFQgbG9va3Mgc29t
ZXRoaW5nCj4gbGlrZSB0aGUgZm9sbG93aW5nOgo+Cj4gLyB7Cj4gICAgICAgICBmaXJtd2FyZSB7
Cj4gICAgICAgICAgICAgICAgIHJhbmdlczsKPgo+ICAgICAgICAgICAgICAgICBjb3JlYm9vdCB7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJjb3JlYm9vdCI7Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgcmVnID0gPC4uLj47Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgLi4uOwo+ICAgICAgICAgICAgICAgICB9Owo+ICAgICAgICAgfTsKPiB9Owo+Cj4gTm90YWJs
eSwgdGhlIC9maXJtd2FyZSBub2RlIGhhcyBhbiBlbXB0eSAncmFuZ2VzJywgYnV0IGRvZXMgbm90
IGhhdmUKPiBhZGRyZXNzL3NpemUtY2VsbHMuCj4KPiBDb21taXQgNmU1NzczZDUyZjRhICgib2Yv
YWRkcmVzczogRml4IFdBUk4gd2hlbiBhdHRlbXB0aW5nIHRyYW5zbGF0aW5nCj4gbm9uLXRyYW5z
bGF0YWJsZSBhZGRyZXNzZXMiKSBzdGFydGVkIHJlcXVpcmluZyAjYWRkcmVzcy1jZWxscyBmb3Ig
YQo+IGRldmljZSdzIHBhcmVudCBpZiB3ZSB3YW50IHRvIHVzZSB0aGUgcmVnIHJlc291cmNlIGlu
IGEgZGV2aWNlIG5vZGUuCj4gVGhpcyBsZWFkcyB0byBlcnJvcnMgbGlrZSB0aGUgZm9sbG93aW5n
Ogo+Cj4gWyAgICA3Ljc2Mzg3MF0gY29yZWJvb3RfdGFibGUgZmlybXdhcmU6Y29yZWJvb3Q6IHBy
b2JlIHdpdGggZHJpdmVyIGNvcmVib290X3RhYmxlIGZhaWxlZCB3aXRoIGVycm9yIC0yMgo+Cj4g
QWRkIGFwcHJvcHJpYXRlICN7YWRkcmVzcyxzaXplfS1jZWxscyB0byB3b3JrIGFyb3VuZCB0aGUg
cHJvYmxlbS4KPgo+IE5vdGUgdGhhdCBHb29nbGUgaGFzIGFsc28gcGF0Y2hlZCB0aGUgRGVwdGhj
aGFyZ2UgYm9vdGxvYWRlciBzb3VyY2UgdG8KPiBhZGQge2FkZHJlc3Msc2l6ZX0tY2VsbHMgWzFd
LCBidXQgYm9vdGxvYWRlciB1cGRhdGVzIGFyZSB0eXBpY2FsbHkKPiBkZWxpdmVyZWQgb25seSB2
aWEgR29vZ2xlIE9TIHVwZGF0ZXMuIE5vdCBhbGwgdXNlcnMgaW5zdGFsbCBHb29nbGUKPiBzb2Z0
d2FyZSB1cGRhdGVzLCBhbmQgZXZlbiBpZiB0aGV5IGRvLCBHb29nbGUgbWF5IG5vdCBwcm9kdWNl
IHVwZGF0ZWQKPiBiaW5hcmllcyBmb3IgYWxsL29sZGVyIGRldmljZXMuCj4KPiBbMV0gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjQxMjA5MDkyODA5LkdBMzI0NjQyNEBnb29nbGUuY29t
Lwo+ICAgICBodHRwczovL2NycmV2LmNvbS9jLzYwNTE1ODAgKCJjb3JlYm9vdDogSW5zZXJ0ICNh
ZGRyZXNzLWNlbGxzIGFuZAo+ICAgICAjc2l6ZS1jZWxscyBmb3IgZmlybXdhcmUgbm9kZSIpCj4K
PiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9hZUtsWXpUaUwwT0IxeTNnQGdv
b2dsZS5jb20vCj4gRml4ZXM6IDZlNTc3M2Q1MmY0YSAoIm9mL2FkZHJlc3M6IEZpeCBXQVJOIHdo
ZW4gYXR0ZW1wdGluZyB0cmFuc2xhdGluZyBub24tdHJhbnNsYXRhYmxlIGFkZHJlc3NlcyIpCj4g
U2lnbmVkLW9mZi1ieTogQnJpYW4gTm9ycmlzIDxicmlhbm5vcnJpc0BjaHJvbWl1bS5vcmc+Cj4g
LS0tCj4KPiAgYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMjg4LXZleXJvbi5kdHNpIHwg
NSArKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpSZXZpZXdlZC1ieTog
RG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
