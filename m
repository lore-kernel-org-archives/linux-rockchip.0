Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E6EDC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 19:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6fKrU66wZQqDJ2hOBi+JZjQNde5CoRV44gbJ1uaGhso=; b=ITpV/XYctzOPc9
	JPkKuopjMHXozGFFPkDB4hlfY9CVQq3iJ/hmdGDOikjv4BT4q7K3UvPiO7Z+Bpvbp971OHsZK1UBg
	jkYupCeBRLvYVMJH8Ptmy5WJUMLKboyUciu5zS6KX4oUySkCzZtCn65VD/UKOmXNgxwWNLI4MNkwi
	hQl2HWTDOG33L6i4idUGT9fY99HqUp8ZCd0CzVMBwKpUDl2/sXb4GpU3WTZKLbDw2VAuPm0YvrlFP
	n/37Vw7p31yNnyPtQro5fNhFSbd3Yfb2+KuxQP0HdKMMGrIle8egZ+TctnxFFS5AdDBUMPRuK9iGr
	+C4+SHneJMFz+dZUumaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noryY-008IRZ-7K; Wed, 11 May 2022 19:26:22 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noryV-008IR3-9N; Wed, 11 May 2022 19:26:20 +0000
Received: by mail-lf1-x135.google.com with SMTP id d19so5300165lfj.4;
 Wed, 11 May 2022 12:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=TAIvow1w3Et+3EUX6RKiHJdrCLZdYL3A3uXuaUYdtpA=;
 b=V713DS1JCS6qIh5Klw7+BbgJh4RBaaNWS8aYlzkD9Nq37WNfYf/Lg4ittzS8AMMVv/
 kP7VUwtiQoakcEW8e9wk1JC/MIL3mQ7UpJZQQvDMJ/CTABzcj5gkywF68X21Pd/Upr6e
 1EjOM0VHpDXUSjDUO+RddUBYocL2Kh/6Nnvnd2GTRxUAoHrmSPlX0Pbmd9lrVzAIIKym
 zJrByGbel8/FGgtqQKnpnOMLPuxUDusCXxzfG92W+tOGisH0AmnLiBuDCbjQLRs3xXEC
 FExiKLRBw0Wrkejpti0qhRTNmPeyL8swcvymSYnAoeZKQcu2KHfH/lQdMp+r5BxECgXI
 Qnug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=TAIvow1w3Et+3EUX6RKiHJdrCLZdYL3A3uXuaUYdtpA=;
 b=501Vc3apqywGg9vZqmnS2HlAUSKb2KvtPLlIPfyv6wFvQ3ig0bL8Hk/pK+g6P7nRIR
 SUPddMCTCnGiyXSfyjdHl5CZmhz8GoHIyEmmTiHSlX6hWrOqpgruec0CLtyo4jBwQsmt
 Xf3Iy5H/q346pOUtekgPNKeZtEWtCg1b52kl1QEV0pvtPAGoMJWbah9TAflbgkJE4AAP
 YyDYNbYAdzjH7ubdY0uA39dDa13njrzz6x6EMN5CZOy4FH3HFJEicnx7XIU7krq6gPgv
 5/9RMf+gOBaubZYzxFNdoQ8Jk5htuZor8VfBQd+zIbZNuCmf5AVnm2lJu7IdKkylHVnC
 XqQw==
X-Gm-Message-State: AOAM531k2OP0JTKZ+UhzUjRciis8nHlT/aMv5Ufga+G60f+M2brAHnZx
 +nW3F3rW5UpPq7hu0eq5JBA=
X-Google-Smtp-Source: ABdhPJyu5Qf/d2LtNP4I7uWFCrmVH4cTwPhUEAQWDxrQhVhT85X00ycU/nNHTnxMJIBVbYsl4NwbxA==
X-Received: by 2002:a05:6512:1196:b0:473:be8f:e921 with SMTP id
 g22-20020a056512119600b00473be8fe921mr21626419lfr.242.1652297176346; 
 Wed, 11 May 2022 12:26:16 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 d7-20020a05651c088700b0024f3d1dae93sm494219ljq.27.2022.05.11.12.26.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 May 2022 12:26:15 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [RFC/RFT 0/6] RK3568 PCIe V3 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220416135458.104048-1-linux@fw-web.de>
Date: Wed, 11 May 2022 21:26:09 +0200
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Frank Wunderlich <frank-w@public-files.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?utf-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-pci@vger.kernel.org
Message-Id: <9E2565E4-DBF3-4324-BE1F-4C20C6FB95EA@gmail.com>
References: <20220416135458.104048-1-linux@fw-web.de>
To: Frank Wunderlich <linux@fw-web.de>,
 Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_122619_386859_BA61F9CF 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEZyYW5rIFd1bmRlcmxpY2ggPGxpbnV4QGZ3
LXdlYi5kZT4gdyBkbml1IDE2LjA0LjIwMjIsIG8gZ29kei4gMTU6NTQ6Cj4gCj4gRnJvbTogRnJh
bmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gCj4gVGhpcyBzZXJpZXMg
YWRkcyBSb2NrY2hpcCBQQ0llIFYzIHN1cHBvcnQgZm91bmQgb24gcmszNTY4IFNPQy4KPiAKPiBJ
dCBpcyBiYXNlZCBvbiAiRW5hYmxlIHJrMzU2eCBQQ0llIGNvbnRyb2xsZXIiIHNlcmllcyBvZiBQ
ZXRlciBHZWlzCj4gdjc6IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51
eC1yb2NrY2hpcC9jb3Zlci8yMDIyMDQxNjExMDUwNy42NDIzOTgtMS1wZ3dpcGVvdXRAZ21haWwu
Y29tLwo+IAo+IENvbXBhcmVkIHRvIFBDSWVWMiB3aGljaCB1c2VzIHRoZSBOYW5lbmcgY29tYnBo
eSwgcGNpZXYzCj4gdXNlcyBhIGRlZGljYXRlZCBwY2ktcGh5Lgo+IAo+IEZyYW5rIFd1bmRlcmxp
Y2ggKDYpOgo+ICBkdC1iaW5kaW5nczogcGh5OiByb2NrY2hpcDogYWRkIHBjaWUzIHBoeQo+ICBk
dC1iaW5kaW5nczogc29jOiBncmY6IGFkZCBwY2llMzAte3BoeSxwaXBlfS1ncmYKPiAgcGh5OiBy
b2NrY2hpcDogU3VwcG9ydCBwY2llIHYzCj4gIFBDSTogcm9ja2NoaXAtZHdjOiBhZGQgcGNpZSBi
aWZ1cmNhdGlvbgo+ICBhcm02NDogZHRzOiByb2NrY2hpcDogcmszNTY4OiBBZGQgUENJZSB2MyBu
b2Rlcwo+ICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIFBDSWUgdjMgbm9kZXMgdG8gQlBJLVIy
LVBybwoKRnJhbmssIFBldGVyCgpGWUk6IApUaGlzIHNlcmllcyBnaXZlcyBtZSBuaWNlbHkgd29y
a2luZyBQQ0ktZSBXaUZpIE0yIGl3bDcyNjUgbW9kdWxlIG9uIHJvY2szLWEuCkdyZWF0IHdvcmsh
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
