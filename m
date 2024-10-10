Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC805CF07C6
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 08:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KeQpshgc7Tx8/h0IwY9e4T6X5cqmB+sGHYwG4530qaE=; b=aV95bACnoHF5li
	qHo/HkAE4wfyNVPEn//ezJio5gAAPpYpeWZlVms8XLjXaOWdbIurY4BL+4rFZoGoBfj4MrCPgAkUM
	HnFi4CWgfZhSuWMMDxCsRg3o/bU8mSkluVDSJGizwffe9Z9RF9kT3NELT7I5U2g8EQeDpgLngLjBc
	N69sRfFEFmgenBm2xR7C69txn4WzrQeZhfofm6e5DzEYrZlXtUWroJPuaIH9lCEWvhqxMDGHfCshq
	OS8kyd/Upvyy9ReOH7BIO9Vpc3PAo+K8apGUDPoesqwxOvqUowf7pGbL3p51JvUtIpV+lbh4p9XON
	IeGD9YMllWKxcy/LNoNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syop5-0000000C4ya-0kva;
	Thu, 10 Oct 2024 08:47:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1synNC-0000000BoE4-0vbh
	for linux-rockchip@bombadil.infradead.org;
	Thu, 10 Oct 2024 07:14:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=5sDmeUpbgEUKwxwRuUhCja4Dxuub8EV9vOw4/pjad+c=; b=jZ8wFj0g547Y1HuWtNkf+TlnaC
	1vm86z0zbaedlRRtU2Ddr87zRur0FqWUW+jtQed92O1B+mAVxs6qIgs7T+aFLa7ZvKpU2uLgeNlOV
	SFbs1fyNjObH+4xZvvIP9W2scastenqRhdltuAavb12IVuYnyCKPz9ymXTYCFBbm/eGmYRhpBvhjK
	85NRv2zusnO4COEz6sG4jXsb/Sw4kyYnX9QIWhl6Zdga8RmVQXWOdpyHKTMiDe2Hb7qblDmL/YKva
	rIMhExxMkRhM6a4DjUYaB+kU6KOvwIBC+jjRash4ZDEt7kOiZ+d45KsvaDciYiyfg3uKlW5E4O9Vw
	GHgyyD6A==;
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1synN8-00000005DVD-2uVb
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 07:14:08 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-71e1a715c72so482589b3a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2024 00:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728544443; x=1729149243; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5sDmeUpbgEUKwxwRuUhCja4Dxuub8EV9vOw4/pjad+c=;
        b=uIUK8dCvj4oCtNxr4PEfMZQ395Hn8Et3Pt9O4pkQ5zKN2ERAWObw4OcQ/tcYEa2TkV
         YlofU9cfshKatBKC9FUg4LspuD0fTw1JAvqhBpyl5pYQtajNFjlIE4UzIptbUkz9unuo
         km/PLnEXihBheXKCxkQlckrj/CnGqDHTt5dUU9JjI1LX4l5F2lik4xbOk4nMKbwm27sY
         vEn4WI4Zn1Wz70G3T0L74Cb5XKYBSwO3GD+pA41ysjgJdfOJ1ZOaKsHuQJAOES0zzXG5
         JS+NhZK/hNsC0jayyNXTybqKdRMD2GFTzkus1etYOO/lhSlW2k3bU1vi095E4aAx7Fj2
         M4kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728544443; x=1729149243;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5sDmeUpbgEUKwxwRuUhCja4Dxuub8EV9vOw4/pjad+c=;
        b=pNJqNGj+l1GDdZlC9wVLnhv91eNlY19AFbVUWCsp61CFCBGV3qxZw/MoeYjXQb/ScO
         U20FMkEcqeJ2FQprS6B3d4qYq79aqNSseJi4+F0s0Mk12X9XDVtn6MC2ZNrTuwbfFKLl
         pI6i5UMxITlDAFYAYwDrSiObOEUYg9Gt51bwdMMp7iDK7MHCgSJ6bcUiCtI0Dq9ptij2
         jeuhLaCyKZVbUxNvTupmi7hDrWfPGY5HIO9Cgxg3EWlN22BhXUDp0fMATC9Zff3WrpvB
         XNS8QzCp/aRzRuZPyh8BQoRINpxOKYiNGrVv7wjQ3mQT/+OvRSHN5I1QZfJKiEoMacDL
         eMng==
