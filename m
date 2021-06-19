Return-Path: <SRS0=BS4M=LN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A351C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 14:42:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 289B56117A
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 14:42:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 289B56117A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lkPkRVGG8N7JRnHnBH17dauZb1XX2im5W/X9EqjY0e8=; b=YYHw03h3B73fVK
	7Y84o8U3CTWvFZ/5R48kLtfyMhW3lMH5bXyum5pxjGB9bBfEDKCo5tXLruoIx4yGXPHI5klfNDJTT
	Aql3+R0BActDkmHQO29bkagWnqnd7IK/Y3hZ5B3FUlLZX95semq/6lnbdUIvNo3X/wHbtYVuTgJus
	Q0cdEZf9NZdquiNsVFndeCQPthRd+yNjhDNAD6uGb27F0zndMuS/wmA52BGt1FU11CkXwST+9sLBW
	eyCXUqfAMPLJ8zkbfJ6wjHh4l1boUWh83CQZwOyRGf1NUJTddN6N4nTRZhR/QSwtkKW4xkZOEKFkR
	AOI6MHtgNlTsnVHv6TKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lucAy-00H90v-2y; Sat, 19 Jun 2021 14:42:24 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lucAv-00H90E-6k
 for linux-rockchip@lists.infradead.org; Sat, 19 Jun 2021 14:42:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id EA0FD1F43FFD
Message-ID: <4c178505a73b47d08c17915aa43b5f4239a8c30c.camel@collabora.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: rockchip-thermal: Support the
 RK3568 SoC compatible
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, 
 kernel@collabora.com, linux-pm@vger.kernel.org, Zhang Rui
 <rui.zhang@intel.com>,  Kever Yang <kever.yang@rock-chips.com>, Heiko
 Stuebner <heiko@sntech.de>, Finley Xiao <finley.xiao@rock-chips.com>,
 linux-rockchip@lists.infradead.org
Date: Sat, 19 Jun 2021 11:42:09 -0300
In-Reply-To: <196b01a730d236a6eda99b42f18939692bc7ffcc.camel@collabora.com>
References: <20210506175514.168365-1-ezequiel@collabora.com>
 <20210506175514.168365-4-ezequiel@collabora.com>
 <20210506214452.GA853809@robh.at.kernel.org>
 <196b01a730d236a6eda99b42f18939692bc7ffcc.camel@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210619_074221_442334_ED117AC5 
X-CRM114-Status: GOOD (  12.02  )
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

T24gU2F0LCAyMDIxLTA2LTE5IGF0IDExOjQwIC0wMzAwLCBFemVxdWllbCBHYXJjaWEgd3JvdGU6
Cj4gSGkgRGFuaWVsLAo+IAo+IE9uIFRodSwgMjAyMS0wNS0wNiBhdCAxNjo0NCAtMDUwMCwgUm9i
IEhlcnJpbmcgd3JvdGU6Cj4gPiBPbiBUaHUsIDA2IE1heSAyMDIxIDE0OjU1OjEzIC0wMzAwLCBF
emVxdWllbCBHYXJjaWEgd3JvdGU6Cj4gPiA+IEFkZCBhIG5ldyBjb21wYXRpYmxlIGZvciB0aGUg
dGhlcm1hbCBzZW5zb3IgZGV2aWNlIG9uIFJLMzU2OCBTb0NzLgo+ID4gPiAKPiA+ID4gU2lnbmVk
LW9mZi1ieTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPgo+ID4gPiAt
LS0KPiA+ID4gwqBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9yb2Nr
Y2hpcC10aGVybWFsLnlhbWwgfCAxICsKPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKykKPiA+ID4gCj4gPiAKPiA+IEFja2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwu
b3JnPgo+IMKgwqDCoMKgwqDCoMKgwqAKPiBHZW50bGUgcGluZyBmb3IgMy80IGFuZCA0LzQgaW4g
dGhpcyBzZXJpZXMuCj4gCgpBY3R1YWxseSwgaXQncyBwYXRjaGVzIDIvNCwgMy80IGFuZCA0LzQu
CgpUaGFua3MhCkV6ZXF1aWVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
