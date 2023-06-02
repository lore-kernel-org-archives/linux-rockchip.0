Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DDB1C7EE29
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Jun 2023 08:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2mPxsQU3efx4UDayrvQHcylQ4bXQ+ckwrcrNKjxjU98=; b=MTZN4JLHPMrjKN
	o/k1l4L0+9FRw4sTeWXHv4hJ7+RU2DcDZKHU1I3panAkPay0wm+3hCZ+s1WMXnN2MZLqbXM9iALR8
	y/6KO8CiAO93T7ru8SnslzTChvOpELC/Q9aCYaL0ux/d4yiHEC2iNLmRSq2Uasqf2gW7PdmbU6AiW
	C0dz4UNYHl0yr4bK/Dm17udN2EbFrfh/TGCcX4+I7mcXAOhO/+MbB8aSp1sVEfe0/r34Z6Hb9LpW+
	o/RaV+82ZTfTk+ENuw67jY3ZqceXzSjDIt37d7RAXFMaNE7GVtwiCkKtKGx71P6L6AzRP0nHzshEB
	Yn3+Zecq5+JBcpu1lZFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q50BV-0069sj-1l;
	Fri, 02 Jun 2023 08:30:57 +0000
Received: from mail.webtopbits.pl ([195.231.64.176])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q50BS-0069rF-2P
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Jun 2023 08:30:56 +0000
Received: by mail.webtopbits.pl (Postfix, from userid 1001)
	id 500DAA3899; Fri,  2 Jun 2023 09:30:46 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=webtopbits.pl;
	s=mail; t=1685694647;
	bh=Eh8ECMiYd4baGAwPAzhz8mhJACXX7NSRkYjh+plaY18=;
	h=Date:From:To:Subject:From;
	b=AhPoqBVamQavrJqy5EYx2PFlOv/tr4mH50LytnMhmUE56Upu0jDdOx8pUMeRbTAT9
	 io0LEyhGSalprPQLlri3SjQRyWD0QRc2pcLGVhuvfkfH0lrs2QITTQT6ABGN86IlBn
	 II9dT06Bo6r+X5RV2y8bhHgLoDIihSY2BY07/gtngNPFOFMl4qUZLSPpIG8U9HNaf4
	 B6bitQSgeTylPwT8me0VQGQ+mqUb47H1JnbhqiPO3DM+em195SHJdhJsXw0Q+l2WRm
	 5fI1FCVO1PGcsrVpTrvA/HOOCIwqN6wKYcDWxCdBt5rIfXucNGx5SFY3aR3sWHRQhE
	 qk9VnJ29M6uIQ==
Received: by mail.webtopbits.pl for <linux-rockchip@lists.infradead.org>; Fri,  2 Jun 2023 08:30:38 GMT
Message-ID: <20230602085530-0.1.8w.5jxg.0.tz31tvop8o@webtopbits.pl>
Date: Fri,  2 Jun 2023 08:30:38 GMT
From: "Kamil Durjasz" <kamil.durjasz@webtopbits.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Wy=C5=BCsza_konwersja_w_e-sklepie_?=
X-Mailer: mail.webtopbits.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_013055_039503_0DBEA7C8 
X-CRM114-Status: UNSURE (   1.89  )
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

RHppZcWEIGRvYnJ5LAoKdyBqYWtpIHNwb3PDs2IgZG9jaWVyYWrEhSBQYcWEc3R3byBkbyBvZGJp
b3Jjw7N3PwoKVHdvcnp5bXkgcG90xJnFvG5lIG5hcnrEmWR6aWEgc3ByemVkYcW8eSwga3TDs3Jl
IHBvendhbGFqxIUga29tcGxla3Nvd28gcm96d2nEhXphxIcgcHJvYmxlbXkgcG90ZW5jamFsbnlj
aCBrbGllbnTDs3cgaSBza3V0ZWN6bmllIHdwxYJ5bsSFxIcgbmEgaWNoIGRlY3l6amUgemFrdXBv
d2UuIAoKU2t1cGlhbXkgc2nEmSBuYSBQYcWEc3R3YSBwb3RyemViYWNoIHp3acSFemFueWNoIHog
b2JzxYJ1Z8SFIHNrbGVwdSwgb2N6ZWtpd2FuaWFjaCBpIHBsYW5hY2ggc3ByemVkYcW8b3d5Y2gu
IFN6Y3plZ8OzxYJvd28gZG9wYXNvd3VqZW15IGdyYWZpa8SZLCBmdW5rY2pvbmFsbm/Fm2NpLCBz
dHJ1a3R1csSZIGkgbWlrcm9pbnRlcmFrY2plIGRvIFBhxYRzdHdhIGdydXB5IGRvY2Vsb3dlaiwg
Y28gcHJ6ZWvFgmFkYSBzacSZIG5hIG9jemVraXdhbmUgcmV6dWx0YXR5LgoKQ2jEmXRuaWUgcHJ6
ZWRzdGF3acSZIGRvdHljaGN6YXNvd2UgcmVhbGl6YWNqZSwgYWJ5IG1vZ2xpIFBhxYRzdHdvIHBy
emVrb25hxIcgc2nEmSBvIG5hc3p5Y2ggbW/FvGxpd2/Fm2NpYWNoLiBNb2fEmSBzacSZIHNrb250
YWt0b3dhxIc/CgoKUG96ZHJhd2lhbQpLYW1pbCBEdXJqYXN6CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
