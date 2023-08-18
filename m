Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD10BC678DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Aug 2023 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zPlIHL9mbHC8bkS2WZjy+xh7Br4Tg7x4ZH8W8M7oPC4=; b=1xXLaaZ2L7uCUk
	xCPYyi3aEc2nU8xMnKhJ3AwJnAXBOcMI3oWOrY4S6ut92zwnFpSwnESANSJMXKwwRZaWKybvTHA9a
	koz0+eeG7G0dO32yt3aygq7O0j/tv0u1YK19TUSFNZSdpjo/l6LpWzdHGuM9iaSFDwgNsKfi8tg0B
	0DRuv7T5D/3Jxqqj2UgqshM+RrWkSDZCt3ij4KzQ5C+wRSYqKBHN6oS+L0lbQJ7GFKmtxraA8jcBN
	p3C8a5QZ7rMaw9JzS9YydUMx8FH4RoeNlfB0ago16Y8wRpLfIyp6EtN0E1gdnoFq2sZ40n0PCADZU
	rMrXvswnn/XrpWQeeJ+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWugt-007ywX-0i;
	Fri, 18 Aug 2023 08:18:43 +0000
Received: from mail.leachkin.pl ([217.61.97.203])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWugp-007yv7-1P
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Aug 2023 08:18:41 +0000
Received: by mail.leachkin.pl (Postfix, from userid 1001)
	id B45EA845A3; Fri, 18 Aug 2023 09:16:28 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=leachkin.pl; s=mail;
	t=1692346611; bh=elHzctRz/z3PfTIhGYJKd0TeBTmca98Y+JNgX4gfsPI=;
	h=Date:From:To:Subject:From;
	b=PiWXcQ+r05VyKfLDc9/d2u1k75vkyOCZZPcOuJRWYZDgT/Qm/ykhsPOdnC9UCKz1B
	 uPL3qLDT77dGBsjvlUEfCbJzkglfBvSH6rCal9o9eZMLTgsbBuWeFaYyOO+nALmQiz
	 t64iVE4CWAmM+mLEvzAYU9Hr3IxqLDmq9V9SyLHspglSeedDbMeMLdxIhtTcpZzJOr
	 BRvvzM3Iq/uPlGWNPlZDiz2ZFzZ+Lxzvk7yIO6F3jMEnDKLO+mL6xFDivuUdMFLUs/
	 SgT2IeK3aeCSLUnQq8BbTSZQpyFLGX6Q0iRviI6Y8rL1N0KvpBG8E0Ejts/Qy7Uev/
	 PsLkMGA36ZYOQ==
Received: by mail.leachkin.pl for <linux-rockchip@lists.infradead.org>; Fri, 18 Aug 2023 08:15:51 GMT
Message-ID: <20230818074501-0.1.4u.cua5.0.v4panwdymx@leachkin.pl>
Date: Fri, 18 Aug 2023 08:15:51 GMT
From: "Jakub Lemczak" <jakub.lemczak@leachkin.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Pytanie_o_samoch=C3=B3d?=
X-Mailer: mail.leachkin.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_011839_659648_455DE396 
X-CRM114-Status: UNSURE (   1.63  )
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
YWxpemFjasSZIGtvc3p0w7N3IGljaCB1dHJ6eW1hbmlhPyAKCgpQb3pkcmF3aWFtLApKYWt1YiBM
ZW1jemFrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
