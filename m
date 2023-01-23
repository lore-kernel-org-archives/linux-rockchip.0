Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6896EC61D97
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jan 2023 08:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HRRDZZ9kk/VcO7mwDJ0tQPrmMVvwWGRLOcO5KrDNomo=; b=AR2IFK1wVybYpP
	eS2W7G0xw+hQWmpnpEDxc4vFCYjwkE9snHYWETwH7zU0LbJ5MeVX6SD404jnPKfx7HVK32djlvess
	eWMTY0SH384c8XNYzE6J1caaUCkbxONZaBznf5IDKq+E0rdAJL7wQIo6cTBe2alYe7J7rsXLLjKYF
	cAGx3VwbHOM6hM95ke2ChtdIQK4JLcbtBXUMeV0gzfm0dUxZIOQnFhF5XAfCeuyiTPi0BHQVYDrHF
	YxgIv+/IjgjWbzyveBagXhlVSgs26vVheO3KGoVH9PHTQVTBBNpM1RlugZaV7RqawaZo1o8bLrF7L
	5qQHR1773HJ4/TLngsrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJsMp-00GNvi-MG; Mon, 23 Jan 2023 08:39:51 +0000
Received: from mail.tryweryn.pl ([5.196.29.197])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJsMl-00GNu0-KL
	for linux-rockchip@lists.infradead.org; Mon, 23 Jan 2023 08:39:50 +0000
Received: by mail.tryweryn.pl (Postfix, from userid 1002)
	id 2BD8BA2460; Mon, 23 Jan 2023 08:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tryweryn.pl; s=mail;
	t=1674463179; bh=Bo+/jg3TCpOeS79PpZREuOWEeqJV//jojylD9dSrSik=;
	h=Date:From:To:Subject:From;
	b=Gq4ddtwZ00UP3h/6PaPZvFUD+4kw2e7eS6XdFd/1i87vv1BGFx16FZx0LvaLyI+fR
	 E1WyTQQJFaUIKgv0KrmzshvtDcGl29FIHhdS3D6G2A5JnKusEOJmMg1vxbIUBKMgTV
	 jHx+g+yh+LBqhlTqsUS17j0Tl6B0TuQ0gw2oHVNlCQ8p8bYDHIch6XBUQz4SddqPhA
	 r12o0R1/VLuZiJ6RzahqBvXY++fFFnLs4k4kxdZyWzbwQthtejmGQNXfvLH6OKkesG
	 WX9NHvVcAJ/PYxXM3dSKF/fQGXNQ6fjAMYetejkM1AFh0makMMfRn1mJDKi3TftdMw
	 I+kP3zuMbtSLg==
Received: by mail.tryweryn.pl for <linux-rockchip@lists.infradead.org>; Mon, 23 Jan 2023 08:37:38 GMT
Message-ID: <20230123081829-0.1.7p.2rwar.0.s645c9ztir@tryweryn.pl>
Date: Mon, 23 Jan 2023 08:37:38 GMT
From: "Karol Michun" <karol.michun@tryweryn.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Prezentacja
X-Mailer: mail.tryweryn.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_003948_440600_DEDE8191 
X-CRM114-Status: UNSURE (   1.31  )
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

RHppZcWEIGRvYnJ5IQoKQ3p5IG3Ds2fFgmJ5bSBwcnplZHN0YXdpxIcgcm96d2nEhXphbmllLCBr
dMOzcmUgdW1vxbxsaXdpYSBtb25pdG9yaW5nIGthxbxkZWdvIGF1dGEgdyBjemFzaWUgcnplY3p5
d2lzdHltIHcgdHltIGplZ28gcG96eWNqxJksIHp1xbx5Y2llIHBhbGl3YSBpIHByemViaWVnPwoK
RG9kYXRrb3dvIG5hc3plIG5hcnrEmWR6aWUgbWluaW1hbGl6dWplIGtvc3p0eSB1dHJ6eW1hbmlh
IHNhbW9jaG9kw7N3LCBza3JhY2EgY3phcyBwcnplamF6ZMOzdywgYSB0YWvFvGUgdHdvcnplbmll
IHBsYW51IHRyYXMgY3p5IGRvc3Rhdy4KClogbmFzemVqIHdpZWR6eSBpIGRvxZt3aWFkY3plbmlh
IGtvcnp5c3RhIGp1xbwgcG9uYWQgNDkgdHlzLiBLbGllbnTDs3cuIE1vbml0b3J1amVteSA4MDkg
MDAwIHBvamF6ZMOzdyBuYSBjYcWCeW0gxZt3aWVjaWUsIGNvIGplc3QgbmFzesSFIG5hamxlcHN6
xIUgd2l6eXTDs3drxIUuCgpCYXJkem8gcHJvc3rEmSBvIGUtbWFpbGEgendyb3RuZWdvLCBqZcWb
bGkgbW9nbGliecWbbXkgd3Nww7NsbmllIG9tw7N3acSHIHBvdGVuY2phxYIgd3lrb3J6eXN0YW5p
YSB0YWtpZWdvIHJvendpxIV6YW5pYSB3IFBhxYRzdHdhIGZpcm1pZS4KCgpQb3pkcmF3aWFtCkth
cm9sIE1pY2h1bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
