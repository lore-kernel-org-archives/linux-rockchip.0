Return-Path: <SRS0=0Sn9=DR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 656FDC433DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2020 16:50:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A3F9722404
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2020 16:50:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ngGr5BwC"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A3F9722404
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9QIAQzrA31kwE8soV7ezW57wg4R+Qu1K246EI4Eu4mE=; b=ngGr5BwCrZv3PWBDhzbnsRhj5N
	2mswa0+bObyumjah/UIkL3FVKZVYQ4mPLNNQAWwxg0ekZYWWUgFiUQMHm9HdkxXM684KoycrhHuIP
	2/gMX49c047MQj6HtjCXyGAW5qq8j0GgtJwRA8RzLALfEEiLSxoBS18yw4Ll2drTCdPU5m01iXos+
	K90u3WX4CtcT3tCgPMFQewgwJEK0+pScgPh4hTDRGnKacyKHkTk0hN4UYcIzpnmvc67QYt/wvGlxh
	CNXoYMEzNwTGhLlGaIMpMdqKgFL80eVPXYlLw2u787xknE5DlsbDiRebCaGk1mRcE1TkUEtFi2fBy
	7HDi+b6A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kRI4O-00035H-SF; Sat, 10 Oct 2020 16:50:08 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRI4M-00034w-9C
 for linux-rockchip@lists.infradead.org; Sat, 10 Oct 2020 16:50:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 961013CC0CC0;
 Sat, 10 Oct 2020 18:31:43 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AF5gJPBveXzz; Sat, 10 Oct 2020 18:31:41 +0200 (CEST)
Subject: =?UTF-8?B?UmU6IOWbnuWkjTogZHVwbGljYXRlZCBhc29jIHdpZGdldCBpbiBwaW5l?=
 =?UTF-8?Q?bookpro_dts?=
To: =?UTF-8?B?5bygIOWugQ==?= <zhangn1985@outlook.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "t.schramm@manjaro.org" <t.schramm@manjaro.org>
References: <DM6PR16MB3163A1F904823FFA424C52B1CD250@DM6PR16MB3163.namprd16.prod.outlook.com>
 <SYCPR01MB37769E1B4C7E96DE77411CDCCD090@SYCPR01MB3776.ausprd01.prod.outlook.com>
From: Tobias Schramm <t.schramm@manjaro.org>
Message-ID: <2b5ad81f-488a-1ff0-851a-4a838cbe923a@manjaro.org>
Date: Sat, 10 Oct 2020 18:29:10 +0200
MIME-Version: 1.0
In-Reply-To: <SYCPR01MB37769E1B4C7E96DE77411CDCCD090@SYCPR01MB3776.ausprd01.prod.outlook.com>
Content-Language: en-US-large
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201010_125006_438538_C5AEF433 
X-CRM114-Status: UNSURE (   4.34  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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

SGkgTmluZywKCnRoZSB3aWRnZXQgcHJvcGVydHkgaXMgYSBsaXN0IG9mIHBhaXJzLiBUaGUgZmly
c3QgZW50cnkgb2YgZWFjaCBwYWlyIGlzCnRoZSBuYW1lIG9mIHRoZSB3aWRnZXQgdGVtcGxhdGUs
IHRoZSBzZWNvbmQgZW50cnkgZGVub3RlcyB0aGUgbmFtZSB0aGF0CmlzIGFzc2lnbmVkIHRvIHRo
ZSB3aWRnZXQgY3JlYXRlZCBmcm9tIHRoZSB0ZW1wbGF0ZS4gU2VlIFsxXS4KVGh1cwo+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIlNwZWFrZXIiLCAiU3BlYWtlciI7
CnNpbXBseSBjcmVhdGVzIGEgd2lkZ2V0IGNhbGxlZCAiU3BlYWtlciIgZnJvbSB0aGUgU3BlYWtl
ciB3aWRnZXQKdGVtcGxhdGUsIG5vdCB0d28gd2lkZ2V0cyBjYWxsZWQgIlNwZWFrZXIiLgoKCkJl
c3QgcmVnYXJkcywKClRvYmlhcwoKWzFdCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4
L3Y1LjktcmM4L3NvdXJjZS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQv
d2lkZ2V0cy50eHQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
