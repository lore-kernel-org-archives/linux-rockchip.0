Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05EA2CF07C7
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 08:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tThEQzYri50SGMHlfAjL7BPXHuncGy0RDsfFL8+uoD0=; b=0VXHUBhg3M3l2z
	K0Vk/2hBxopvy9M78Py7BlOkI/vFvyiCWybG1/wljl0PriH63gdvVrc8PBN9dAIQa/CH6ws2NP1Be
	obqktIpAQg8DjeptD1RuYcHnVpTORo00XkZYC3YW/yX6TJOAc4vAiLu2UYAEBvn/5jl9QaKyHordQ
	ojelX0pFzKBEZGWypy2p8klWPrUT3LqZs6fhpm5Vee8qavgxNmW670DaTuF1r4tGMUsudVqlds5ws
	R46HDUhUASASrg4oTjUWyzFBn5SlLM8zvoKidiL3u5laljrHBaILxINRUYTtP7S2SSu4mZSXuu1fH
	jqoAgPpNpeo5a937lzkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syooI-0000000C4IJ-2Jqf;
	Thu, 10 Oct 2024 08:46:14 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1synCt-0000000BmCI-0W9i
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 07:03:34 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-7ea0728475dso461093a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2024 00:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728543809; x=1729148609; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tQ+uMS7SmFLFFmkxPeSzDQF81U2mpZJGBJBSrkIVinI=;
        b=qNvqc609u8Yo9avhVzvz48sZYg7FL9uml3tSmKz92f3vjogAV9H6Rao0DtFsc5oBA3
         DpYt3WvKILFP2cb95kEYOufGT7i0Wl5ZEwHvy4N0kz20aNBdxi5wEL1EIgDCejYpmPSZ
         M3+1NZjme02ZWslkcIUsnZuNrhYV555r9KfHy6UGRJ2A2azaagslEo7PZBQGMWt+Ax+t
         OhPToP4EQCTmOUxlbf2RZ8VyWGzXbcvhHog4s+w2oYc5NGkAjXCRKPn6d3EY+HDsTVvL
         3mRq3HChRYTrwWO/kCEjtDN6pEWA6ubpyQU2AlwoYLD7rmw5y3w8WO1PodFDrw3dagYP
         9IBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728543809; x=1729148609;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tQ+uMS7SmFLFFmkxPeSzDQF81U2mpZJGBJBSrkIVinI=;
        b=mSnCM+nW6p/hwxKPQI4H2XXIejK2oXO9H8epyCmBycCpJgWPvBtBQ7G2mZ02nn+GfF
         PiLu5ooclt6tpBc5RlLUHvyFRk8mPEfDMqU7LnHPM5KrDTcoyLoZc35UWsrFuE970Fgz
         Urfl5pL2MXi2THeb3hxJBcKzKxjt7a9UuooUzrqN8yCVVlI/hl8oKqr9adq5O0qDorOp
         HZ0ioS5o2kk80dJmnQh4avfJ1HZfpM15QYAFGbJzSBMbmVrM+o34juNzJQpfXjQt2+jh
         pfoChWGdcZ16Jvbo/KhysDPPx1rAs0kwhtR0GNqdZyrHxHb0Lc1fPbGpumt2v5Qj46+v
         umsw==
X-Forwarded-Encrypted: i=1; AJvYcCUklW88FKiEoAqW1c4+i7t8vlT+TL4FqEtj6cS7X8RfFIkk7NJ0yn8tQK6s0oaqJ35Tc5ydF9WFPNM7CFxf9A==@lists.infradead.org
X-Gm-Message-State: AOJu0YyAYXzYFRTATP1IrRNYmImaqaw8Pkm4qUK9/YMZqtKXsVqy/zpa
	zcuZirZcumACRfHzeB4f5D5EG+tV+gO8G1/4wtSdpqIyKYb5dMUJIwDdhC3Z8A==
X-Google-Smtp-Source: AGHT+IG3+r83KQNXnWosd0zcqE7RKm9feBt+w6DxilqXMW2DnNTwgYlUcNcUO4f60tmPSc9Bx2nQJQ==
X-Received: by 2002:a17:90a:c08a:b0:2e2:c1d0:68dc with SMTP id 98e67ed59e1d1-2e2c8057f3dmr3466283a91.9.1728543809391;
        Thu, 10 Oct 2024 00:03:29 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e2d5df1133sm568989a91.15.2024.10.10.00.03.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 00:03:28 -0700 (PDT)
