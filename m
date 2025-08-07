Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4798BC87FCF
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Aug 2025 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i43lf1vmdMbCCvwcfxVpE1QvnRLU/qmrD9az2sxOdHY=; b=O29vSJKx0QYt0Q
	Oj/3oYmiPWMKC0v5IpWtPAVL2WlADedv2rOba/oyyRlBtr7UryZQsVtAZr3looPqWQHR0Wa6N5VOJ
	WnQkT/jBFWvo7WN00cYOckdnYlaEt+KriNZR+hBwCcHcXbjl56EXHGtkVy8JM3d8A5KvhnLp4YEF7
	IeL2lX/nGIUAvNRTuuSUxXVvbCBNHeXsqrpLIOfNi4J2m2KW3kGmdLnti92NA0quPNtUWVZJnOnQ4
	dS4Ii2QFIpG5+v7gLQQXP8u8of7csZmH15Yf80phc6si6B+0TvcGCK4JNxk6OZm/JSP6xr2Eupv9t
	Eblt0YJl31hnKHv/o+oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujviZ-0000000HYna-1CJx;
	Thu, 07 Aug 2025 08:11:19 +0000
Received: from mail.successa.pl ([162.19.205.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvi3-0000000HYl1-1ngO
	for linux-rockchip@lists.infradead.org;
	Thu, 07 Aug 2025 08:10:48 +0000
Received: by mail.successa.pl (Postfix, from userid 1002)
	id 7324F2E088; Thu,  7 Aug 2025 09:57:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=successa.pl; s=mail;
	t=1754553540; bh=Q6Mp/vCJCiZNgk6fb7utkqIErbcoVoR/CugPofoeCtU=;
	h=Date:From:To:Subject:From;
	b=jsBTG9Iw1Vi7OEvCQlK2m7Wph0MKqP+P6EjdEB6kDREFlWlVhurxiN8cFPuuTzxft
	 VRiN1F+gQCx4Dzu77pKRpV3LMe7GlA5XBDkiXZaoi4EdcqgMW9vGCX2yKlpx0x4MHk
	 6Vihyh/qDC8mCeGPQf4tHW8tdVbESp3M0xLtzP+ZD4GVxp6IGCB1UoPR5cRy6yiWjN
	 9gxTqDe3253MQQgSPlVFw0C0Bo6SrBggX8GgrEjAds4EK7fdPri6wM+zEYAubjMG3N
	 +Wfazzk0ieXrOHg+3uIIS8TQzav3fA5vdEoTQTzn4HVFCFJczzlBS6ZtShr+q8nZfj
	 sBVnYLslzfCrw==
Received: by mail.successa.pl for <linux-rockchip@lists.infradead.org>; Thu,  7 Aug 2025 07:55:49 GMT
Message-ID: <20250807084501-0.1.ju.2jpdu.0.2r6hd3nsh1@successa.pl>
Date: Thu,  7 Aug 2025 07:55:49 GMT
From: "Adam Drzewiecki" <adam.drzewiecki@successa.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Pytanie_o_samoch=C3=B3d_?=
X-Mailer: mail.successa.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_011047_623595_6998638D 
X-CRM114-Status: UNSURE (   0.23  )
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

RHppZcWEIGRvYnJ5LAoKQ3p5IGludGVyZXN1amUgUGHFhHN0d2Egcm96d2nEhXphbmllIHVtb8W8
bGl3aWFqxIVjZSBtb25pdG9yb3dhbmllIHNhbW9jaG9kw7N3IGZpcm1vd3ljaCBvcmF6IG9wdHlt
YWxpemFjasSZIGtvc3p0w7N3IGljaCB1dHJ6eW1hbmlhPyAKCgpQb3pkcmF3aWFtCkFkYW0gRHJ6
ZXdpZWNraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
