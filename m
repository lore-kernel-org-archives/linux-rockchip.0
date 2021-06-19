Return-Path: <SRS0=BS4M=LN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512C8C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 14:41:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1575F6117A
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 14:41:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1575F6117A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+JyE9ykgShL++04OEnIdiYwbHrEwz86SFAwGRMAU84=; b=Cu+Jobgu/682LT
	Mek9Q6XUmuWuV2hkAeFinRaIbcbp8OBlspforW5yk7koeAu+AUMfMKu3jPVNV1kP4m4F0w8JeHsZK
	swhROegSFvrintkNqjp2l17PtCCQ/D1POSh2U//ClvsWWPKj5LihTH/AEJed4IrOpbBtn3Ejbttn+
	DwBWMkTRTQf6X0f08I5fJLFkHpog+rbA2mz8uMELmeHjnTAM4aFgpKACIyKB7YlUJaizgLljY9sPV
	0TqGQFVUN/a/T5IOHKcUmvPHIrpZ64h4+OHrRHyaqlilEx5HL9E0wpUcBl1+dcPWKTVVEIi0+NTe+
	rftC/lMDXAmzn6DeLDdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luc9f-00H8nV-Ei; Sat, 19 Jun 2021 14:41:03 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luc9c-00H8mg-UQ
 for linux-rockchip@lists.infradead.org; Sat, 19 Jun 2021 14:41:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id F40911F44054
Message-ID: <196b01a730d236a6eda99b42f18939692bc7ffcc.camel@collabora.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: rockchip-thermal: Support the
 RK3568 SoC compatible
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, 
 kernel@collabora.com, linux-pm@vger.kernel.org, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, Kever Yang
 <kever.yang@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Finley Xiao
 <finley.xiao@rock-chips.com>, linux-rockchip@lists.infradead.org
Date: Sat, 19 Jun 2021 11:40:47 -0300
In-Reply-To: <20210506214452.GA853809@robh.at.kernel.org>
References: <20210506175514.168365-1-ezequiel@collabora.com>
 <20210506175514.168365-4-ezequiel@collabora.com>
 <20210506214452.GA853809@robh.at.kernel.org>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210619_074101_151860_7DC47A72 
X-CRM114-Status: GOOD (  10.30  )
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

SGkgRGFuaWVsLAoKT24gVGh1LCAyMDIxLTA1LTA2IGF0IDE2OjQ0IC0wNTAwLCBSb2IgSGVycmlu
ZyB3cm90ZToKPiBPbiBUaHUsIDA2IE1heSAyMDIxIDE0OjU1OjEzIC0wMzAwLCBFemVxdWllbCBH
YXJjaWEgd3JvdGU6Cj4gPiBBZGQgYSBuZXcgY29tcGF0aWJsZSBmb3IgdGhlIHRoZXJtYWwgc2Vu
c29yIGRldmljZSBvbiBSSzM1NjggU29Dcy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRXplcXVp
ZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPgo+ID4gLS0tCj4gPiDCoERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3JvY2tjaGlwLXRoZXJtYWwueWFtbCB8
IDEgKwo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiA+IAo+IAo+IEFja2Vk
LWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgoJCkdlbnRsZSBwaW5nIGZvciAzLzQg
YW5kIDQvNCBpbiB0aGlzIHNlcmllcy4KClRoYW5rcywKRXplcXVpZWwKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
