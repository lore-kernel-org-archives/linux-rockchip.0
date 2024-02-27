Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42F82C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 11:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oj0FPOQFdY0HxlW7JyNxJVPnK+BGOUGf+sbuuDCHtlk=; b=DXVjmHSt/O3Tx4
	/iJ0qAEZOsBwuqURR6+txUMANvlJsXknoQ82fZ5t2v4idE9k6Vsupc+7425ndMElw1OZWsUzjCC48
	8ch6heClAFa7U6zKOARoSe7CIYLXAgVCIewnfqG2ph2SOYQ3460Ocg0rySGQRIEvWlWfjUyn3oce8
	WCwq0EFQZKq0RvD7GnWlImsT4DLDzbB6A7js+VPJAFojArkXItGPPjKT/VnD3m2seT2rIzzIjFNRI
	Y//XXTVzkA23GhT2wEwabuVDHdiqAaW0mbJHRIPNjFmKwpbbbWUy+OPziGD6p+T0qdjeRqLKbJjDv
	DD7zmjSjUStdfzFgUhCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rew18-000000050qa-1TtD;
	Tue, 27 Feb 2024 11:53:02 +0000
Received: from master.debian.org ([2001:41b8:202:deb:216:36ff:fe40:4001])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rew13-000000050ou-2rW0;
	Tue, 27 Feb 2024 11:52:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	In-Reply-To:References; bh=aJQzGBjCMr7fNjosR9pa4p7/m6St4LJq3B9lUGe3QaE=; b=Ee
	LV/ZB1iRga3C1h/AM8rsDAxZ9zO3Ta+nm6UVJtLhaleRRYCwQWH1yG5yNeJERMXD2AXt+w80v7Gfn
	RANBGO7yI85muqU/fDqYsxYHbMVKwsDM/PiZpIpbuu5iHZta8QzNjuwdmHtUTNf2tiShg+WWFYBWD
	c1dVyF3dGghrEiqmHsUdE7ZGJhdDtoDuRQ2cv4RHVQgM0pCL/7mf1f4Goy5EFzb1m/eQG0Q9637JL
	JpYBa9hg0hW4/CE3WkRQFNKqXMnrnY/wgAEGqW5Yl86fO7VHu91gy8VQHb7MA/FGjYSriQEyAiLV+
	sAySlJNvPE0ErdEUirWB0P986CQsLBZQ==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rew0y-005f8T-BA; Tue, 27 Feb 2024 11:52:52 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 0/2] arm64: Add basic support for QNAP TS-433
Date: Tue, 27 Feb 2024 12:52:35 +0100
Message-ID: <cover.1709034476.git.ukleinek@debian.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=979; i=ukleinek@debian.org; h=from:subject:message-id; bh=63H42ZceL4Aj+2bTjz5yrt8POkWXFe7RhQZ60a7hT9M=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl3c0Gx9lvZUjZopbCx5zsbrehplaFQB9Eh8gnc k57KE0SJ8CJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZd3NBgAKCRCPgPtYfRL+ TjKOB/9ryHI4PHqt4zKbQcdNwCpkwWqMeC6P7ToClb2D6fPWkw0fBprl9+gA4ccMBDmwvqu8QE1 wv5pMb8TfoV1J16CB75rkWI7PiQuMEdqVoahdIUnR9xcPknxVcor4M+weXwl2V2xzG8eslRYu6H D9VywPeI1i1rsYBocykDs1qbczEVQbhv0kWcX+Gj2GPGkbZuOqohEWIakcYc5qcgugn9bDIAPXF tLakTqIRgGobed3B3fRHh5s4+WytD8ErHdkphUALKBVzW/hdf/oGVxj35Vml9Ym2wwoUBhPY5L1 1vv6s1G26Ktcll/k4Y4ev2u30OUVDB2g6dUFuDbbiZjY1igh
X-Developer-Key: i=ukleinek@debian.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_035257_807930_5D0C26AF 
X-CRM114-Status: GOOD (  11.92  )
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

SGVsbG8sCgp0aGlzIGlzIGFuIGluaXRpYWwgZHRzIHRvIHN1cHBvcnQgUU5BUCdzIFRTLTQzMyBO
QVMuIEl0J3MgZW5vdWdoIHRvCnN0YXJ0IHRoZSBkZWJpYW4gaW5zdGFsbGVyIHdpdGggYSBjdXN0
b20gYnVpbHQga2VybmVsIChvcmlnaW5hbCBEZWJpYW4Ka2VybmVsIGZhaWxzIHRvIG9wZW4gYSBj
b25zb2xlLCBkaWRuJ3QgZGVidWcgdGhhdCB5ZXQpIGFuZCBhY2Nlc3MgSEQsCmVNTUMsIFJUQyBh
bmQgbmV0d29yay4KClRoZXJlIGFyZSBzdGlsbCBzb21lIG1pc3NpbmcgYml0cyBhbmQgcGllY2Vz
LCBidXQgdG8gbWFrZSBwZW9wbGUgYXdhcmUKdGhlcmUgYXJlIGVmZm9ydHMgdG8gc3VwcG9ydCB0
aGlzIG1hY2hpbmUgYW5kIHNvIHByZXZlbnQgZHVwbGljYXRlIHdvcmssCkkgdGhpbmsgaXQgbWFr
ZXMgc2Vuc2UgdG8gYWRkIHRoZSBkdHMgaW4gaXRzIGN1cnJlbnQgZm9ybSBhbHJlYWR5LgoKQmVz
dCByZWdhcmRzClV3ZQoKVXdlIEtsZWluZS1Lw7ZuaWcgKDIpOgogIGR0LWJpbmRpbmdzOiBhcm06
IHJvY2tjaGlwOiBBZGQgUU5BUCBUUy00MzMKICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIGJh
c2ljIHN1cHBvcnQgZm9yIFFOQVAgVFMtNDMzCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJt
L3JvY2tjaGlwLnlhbWwgICAgIHwgIDUgKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
TWFrZWZpbGUgICAgICAgICB8ICAxICsKIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5h
cC10czQzMy5kdHMgICB8IDg2ICsrKysrKysrKysrKysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwg
OTIgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCgpiYXNlLWNvbW1pdDogNjYxMzQ3NmUyMjVl
MDkwY2M5YWFkNDliZTdmYTUwNGUyOTBkZDMzZAotLSAKMi40My4wCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
