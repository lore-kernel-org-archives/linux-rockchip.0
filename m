Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3279AC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 21:07:23 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CFA606140F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 21:07:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CFA606140F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f7sAwjfP8+VJhigC/2iFfqILqQlX4BObJWDWGTc8Xgc=; b=ZXxIhCjQY4p3fQ9joRZMtfCGq
	mhr0qLq1PoSQujTMoDfHfSUyVz4JoIlF4dwmlw0VASoMgV6lR6H2FJLOruc+j0hM5aFI0Q8zpd8XZ
	CrkrZnyldNtjKdekkp5idKpCUBXNIucgtstzcG/rc9zY6nn+jBR4eEgT2IAnu47km40Wa2UA5Q6Y2
	gZokjQUe/SzSRe8mRI01s574vY/GZ04yJUetK/YxOuuNKNowtDzCIX8WCEiIjPhigKaPYUn448A+K
	/sEwowID8GeofzaTOYae8n+L3inOexPp656XL5lt+C6WEMuvPZugOglTsHnwnjoyz7ADcdW/2xqIL
	YxdCVLn9A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZK45-00FCWC-HA; Wed, 21 Apr 2021 21:07:17 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZK3z-00FCVm-Lr
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 21:07:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=I3nooC9UUyaYzMoNJ8FeEyW1OUwBvQV+XswOFn6gOXs=; b=h5uV5j+w0Vyw2mRaeFRuLjUpFm
 QcapZkhz3EIezEbRAJoHUxfEDcfn5BVORkX6AYEOy26SzmSl8zAtwhAGUzK6x5ngq1aLH/84uwPyA
 nu/8yz6zjKB5EKTqoulAOOLpPa7vsy9ROhBg4Knuja8vGTFfqPslptyQMwRtzbOmtf3T09RkQFbBV
 4nNiE6ZIeB6hsaquwP0XDNc5ltaAbB/Rqo2zRtF+2KSBPP8FIe3JHiuIXN1OYqs6wlhe31Q5UGdrt
 pweTmcqrr4SDsY+nSepl7KSDKBYVhrkCO3+kPawL+0eor8JvezPBD6Id6W4zm+PztlR7AicM7XOMe
 xwkylU4w==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZK3x-00DC7W-60
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 21:07:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 44BEF1F4262B
Message-ID: <31272ad0e6a5274080831406796960506c6a6912.camel@collabora.com>
Subject: Re: [PATCH 1/2] dt-bindings: rockchip-thermal: Support the RK3568
 SoC compatible
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Johan Jonker <jbx6244@gmail.com>, linux-pm@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Kever Yang
 <kever.yang@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, Zhang
 Rui <rui.zhang@intel.com>, Finley Xiao <finley.xiao@rock-chips.com>,
 kernel@collabora.com
Date: Wed, 21 Apr 2021 18:06:59 -0300
In-Reply-To: <557ae27c-1d62-69e0-7ae6-921571059f9f@gmail.com>
References: <20210421200445.32977-1-ezequiel@collabora.com>
 <557ae27c-1d62-69e0-7ae6-921571059f9f@gmail.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_140709_373964_7D80960B 
X-CRM114-Status: GOOD (  16.17  )
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

T24gV2VkLCAyMDIxLTA0LTIxIGF0IDIyOjQ2ICswMjAwLCBKb2hhbiBKb25rZXIgd3JvdGU6Cj4g
T24gNC8yMS8yMSAxMDowNCBQTSwgRXplcXVpZWwgR2FyY2lhIHdyb3RlOgo+ID4gQWRkIGEgbmV3
IGNvbXBhdGlibGUgZm9yIHRoZSB0aGVybWFsIHNlbnNvciBkZXZpY2Ugb24gUkszNTY4IFNvQ3Mu
Cj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFi
b3JhLmNvbT4KPiA+IC0tLQo+ID4gwqBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
dGhlcm1hbC9yb2NrY2hpcC10aGVybWFsLnR4dCB8IDEgKwo+ID4gwqAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy90aGVybWFsL3JvY2tjaGlwLXRoZXJtYWwudHh0IGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvcm9ja2NoaXAtdGhlcm1hbC50eHQKPiA+IGlu
ZGV4IDdmOTQ2NjllOWViZS4uMzQ2ZTQ2NmMyMDA2IDEwMDY0NAo+ID4gLS0tIGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvcm9ja2NoaXAtdGhlcm1hbC50eHQKPiA+
ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3JvY2tjaGlw
LXRoZXJtYWwudHh0Cj4gPiBAQCAtOSw2ICs5LDcgQEAgUmVxdWlyZWQgcHJvcGVydGllczoKPiA+
IMKgwqDCoCAicm9ja2NoaXAscmszMzI4LXRzYWRjIjogZm91bmQgb24gUkszMzI4IFNvQ3MKPiA+
IMKgwqDCoCAicm9ja2NoaXAscmszMzY4LXRzYWRjIjogZm91bmQgb24gUkszMzY4IFNvQ3MKPiA+
IMKgwqDCoCAicm9ja2NoaXAscmszMzk5LXRzYWRjIjogZm91bmQgb24gUkszMzk5IFNvQ3MKPiAK
PiA+ICvCoMKgICJyb2NrY2hpcCxyazM1NjgtdHNhZGMiOiBmb3VuZCBvbiBSSzM1NjggU29Dcwo+
IAo+IFRoaXMgaXMgc3RpbGwgYSB0ZXh0IGRvY3VtZW50Lgo+IHJvYitkdCBoYXMgbm93IHNjcmlw
dHMgdGhhdCBjaGVjayBmb3IgdW5kb2N1bWVudGVkIGNvbXBhdGliaWxpdHkKPiBzdHJpbmdzLCBz
byBmaXJzdCBjb252ZXJ0IHJvY2tjaGlwLXRoZXJtYWwudHh0IHRvIFlBTUwgYW5kIHRoZW4gYWRk
IHRoaXMKPiBpbiBhIHNlcGFyYXRlZCBwYXRjaC4KPiAKCklzIGl0IGEgc2hvd3N0b3BwZXIgdG8g
Y29udmVydCBkZXZpY2V0cmVlIGJpbmRpbmdzIHRvIFlBTUwgZm9yIGRyaXZlciBzdWJtaXNzaW9u
PwoKVGhhbmtzLApFemVxdWllbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
