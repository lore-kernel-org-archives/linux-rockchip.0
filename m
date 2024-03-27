Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E1F2C54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 08:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SAZGER+xsBSID6Of1PkvY10vhnmfl1HrdlP4RsMnnH4=; b=2rjZgbIjROUtuc
	eW3qArD78yeyblxj6QN10RLSjpPyaVQ9k44uZbEmq1tDoEBD+nnVqW3908Rbno5shxNztqYFR87Fa
	oe77pB8XkSviVVaPBNDENQQiSnXo+Y9Jmn+WtmcSx8Us7KXb0GNQCmAr1UHJyurxQkOFh38g7DPe1
	AXFsmGyy0ztPVygWxWIfM6yo+nX/JjEcVwajZk3FUOF9dCLwl2sUShYDiV3mzdaE6cvtcQP/uMOrQ
	LnscTdhmH8BqtiPeHTuNvTSRm4vnN3wZlgk/KvnvVGOLVnjXTT0cMBjZmWd4iEbYAu8HFlZ1OyEK9
	bk9ylz/2PndF2S7hOSFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpOqQ-000000085GR-18JF;
	Wed, 27 Mar 2024 08:41:14 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpOqN-000000085FA-10oc
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Mar 2024 08:41:12 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6e675181ceaso3503167a34.2
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Mar 2024 01:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711528870; x=1712133670; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3kBGo9rBQDVD8B/37mPPc4bOK2wXan+HIEhCfIghQeQ=;
        b=vLAjmZ3/osa22KqCMLY72bl0VyW1hDk8MBvp1kv6n3K3dCvP5Kit+ZBk4FEk9WszNT
         6d/M6l/dnhgCp93Zig4/50hR1Pxac4QbbsrxUjlUUiwlRYaIy0Acv4TbjRv+xwLAmG1u
         TWLXmW5MJSi5dbLUEMbnAGhOxm267x6ZJHhL0XluzZcCzj+ra2ckHL1yfdLEl7bfg+Kt
         WjedQ/sdyfeYUbjHKfeerycsmAMesNdkw9NEqA/flNZGf5gFOxYUrlh+bDhT71aoSk9S
         sB652w6rGkjI4fosJbR9rOs5Xms5DcfqZWR0pWEt6UUCblGLHY/HSSQoDe0Cd3jkBX0o
         laGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711528870; x=1712133670;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3kBGo9rBQDVD8B/37mPPc4bOK2wXan+HIEhCfIghQeQ=;
        b=CtWU9FgDo3yZN4zOp89tum5LwYUvkmgy+VOWTg5FW/l/+z9q92FaqO3ztAXiSv9THa
         +K51fF3PhLngvOV4gZv4DoJzR4Zc8TuZO4gF6Aw2MlHsz/sVcT2jOwF8nq59gQ/6F9k8
         35jr4GJxZOgZxyfQ5IENrFQOuNP4TIUwo5ybWy5Db8RXRDM9+TIq2N5/4vomJtQzyFnO
         Qk50WJQE22Rmqp4bBfTa3muMuSjstWpJ1AUwknODHr7vqzGTZzkCN93mE7BJ6DlnmkV5
         bVyd+9lbDWTJveBcL0169xmgmgmKpcdgYryHsKU+SaYc+6ceWs7i3H6IhGVtms2rao/t
         kHdQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+19i3C/U/3goNUFEjsQRWjU5wc63cz3XaphnqWYCn3wDsfN1EQt9IErMnGb40+cXm3sD2SAXsglKrVDRsL1n26FB+1tXhfvQNAysYuxHUEQGn
X-Gm-Message-State: AOJu0Yx5xvpxBk6eS9UIuDWXjSCmTknLzePe4d7NIyhhH/pbkBGGL9EA
	2b4LBTmJCnajZOuHi5tCgT7fRGDavKP4d2INb3YUYAmy6NSS19U93W4NZhWXDA==
X-Google-Smtp-Source: AGHT+IH7Hg0Sm990ZknW0ZrRwtuXnVXRB36mHywm9jAemkPYppo81oiTIBfmm8SNo3JZTiDkMTN0Pg==
X-Received: by 2002:a05:6870:239d:b0:221:bd93:2940 with SMTP id e29-20020a056870239d00b00221bd932940mr2005103oap.27.1711528869823;
        Wed, 27 Mar 2024 01:41:09 -0700 (PDT)
