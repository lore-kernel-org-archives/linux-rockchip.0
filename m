Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91A55C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 May 2024 17:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txyGdMdxN4wNj37uijm6KuJMNfEOtg7mbf84zHd8veQ=; b=wETaPmymukeE8N
	GGqwmQUZzDzxP+sa/ylAnpYkv3DUXM7fn/htHI/3xTS0WCdvC8/qgYggzV8+9bfoyb74y0F6TTtqA
	8VpfrRSfTb9IDYfy2xlbfLf6y5C+1a8cFwEUiLSXqPGjCJhQtFZG3Q8bv+K8imuoiuDD7DRwqlorJ
	e5KD0FQulgCfY5qngjBIF7Cy6XG0Up7kRAjvaLkliAqAPnXJiRErr+JI+hrCWwZ+NTh3innsaJBO8
	a/4NWtYqCnwEFOMwRzeLj6fb36tx1bFxKWNGOY3V9ypwoDfsed9ZJRBmnNX34NCVHx/ey6KuY+GRa
	dK9Cok4VYOU1dCS1LPww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3IxS-00000002XA8-2Q4E;
	Sat, 04 May 2024 17:13:58 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3IxP-00000002X9M-2GTH
	for linux-rockchip@lists.infradead.org;
	Sat, 04 May 2024 17:13:57 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-6f44390e328so658050b3a.2
        for <linux-rockchip@lists.infradead.org>; Sat, 04 May 2024 10:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714842833; x=1715447633; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b6SfYlDnl8J6WZ0WsCtdQjjzp4VbWMxSWwvAKjPCrXc=;
        b=cCni3SlanIj4ePSmTurtE4laEF/aUoIkVUjxoLRms+vmN8ewUNEquVx1Nr0QQBVu9d
         dvzfdExaHbctx47/RMgdEz0OmksnXf52xiA4lgzQjl6tMk5OI43I21qfC5ZdOCGqwVkU
         qSc2fA0IqcyIqUggznKO4rBZ3m/9PQfgcEKESR1IqNG/ckJem3spjwxMFDdHbmVKlOfD
         UiRg2xYvKqPQuWK1OZL2B3oUhjq2RYV2JbJMYF+YJlA1Suki1ogbwKobl/dmZ0ZRHpSg
         V7DciHMGl1pd+HCrcyw+J4/SR6Kano4R49/3RPU1iLPN6CNiQfttBBZmWG7TGFBRYWzg
         MQ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714842833; x=1715447633;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b6SfYlDnl8J6WZ0WsCtdQjjzp4VbWMxSWwvAKjPCrXc=;
        b=h2VZE7dkJc7HNCw/pcEBPgHKG4+FocoXqonqmE1/8P5LK2OLHFc5erf8p3kfovUgGp
         5YNCG+HCBfsHdkNbXbToRInBI0LGIuOFpO+bXf54UbsYLywdUosVs3onGADk39Yexgza
         0wfhRscX8j2j6L6qvob9WAMDnG8a2fuBROdfklAyZI6vdu2PZXECaJ6sM8CDvlpWfQQN
         dTbQccnnQ2pY+u/myWr5TBvTHf6KEOaaWfafDEC4NBRsb5GI8WvJXeEA/qEi+MiCTsDb
         ApNo2nKhTjdcdel9OKwtdyk04Bbmv71YX/RK5vgvhlPxE7VvN7hoPjrusw8zkNmd4tFC
         c7jg==
X-Forwarded-Encrypted: i=1; AJvYcCUc07U/+oZn55itKpQSHxoziqHV19O5k5qbM0Xh9oo0wZ/cSxEJO6ioqyGWho/WPXUh5z+cBn085hXLH4ZnkhFrgh3OkOHAgVXeGCD6YuLY6qZA
X-Gm-Message-State: AOJu0YwoWwMm7rcDHBFT27yH6jwZA4+fVl5hewid00EkQkq2iszO/yof
	QSCky6omImF9UInbY9TQlnpbe1bcdOZLEo7ytDCF+rpmpmaqOc0Ddg9LA8ovog==
X-Google-Smtp-Source: AGHT+IE4dylI7QXHHn5f/KCuBye5E93/83YHUHgLPJwVftLGMyfTRhG5xgQLthY65HGM6p1E/D68CA==
X-Received: by 2002:a05:6a00:9a5:b0:6ed:cd4c:cc1a with SMTP id u37-20020a056a0009a500b006edcd4ccc1amr7084861pfg.8.1714842833327;
        Sat, 04 May 2024 10:13:53 -0700 (PDT)
