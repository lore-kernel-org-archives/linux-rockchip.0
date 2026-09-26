Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80D7DC98318
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 05:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eit9fSd4NR7mb1BSzpbR0O7ifihMku4GnnYsJgXAxcc=; b=H2F4Qp1GphvGfV
	dWzQLy7FjdO4EJY+SeJVepwkM9rsIWk6GE7TeR155SC0pgUag/z28Tip2vgudc+JVfGAWl4xPea4e
	PPjLORt4uyI3CLQz0pl+hmqTuGHxqGrOar6+hNAHS4P+YofOC/gcE+iZ9c1JU/QSppak9MqKHqcCu
	dcil68OvGuW+Bwru5BWy1jxGOPAyYe/Hi8UuiGaYcpC9OO9Dg8FpfK80fnE+2ct0OkGw0CYoYkHkC
	wW+Wu2ykfGFNmn/uvrxzzMQscxvKvT/I7DW4XvM1qWMXw9C35OrTAcjQEycDttU93/JaOUSqyyYJ/
	MP6oP6iD/4wJDHWTMAVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKsy-0000000F1Em-1ZRs;
	Sat, 26 Sep 2026 05:23:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKsw-0000000F1EC-2lif;
	Sat, 26 Sep 2026 05:23:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 248F043EBB;
	Sat, 26 Sep 2026 05:23:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D9DE1F000FF;
	Sat, 26 Sep 2026 05:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790400222;
	bh=Fs86mSw57dq+/rdX8lcMX883ksi6aUdvw3n+ATyGask=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=da4X7oGHdG4/YsqtXt/fW30+txiAsXQFf0YpnCZL7uLkcnIeH7+hAtCFqFUzxXKaO
	 SYZ3SzNcKm6lK3HB2Z/VDr6hr8fIxVDwipRgCnqNMTRAX37n5v0127K/rc8B5glCw3
	 3gGGq1ad6pX1eb5mBMC9z9Jf7VA7xDoW4D1/D1t6+qtF6EFu1ORXGlZtK95nMdfbpv
	 eoXxn1CCL6X0bGUm56ZJI2tdEOJL7A1m/R5y8VNI+OloW4lVzFdn9GeIOoHoP5q7WU
	 ACuvM2GjssogUkez97vvuG8f1hGZs6dT3fNvbH7lI3lvssckYIDGjEo66fxxkW+D96
	 Snql6kfCyvH2Q==
Date: Sat, 26 Sep 2026 07:23:27 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Sashiko <sashiko-bot@kernel.org>, Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 10/11] phy: rockchip: usbdp: Handle
 rk_udphy_reset_deassert errors
Message-ID: <zkeoutxzqdw63u26ja4fm3yychnp5hyiohsurtwdarcjtdiunq@5r6ll23dokgo>
References: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
 <20260915-rockchip-usbdp-cleanup-part2-v15-10-8d507cb1174f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-part2-v15-10-8d507cb1174f@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MDY6MTNQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gSGFuZGxlIHJrX3VkcGh5X3Jlc2V0X2RlYXNzZXJ0IHJldHVybmluZyBlcnJv
cnMgdG8gYXZvaWQgdGhlb3JldGljYWwKPiAoUm9ja2NoaXAgcmVzZXQgY29udHJvbGxlciBkcml2
ZXIgZG9lcyBub3QgcmV0dXJuIGVycm9ycykgU0Vycm9yLgo+IAo+IEZpeGVzOiAyZjcwYmJkZGVi
NDUgKCJwaHk6IHJvY2tjaGlwOiBhZGQgdXNiZHAgY29tYm8gcGh5IGRyaXZlciIpCj4gUmVwb3J0
ZWQtYnk6IFNhc2hpa28gPHNhc2hpa28tYm90QGtlcm5lbC5vcmc+Cj4gQ2xvc2VzOiBodHRwczov
L3Nhc2hpa28uZGV2LyMvbWVzc2FnZS8yMDI2MDYyNjIxMTE1MS4yMzMyRjFGMDAwRTklNDBzbXRw
Lmtlcm5lbC5vcmcKPiBUZXN0ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWls
LmNvbT4gIyBPcmFuZ2UgUGkgNSBQbHVzCj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNo
ZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZh
bm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4K
Ci0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/g
rrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