Received: from thinkpad ([120.60.52.77])
        by smtp.gmail.com with ESMTPSA id m9-20020a62f209000000b006e6bf165a3asm7434651pfh.91.2024.03.27.01.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 01:41:09 -0700 (PDT)
Date: Wed, 27 Mar 2024 14:10:56 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vidya Sagar <vidyas@nvidia.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Minghuan Lian <minghuan.Lian@nxp.com>,
	Mingkai Hu <mingkai.hu@nxp.com>, Roy Zang <roy.zang@nxp.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Srikanth Thokala <srikanth.thokala@intel.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@axis.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v11 8/8] PCI: endpoint: Remove "core_init_notifier" flag
Message-ID: <20240327084056.GC2742@thinkpad>
References: <20240327-pci-dbi-rework-v11-0-6f5259f90673@linaro.org>
 <20240327-pci-dbi-rework-v11-8-6f5259f90673@linaro.org>
 <ZgPXpZgoMqVn8QHt@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZgPXpZgoMqVn8QHt@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_014111_498065_F00EE721 
X-CRM114-Status: GOOD (  31.73  )
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

T24gV2VkLCBNYXIgMjcsIDIwMjQgYXQgMDk6MjQ6MDVBTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBIZWxsbyBNYW5pLAo+IAo+IE9uIFdlZCwgTWFyIDI3LCAyMDI0IGF0IDEyOjA1OjU0
UE0gKzA1MzAsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+ICJjb3JlX2luaXRfbm90
aWZpZXIiIGZsYWcgaXMgc2V0IGJ5IHRoZSBnbHVlIGRyaXZlcnMgcmVxdWlyaW5nIHJlZmNsayBm
cm9tCj4gPiB0aGUgaG9zdCB0byBjb21wbGV0ZSB0aGUgRFdDIGNvcmUgaW5pdGlhbGl6YXRpb24u
IEFsc28sIHRob3NlIGRyaXZlcnMgd2lsbAo+ID4gc2VuZCBhIG5vdGlmaWNhdGlvbiB0byB0aGUg
RVBGIGRyaXZlcnMgb25jZSB0aGUgaW5pdGlhbGl6YXRpb24gaXMgZnVsbHkKPiA+IGNvbXBsZXRl
ZCB1c2luZyB0aGUgcGNpX2VwY19pbml0X25vdGlmeSgpIEFQSS4gT25seSB0aGVuLCB0aGUgRVBG
IGRyaXZlcnMKPiA+IHdpbGwgc3RhcnQgZnVuY3Rpb25pbmcuCj4gPiAKPiA+IEZvciB0aGUgcmVz
dCBvZiB0aGUgZHJpdmVycyBnZW5lcmF0aW5nIHJlZmNsayBsb2NhbGx5LCBFUEYgZHJpdmVycyB3
aWxsCj4gPiBzdGFydCBmdW5jdGlvbmluZyBwb3N0IGJpbmRpbmcgd2l0aCB0aGVtLiBFUEYgZHJp
dmVycyByZWx5IG9uIHRoZQo+ID4gJ2NvcmVfaW5pdF9ub3RpZmllcicgZmxhZyB0byBkaWZmZXJl
bnRpYXRlIGJldHdlZW4gdGhlIGRyaXZlcnMuCj4gPiBVbmZvcnR1bmF0ZWx5LCB0aGlzIGNyZWF0
ZXMgdHdvIGRpZmZlcmVudCBmbG93cyBmb3IgdGhlIEVQRiBkcml2ZXJzLgo+ID4gCj4gPiBTbyB0
byBhdm9pZCB0aGF0LCBsZXQncyBnZXQgcmlkIG9mIHRoZSAiY29yZV9pbml0X25vdGlmaWVyIiBm
bGFnIGFuZCBmb2xsb3cKPiA+IGEgc2luZ2xlIGluaXRpYWxpemF0aW9uIGZsb3cgZm9yIHRoZSBF
UEYgZHJpdmVycy4gVGhpcyBpcyBkb25lIGJ5IGNhbGxpbmcKPiA+IHRoZSBkd19wY2llX2VwX2lu
aXRfbm90aWZ5KCkgZnJvbSBhbGwgZ2x1ZSBkcml2ZXJzIGFmdGVyIHRoZSBjb21wbGV0aW9uIG9m
Cj4gPiBkd19wY2llX2VwX2luaXRfcmVnaXN0ZXJzKCkgQVBJLiBUaGlzIHdpbGwgYWxsb3cgYWxs
IHRoZSBnbHVlIGRyaXZlcnMgdG8KPiA+IHNlbmQgdGhlIG5vdGlmaWNhdGlvbiB0byB0aGUgRVBG
IGRyaXZlcnMgb25jZSB0aGUgaW5pdGlhbGl6YXRpb24gaXMgZnVsbHkKPiA+IGNvbXBsZXRlZC4K
PiA+IAo+ID4gT25seSBkaWZmZXJlbmNlIGhlcmUgaXMgdGhhdCwgdGhlIGRyaXZlcnMgcmVxdWly
aW5nIHJlZmNsayBmcm9tIGhvc3Qgd2lsbAo+ID4gc2VuZCB0aGUgbm90aWZpY2F0aW9uIG9uY2Ug
cmVmY2xrIGlzIHJlY2VpdmVkLCB3aGlsZSBvdGhlcnMgd2lsbCBzZW5kIGl0Cj4gPiBkdXJpbmcg
cHJvYmUgdGltZSBpdHNlbGYuCj4gPiAKPiA+IEJ1dCB0aGlzIGFsc28gcmVxdWlyZXMgdGhlIEVQ
QyBjb3JlIGRyaXZlciB0byBkZWxpdmVyIHRoZSBub3RpZmljYXRpb24KPiA+IGFmdGVyIEVQRiBk
cml2ZXIgYmluZC4gQmVjYXVzZSwgdGhlIGdsdWUgZHJpdmVyIGNhbiBzZW5kIHRoZSBub3RpZmlj
YXRpb24KPiA+IGJlZm9yZSB0aGUgRVBGIGRyaXZlcnMgYmluZCgpIGFuZCBpbiB0aG9zZSBjYXNl
cyB0aGUgRVBGIGRyaXZlcnMgd2lsbCBtaXNzCj4gPiB0aGUgZXZlbnQuIFRvIGFjY29tbW9kYXRl
IHRoaXMsIEVQQyBjb3JlIGlzIG5vdyBjYWNoaW5nIHRoZSBzdGF0ZSBvZiB0aGUKPiA+IEVQQyBp
bml0aWFsaXphdGlvbiBpbiAnaW5pdF9jb21wbGV0ZScgZmxhZyBhbmQgcGNpLWVwLWNmcyBkcml2
ZXIgc2VuZHMgdGhlCj4gPiBub3RpZmljYXRpb24gdG8gRVBGIGRyaXZlcnMgYmFzZWQgb24gdGhh
dCBhZnRlciBlYWNoIEVQRiBkcml2ZXIgYmluZC4KPiA+IAo+ID4gVGVzdGVkLWJ5OiBOaWtsYXMg
Q2Fzc2VsIDxjYXNzZWxAa2VybmVsLm9yZz4KPiA+IFNpZ25lZC1vZmYtYnk6IE1hbml2YW5uYW4g
U2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4gPiAtLS0KPiA+
ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpZS1jYWRlbmNlLWVwLmMgIHwgIDIg
KysKPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktZHJhN3h4LmMgICAgICAgICAg
IHwgIDIgKysKPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktaW14Ni5jICAgICAg
ICAgICAgIHwgIDIgKysKPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2kta2V5c3Rv
bmUuYyAgICAgICAgIHwgIDIgKysKPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2kt
bGF5ZXJzY2FwZS1lcC5jICAgIHwgIDIgKysKPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLWFydHBlYzYuYyAgICAgICAgIHwgIDIgKysKPiA+ICBkcml2ZXJzL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtZXAuYyAgIHwgIDEgKwo+ID4gIGRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1wbGF0LmMgfCAgMiArKwo+ID4gIGRyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUta2VlbWJheS5jICAgICAgICAgfCAgMiArKwo+ID4gIGRy
aXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS1lcC5jICAgICAgICAgfCAgMSAtCj4g
PiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1yY2FyLWdlbjQuYyAgICAgICB8ICAy
ICsrCj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS10ZWdyYTE5NC5jICAgICAg
ICB8ICAxIC0KPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXVuaXBoaWVyLWVw
LmMgICAgIHwgIDIgKysKPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcmNhci1lcC5j
ICAgICAgICAgICAgIHwgIDIgKysKPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9j
a2NoaXAtZXAuYyAgICAgICAgIHwgIDIgKysKPiA+ICBkcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5j
dGlvbnMvcGNpLWVwZi10ZXN0LmMgICAgIHwgMTggKysrKystLS0tLS0tLS0tLS0tCj4gPiAgZHJp
dmVycy9wY2kvZW5kcG9pbnQvcGNpLWVwLWNmcy5jICAgICAgICAgICAgICAgICB8ICA5ICsrKysr
KysrKwo+ID4gIGRyaXZlcnMvcGNpL2VuZHBvaW50L3BjaS1lcGMtY29yZS5jICAgICAgICAgICAg
ICAgfCAyMiArKysrKysrKysrKysrKysrKysrKysrCj4gPiAgaW5jbHVkZS9saW51eC9wY2ktZXBj
LmggICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA3ICsrKystLS0KPiA+ICAxOSBmaWxlcyBj
aGFuZ2VkLCA2NSBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2llLWNhZGVuY2UtZXAuYyBi
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2llLWNhZGVuY2UtZXAuYwo+ID4gaW5k
ZXggMmQwYThkNzhiZmZiLi5kYTY3YTA2ZWU3OTAgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2NhZGVuY2UvcGNpZS1jYWRlbmNlLWVwLmMKPiA+ICsrKyBiL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2llLWNhZGVuY2UtZXAuYwo+ID4gQEAgLTczNCw2ICs3
MzQsOCBAQCBpbnQgY2Ruc19wY2llX2VwX3NldHVwKHN0cnVjdCBjZG5zX3BjaWVfZXAgKmVwKQo+
ID4gIAo+ID4gIAlzcGluX2xvY2tfaW5pdCgmZXAtPmxvY2spOwo+ID4gIAo+ID4gKwlkd19wY2ll
X2VwX2luaXRfbm90aWZ5KCZwY2ktPmVwKTsKPiAKPiBUaGlzIGxvb2tzIHdyb25nIChhbmQgSSB0
aGluayB0aGF0IHlvdSBoYXZlIG5vdCBidWlsZCB0ZXN0ZWQgdGhpcykuCj4gCgpBaCwgdGhpcyBp
cyBzaWxseS4gU29ycnksIGFkZGVkIHRoZSBjaGFuZ2UgaW4gYSBydXNoIDooCgo+IGR3XyogcHJl
Zml4IGluZGljYXRlcyBEV0MsIHNvIGl0IGlzIGEgRFdDIHNwZWNpZmljIGZ1bmN0aW9uLgo+IAo+
IEkgZG9uJ3QgdGhpbmsgdGhhdCB5b3UgY2FuIHVzZSB0aGlzIGZ1bmN0aW9uIGZvciB0aGUgMyBu
b24tRFdDIEVQQyBkcml2ZXJzLgo+IEkgdGhpbmsgdGhhdCB5b3UgbmVlZCB0byB1c2UgY2FsbCBw
Y2lfZXBjX2luaXRfbm90aWZ5KCkgZGlyZWN0bHkuCj4gCj4gCj4gKEFsc28gcGVyaGFwcyByZWJh
c2UgeW91ciBzZXJpZXMgb24gdjYuOS1yYzEsIEkgZ290IGNvbmZsaWN0cyB3aGVuIHRyeWluZwo+
IHRvIGFwcGx5IGl0IHRvIHY2LjktcmMxLCBiZWNhdXNlIGl0IGxvb2tzIGxpa2UgdGhlIHNlcmll
cyBpcyBzdGlsbCBiYXNlZAo+IG9uIHY2LjgtcmMxLikKPiAKCkkgcmViYXNlZCB0aGUgZXBmIHJl
d29yayBzZXJpZXMgYW5kIGRpZG4ndCBnZXQgYW55IGNvbmZsaWN0LiBCdXQgd2lsbCByZWJhc2UK
dGhpcyBvbmUgYWxzbyBhbmQgc2VuZCBuZXh0IHZlcnNpb24uCgpUaGFua3MgZm9yIG5vdGljaW5n
IG15IGlkaW9jeS4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprg
rqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
