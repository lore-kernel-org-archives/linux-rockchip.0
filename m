Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DDA4CA0FED
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 07:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h5iPCWIPpjsD5nzjO/77AaqQESt2sAPQ9M4/D8t6OHY=; b=QklWDeHVCniEOH
	1jCLy45S40cpa6Cvn4cwH+wdk2ci2VjHXWrtA/Hezu/udzFvWD0RpxwMIugKFsm56aLyYEplgQ+vc
	wW/AZkybh/Hwq32Nnyn8NyOUR4P2BO/E0k9jNabET6HyaCWKPzM8QZfRHuDPxU366RggK+zgBKt2x
	60ftdVSGBMuqqpnLteTot9Ez8sAjVLuKpFnSC6VJppAmuNZZcTFt+SCCv2VETej6OnFmeucpT/SZN
	izPqqmy5t2CKHtwY6BUsWMKGsRf1HIJJHEjxqyMkNRL+uOFgoNylYnZMfwW983sF2F4atEVaoXZ1e
	iWhpI7VJf+U3kkSoK2QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwFNc-0000000CbMN-08jf;
	Wed, 10 Sep 2025 07:36:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwFNb-0000000CbLo-1oUy
	for linux-rockchip@bombadil.infradead.org;
	Wed, 10 Sep 2025 07:36:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=7Cq0DHB5k0l5CQs6BVZUFt4lPJTtmejSvjf3feeP/U8=; b=bIJwDq7OOIdx99FpKn2Q6SUw5t
	vQise+cjKCjbN29uUq126YibL25mmm1hBBx8lJywaDJak2Bq9G736FjHpoQ77cGzIOMCQVpkCeXM5
	LlHv3jhB/HpRiqw2GWigJDVncui1PigRRY5J+2QhDzEpyrm5gk7G2VlwOYTTKziaEMJPzqg0h42p9
	18S6avT/35JIAC3FK7i5ubyD07F9FCwkAP6cVbufQODur77gNwJVXcVhp/4C/0Q2J7OdxQtDydibG
	xvnZc39T7FkMNuqxoxsAdxOGln4b8ioRSmEfHgCMx6F/DidBU6pcnXgsB6hdcMavXvVffKYiTjsZH
	h4Dq25Qg==;
Received: from mail.bizosto.pl ([151.80.59.16])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwFNY-00000005ljx-3MXn
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Sep 2025 07:36:34 +0000
Received: by mail.bizosto.pl (Postfix, from userid 1002)
	id 6E3F023F89; Wed, 10 Sep 2025 07:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bizosto.pl; s=mail;
	t=1757489769; bh=7Cq0DHB5k0l5CQs6BVZUFt4lPJTtmejSvjf3feeP/U8=;
	h=Date:From:To:Subject:From;
	b=xX0Vh9K+g4lNEwu6Yv3K6Jzjsj2FLIA1o0fMK11Hczo+gFkDq3amFMEj1Jvrh7aIY
	 TmhbYA/vS+ShXFewwrGWutujr4LlocrPIQLdHjMs56Wt60Z7aXWhqYf/UgXFRGipTM
	 GmQ8iU58+4aIXhR1F50qA7X5cBVzlTnPwyTTqZCq3GZ1dGErVhXw1ijQikq3AB9u1n
	 7c2C6JK9ktRtiPDkhs4AVvBELafBMsZr3AcPCzHmdtQh1d3Gpv0MI7tuXzZvAVlSD/
	 17AXyEYt6l1I2ICQT864aVP8gQ98pmnLsj8ZXu4s7mbVdM4x24kTa4eyZhJ3CeGu3h
	 kCKXMI7VkOdbA==
Received: by mail.bizosto.pl for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 07:35:57 GMT
Message-ID: <20250910064500-0.1.3v.1ahuq.0.3cpcjv5sk5@bizosto.pl>
Date: Wed, 10 Sep 2025 07:35:57 GMT
From: "Kamil Nakielski" <kamil.nakielski@bizosto.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Zatrudnienie nowej osoby
X-Mailer: mail.bizosto.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_083632_925863_101B0F7B 
X-CRM114-Status: UNSURE (   1.65  )
X-CRM114-Notice: Please train this message.
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

RHppZcWEIGRvYnJ5LAoKa29udGFrdHVqxJkgc2nEmSB3IHNwcmF3aWUgemF0cnVkbmllbmlhIHBy
YWNvd25pa8OzdyB6IFVrcmFpbnkgdyBQYcWEc3R3YSB6YWvFgmFkemllLgoKU3RhbGUgb2JzxYJ1
Z3VqZW15IGZpcm15IHByb2R1a2N5am5lIHcgdHltIHRlbWFjaWUuIEplxZtsaSBwb3RyemVidWpl
Y2llIFBhxYRzdHdvIGRvZGF0a293ZWdvIHBlcnNvbmVsdSBkbyBwcmFjeSwgcHJvc3rEmSBvIHdp
YWRvbW/Fm8SHLiAKCgpQb3pkcmF3aWFtCkthbWlsIE5ha2llbHNraQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