Received: from thinkpad ([220.158.156.237])
        by smtp.gmail.com with ESMTPSA id g2-20020a056a000b8200b006f4547cbd1asm2058335pfj.5.2024.05.04.10.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 May 2024 10:13:52 -0700 (PDT)
Date: Sat, 4 May 2024 22:43:46 +0530
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
Subject: Re: [PATCH v2 08/14] PCI: dw-rockchip: Add rockchip_pcie_ltssm()
 helper
Message-ID: <20240504171346.GE4315@thinkpad>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-8-a0f5ee2a77b6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-8-a0f5ee2a77b6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240504_101355_652990_D08E1258 
X-CRM114-Status: GOOD (  19.15  )
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

T24gVHVlLCBBcHIgMzAsIDIwMjQgYXQgMDI6MDE6MDVQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBBZGQgYSByb2NrY2hpcF9wY2llX2x0c3NtKCkgaGVscGVyIGZ1bmN0aW9uIHRoYXQg
cmVhZHMgdGhlIExUU1NNIHN0YXR1cy4KPiBUaGlzIGhlbHBlciB3aWxsIGJlIHVzZWQgaW4gYWRk
aXRpb25hbCBwbGFjZXMgaW4gZm9sbG93LXVwIHBhdGNoZXMuCj4gCgpQbGVhc2UgZG9uJ3QgdXNl
ICdwYXRjaGVzJyBpbiBjb21taXQgbG9ncy4gT25jZSB0aGUgcGF0Y2hlcyBnZXQgbWVyZ2VkLCB0
aGV5CmJlY29tZSBjb21taXRzLgoKPiBTaWduZWQtb2ZmLWJ5OiBOaWtsYXMgQ2Fzc2VsIDxjYXNz
ZWxAa2VybmVsLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1k
dy1yb2NrY2hpcC5jIHwgNyArKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kdy1yb2NrY2hpcC5jCj4gaW5kZXggMTk5M2M0MzBiOTBjLi40MDIzZmQ4NjE3NmYgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4g
KysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gQEAg
LTE0Myw2ICsxNDMsMTEgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2luaXRfaXJxX2RvbWFp
bihzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXApCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAK
PiArc3RhdGljIGlubGluZSB1MzIgcm9ja2NoaXBfcGNpZV9sdHNzbShzdHJ1Y3Qgcm9ja2NoaXBf
cGNpZSAqcm9ja2NoaXApCgpyb2NrY2hpcF9wY2llX2dldF9sdHNzbSgpPwoKQWxzbywgbm8gaW5s
aW5lIGluIEMgZmlsZXMsIHBsZWFzZS4gQ29tcGlsZXIgd2lsbCBpbmxpbmUgZnVuY3Rpb25zIHdp
dGggb3IKd2l0aG91dCB0aGUga2V5d29yZCBhbnl3YXkuCgotIE1hbmkKCj4gK3sKPiArCXJldHVy
biByb2NrY2hpcF9wY2llX3JlYWRsX2FwYihyb2NrY2hpcCwgUENJRV9DTElFTlRfTFRTU01fU1RB
VFVTKTsKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9lbmFibGVfbHRzc20o
c3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQo+ICB7Cj4gIAlyb2NrY2hpcF9wY2llX3dy
aXRlbF9hcGIocm9ja2NoaXAsIFBDSUVfQ0xJRU5UX0VOQUJMRV9MVFNTTSwKPiBAQCAtMTUyLDcg
KzE1Nyw3IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfZW5hYmxlX2x0c3NtKHN0cnVjdCBy
b2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2xpbmtf
dXAoc3RydWN0IGR3X3BjaWUgKnBjaSkKPiAgewo+ICAJc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJv
Y2tjaGlwID0gdG9fcm9ja2NoaXBfcGNpZShwY2kpOwo+IC0JdTMyIHZhbCA9IHJvY2tjaGlwX3Bj
aWVfcmVhZGxfYXBiKHJvY2tjaGlwLCBQQ0lFX0NMSUVOVF9MVFNTTV9TVEFUVVMpOwo+ICsJdTMy
IHZhbCA9IHJvY2tjaGlwX3BjaWVfbHRzc20ocm9ja2NoaXApOwo+ICAKPiAgCWlmICgodmFsICYg
UENJRV9MSU5LVVApID09IFBDSUVfTElOS1VQICYmCj4gIAkgICAgKHZhbCAmIFBDSUVfTFRTU01f
U1RBVFVTX01BU0spID09IFBDSUVfTDBTX0VOVFJZKQo+IAo+IC0tIAo+IDIuNDQuMAo+IAoKLS0g
CuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
