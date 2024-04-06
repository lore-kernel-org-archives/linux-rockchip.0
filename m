Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2115C3A59D
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Apr 2024 02:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9oiSk27RBUz3r1HAi2gJx3W7HtHw0LpvUOZ+uzZMkA=; b=VB6j9GUppqs0ZY
	v0RY6RU9tSNZeiQC1eXfx8ReYAEHEy9IU5yDV3IXeD5KZqWS0JRotCEi5oufZkmQsL0N5rTPQq9Gi
	VK4h7fHk/cJVF0ADOLUi3hO5W6eRRDefd1RVMT9H2m68ye96tialCRe75CYD1t8YBw/Rzom3F7S5U
	1nR7JWj4Vpz3YdVHp6GWGcMSnYTm4x79Gv5QKqQx1TiwHA5tof600JngHMQ+Mjj9Ppnbdb7dkE8lG
	pB6xCPWknCqP7waGnZV9gzv5Bh0qkMrXiHdY90zj3Dw4BJUqaJctE3gcqD8cYY5WKew3dmKfyhFln
	Uq6lUYPwhnJ9fuD5e7Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsvjC-00000009VWv-1mLu;
	Sat, 06 Apr 2024 02:24:22 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsvj8-00000009VW5-3iBb
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Apr 2024 02:24:20 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1e2987e9d67so16954745ad.1
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Apr 2024 19:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712370257; x=1712975057; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pq/VQw1K21UdvFVFnFBaugAbX3P/hy61YkUH63t4pa4=;
        b=wpeyhIkcmW4vRN3c1ivn8rRoE+cD3yCizRj6RoCw7p/eEXhmb7RoZCm6y5btm9qlyz
         38f8o8+CgZALfazcxfxOLruehmZMkIt7bdZo8fP6WV601XIPxQ94+V8zowiTUac25OYi
         bFdZhwNQpOg8sFw3/8u1SrfpGCGg+Qxz3G/E7NrFcp7Ilm4S34lDoLvg2932V23/l2e9
         qAO4dZ6qgnt2UwJ9g9uqrlSOSxJh5VoSeMReWArDfq6DXZRwrROutXJRDHLV0oDKupgc
         E/kJ4d3g28xuyHZ1m8aE9h2VapH5TGLIy+fDPBLYRqhIqnuM3rvA+hHnGwc1Wqd1MwAb
         zvEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712370257; x=1712975057;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pq/VQw1K21UdvFVFnFBaugAbX3P/hy61YkUH63t4pa4=;
        b=C1TDCgj5T8xYTmyg3dRlKiwofThTvc+mAg1aCgvHlzvatCEvKJW0ryDVvqO2tAGB9f
         WpZPwM/s8ErfMstmuWdswvMDBfbD8Xhu7MNalN4SCEl9Fi6ILIUALwTfbBpYfG+/rmeS
         u2l+YVPHggBLryGhsT/SAfMLvcrQwgaDa/+wkSPwZOaZvv462CyNCEqGZuTP6UWdh/Yj
         gbciRYPTy+kqf0c716khfMx+t4DLMUh5H3MPUivRZGD/t45eWuuUqAlu/8cZn02Y93LQ
         /j1paAgMo6z2/YbShIYNB/iEZzfRqAcTQ/M7tPB2iJdIbh9YfDDenYyUlQhfBWjAJ8PK
         7vow==
X-Forwarded-Encrypted: i=1; AJvYcCVJvZ9GTKnY6hJXQBZwgITHUn5pwu9hCnERqi+QIifpAESKd2jdoJVwv+1SXQOvZbrlNtmhV5x2FE0ZHlyodS4Sh9hf/F0LmCj3qde+cyPZlGff
X-Gm-Message-State: AOJu0YxFp/BNd5L6I3Uk3g0C2l0XJEHmPSur8ut8UTsYhLmxPqoNXRlj
	ySHwZVsKo1qVzwplg6rwemZJIiG+ZC7usgKP6dKStSRM+q6rCehSbkhDR7Klsg==
X-Google-Smtp-Source: AGHT+IEgNaVAOfzYGlvkSkg/SYdGzGiP1BhiL86m2ABCHbC1gS9d+egXHvLJDX9RU0ddiMGGrDkArw==
X-Received: by 2002:a17:903:11c3:b0:1e0:b60f:5de3 with SMTP id q3-20020a17090311c300b001e0b60f5de3mr4113658plh.7.1712370256805;
        Fri, 05 Apr 2024 19:24:16 -0700 (PDT)
Received: from thinkpad ([103.28.246.231])
        by smtp.gmail.com with ESMTPSA id f7-20020a170902684700b001dc01efaec2sm2357603pln.168.2024.04.05.19.24.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 19:24:16 -0700 (PDT)
Date: Sat, 6 Apr 2024 07:54:09 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>
Subject: Re: [PATCH v2 06/18] PCI: endpoint: test: Implement link_down event
 operation
Message-ID: <20240406022409.GA2678@thinkpad>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-7-dlemoal@kernel.org>
 <20240403074823.GE25309@thinkpad>
 <Zg//LiMg0Wh7LfT8@x1-carbon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zg//LiMg0Wh7LfT8@x1-carbon>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_192418_932303_C7B788C1 
X-CRM114-Status: GOOD (  24.73  )
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

