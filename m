Return-Path: <SRS0=WHqa=CQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=3.0 tests=BAYES_50,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,LOTS_OF_MONEY,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,SUBJ_ALL_CAPS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 718AEC433E2
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 12:07:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F0C42075A
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 12:07:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="3N4zb2tP"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1F0C42075A
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=unituscapital.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Message-ID:Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:
	Content-Description:MIME-Version:Cc:Content-ID:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CzFfL7OKb/wpbZEkKeQ3XXpCvI72gsVl+Vvq0DhBuSQ=; b=3N4zb2tP4bMEQD
	WO8mKWAf1emmK3J+DMPqYMnuVXZrASqqSLi3wbctAHhRIHiUb3sOlsEF/Q/Ae/RL6QMPqlNDIj1ij
	lXm7WwYnZ1Td+JSUyq/82tzhE09h65fH+bVNbXxJjv8Qd26WMSgtsnQEw8pWO9xtMgduVgHSVl9Ul
	f94QnUT6ghcMqdas44RAUDwC7IEXSedtqyVPKM3+Wt6azY2GrvXNwKo6cwtAmJrO2gfjb2XzNOQnA
	TtH95uETVvfgTvJqsKeONkY5XMQViZlu5dqrQ0QrEhyYeVGK6HjCXyJhJXe+EtX5eq7eKPEstcmG9
	ZyQJaa6DX0ONpSq7tTtQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFFvp-0005xk-5y; Mon, 07 Sep 2020 12:07:33 +0000
Received: from [165.22.66.44] (helo=mail.seen.ps)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFFvm-0005wa-MS
 for linux-rockchip@lists.infradead.org; Mon, 07 Sep 2020 12:07:31 +0000
Received: from [192.168.8.10] (ip168-243-231-195.intercom.com.sv
 [168.243.231.195])
 by mail.seen.ps (Postfix) with ESMTPA id A6797CD883
 for <linux-rockchip@lists.infradead.org>; Mon,  7 Sep 2020 15:07:28 +0300 (IDT)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: GREETINGS TO YOU. 
To: linux-rockchip@lists.infradead.org
From: "Angel Investors" <info@unituscapital.com>
Date: Mon, 07 Sep 2020 06:07:24 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200907_080730_832971_AAE2748E 
X-CRM114-Status: UNSURE (  -4.20  )
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
Reply-To: andrewmacklin12@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Message-ID: <E1kFFvp-0005xk-5y@merlin.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QXR0ZW50aW9uIFRvIEVtYWlsIDogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpH
b29kIERheSBTaXIsCk91ciBHcm91cCBoYXZlIHRoZSBmaW5hbmNpYWwgY2FwYWJpbGl0eSB0byBm
aW5hbmNlIGFueSBpbnZlc3RtZW50IHBvcnRmb2xpbyBhcyBmYXIgYXMgaXMgZ2VudWluZSwgYWxs
IHdlIG5lZWQgaXMgYSBjYXBhYmxlIGJ1c2luZXNzIHBhcnRuZXIgdGhhdCBwb3NzZXNzZXMgaW52
ZXN0bWVudCBzdHJhdGVnaWVzIGZvciBwcm9maXRhYmxlIGJ1c2luZXNzIGluZm9ybWF0aW9uIGZv
ciBnb29kIHR1cm4gb3ZlciB3aXRoaW4gMTAtMzB5ZWFycy4gT3VyIFBhcnRuZXJzIGFyZSB3aWxs
aW5nIHRvIGludmVzdCAxMG1pbGxpb24g4oCUIDViaWxsb24gVVNELiBXZSBjYW4gcHJvdmlkZSBw
cm9vZiBvZiBmdW5kcyBvbiBkZW1hbmQsIGFmdGVyIGNlcnRpZmljYXRpb24gb2YgeW91ciBkb2N1
bWVudHMvZGV0YWlscy4gUGxlYXNlIHdyaXRlIG1lIGJhY2sgaWYgeW91IGNhbiB3b3JrIHdpdGgg
bWUgb24gdGhpcyBwcm9qZWN0LiBUaGFuayBZb3UsCkJlc3QgUmVnYXJkcwpBbmRyZXcgTWFja2xp
bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