X-Forwarded-Encrypted: i=1; AJvYcCVrtV7MusDLRWdtAv8jE+mcSm+OJdL9Ed+q7MyJJtluMidlG2FaCUy7HSMz40RNyUPTXqAvT4uKRaXEitM3vA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwwKbTa6Q4uu3T9K86Lv59nJqYeFFRXOCqyPpHUt3diAaoq5B0h
	LElzSuhuxDMyiSyerXXvMmhnggN2LTRArA+Q+hKgQntDupt2sovASQUTJXIX8GHN9eqbWd2JWRo
	=
X-Google-Smtp-Source: AGHT+IEO0BjF4lnOqXZimpvv6/cR8GzLT8i2pb0ODWlwAKixhY/VBPqgnDGQ91Lcitig4AdIMRVtXg==
X-Received: by 2002:a05:6a00:180e:b0:71e:9a8:2b9a with SMTP id d2e1a72fcca58-71e2680ad36mr4297170b3a.23.1728544443338;
        Thu, 10 Oct 2024 00:14:03 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7ea4496816esm385681a12.89.2024.10.10.00.13.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 00:14:02 -0700 (PDT)
Date: Thu, 10 Oct 2024 12:43:57 +0530
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
Subject: Re: [PATCH v3 04/12] PCI: rockchip-ep: Improve
 rockchip_pcie_ep_map_addr()
Message-ID: <20241010071357.c3kck3rxdhvy6m67@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-5-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007041218.157516-5-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_081406_901234_E19C2222 
X-CRM114-Status: GOOD (  15.26  )
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

T24gTW9uLCBPY3QgMDcsIDIwMjQgYXQgMDE6MTI6MTBQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gQWRkIGEgY2hlY2sgdG8gdmVyaWZ5IHRoYXQgdGhlIG91dGJvdW5kIHJlZ2lvbiB0
byBiZSB1c2VkIGZvciBtYXBwaW5nIGFuCj4gYWRkcmVzcyBpcyBub3QgYWxyZWFkeSBpbiB1c2Uu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogRGFtaWVuIExlIE1vYWwgPGRsZW1vYWxAa2VybmVsLm9yZz4K
ClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZh
bUBsaW5hcm8ub3JnPgoKLSBNYW5pCgo+IC0tLQo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3Bj
aWUtcm9ja2NoaXAtZXAuYyB8IDMgKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlw
LWVwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYwo+IGluZGV4
IDg5ZWJkZjNlNDczNy4uZWRiODRmYjFiYTM5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9wY2llLXJvY2tjaGlwLWVwLmMKPiBAQCAtMjQzLDYgKzI0Myw5IEBAIHN0YXRpYyBpbnQgcm9j
a2NoaXBfcGNpZV9lcF9tYXBfYWRkcihzdHJ1Y3QgcGNpX2VwYyAqZXBjLCB1OCBmbiwgdTggdmZu
LAo+ICAJc3RydWN0IHJvY2tjaGlwX3BjaWUgKnBjaWUgPSAmZXAtPnJvY2tjaGlwOwo+ICAJdTMy
IHIgPSByb2NrY2hpcF9vYl9yZWdpb24oYWRkcik7Cj4gIAo+ICsJaWYgKHRlc3RfYml0KHIsICZl
cC0+b2JfcmVnaW9uX21hcCkpCj4gKwkJcmV0dXJuIC1FQlVTWTsKPiArCj4gIAlyb2NrY2hpcF9w
Y2llX3Byb2dfZXBfb2JfYXR1KHBjaWUsIGZuLCByLCBhZGRyLCBwY2lfYWRkciwgc2l6ZSk7Cj4g
IAo+ICAJc2V0X2JpdChyLCAmZXAtPm9iX3JlZ2lvbl9tYXApOwo+IC0tIAo+IDIuNDYuMgo+IAoK
LS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
