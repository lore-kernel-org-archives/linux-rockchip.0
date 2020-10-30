Return-Path: <SRS0=455t=EF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57866C4741F
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 15:28:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7DBFD20725
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 15:28:57 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Ahu+GARK";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="UVAoD+Cy"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7DBFD20725
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k9X6u92wZX64eApk3C7Iat2qX+Vodl+P2shQUWztTug=; b=Ahu+GARKdF1hdjT+AlVL1Tj4H
	LQcR2cag0LQRzctN2+m5q2ryoysfFIdeYDAH0vAchgFrkWJucaebmAoq2+b8BGZuFTA3IYigcMF6H
	+zW0lNLwcez6fqYkIIy2dXnAQrkRW3pXrPUqmOi1BR+2xLLKxj4mbP0wInXIbOSmQtQsMpD6YZlGt
	hZLGqvGO4HuJ+1NI0uLSeG8P2u3xAFXCFjDju64VlapDjUzbXNoGTM7B/KiiFhE3Q412+5xAE9sHh
	mLUiNXQnuruvAVVu/tP7G/nHqCrwzKedA1WOyOTsW8ExyTujiDzC+gip1Yi9aRG/fH6F1SFwQt4y6
	VL8EtvgiA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYWKd-0006kQ-Qf; Fri, 30 Oct 2020 15:28:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYWKX-0006hq-CF
 for linux-rockchip@merlin.infradead.org; Fri, 30 Oct 2020 15:28:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=u3OttgpudljBMHHMnCWDO2g/0y+qYJE2oY8jpv+urDE=; b=UVAoD+CyKFO9HpgTnwOvvGnxui
 o9sliffs1efDxmrx5RqINgTjCQYx16U7cI335mJ+sTLySjQh5mJt34KSPBNehINH8l6WNY4SZWzS1
 eSeN6GPUIIvC8Ux0oMnYXQESRqXOCxVFAGmdjr9piCnL07Vkt1KfhTJKdZc/U9h/u+P+NzsFVYtEg
 XR0HwGBhHsZXMGSo6xQrKC2TOsGmj03YzBIX6dyXkGltkASE/A2jngQmbreJP9L0noSAekTHYse9u
 dgaMAAjh2cD/juYq/QJRYFG6/y52MzRqGXFxh3qWn1f4DT7J+qCu6oj9UYBTyMdfi8eQBxiWTr0ma
 voiXtUuQ==;
Received: from regular1.263xmail.com ([211.150.70.201])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYWKS-0003Ji-8Q
 for linux-rockchip@lists.infradead.org; Fri, 30 Oct 2020 15:28:40 +0000
Received: from localhost (unknown [192.168.167.8])
 by regular1.263xmail.com (Postfix) with ESMTP id 4725C9DB;
 Fri, 30 Oct 2020 23:28:18 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.108] (unknown [112.49.232.236])
 by smtp.263.net (postfix) whith ESMTP id
 P23413T140693624305408S1604071696272382_; 
 Fri, 30 Oct 2020 23:28:17 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c5c82377ba17bf42a590956538017db9>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: michael@amarulasolutions.com
X-SENDER-IP: 112.49.232.236
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v4 6/8] arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
To: Jagan Teki <jagan@amarulasolutions.com>,
 philipp.tomsich@theobroma-systems.com, sjg@chromium.org
References: <20201028133348.241839-1-jagan@amarulasolutions.com>
 <20201028133348.241839-7-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <4ab009e5-187e-a9d2-fb01-dda99c9a2e88@rock-chips.com>
Date: Fri, 30 Oct 2020 23:28:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201028133348.241839-7-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_152837_609202_34202746 
X-CRM114-Status: GOOD (  18.49  )
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, sunil@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIDIwMjAvMTAvMjgg5LiL5Y2IOTozMywgSmFnYW4gVGVraSB3cm90ZToKPiBFbmdpY2FtIEMu
VE9VQ0ggMi4wIGlzIGFuIEVESU1NIGNvbXBsaWFudCBnZW5lcmFsIHB1cnBvc2UKPiBjYXJyaWVy
IGJvYXJkIHdpdGggY2FwYWNpdGl2ZSB0b3VjaCBpbnRlcmZhY2UuCj4KPiBHZW5hcmFsIGZlYXR1
cmVzOgo+IC0gVEZUIDEwLjEiIGluZHVzdHJpYWwsIDEyODB4ODAwIExWRFMgZGlzcGxheQo+IC0g
RXRoZXJuZXQgMTAvMTAwCj4gLSBXaWZpL0JUCj4gLSBVU0IgVHlwZSBBL09URwo+IC0gQXVkaW8g
T3V0Cj4gLSBDQU4KPiAtIExWRFMgcGFuZWwgY29ubmVjdG9yCj4KPiBTT00ncyBsaWtlIFBYMzAu
Q29yZSBuZWVkcyB0byBtb3VudCBvbiB0b3Agb2YgdGhpcyBDYXJyaWVyIGJvYXJkCj4gZm9yIGNy
ZWF0aW5nIGNvbXBsZXRlIFBYMzAuQ29yZSBDLlRPVUNIIDIuMCBib2FyZC4KPgo+IEFkZCBzdXBw
b3J0IGZvciBpdC4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFz
b2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgVHJpbWFyY2hpIDxtaWNoYWVs
QGFtYXJ1bGFzb2x1dGlvbnMuY29tPgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZzxrZXZlci55YW5n
QHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4gQ2hhbmdlcyBmb3IgdjQ6
Cj4gLSBub25lCj4KPiAgIGFyY2gvYXJtL2R0cy9weDMwLWVuZ2ljYW0tY3RvdWNoMi5kdHNpIHwg
OCArKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+ICAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2R0cy9weDMwLWVuZ2ljYW0tY3RvdWNoMi5kdHNpCj4KPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3B4MzAtZW5naWNhbS1jdG91Y2gyLmR0c2kgYi9hcmNo
L2FybS9kdHMvcHgzMC1lbmdpY2FtLWN0b3VjaDIuZHRzaQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
Cj4gaW5kZXggMDAwMDAwMDAwMC4uNTg0MjViMWU1NQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9h
cmNoL2FybS9kdHMvcHgzMC1lbmdpY2FtLWN0b3VjaDIuZHRzaQo+IEBAIC0wLDAgKzEsOCBAQAo+
ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKPiArLyoKPiAr
ICogQ29weXJpZ2h0IChjKSAyMDIwIEVuZ2ljYW0gc3JsCj4gKyAqIENvcHlyaWdodCAoYykgMjAy
MCBBbWFydWxhIFNvbHV0aW9ucwo+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjAgQW1hcnVsYSBTb2x1
dGlvbnMoSW5kaWEpCj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgInB4MzAtZW5naWNhbS1jb21tb24u
ZHRzaSIKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
