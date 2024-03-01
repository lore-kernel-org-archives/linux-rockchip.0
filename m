Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A6B9C5475B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Mar 2024 16:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YpagvMfbM8+ZvWhmouWmO3I0BkVY4Vi4BVhM2VdtDbs=; b=JQ0MVKWXZUwivr
	FkPvpwSir+Ej68igayHshLZeVgQXLi8MU5YJPuWTtCDJcM5IulDmiTDKVkzQrA1q9ksJ8LYetcXKG
	1WUFOhtUL0Y8MOcPMQIEdErILz2pURf6puyHiGESgynev7TheShwRv4BmBt+gfmtOH0EeJItXzxER
	w9gzBRAtVjDL2BKqcLD8pfPMbqXV0iRrRQpTeAwFg2yRtWQxMvBz2T+jVqL9+2udUN0xDdRQiYg8T
	3g9f3756s2udO3w1UzFKQ7PnFEj24rOy1DD6HFUoC4GNdCll35bzgExyhQ8UzHccfzpgIE03ZkjbL
	msa3ZIvqdQqWhDi3u30Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg5o6-000000016qG-2Bse;
	Fri, 01 Mar 2024 16:32:22 +0000
Received: from master.debian.org ([2001:41b8:202:deb:216:36ff:fe40:4001])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg5o2-000000016oM-2gK1;
	Fri, 01 Mar 2024 16:32:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	In-Reply-To:References; bh=0VSNDonOM2KA+3/pPa1nmJhKzyO10fQ0OUH34koWvwY=; b=pu
	WJZPus3zCmgp/0RfXVFBecfYAN+HV9WvVnBv5mRl4f3YtOmbdHXpgB8lj75f52KRa2M7f/tmdYZh4
	n7eOu4Cgdtglue+EFcH4M5wKxMv0ubgqcotFdTo/xL2p7LLBKOGieVuKGIUkPn1110FYWgSXjc2Ck
	iUFNVD6UYpUe6wBZnPFsOCFXY16ji3RUeA7UXGRR4Mohp1XTph5MsSYzRhVoReJo4hCCQaOIbVns9
	CV98D3+QbB9WobcqSsZxD8tBKiiC45ezBcBIMwYjUcOo8wy9mHo96Fomg/wyIN/xiFWzM8zdMHt9Z
	y7pA2Z+LAZuF6mrllDTsFXyGXKxHo2CA==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rg5nx-00AoVA-G5; Fri, 01 Mar 2024 16:32:13 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2] arm64: dts: rockchip: qnap-ts433: Fix name for UART pin header
Date: Fri,  1 Mar 2024 17:32:00 +0100
Message-ID: <20240301163201.559787-2-ukleinek@debian.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=996; i=ukleinek@debian.org; h=from:subject; bh=6i/jZ//UENRlwxbqZUjFMpGUn2NJuwCsGH85idJrrXg=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl4gMBcVpTnFPEJZl3aCySjuDPnKf5rTS3TN577 ffdtPApU+WJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZeIDAQAKCRCPgPtYfRL+ TqvwB/9B+vluTg6dDpps3x+yyCEmCcYKyImvpfj2JHj6T+qKQ/YjFLT52A2s03dq70UVuF/YLVA YHVWec0GjHi47U575mPpztJJQLu+Nc8t+sfYCXOHnvTvvDMRIzZ/pw6Gth5BdbRblxA1bkzO/p3 F3VHUZzI0eUFyNMiVB5/zcgrap0UXakK9JKa7HohEYn1+85WTvYLQf0bSK2U6DYNXsU0cYUEEn7 zqkgPDcOnqw/4wj2XcYKHisz3dSwrtoemv+jPAEd11mqa34SFR974rqYvqwcL51a5309bDzfKEP 3v8LezTPjO+X9NqG5TdMNovMJHJv+FRkmihKNW6o5goYaQ3c
X-Developer-Key: i=ukleinek@debian.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_083218_708850_95EDF8EA 
X-CRM114-Status: GOOD (  12.17  )
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

SSB0eXBvZWQgdGhlIHBpbiBoZWFkZXIgbmFtZSB3aGVuIGNvcHlpbmcgaXQgZnJvbSBteSBub3Rl
cyBvbiBwYXBlci4KCkZpeGVzOiA5ZGExYzAzMjdkNTggKCJhcm02NDogZHRzOiByb2NrY2hpcDog
QWRkIGJhc2ljIHN1cHBvcnQgZm9yIFFOQVAgVFMtNDMzIikKU2lnbmVkLW9mZi1ieTogVXdlIEts
ZWluZS1Lw7ZuaWcgPHVrbGVpbmVrQGRlYmlhbi5vcmc+Ci0tLQpIZWxsbywKCm9ubHkgY2hhbmdl
IGlzIHRoYXQgSSBmaXhlZCB0aGUgU29iIGxpbmUgdG8gbWF0Y2ggdGhlIHNlbmRlci4KCkJlc3Qg
cmVnYXJkcwpVd2UKCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRz
NDMzLmR0cyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFu
YXAtdHM0MzMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10
czQzMy5kdHMKaW5kZXggMjkwODQ4NmJjOTI0Li42YTk5ODE2NjAwM2MgMTAwNjQ0Ci0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCisrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCkBAIC03Niw3
ICs3Niw3IEBAICZzZGhjaSB7CiB9OwogCiAvKgotICogUGlucyBhdmFpbGFibGUgb24gQ04yIGNv
bm5lY3RvciBhdCBUVEwgdm9sdGFnZSBsZXZlbCAoM1YzKS4KKyAqIFBpbnMgYXZhaWxhYmxlIG9u
IENOMyBjb25uZWN0b3IgYXQgVFRMIHZvbHRhZ2UgbGV2ZWwgKDNWMykuCiAgKiAsXyAgXy4KICAq
IHwxMjM0fCAgMT1UWCAyPVZDQwogICogYC0tLS0nICAzPVJYIDQ9R05ECgpiYXNlLWNvbW1pdDog
MTg3MGNkYzBlOGRlZTMyZTNjMjIxNzA0YTI5Nzc4OThiYTRjMTBlOAotLSAKMi40My4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