T24gRnJpLCBBcHIgMDUsIDIwMjQgYXQgMDM6Mzk6NThQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBXZWQsIEFwciAwMywgMjAyNCBhdCAwMToxODoyM1BNICswNTMwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBTYXQsIE1hciAzMCwgMjAyNCBhdCAwMToxOTox
NlBNICswOTAwLCBEYW1pZW4gTGUgTW9hbCB3cm90ZToKPiA+ID4gSW1wbGVtZW50IHRoZSBsaW5r
X2Rvd24gZXZlbnQgb3BlcmF0aW9uIHRvIHN0b3AgdGhlIGNvbW1hbmQgZXhlY3V0aW9uCj4gPiA+
IGRlbGF5ZWQgd29yayB3aGVuIHRoZSBlbmRwb2ludCBjb250cm9sbGVyIG5vdGlmaWVzIGEgbGlu
ayBkb3duIGV2ZW50Lgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogRGFtaWVuIExlIE1vYWwg
PGRsZW1vYWxAa2VybmVsLm9yZz4KPiA+IAo+ID4gVGhpcyBwYXRjaCBpcyBhbHJlYWR5IHBhcnQg
b2YgYW5vdGhlciBzZXJpZXMgSSBwb3N0ZWQgWzFdIGFuZCB1bmRlciByZXZpZXcuIFNvCj4gPiB0
aGlzIGNhbiBiZSBkcm9wcGVkLgo+ID4gCj4gPiAtIE1hbmkKPiA+IAo+ID4gWzFdIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xpbnV4LXBjaS8yMDI0MDQwMS1wY2ktZXBmLXJld29yay12Mi05LTk3
MGRiZTkwYjk5ZEBsaW5hcm8ub3JnLwo+IAo+IE1hbmksIHlvdXIgcGF0Y2ggZG9lcyBub3QgdXNl
IF9zeW5jKCksCj4gc28gSSBkb24ndCB0aGluayB0aGF0IHdlIGNhbiBzaW1wbHkgZHJvcCB0aGlz
IHBhdGNoLgo+IAoKQWdyZWUsIEkgd2FzIHBsYW5uaW5nIHRvIHVwZGF0ZSBpdCBpbiBteSBuZXh0
IHZlcnNpb24gYW55d2F5LgoKLSBNYW5pCgo+IAo+IEtpbmQgcmVnYXJkcywKPiBOaWtsYXMKPiAK
PiA+IAo+ID4gPiBSZXZpZXdlZC1ieTogRnJhbmsgTGkgPEZyYW5rLkxpQG54cC5jb20+Cj4gPiA+
IC0tLQo+ID4gPiAgZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1lcGYtdGVzdC5j
IHwgMTAgKysrKysrKysrKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykK
PiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMv
cGNpLWVwZi10ZXN0LmMgYi9kcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvcGNpLWVwZi10
ZXN0LmMKPiA+ID4gaW5kZXggYWI0MGMzMTgyNjc3Li5lNmQ0ZTE3NDdjOWYgMTAwNjQ0Cj4gPiA+
IC0tLSBhL2RyaXZlcnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9wY2ktZXBmLXRlc3QuYwo+ID4g
PiArKysgYi9kcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvcGNpLWVwZi10ZXN0LmMKPiA+
ID4gQEAgLTgyNCw5ICs4MjQsMTkgQEAgc3RhdGljIGludCBwY2lfZXBmX3Rlc3RfbGlua191cChz
dHJ1Y3QgcGNpX2VwZiAqZXBmKQo+ID4gPiAgCXJldHVybiAwOwo+ID4gPiAgfQo+ID4gPiAgCj4g
PiA+ICtzdGF0aWMgaW50IHBjaV9lcGZfdGVzdF9saW5rX2Rvd24oc3RydWN0IHBjaV9lcGYgKmVw
ZikKPiA+ID4gK3sKPiA+ID4gKwlzdHJ1Y3QgcGNpX2VwZl90ZXN0ICplcGZfdGVzdCA9IGVwZl9n
ZXRfZHJ2ZGF0YShlcGYpOwo+ID4gPiArCj4gPiA+ICsJY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5j
KCZlcGZfdGVzdC0+Y21kX2hhbmRsZXIpOwo+ID4gPiArCj4gPiA+ICsJcmV0dXJuIDA7Cj4gPiA+
ICt9Cj4gPiA+ICsKPiA+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGNpX2VwY19ldmVudF9vcHMg
cGNpX2VwZl90ZXN0X2V2ZW50X29wcyA9IHsKPiA+ID4gIAkuY29yZV9pbml0ID0gcGNpX2VwZl90
ZXN0X2NvcmVfaW5pdCwKPiA+ID4gIAkubGlua191cCA9IHBjaV9lcGZfdGVzdF9saW5rX3VwLAo+
ID4gPiArCS5saW5rX2Rvd24gPSBwY2lfZXBmX3Rlc3RfbGlua19kb3duLAo+ID4gPiAgfTsKPiA+
ID4gIAo+ID4gPiAgc3RhdGljIGludCBwY2lfZXBmX3Rlc3RfYWxsb2Nfc3BhY2Uoc3RydWN0IHBj
aV9lcGYgKmVwZikKPiA+ID4gLS0gCj4gPiA+IDIuNDQuMAo+ID4gPiAKPiA+IAo+ID4gLS0gCj4g
PiDgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgot
LSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
