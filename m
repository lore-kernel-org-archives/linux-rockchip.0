Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D405ECEACEF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 01:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4g3qDMW5c/UtEebk63/v+JeBZAFqnvBFFgQz5nikc8o=; b=apClOqyIKYJ1Yh
	3o3m1/5v14Zwj8kcW4KQjMfaM5jU5s4BV8e+xj1ONYXdafFklDnHdNZrHHrgQEwFF2nz8KXBReH0c
	k6cwWPHvFXjvOBxQUh/jPnxCAM2VmGDyL04DGYtBgjYEIj45I0+0t6n+ylzYgTZwNPOfZEv3oybIt
	xYYH8Wuj7kxRsqfN9R7elVPR91HdFoFjwzZpvZLl1k0za6xc/7UZXwidDm5iY6nMvhgkwrtvfSqCL
	Gxf3/MT+qMcJPg7cvMFZL0nnTwou6jUHHwBKGnJSkbjQxc92SUNn4JiXYQk1yiYNQAUPVmJYkykHN
	nAXpTJIbkaGpc9RXApIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKnrw-0000000FFuw-1uKD;
	Mon, 17 Nov 2025 01:17:24 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKnrr-0000000FFuO-11cP;
	Mon, 17 Nov 2025 01:17:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 768CA4118B;
	Mon, 17 Nov 2025 02:17:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763342234; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ayCI78s0sFTeRE+mYXvPdg5dHDi/jDMZJzVBaBaUiuk=;
	b=PoYARTsooGdjq3wnQNA8x72KudChF71ko5NH0iTGj3hnqKcMmltTC6ZR9Cuz9PBqHMGZE1
	uRu4zviJiEzSLqKiMUVKma1gnBCt9QndRT7yeON+ZP2/83raE6ljp9fixSgtdSFnqW9J47
	kq5HNoKeylpEjrpiV/VneuW2gQQjg8sAPcpGFGZxj1FZIYpUuPpTaqjWlUtGhh2ao2YYdx
	NHK5Yn9TgQM/pCnSAPY85vppSbRWkbKW37LdgqQpp9tHEWiisRRwWwcBsSeiv2DP6X6YtV
	mDlqNdaqq/UhIqN3ydZyZc0G0jFr4hsDIh66e4b7HZeDnO8m2/5W3unvYQxeDA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <2455319.NG923GbCHz@diego>
References: <12d6e151-dfa0-ca0a-5888-ddffb2dbdec7@manjaro.org>
 <bb74679a-ce21-4373-bcc5-1214e9bf832e@rootcommit.com>
 <24561990-8293-0505-5837-eca416d01bb7@manjaro.org> <2455319.NG923GbCHz@diego>
Date: Mon, 17 Nov 2025 02:17:12 +0100
Cc: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
MIME-Version: 1.0
Message-ID: <a5e7824d-03c7-fa0a-473f-193e172420d2@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 2/2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3 and 3S device tree
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251116_171719_777199_0F36C4A5 
X-CRM114-Status: UNSURE (   6.08  )
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

SGVsbG8gSGVpa28sCgpPbiBTdW5kYXksIE5vdmVtYmVyIDE2LCAyMDI1IDAwOjI3IENFVCwgSGVp
a28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4gQW0gU2Ftc3RhZywgMTUuIE5v
dmVtYmVyIDIwMjUsIDA4OjE0OjU4IE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJp
ZWIgRHJhZ2FuIFNpbWljOgo+ID4gQlRXLCBteSByZXNwb25zZXMgYXJlIGN1cnJlbnRseSBqYWls
ZWQgYnkgdGhlIGxpbnV4LXJvY2tjaGlwIG1haWxpbmcKPiA+IGxpc3QsIHJlcXVpcmluZyBtYW51
YWwgYXBwcm92YWwsIGFzIGEgcmVzdWx0IG9mIHRoZSBtYWlsIHNlcnZlciBJJ20KPiA+IHVzaW5n
IHNvbWV0aW1lcyBpbnNlcnRpbmcgc29tZSBzdHJhbmdlIGludmlzaWJsZSBVVEYtOCBjaGFyYWN0
ZXJzCj4gPiBpbnRvIHRoZSBlbWFpbCBzdWJqZWN0cy4gIE9oIHdlbGwuIDopCj4gCj4gSSBndWVz
cyB0aGF0IG1haWxzZXJ2ZXIgbmVlZHMgYSBmaXggOi0pCgpJbmRlZWQsIHNvbWV0aGluZyBpcywg
dW5mb3J0dW5hdGVseSwgcmVhbGx5IG1lc3NlZCB1cCB0aGVyZSwgOi8KdG8gdGhlIHBvaW50IHRo
YXQgZXZlbiBvbmUgb2YgbXkgInVuamFpbGVkIiByZXNwb25zZXMgaW4gdGhpcwp0aHJlYWQgZW5k
ZWQgdXAgaW4gYSBzZXBhcmF0ZSBsb3JlIHRocmVhZC4gWzFdCgpbMV0gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGludXgtcm9ja2NoaXAvZTRjZDExZDAtNDYzYy1lNzA3LTUxMTAtNmI5Mjg5OWIx
YmEzQG1hbmphcm8ub3JnL1QvI3UKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
