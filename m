Return-Path: <SRS0=BS4M=LN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1997FC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 14:26:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AA60D610A7
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 14:26:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AA60D610A7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R3RorClXAbfa/ag/Fj0CaEOSqsj9E+6dID6esEE+1dc=; b=THf64YnsF0+XAl
	jcmvyzV0DmisK8TnPYACvCInW71UzECXHcPhhStsqz3nC+J/850sOY8iBtpAL1WM7mlVo09W5AgPV
	pMIQQ4aq/03x+u0yrT83ELKBv9/v5hzqYFuW3ouQBftihxa7UkBMYC5iSM7Q1NbCSPmwbxjs8IN6X
	NdExiHLRSbFQDICm4JVe1UmxKDtjxnBjSb1C7RWMkqzxlLlztLTwgo5uFgzPC5v8ssmfjAtdYjE3R
	Sc/YXoC/o3H5XYFr7PvyQ2zNhuDkI3Ds3PdunmvFiKgh4/v7mpZYSX1Z3BlUkOo7ppJ3mugptADjm
	J2UKyFZ/YSyPEhT3m+gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lubv8-00H5tk-AL; Sat, 19 Jun 2021 14:26:02 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lubv6-00H5su-98
 for linux-rockchip@lists.infradead.org; Sat, 19 Jun 2021 14:26:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 3FDE11F4404F
Message-ID: <308309f81a684928bbed52b6d0ca0b367dcb8bbe.camel@collabora.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: timer: convert
 rockchip,rk-timer.txt to YAML
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Heiko
 =?ISO-8859-1?Q?St=FCbner?=
 <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org
Cc: Kever Yang <kever.yang@rock-chips.com>, Rob Herring
 <robh+dt@kernel.org>,  kernel@collabora.com
Date: Sat, 19 Jun 2021 11:25:45 -0300
In-Reply-To: <398f8cd1-59cb-369f-0356-85cc1a64bb28@linaro.org>
References: <20210506111136.3941-1-ezequiel@collabora.com>
 <20210506111136.3941-4-ezequiel@collabora.com> <15819722.JCcGWNJJiE@diego>
 <398f8cd1-59cb-369f-0356-85cc1a64bb28@linaro.org>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210619_072600_496226_82F4F4EF 
X-CRM114-Status: UNSURE (   9.47  )
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

SGkgRGFuaWVsLAoKT24gRnJpLCAyMDIxLTA1LTI4IGF0IDE3OjU3ICswMjAwLCBEYW5pZWwgTGV6
Y2FubyB3cm90ZToKPiBPbiAyOC8wNS8yMDIxIDE3OjU2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiA+IEhpIERhbmllbCwKPiA+IAo+ID4gQW0gRG9ubmVyc3RhZywgNi4gTWFpIDIwMjEsIDEzOjEx
OjM2IENFU1Qgc2NocmllYiBFemVxdWllbCBHYXJjaWE6Cj4gPiA+IENvbnZlcnQgUm9ja2NoaXAg
VGltZXIgZHQtYmluZGluZ3MgdG8gWUFNTC4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEV6
ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiA+IAo+ID4gY2FuIHlvdSBh
cHBseSB0aGlzIHBhdGNoIHRvIHRoZSB0aW1lci10cmVlPwo+IAo+IFllcwo+IAo+IAoKQ2FuJ3Qg
ZmluZCB0aGlzIG9uZSBhcHBsaWVkIGluIC1uZXh0LCBtYXliZSBpdCBmZWxsIHRocnUgc29tZXdo
ZXJlIDopID8KClRoYW5rcyEKRXplcXVpZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
