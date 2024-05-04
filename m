Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 058F1C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 May 2024 17:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zspwBqHd+HoyEPEneeGFJw/RhPdYTbGq2+9BGU3f1vw=; b=g46CCsziLqTXeY
	ifBPEPQnRWs5281fZ9rFG5IKROykono8gWbKFlTo9pEZG4XLSoaSWSGz88U3OkPsHLEXFX/5OjaQA
	oKp4lyC+1z5B/TfBWPWcp4sYAV7uZpk5Z6kEB1cPlQsJvXPcttkkx2VlzpNHR2WZAAS7OU40/zo84
	NT1vVVg4PZj0IRS2TipBMvbZtptpZ3zpVwzP+kRU0JlnL/ueB5sbLFqisffc+tBXa+0DbNLllm43j
	Fi+lpVlHBS00BIvAuo/v8zLpZr/7Y/QKLkxjiJ2jZgUwZ9RbLwjwBMBeavSQxSBqRrnsFhGkJapKY
	PtpZsIJxVvmqpfJFtjhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3IuX-00000002WhQ-0Dc1;
	Sat, 04 May 2024 17:10:57 +0000
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3IuU-00000002Wgu-22dq
	for linux-rockchip@lists.infradead.org;
	Sat, 04 May 2024 17:10:55 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-5aa1bf6cb40so565020eaf.1
        for <linux-rockchip@lists.infradead.org>; Sat, 04 May 2024 10:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714842651; x=1715447451; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kGU68AItjJq66EYQsay+bIfrsbCqzNm734dFQJXi/jU=;
        b=Qm3nJWZn3NwZV6Qnw55r90EOS7pQQaByIRUuXTnN+sxqd7D3ek535AKCd2LfdVg6wu
         w8grCCIsud1CoeI3s7cE2DZ+ZRc1V8O167buVSTfsjF4LEkuyeRgOGzDrd68J/ld/lhc
         irswEVqEINr/zXOvHNG/mf93nDf9nOgGY2akBsMpszcuo7unwY9trrxTxD7Ns48VxFrU
         j5pdKqvjh2cSJTZkkKkA+stQ1Ry72Es9Mjpqa7jdwhnLfgkk0RvT9aX6PqhpgcCJvZMH
         CR8kAUdvgp/wTiUz0Fac0Akuk7AENEiJ0u2zbd/jautKVHlYJtxleQzDZpPdxzoi7VVW
         I/OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714842651; x=1715447451;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kGU68AItjJq66EYQsay+bIfrsbCqzNm734dFQJXi/jU=;
        b=ZDBs3+HuNWCQEPU1nuXEFIIwIJQzLoZEPJVOBOKg/fDoNi55cac52SCaSEFiEyXsnx
         nFYBBbPZEhgPN1IKnGGUNXR8QBxxsJSOGZKOjUcm4eZgt/+96S85vUSQPmb+mPr44jVO
         NTUsVCyev64QHWhk0iqQJvn8NsHYQKEvbeznYwGH2aB9+kZz1kKRhPvbtAwCtS164l6u
         8UixOZkCzAfno6enBjWjV7csTAoULJmeguh85K+LXpFoyQgVrC0bbPPQyQ3OpM0mo0X8
         zpoac4N/azNbJu4va++9xKStLiWmK1rV9Zre1Kx48sab1I4EsDzzRR2p/DWE0CR5ATan
         6txw==
X-Forwarded-Encrypted: i=1; AJvYcCUuVIbVsG4NXXeyXpra7JSUmzuId9Eqow9/GbEqGPfjo8uWpIOAHGm+Re8EAfRW5eFr3k/8J3E1xyUukCThV2szDUq29bgglupfcIxcqaqsa5BU
X-Gm-Message-State: AOJu0YwMxqvdthoiiV9OcxApeizf3D4qZdIlYeQ7DCyRYeA8rgiJ4Mog
	lkto/BVNr7jtdOdQj/7PqH8f4T8rrd1TfVPKve1wyxH/OTtshiXTWjGczLQmpw==
X-Google-Smtp-Source: AGHT+IFJVDzJg8s7tJ4sBXK2hFo/zSW5S8i9XoOlihWop6UkHNr3AIcAH8pWHiMxlx3VUxjbd0KQ6Q==
X-Received: by 2002:a05:6358:7f9b:b0:186:1128:bca7 with SMTP id c27-20020a0563587f9b00b001861128bca7mr7344848rwo.6.1714842650536;
        Sat, 04 May 2024 10:10:50 -0700 (PDT)
Received: from thinkpad ([220.158.156.237])
        by smtp.gmail.com with ESMTPSA id p11-20020a635b0b000000b005e2b0671987sm5050563pgb.51.2024.05.04.10.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 May 2024 10:10:50 -0700 (PDT)
Date: Sat, 4 May 2024 22:40:43 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 07/14] PCI: dw-rockchip: Fix weird indentation
Message-ID: <20240504171043.GD4315@thinkpad>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-7-a0f5ee2a77b6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-7-a0f5ee2a77b6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240504_101054_571860_536D80D9 
X-CRM114-Status: GOOD (  16.00  )
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

T24gVHVlLCBBcHIgMzAsIDIwMjQgYXQgMDI6MDE6MDRQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBGaXggdGhlIGluZGVudGF0aW9uIG9mIHJvY2tjaGlwX3BjaWVfe3JlYWRsLHdyaXRl
bH1fYXBiKCkgcGFyYW1ldGVycyB0bwo+IG1hdGNoIHRoZSBvcGVuaW5nIHBhcmVudGhlc2lzLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IE5pa2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwub3JnPgoKUmV2
aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxp
bmFyby5vcmc+CgotIE1hbmkKCj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtZHctcm9ja2NoaXAuYyB8IDcgKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBpbmRleCBkNjg0MjE0MWQzODQuLjE5OTNjNDMwYjkwYyAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlw
LmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMK
PiBAQCAtNjAsMTQgKzYwLDEzIEBAIHN0cnVjdCByb2NrY2hpcF9wY2llIHsKPiAgCXN0cnVjdCBp
cnFfZG9tYWluCQkqaXJxX2RvbWFpbjsKPiAgfTsKPiAgCj4gLXN0YXRpYyBpbnQgcm9ja2NoaXBf
cGNpZV9yZWFkbF9hcGIoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwLAo+IC0JCQkJCSAg
ICAgdTMyIHJlZykKPiArc3RhdGljIGludCByb2NrY2hpcF9wY2llX3JlYWRsX2FwYihzdHJ1Y3Qg
cm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAsIHUzMiByZWcpCj4gIHsKPiAgCXJldHVybiByZWFkbF9y
ZWxheGVkKHJvY2tjaGlwLT5hcGJfYmFzZSArIHJlZyk7Cj4gIH0KPiAgCj4gLXN0YXRpYyB2b2lk
IHJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAs
Cj4gLQkJCQkJCXUzMiB2YWwsIHUzMiByZWcpCj4gK3N0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVf
d3JpdGVsX2FwYihzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAsIHUzMiB2YWwsCj4gKwkJ
CQkgICAgIHUzMiByZWcpCj4gIHsKPiAgCXdyaXRlbF9yZWxheGVkKHZhbCwgcm9ja2NoaXAtPmFw
Yl9iYXNlICsgcmVnKTsKPiAgfQo+IAo+IC0tIAo+IDIuNDQuMAo+IAoKLS0gCuCuruCuo+Cuv+Cu
teCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
