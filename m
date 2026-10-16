Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27653CCA462
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 06:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7isKuD0E29JpE6Y5ruzHM+ndu1ExJMVwWv1Q2BRDGI=; b=dhx3b4RJy0gjdr
	2vIccX5pNoJEDYTmvWxXQ2LswssVOnGVhdtHF5B13YRVXboedZ0+IVNXwmjoLwCBxzLuGFs58lqU5
	g0O+38OBKd0MYTba8ztLQhX4Q9KBcMKdejocNt1sswlRjjCnrWhApA060BlAl4vQly0W1u6/BAAxR
	KkOSY0SRHSj07JvjYfsLFzp3AiMxQfB9jKtULuAUzWMnvvzT1pkEKOnY7Rdg61m7G0F1fX43gFB3p
	fL2O/YpGsvppuIl2zHawKIbZkqQ3rhZaB3uC2nBmzlwk7RC1XPZYryY6simnO1HhScq+k9L3zcyfN
	thF97dq/9uLDbPMAkwVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHbBX-000000024of-0jM6;
	Fri, 16 Oct 2026 06:12:55 +0000
Received: from out162-62-57-87.mail.qq.com ([162.62.57.87])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHbBT-000000024o1-010w;
	Fri, 16 Oct 2026 06:12:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1792131166; bh=Pcl2raRurZjpnn71jo5ShnqVzuQQYqLtZN6GcJ3U5JE=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=AgUD//DG+Ve4rkVO5rLSaJ0nFGR4PRADs9+UY8WLOn6FrUgaW971WOkfSUF+jQ6JJ
	 UW3NApjr0PvEu4vQ9WtUCJjmJu3cxejj9z350qZvjh3TyJRc8S3kHDuUBYNtxYcGUI
	 f+QIfzLb5jHn6KCpgAVBRdRhGcWg03PnnRlZeefU=
X-QQ-XMRINFO: OWPUhxQsoeAVwkVaQIEGSKwwgKCxK/fD5g==
X-QQ-XMAILINFO: NX669osvFPDayi99gxpQuJ5Uim9/ETPpsz/R+MRP7zb3FlPNPPqVrV/eiVBKBk
	 0r937APbrZezjhcDpwft/cUe1KJ2ME0knMVgmKG8IjP4U159evzMO2hDea6wE8x/8I14tAsCc50YZ
	 BUU4s9LdyZWCNUx1rz2s3X3HYsZ6Cw/kcTUpVcaqyA5IsCl+yJeNxI3iP+1muR4FxGzmaQVU6UX8D
	 aaN2YXjbJS8IVBuN+XEJ1zG9ohgJxm6q/RaBx0Rzo7X5DKe4MO3XicjJ8jyyr3qZXB6OpjGEqRY/e
	 g5m+wHv052bM5XAj0Mfx9gBofvroamiCxIrAUAPkYlGNoux5g9AmoAIOWYYIfoyvyiYrrMoHYcMDk
	 7fxiy3vEUo0GDEEBzJECW+JZfX002qJaI+H/826KKBlixCv6ER1PD24srODetyKd6FCTYiKGIux8f
	 7Q8Q1ZFFWixaju7lbEI6UFq9trM2hA/D27E/nhX+Hi0ZtCcNlKmbkxE6mIa+ULtBPqw7IaXtdx3Fb
	 x0mnYcJeCnetApOLKQqMqX3rb6igl+2a9rMSD3yHaEP0zeu9L/CBswbv/OkuS7qNLOD8vvYrwzcTi
	 mNhMUAysO2LAvs7AskJcYZu11gKXpflgj74g8YT3JmztovAJW3Q9rvgV9pXASJVk0kkRSKP03rvEO
	 MIHq2hbRSvtV2A9CDjTEqcN5eNQJ5g8ekO1y/Hwp4sh0jitxI4sWe3uKu/Z+pfsZZWo54wr65QaDP
	 QiWxLNBFEHbPRy5bE9pX68lJdn9dElpuFbie5Z5fqvU5AIZq959ou3ydgUpgtCtW3YfuzoV44++/g
	 Mn/h/EKeS4dxCd47Et0Lhi+i4h5K7b7c3VM2oAN02ugFF+wo0IUEfhJpTaZ5oBHDo4KeaIt8uyDRu
	 T/6f/I514tefHRpi10MqhfvR8GPtTlL9K3+Rub8YbldEHwLR9kQ20cFgrYhwJs1IZVur1lLzB09kg
	 rklYQMyxCDStUfUkQF2v3iHwRXYczulBlB9895sKThQ5ws+ffGFTOHt1XqQUDRMnSUBkL+B4vMwxk
	 ba3HMKOymbZGtghfAXC6CyUfS8EEiMTXaSNvH9ld33fdLN64=
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?bmV0ZGV2LWJvdCtzYXNoaWtv?=" <netdev-bot+sashiko@kernel.org>
Cc: "=?utf-8?B?bWts?=" <mkl@pengutronix.de>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?ZGF2ZW0=?=" <davem@davemloft.net>, "=?utf-8?B?d2c=?=" <wg@grandegger.com>, "=?utf-8?B?c29ja2V0Y2Fu?=" <socketcan@hartkopp.net>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>, "=?utf-8?B?a3ViYQ==?=" <kuba@kernel.org>
Subject: Re: [PATCH net v2 3/3] can: rockchip_canfd: cancel bus-off restart before closing the device
Mime-Version: 1.0
Date: Fri, 16 Oct 2026 14:12:43 +0800
X-Priority: 3
Message-ID: <tencent_DD06B1C5CFBB499BE647A639417E0420C005@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <tencent_B15E13184DA04C4382F48848C006A2B51F06@qq.com>
	<179208227384.1406898.15110321342582191229@kernel.org>
In-Reply-To: <179208227384.1406898.15110321342582191229@kernel.org>
X-QQ-mid: xmsezb41-0t1792131163tpme4vw8z
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_231251_616718_3F21C81D 
X-CRM114-Status: UNSURE (   9.53  )
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

SGksCgo+IC3CoFtNZWRpdW1dwqBjYW46wqByb2NrY2hpcF9jYW5mZDrCoGRpc2FibGVfaXJxKCnC
oGNhbGxlZMKgb27CoHNoYXJlZMKgSVJRCj4gCj4gUHJlLWV4aXN0aW5nwqBpc3N1ZXM6Cj4gLcKg
W0hpZ2hdwqBUaGlzwqBwcm9ibGVtwqB3YXNuJ3TCoGludHJvZHVjZWTCoGJ5wqB0aGlzwqBwYXRj
aCzCoGJ1dMKgdGhlwqByZXN0YXJ0Cj4gwqDCoGNhbGxiYWNrwqB0aGXCoHBhdGNowqBtb2RpZmll
c8KgcmUtaW5pdGlhbGl6ZXPCoGHCoGRlbGF5ZWRfd29ya8KgdGhhdMKgbWF54oCmCgpCb3RoIGlz
c3VlcyB3ZXJlIGFkZHJlc3NlZCBpbiB2MywgYW5kIHRoZSBmaXhlcyBhcmUgcmV0YWluZWQgaW4g
djUuCgpSZWdhcmRzLApDdW5oYW8gTHUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
