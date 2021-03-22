Return-Path: <SRS0=HfFp=IU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CDD0C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Mar 2021 00:03:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6761F60C40
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Mar 2021 00:03:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6761F60C40
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=p47r0PxAA2EWT5ITVBcsaBTgRQvxpCVfj3XYTkCS3Wg=; b=mmDQ3B3MFEd/jK6Siv3fDUUBh
	6FlBgTtLGc7GJEFm5z0YP2Muve6LvYnrymadTV0TExCJdzzYNmNW9eaKj1ggbOSzBan0xpTlq93nd
	GqEW8PrIat9e+7u6GlR0gvHVwq1b2wPDip1aszc8ccGT2CP1zCC6Rlrk/z3YQGOLs8/nV92/5MGOP
	QJYf9RxhZ3G04uCi8wvU8MoYouPAfv9A5e/kfDtzXMtQndyHMBbhy+f2AL2C76QpRk4QX72vB+Rwm
	PA4J5JQgJdmsfJJqEuMQVNiEtqMCD2aMvzwtdMXrQRlz56lsZ2OrBGZ8xkPKRCPezahZS1il4Wi+i
	zIdZjHJag==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lO82t-00Aa7W-F7; Mon, 22 Mar 2021 00:03:47 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lO82i-00Aa6D-RU
 for linux-rockchip@lists.infradead.org; Mon, 22 Mar 2021 00:03:40 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 3D2DA812;
 Mon, 22 Mar 2021 08:03:28 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from desktop-sg5v5ea (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P13108T139929445181184S1616371407324723_; 
 Mon, 22 Mar 2021 08:03:28 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9b16350b0968b3de58eb05bec091c6a2>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: jay.xu@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Date: Mon, 22 Mar 2021 08:03:27 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: =?utf-8?B?6K645YmR576k?= <jay.xu@rock-chips.com>, 
 "Linus Walleij" <linus.walleij@linaro.org>, 
 =?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
 "Catalin Marinas" <catalin.marinas@arm.com>, 
 "Will Deacon" <will@kernel.org>
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 1/2] arm64: remove select PINCTRL_ROCKCHIP from
 ARCH_ROCKCHIP
References: <20210305003907.1692515-1-jay.xu@rock-chips.com>, 
 <20210305003907.1692515-2-jay.xu@rock-chips.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <202103220803269179853@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_000337_847089_F8650EB3 
X-CRM114-Status: GOOD (  10.27  )
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

SGkgSGVpa28KCkkgaGF2ZSBzZWVuIFswXSBwYXRjaCBzaW1pbGFyIHRvIHRoaXMgcGF0Y2gsIGJ1
dCBpcyB0aGVyZSBuZWVkIHRvIHJlbW92ZSBzZWxlY3TCoEdQSU9MSUIgYW5kwqBQSU5DVFJMX1JP
Q0tDSElQIGZyb23CoEFSQ0hfUk9DS0NISVAgPwoKWzBdOmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5l
bC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hpcC9wYXRjaC8yMDIxMDMxNjEzNDA1OS4yMzc3MDgx
LTEtZ2VlcnQrcmVuZXNhc0BnbGlkZXIuYmUvCgpCZXN0IHJlZ2FyZHMKLS0tLS0tLS0tLS0tLS0K
amF5Lnh1QHJvY2stY2hpcHMuY29tCj5QcmVwYXJlIHRvIG1ha2UgcGluY3RybCBkcml2ZXIgb2Yg
cm9ja2NoaXAgdG8gYmUgbW9kdWxlIGFibGUsIHRoaXMgcGF0Y2gKPnJlbW92ZSB0aGUgc2VsZWN0
IG9mIFBJTkNUUkxfUk9DS0NISVAgZnJvbSBBUkNIX1JPQ0tDSElQLgo+Cj5TaWduZWQtb2ZmLWJ5
OiBKaWFucXVuIFh1IDxqYXkueHVAcm9jay1jaGlwcy5jb20+Cj4tLS0KPiBhcmNoL2FybTY0L0tj
b25maWcucGxhdGZvcm1zIHwgMiAtLQo+IGRyaXZlcnMvcGluY3RybC9LY29uZmlnwqDCoMKgwqDC
oCB8IDQgKysrKwo+IDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+Cj5kaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9LY29uZmlnLnBsYXRmb3JtcyBiL2FyY2gv
YXJtNjQvS2NvbmZpZy5wbGF0Zm9ybXMKPmluZGV4IDZlZWNkZWY1MzhiZC4uMDM3MWNjMDJiNDQ4
IDEwMDY0NAo+LS0tIGEvYXJjaC9hcm02NC9LY29uZmlnLnBsYXRmb3Jtcwo+KysrIGIvYXJjaC9h
cm02NC9LY29uZmlnLnBsYXRmb3Jtcwo+QEAgLTIyNyw5ICsyMjcsNyBAQCBjb25maWcgQVJDSF9S
RU5FU0FTCj4gY29uZmlnIEFSQ0hfUk9DS0NISVAKPiBib29sICJSb2NrY2hpcCBQbGF0Zm9ybXMi
Cj4gc2VsZWN0IEFSQ0hfSEFTX1JFU0VUX0NPTlRST0xMRVIKPi0Jc2VsZWN0IEdQSU9MSUIKPiBz
ZWxlY3QgUElOQ1RSTAo+LQlzZWxlY3QgUElOQ1RSTF9ST0NLQ0hJUAo+IHNlbGVjdCBQTQo+IHNl
bGVjdCBST0NLQ0hJUF9USU1FUgo+IGhlbHAKPmRpZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0cmwv
S2NvbmZpZyBiL2RyaXZlcnMvcGluY3RybC9LY29uZmlnCj5pbmRleCAwM2M2MmUxY2IzOTUuLmJm
ODhhYWM3YmNjNiAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvcGluY3RybC9LY29uZmlnCj4rKysgYi9k
cml2ZXJzL3BpbmN0cmwvS2NvbmZpZwo+QEAgLTIxMCwxMSArMjEwLDE1IEBAIGNvbmZpZyBQSU5D
VFJMX09YTkFTCj4gY29uZmlnIFBJTkNUUkxfUk9DS0NISVAKPiBib29sCj4gZGVwZW5kcyBvbiBP
Rgo+KwlzZWxlY3QgR1BJT0xJQgo+IHNlbGVjdCBQSU5NVVgKPiBzZWxlY3QgR0VORVJJQ19QSU5D
T05GCj4gc2VsZWN0IEdFTkVSSUNfSVJRX0NISVAKPiBzZWxlY3QgTUZEX1NZU0NPTgo+IHNlbGVj
dCBPRl9HUElPCj4rCWRlZmF1bHQgQVJDSF9ST0NLQ0hJUAo+KwloZWxwCj4rwqDCoMKgwqDCoMKg
wqDCoMKgIFRoaXMgc3VwcG9ydCBwaW5jdHJsIGFuZCBncGlvIGRyaXZlciBmb3IgUm9ja2NoaXAg
U29Dcy4KPgo+IGNvbmZpZyBQSU5DVFJMX1NJTkdMRQo+IHRyaXN0YXRlICJPbmUtcmVnaXN0ZXIt
cGVyLXBpbiB0eXBlIGRldmljZSB0cmVlIGJhc2VkIHBpbmN0cmwgZHJpdmVyIgo+LS0KPjIuMjUu
MQo+Cj4KPgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
