Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CBA9C83F03
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 09:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u9WqohAKFLUoZUi7tMI1KK3/IgYPm3mOCDFi3QjG8+g=; b=1DVE8jjYS5v8pU
	acv85qEyDR3mythnR89kAZYw8TsbiMr6f30rE7/Dn13sQyLjhyXjbyuw7oZEjikUEHHEzf0ygHKV5
	Z+HJ9v3tNFRhi8vZzYsBJAejiUHs4w8Wdoj2lp0pHQOms3HakE5zoqnc8Bin968u4fLgyVKpe1ixi
	t8Y6qEEfeVcDRlssk4ckTmBD5LvleJXdo48RO6uQhsCsUg70Ecyy4Pw70iDtfFyqZ3qTbkyixeYwb
	U+nZ9/YM9Iw9uWRixerI6IOPE6o0sWuJ51A47yDUys7GMNf0gTJbEF67e8i4q0O4Z7wRN8bvYVyFN
	MYJhsrUK6ee4M73i+BKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZQqr-000000085K6-0j62;
	Wed, 09 Jul 2025 09:12:29 +0000
Received: from mail.bizovo.pl ([217.61.16.222])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZPIF-00000007p37-2xIg
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Jul 2025 07:32:40 +0000
Received: by mail.bizovo.pl (Postfix, from userid 1002)
	id 364CC83598; Wed,  9 Jul 2025 09:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bizovo.pl; s=mail;
	t=1752046283; bh=GFLqhBmGowcpiiQwNum256VPL08ZNDpLKbHxe0rNTSA=;
	h=Date:From:To:Subject:From;
	b=lkRAcVqPlLhIKCFHeNpEAH/PjtUFSF+UnGnTeJHPXErcd8GiM0HCQFExYFQ0GYt+V
	 UoDm8RjT7L9S0x1amjuJnQsL1vUhabm7JzCCyhxUBwjE7O8Mle38BBZVtNK2r8qvRB
	 Zqdm0ahGVdX60fCjnjs83cRJqeJ6dCiZQw00hRcxmS5DghQPWmnAY+TgFtCh+hvHCv
	 JYAlQWafDZspbzdbUq/L5gOh68dsVjpOr/0M8bRi+I/K/YBtwpY5ZBtgifXgp1J7Br
	 fvOWIYffmQ5sjy00GEbb6omdcB8jiWgRZko5IOKZ9mFXoHldyyYiQ/5yu4RjZvMRFl
	 Z5aQ4yTMZV5dQ==
Received: by mail.bizovo.pl for <linux-rockchip@lists.infradead.org>; Wed,  9 Jul 2025 07:31:04 GMT
Message-ID: <20250709084500-0.1.8v.19cgf.0.uhgokgca4i@bizovo.pl>
Date: Wed,  9 Jul 2025 07:31:04 GMT
From: "Wiktoria Bielaszka" <wiktoria.bielaszka@bizovo.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Zamro=C5=BCenie_ceny_energii?=
X-Mailer: mail.bizovo.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_003239_875798_C7F0581E 
X-CRM114-Status: UNSURE (   0.57  )
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

RHppZcWEIGRvYnJ5LCAKCmN6eSBwbGFudWrEhSBQYcWEc3R3byBvcHR5bWFsaXphY2rEmSBrb3N6
dMOzdyBlbmVyZ2lpIGVsZWt0cnljem5laiB3IHN3b2plaiBmaXJtaWU/CgpDaGNpZWxpYnnFm215
IHByemVkc3Rhd2nEhyBuYXN6xIUgb2ZlcnTEmSBYUE9ULCBrdMOzcmEgbW/FvGUgcHJ6eW5pZcWb
xIcgem5hY3rEhWNlIG9zemN6xJlkbm/Fm2NpLiBKdcW8IG9kIHRlcmF6LCBtb2fEhSBQYcWEc3R3
byB1enlza2HEhyBjZW7EmSBuacW8c3rEhSBvIDQwLDklIHcgc3Rvc3Vua3UgZG8gb2JlY25laiBj
ZW55IHVzdGF3b3dlai4gCgpOYXN6YSBwcm9wb3p5Y2phIG9iZWptdWplIGxhdGEgMjAyNSBpIDIw
MjYsIGEgc3RhcnQgd3Nww7PFgnByYWN5IGplc3QgbW/FvGxpd3kgb2QgemFyYXouIEd3YXJhbnR1
amVteSBlbGFzdHljem5lIHdhcnVua2kgdW1vd3kgKDMtNi05LTEyIG1pZXNpxJljeSksIHphcGV3
bmlhasSFYyBtaW5pbXVtIGZvcm1hbG5vxZtjaS4KCkplc3RlxZtteSBwaW9uaWVyZW0gdyBzcHJ6
ZWRhxbx5IGVuZXJnaWkgdyBjZW5hY2ggUkROIHdlZMWCdWcgVEdFIGRsYSBrYcW8ZGVqIGdydXB5
IHRhcnlmb3dlai4gUHJ6ZXogY2HFgnkgb2tyZXMgdHJ3YW5pYSB1bW93eSB6YXBld25pYW15IFBh
xYRzdHd1IGRlZHlrb3dhbmVnbyBvcGlla3VuYSwgYSBjYcWCeSBwcm9jZXMgWm1pYW55IFNwcnpl
ZGF3Y3kgaSB3c3plbGtpZSBmb3JtYWxub8WbY2kgcmVhbGl6dWplbXkgemEgS2xpZW50w7N3LiAg
CgpDaMSZdG5pZSBwb3Jvem1hd2lhbSBvIHR5bSwgamFrIG1vxbxlbXkgd3Nww7NsbmllIHpyZWFs
aXpvd2HEhyBQYcWEc3R3YSBjZWxlIGVuZXJnZXR5Y3puZS4gUHJvc3rEmSBvIHdpYWRvbW/Fm8SH
IHcgcHJ6eXBhZGt1IHphaW50ZXJlc293YW5pYS4gCgoKWiBwb3pkcm93aWVuaWFtaQpXaWt0b3Jp
YSBCaWVsYXN6a2EKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
