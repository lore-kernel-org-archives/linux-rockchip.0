Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B9BDC88E64
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2026 02:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tU2QmfyyZpzyd1aFStmHOhqjRC+oP6POuFP2aAx8+JE=; b=PBkK9iRrkibozG
	L+PCNa+zV4cUCYyAAwxJRkc5MVHVHc/dHSq3uo7NSPe30DFIf6J52pTPbpknzselyra4ArUOv1RVe
	2QcAn7DQh4QNYHP5uQXubWC6vSeSRPf1w0xt0JvljEfbi7Og4PmCCFKu9izoTOaP6wBaGszFMXc9K
	5tj9Zwh97+aqOzdL/QVmONJ7yrX5cUloNCXlFK5Jh5Hn3LgsMe4twMSeUZz2LNcENGsaWoriGVP5b
	1AWcJi17s8T0+v+Y5GnLGdswu+KZ3ZSTqw1PmlrrXxs19O47aj6mlatvEKJadiliyfLWQ8XQbqaDy
	rNsKIOZpuWw+cpH2pN5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5wKf-00000002AgD-46T5;
	Mon, 14 Sep 2026 02:22:09 +0000
Received: from rastrek.com.br ([159.65.189.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5wKd-00000002Afr-1Ckk
	for linux-rockchip@lists.infradead.org;
	Mon, 14 Sep 2026 02:22:08 +0000
Received: from rastrek.com.br (localhost.localdomain [127.0.0.1])
	by rastrek.com.br (Postfix) with ESMTP id 2F2E21AC45B
	for <linux-rockchip@lists.infradead.org>; Sun, 13 Sep 2026 11:06:51 +0000 (UTC)
Authentication-Results: rastrek.com.br (amavis) (amavisd-new);
	dkim=pass (1024-bit key) header.d=rastrek.com.br
Received: from rastrek.com.br ([127.0.0.1])
	by rastrek.com.br (rastrek.com.br [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C7WjQszkBIOt for <linux-rockchip@lists.infradead.org>;
	Sun, 13 Sep 2026 11:06:50 +0000 (UTC)
Received: from rastrek.com.br (unknown [91.217.249.1])
	by rastrek.com.br (Postfix) with ESMTPSA id 8CDC81F2FC0
	for <linux-rockchip@lists.infradead.org>; Sat, 12 Sep 2026 07:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rastrek.com.br;
	s=default; t=1789199690;
	bh=vSZIkmUIfKxQKUNMjsZ7esNZ4nNjWlsziqY5zae99xQ=; h=From:To:Subject;
	b=ed/PKzl0tEC29zy8qi98ZIWJBFvManjiA4F6ImiwWev0TMGA+a5XLC6aQDp1jA7Hh
	 zYiIS8SohdKCvtHRbtcNdy8niy019wH76Z/oTDC+eIpxJWD4x48l/+VEKhXFkq60ak
	 nDaiVFB51y48UrF9KdMg1kDyJwbWDZ00CMzbOUgE=
Authentication-Results: rastrek.com.br;
	spf=pass (sender IP is 91.217.249.1) smtp.mailfrom=suporte@rastrek.com.br smtp.helo=rastrek.com.br
Received-SPF: pass (rastrek.com.br: connection is authenticated)
From: "Dietmar Hopp"<suporte@rastrek.com.br>
To: linux-rockchip@lists.infradead.org
Subject: Aw
Date: 12 Sep 2026 01:54:17 -0600
Message-ID: <20260912015416.3E6BF30B4313D9F7@rastrek.com.br>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_192207_429878_68EE822E 
X-CRM114-Status: UNSURE (  -0.19  )
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
Reply-To: dietmarhopp_1@outlook.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

U2VociBnZWVocnRlIERhbWVuIHVuZCBIZXJyZW4sCgppY2ggbcO2Y2h0ZSBTaWUgZGFyw7xiZXIg
aW5mb3JtaWVyZW4sIGRhc3MgU2llIGFscyBlaW5lciBkZXIgCkVtcGbDpG5nZXIgbWVpbmVzIFNw
ZW5kZW5wcm9ncmFtbXMgYXVzZ2V3w6RobHQgd3VyZGVuLiBJaHJlIEUtTWFpbC0KQWRyZXNzZSB3
dXJkZSBmw7xyIGRpZXNlIFp1d2VuZHVuZyBwZXIgWnVmYWxsc3ByaW56aXAgZXJtaXR0ZWx0LiAK
SW0gUmFobWVuIGRpZXNlciBWZXJlaW5iYXJ1bmcgZXJoYWx0ZW4gU2llIDI1ICUgbWVpbmVyIFNw
ZW5kZSBpbiAKSMO2aGUgdm9uIDIuMDAwLjAwMCwwMCDigqwuIEJpdHRlIGFudHdvcnRlbiBTaWUs
IGZhbGxzIFNpZSAKaW50ZXJlc3NpZXJ0IHNpbmQsIGRhbWl0IHdpciBkaWUgbsOkY2hzdGVuIFNj
aHJpdHRlIGVpbmxlaXRlbiAKa8O2bm5lbi4KCk1pdCBmcmV1bmRsaWNoZW4gR3LDvMOfZW4KQ0VP
IFNBUCBTRSBMaW1pdGVkLApEaWV0bWFyIEhvcHAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
