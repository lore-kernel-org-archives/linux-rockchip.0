Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22857CA5FA5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 02:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5xiKUTPTq+yHz1ZgAvXoK/ehPDtOHFGu0c0v6B4kmU=; b=sLM1smyGemffVD
	KneAQN2Xt1K6uTDG2RzF5PBuAwPNT6dAUfkqcXehRSpX800Q9nxQkMiXCu9nNyg6XbPFErAC3qVZd
	HHxRuGgye/9tjiRdXpWoRv5We1rO67SyN3aGG/Rb6CZEMzNuathTCfWc93AnN3ucyu4ivb/R2MnQy
	w92FAaUf2r43YJLshR6VN2YlPwA9/ZvRxjXvVEpm3vCh1wP4svPl3MpmOJz32ncNmsZjS78980u9l
	96ChhHMcBAVxgtPSnPx3HogIpGFxD7ZgrtQ8XHflXxIlLBs+REwZL2Ow+pfRhd3u3hYi823fYTwWc
	qH7yVeiPgRg3WSmnYwRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBNTQ-000000027S3-0VnJ;
	Tue, 29 Sep 2026 02:21:40 +0000
Received: from mail-m93204.xmail.ntesmail.com ([103.126.93.204])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBNTM-000000027Qg-1qSL;
	Tue, 29 Sep 2026 02:21:39 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4f6d2dccf;
	Tue, 29 Sep 2026 10:21:32 +0800 (GMT+08:00)
Message-ID: <23589ca5-7b7e-4f0a-8da7-1cd8ca8cdc6e@rock-chips.com>
Date: Tue, 29 Sep 2026 10:21:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linusw@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 jon.lin@rock-chips.com, bcm-kernel-feedback-list@broadcom.com,
 noltari@gmail.com
Subject: Re: [PATCH 2/3] spi: rockchip-sfc: Clean up runtime PM on remove
To: Guangshuo Li <lgs201920130244@gmail.com>, broonie@kernel.org,
 heiko@sntech.de, william.zhang@broadcom.com, kursad.oney@broadcom.com,
 jonas.gorski@gmail.com
References: <20260924112329.1566051-1-lgs201920130244@gmail.com>
 <20260924112329.1566051-3-lgs201920130244@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260924112329.1566051-3-lgs201920130244@gmail.com>