Date: Thu, 10 Oct 2024 12:33:23 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 02/12] PCI: rockchip-ep: Use a macro to define EP
 controller .align feature
Message-ID: <20241010070323.mxmvsn2vlprzidh3@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-3-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007041218.157516-3-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_000331_319323_D13A6026 
X-CRM114-Status: GOOD (  17.21  )
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

T24gTW9uLCBPY3QgMDcsIDIwMjQgYXQgMDE6MTI6MDhQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gSW50cm9kdWNlIHRoZSBtYWNybyBST0NLQ0hJUF9QQ0lFX0FUX1NJWkVfQUxJR04g
ZGVmaW5lZCB1c2luZwo+IFJPQ0tDSElQX1BDSUVfQVRfTUlOX05VTV9CSVRTIHRvIGluaXRpYWxp
emUgdGhlIC5hbGlnbiBmaWVsZCBvZiB0aGUKPiBjb250cm9sbGVyIGVwY19mZWF0dXJlcyBzdHJ1
Y3R1cmUsIGF2b2lkaW5nIHVzaW5nIHRoZSAibWFnaWMiIHZhbHVlIDgKPiBkaXJlY3RseS4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBEYW1pZW4gTGUgTW9hbCA8ZGxlbW9hbEBrZXJuZWwub3JnPgoKUmV2
aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxp
bmFyby5vcmc+CgotIE1hbmkKCj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1y
b2NrY2hpcC1lcC5jIHwgMiArLQo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2No
aXAuaCAgICB8IDEgKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9j
a2NoaXAtZXAuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jCj4g
aW5kZXggMjdhN2ZlYmI3NGUwLi41YTA3MDg0ZmI3YzQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYwo+IEBAIC00NDYsNyArNDQ2LDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBwY2lfZXBjX2ZlYXR1cmVzIHJvY2tjaGlwX3BjaWVfZXBjX2ZlYXR1cmVzID0g
ewo+ICAJLmxpbmt1cF9ub3RpZmllciA9IGZhbHNlLAo+ICAJLm1zaV9jYXBhYmxlID0gdHJ1ZSwK
PiAgCS5tc2l4X2NhcGFibGUgPSBmYWxzZSwKPiAtCS5hbGlnbiA9IDI1NiwKPiArCS5hbGlnbiA9
IFJPQ0tDSElQX1BDSUVfQVRfU0laRV9BTElHTiwKPiAgfTsKPiAgCj4gIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgcGNpX2VwY19mZWF0dXJlcyoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJv
bGxlci9wY2llLXJvY2tjaGlwLmggYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2No
aXAuaAo+IGluZGV4IDE1ZWU5NDlmMjQ4NS4uMDIzNjhjZTliZDU0IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCj4gKysrIGIvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9wY2llLXJvY2tjaGlwLmgKPiBAQCAtMjQ4LDYgKzI0OCw3IEBACj4gIAo+ICAj
ZGVmaW5lIFJPQ0tDSElQX1BDSUVfQVRfTUlOX05VTV9CSVRTICA4Cj4gICNkZWZpbmUgUk9DS0NI
SVBfUENJRV9BVF9NQVhfTlVNX0JJVFMgIDIwCj4gKyNkZWZpbmUgUk9DS0NISVBfUENJRV9BVF9T
SVpFX0FMSUdOICAgICgxVUwgPDwgUk9DS0NISVBfUENJRV9BVF9NSU5fTlVNX0JJVFMpCj4gIAo+
ICAjZGVmaW5lIFJPQ0tDSElQX1BDSUVfQVRfSUJfRVBfRlVOQ19CQVJfQUREUjAoZm4sIGJhcikg
XAo+ICAJKFBDSUVfQ09SRV9BWElfQ09ORl9CQVNFICsgMHgwODI4ICsgKGZuKSAqIDB4MDA0MCAr
IChiYXIpICogMHgwMDA4KQo+IC0tIAo+IDIuNDYuMgo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+Cv
jeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
