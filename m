Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A6B1C61DBD
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Aug 2026 23:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version
	:Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i7cqZdPprs5hxQuWYaBP/0/jaBk1sseyjX9EwBYvWFA=; b=kTMp8CkhsJ+S+m
	JIbd5Hbmy8d+OcJ6UmIs20z5Nv+iNM2rNChdl3AB9eM44muheOG5K65P3kMWrOY5TJ68mUZzVSxRU
	kDGqu1M5EA5C6ivHNtRTEl1VXqRwWIhLSMo1HzVcs7p+ATJlndRuzdgbEtQPfwkqCg6+OIqI0H/Sf
	yvOcGv8GzdOpZu7CTzs2ECrOBCzHxdQUKeKV6zkXRWG2s17OB/ygrMV0cLRdCUyMD1BmDEzER/es0
	tkRZ6LixdULwyynIqbb7uV21xN26UJXre909nUU4PBjKMNBxPu7kNFm7nzDU6Ixec7N4DAzpFUCQk
	O54DXEUDKObOzRB39t+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x06CS-00000006WDV-03ss;
	Fri, 28 Aug 2026 23:41:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x06CQ-00000006WDG-39Sy;
	Fri, 28 Aug 2026 23:41:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7869D602CC;
	Fri, 28 Aug 2026 23:41:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2BEDDC2BCF4;
	Fri, 28 Aug 2026 23:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787960489;
	bh=szZYi1/PWtC6cof6wC853VNeZydNhRJNJ58cnUeVUBE=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=mp85lLzu34Yt7/wEigYFyn1/zS7sT2T0FaXc9D3+kjgsvPUiWPrp9fDzIUcVTRQHH
	 ZOKK4EnjLIy2Dipzg0ljg4aMSB7NG/c9G6U9ADHnXXZppm5Q0/m1bbVh+xeWoCFA+m
	 OnX4YvG8E1zP/YgWRlEa/3NV3VXtXv7lxamaf3N5mLNCMsi7WicygD8tNIlYiQelkR
	 1C2Ge/ljJQix7g73oxbeZLQNDIcCjhusR/m6xM4t2YZq15vc+qb554DRPw+iLt4EGZ
	 XkwmNuO2uzficgy/UGU8/1DHkyF0XOVh2XKp6zFykvxzEoaWIQaaKgN1O3jE7u5/9b
	 uDnVI8Heu8uJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1325AC61DBD;
	Fri, 28 Aug 2026 23:41:29 +0000 (UTC)
From: Johan Jonker via B4 Relay <devnull+jbx6244.gmail.com@kernel.org>
Date: Sat, 29 Aug 2026 01:40:57 +0200
Subject: [PATCH] ARM: rockchip: smp: enable CPU1 for rk3066a
MIME-Version: 1.0
Message-Id: <20260829-cpu-v1-1-33dca576db92@gmail.com>
X-B4-Tracking: v=1; b=H4sIAIgckmoC/x2Myw5AMBAAf0X2rAn19ivi0NZiD0p2EYn4d+U4m
 cncIMiEAm10A+NJQqsPkMYRuNn4CRUNgUEnukxq3Si3HcoVaW0HbGxeZRBKawSVZePd/LWLkR3
 5ExvjSNe/7/rneQFSUuj+bgAAAA==
To: Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?H=C3=BCseyin_BIYIK?= <boogiepop@gmx.com>, 
 Johan Jonker <jbx6244@gmail.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787960488; l=1108;
 i=jbx6244@gmail.com; s=20260824; h=from:subject:message-id;
 bh=Q4ZSXnEGPX/xMD0x0AdrlN53Gm6CKYRCS3MOUSLsunY=;
 b=Vw6eld+44Gh/khFTRVcv/sOa5YWLdfmEdWq01JtLn4DNUXt+gABYGzH9ZTyfxX2eCa+C2CNu0
 VDZe77oCt0WAimJY5KI+u9V3ya0gu5smP2WQO5UaK52asUC0kxxqc/7
X-Developer-Key: i=jbx6244@gmail.com; a=ed25519;
 pk=MK5Flx1ndjAF0uwXdNm8VvvoghD4KWCNd2hQE8QGyl0=
X-Endpoint-Received: by B4 Relay for jbx6244@gmail.com/20260824 with
 auth_id=971
X-Original-From: Johan Jonker <jbx6244@gmail.com>
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
Reply-To: jbx6244@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTogSMO8c2V5aW4gQklZSUsgPGJvb2dpZXBvcEBnbXguY29tPgoKUkszMDY2YSBDUFUxIGZh
aWxzIHRvIGNvbWUgb25saW5lLiBGaXggYnkgdXNpbmcKYSBzaW1pbGFyIG1haWxib3ggY29uc3Ry
dWN0aW9uIGFzIGluIHVzZSB3aXRoCm90aGVyIFJvY2tjaGlwIFNvQ3MuCgpTaWduZWQtb2ZmLWJ5
OiBIw7xzZXlpbiBCSVlJSyA8Ym9vZ2llcG9wQGdteC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvaGFu
IEpvbmtlciA8amJ4NjI0NEBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9w
bGF0c21wLmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcGxhdHNtcC5jIGIv
YXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9wbGF0c21wLmMKaW5kZXggZjY1OWQ4OTRiZmFlLi5kN2Qw
ODBjMjlmM2MgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcGxhdHNtcC5jCisr
KyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcGxhdHNtcC5jCkBAIC0xMzMsNyArMTMzLDggQEAg
c3RhdGljIGludCByb2NrY2hpcF9ib290X3NlY29uZGFyeSh1bnNpZ25lZCBpbnQgY3B1LCBzdHJ1
Y3QgdGFza19zdHJ1Y3QgKmlkbGUpCiAJaWYgKHJldCA8IDApCiAJCXJldHVybiByZXQ7CiAKLQlp
ZiAocmVhZF9jcHVpZF9wYXJ0KCkgIT0gQVJNX0NQVV9QQVJUX0NPUlRFWF9BOSkgeworCWlmIChy
ZWFkX2NwdWlkX3BhcnQoKSAhPSBBUk1fQ1BVX1BBUlRfQ09SVEVYX0E5IHx8CisJICAgIG9mX21h
Y2hpbmVfaXNfY29tcGF0aWJsZSgicm9ja2NoaXAscmszMDY2YSIpKSB7CiAJCS8qCiAJCSAqIFdl
IGNvbW11bmljYXRlIHdpdGggdGhlIGJvb3Ryb20gdG8gYWN0aXZlIHRoZSBjcHVzIG90aGVyCiAJ
CSAqIHRoYW4gY3B1MCwgYWZ0ZXIgYSBibG9iIG9mIGluaXRpYWxpemUgY29kZSwgdGhleSB3aWxs
CgotLS0KYmFzZS1jb21taXQ6IDI3MDlkZDVhZTMyZjA4MjhmMzg2MzI3Yzc2YmJhOWYzOWY2M2Ex
YzYKY2hhbmdlLWlkOiAyMDI2MDgyOS1jcHUtYzUxOGJkZTliNDczCgpCZXN0IHJlZ2FyZHMsCi0t
IApKb2hhbiBKb25rZXIgPGpieDYyNDRAZ21haWwuY29tPgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