X-HM-Tid: 0aa0eaf7a0ba03a4kunm3f316cb87f1ea3
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCSk9CVh9NQk1NGk8fHx1OTFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=b0Nmn4A2L3sB7JXXDYNJoZwkmkRNQshPXshO1PivLsRYoBKNfmCpAX4c41WhmHiA0V3vSIAX9UViYpiGG1X/sPsl25P7DD6NNfhtT2G05ZEkmQX+3/LTlPQGKQ4gWt5eINnmjHlEtJlDI4xXqGRHli26/2zelrE9jjcj0uhCTt4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=608TxoAcsSFja39GdQX5iExTG94VTDqd7cjXZfeJR4s=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_192136_689152_4A1362DC 
X-CRM114-Status: GOOD (  12.98  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgR3VhbmdzaHVvCgrlnKggMjAyNi8wOS8yNCDmmJ/mnJ/lm5sgMTk6MjMsIEd1YW5nc2h1byBM
aSDlhpnpgZM6Cj4gcm9ja2NoaXBfc2ZjX3Byb2JlKCkgZW5hYmxlcyBydW50aW1lIFBNIGFuZCBh
dXRvc3VzcGVuZCBiZWZvcmUgcmVnaXN0ZXJpbmcKPiB0aGUgY29udHJvbGxlci4gQWZ0ZXIgYSBz
dWNjZXNzZnVsIHByb2JlLCByb2NrY2hpcF9zZmNfcmVtb3ZlKCkgdGVhcnMgZG93bgo+IHRoZSBj
b250cm9sbGVyIGFuZCBjbG9ja3Mgd2l0aG91dCB1bmRvaW5nIHRoYXQgcnVudGltZSBQTSBzZXR1
cC4KPiAKPiBUaGUgcHJvYmUgZXJyb3IgcGF0aCByZXN1bWVzIHRoZSBkZXZpY2UsIGRyb3BzIHRo
ZSB0ZW1wb3JhcnkgdXNhZ2UgY291bnQsCj4gZGlzYWJsZXMgcnVudGltZSBQTSwgbWFya3MgdGhl
IGRldmljZSBzdXNwZW5kZWQsIGFuZCBzdG9wcyB1c2luZwo+IGF1dG9zdXNwZW5kIGJlZm9yZSBk
aXNhYmxpbmcgdGhlIGNsb2Nrcy4gVGhlIHJlbW92ZSBwYXRoIGxhY2tzIHRoaXMKPiBtYXRjaGlu
ZyBjbGVhbnVwLgo+IAo+IE1pcnJvciB0aGUgZXhpc3RpbmcgZXJyb3ItcGF0aCBzZXF1ZW5jZSBp
biByb2NrY2hpcF9zZmNfcmVtb3ZlKCkgYmVmb3JlCj4gZGlzYWJsaW5nIHRoZSBjbG9ja3MuCj4g
CgpUaGFua3MgZm9yIHRoaXMgcGF0Y2guIEhvd2V2ZXIsIGl0IHdhcyBmaXhlZCwgc2VlOgpodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5l
eHQuZ2l0L2NvbW1pdC8/aWQ9MzRlMzJlOWFkZTU4ZTMyZGFmOTMzOTc0YzliNjk3ZDA2NmZjNWFh
YQoKPiBGaXhlczogODAxMTcwOTkwNmQwICgic3BpOiByb2NrY2hpcC1zZmM6IFN1cHBvcnQgcG0g
b3BzIikKPiBTaWduZWQtb2ZmLWJ5OiBHdWFuZ3NodW8gTGkgPGxnczIwMTkyMDEzMDI0NEBnbWFp
bC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAtc2ZjLmMgfCA2ICsrKysr
Kwo+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3NwaS9zcGktcm9ja2NoaXAtc2ZjLmMgYi9kcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAt
c2ZjLmMKPiBpbmRleCA2NjJhOTk0ZGE2MGIuLjZlMWM3ZDYzMThiYiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3NwaS9zcGktcm9ja2NoaXAtc2ZjLmMKPiArKysgYi9kcml2ZXJzL3NwaS9zcGktcm9j
a2NoaXAtc2ZjLmMKPiBAQCAtNzQ3LDYgKzc0NywxMiBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9z
ZmNfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAJCQkgRE1BX0JJRElS
RUNUSU9OQUwpOwo+ICAgCWZyZWVfcGFnZXMoKHVuc2lnbmVkIGxvbmcpc2ZjLT5idWZmZXIsIGdl
dF9vcmRlcihzZmMtPm1heF9pb3NpemUpKTsKPiAgIAo+ICsJcG1fcnVudGltZV9nZXRfc3luYygm
cGRldi0+ZGV2KTsKPiArCXBtX3J1bnRpbWVfcHV0X25vaWRsZSgmcGRldi0+ZGV2KTsKPiArCXBt
X3J1bnRpbWVfZGlzYWJsZSgmcGRldi0+ZGV2KTsKPiArCXBtX3J1bnRpbWVfc2V0X3N1c3BlbmRl
ZCgmcGRldi0+ZGV2KTsKPiArCXBtX3J1bnRpbWVfZG9udF91c2VfYXV0b3N1c3BlbmQoJnBkZXYt
PmRldik7Cj4gKwo+ICAgCWNsa19kaXNhYmxlX3VucHJlcGFyZShzZmMtPmNsayk7Cj4gICAJY2xr
X2Rpc2FibGVfdW5wcmVwYXJlKHNmYy0+aGNsayk7Cj4gICB9CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
