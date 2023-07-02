Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97574EB64D9
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Jul 2023 09:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsbSAgZbegR+Qyq06GfVfYVtOkQe27BUv5iIxw2EY10=; b=cqQDKgLP4KXdWx
	W8DjWYp+aIyX4RQ2ckFZJpF7yTZE/q3bp58Zjdi8rB+ou2gfDCjhfaowJZ6OktjZwHii7hDDEes0g
	ZS4XHG7I++xnEUn0XHU4jRzjq26xCoSc0iwcTVTUvrxkYuc/xDnufDd2tkFqOWWYsGihzTok4AEXR
	NwAneZAOaWKyZUWz4qDdMJL44KwrxGExJ9uZntdH0Q7Lt3+5XtIcaadMdxwmDjMz6i5+xUp1yx1p9
	phIlkJFIaXfg7KBoyI0Vvctr1OOHVLFFDlYsPtVKxm0WELkqRnUFtSI3/dWpbautmL2v4ovJOUfGb
	0TbLY9Rqu1TmEXhHJbBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qFtAL-007Sj9-1O;
	Sun, 02 Jul 2023 09:14:45 +0000
Received: from mout.web.de ([212.227.15.4])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qFtAH-007ShP-1F;
	Sun, 02 Jul 2023 09:14:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=s29768273; t=1688289268; x=1688894068; i=markus.elfring@web.de;
 bh=04iT+UnfwyDPFNO9j8bB4gtCjTRJDEn6nkaOWfmk9Ak=;
 h=X-UI-Sender-Class:Date:To:Cc:References:Subject:From:In-Reply-To;
 b=K0Gg5BBc16nMDxJbeztZdnZLJ0zNgerCb1gynfjqZBgSwfkKSFpuDXx9QxGjAkLuycFrOgr
 dGjwfYyG6YCreioKgtE7qyhXpex2n2RWewJCg1Gm3CZwIQ9UuBG91iuvGBOU+iLlp7pk92V+q
 mzZzwfxbHxbGoP+tq1PLOovQsN0W/+PR8X9gCGkF1LiZTuRTYVgsSTHmDrFDkF84jU8HI/R/l
 Iy5hbUJaoiKXEfok+aIIOgd+AG4sw1y/F39PFMG0FgKBNHRLPXwTfMwbyUog/Hxyc9H0TF7ja
 12ykN70YUqvw9QCrNSfTSz00Bfb5S26dUzrW1FrGjlFaQD4jt0+g==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.90.83]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MqIFD-1pceFb33iN-00nRBU; Sun, 02
 Jul 2023 11:14:28 +0200
Message-ID: <83b5faec-7e7c-c73c-c510-903ad69051f1@web.de>
Date: Sun, 2 Jul 2023 11:14:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-staging@lists.linux.dev, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org,
 kernel-janitors@vger.kernel.org,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Ming Qian <ming.qian@nxp.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Tomasz Figa <tfiga@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, kernel@collabora.com
References: <20230622131349.144160-8-benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v3 07/11] media: verisilicon: vp9: Use destination buffer
 height to compute chroma offset
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20230622131349.144160-8-benjamin.gaignard@collabora.com>
X-Provags-ID: V03:K1:7kJlUJsja2lPREtJK+HuF7keC2n5Tx00nxUKQmSzGqmAP/g37LJ
 DOgyytD3Xc+gPUa9LcGlaxnWioRo89+mye0/FJg4yE/HqGtfFFRRs5yZpXqFaVtAJxC0xKA
 pi8D/tQcQj279Cpxw6pPnfyuLjnHp114YJiup9RLyRYZXixln8yFZPTH0NjGlFe+JEKOJnq
 syilA2sOvIBDDI8eWaBpw==
UI-OutboundReport: notjunk:1;M01:P0:2uaVJO373Zw=;h4bf8LWkfnrDJhoPYeovRW+snHL
 LUzSbcYBQNIAdx0jzYi9vOFIid4SFBM95TXAJ3l9G2PVfFL8mK9SeKKN6xbEfHFXmTZUQR1hr
 IXW5I9QnyD66SJgNlTny1k3mUWWv95HYq06xwv8f1BdWKzwYWl2NhbXPThiBXYTC8UCFEc+Te
 ROXE89wBqDjmAW1o7oA3dEY3kXYxjJusE5eXL09nQdGWE1vG058Qqvh3fE04bMSjLEawcu5Ko
 Opi0JNzvt/cMmpN82yUYcdR2S+nmEz18/6ULWmJg0bdxR6fMb+ZwS9WTYPM+XsLupSh3tl9Zl
 V6jgbm/fDEmOR1efXcEgFflych7sycwJtNG7hwmqIo+i2j3GapQJcFafHabGmT40q15MUDAiB
 PZrED3dMpIZgxltFHNRxkghGJjlvss6wgUDVge9ELv0teRTZZ9zmWXvjgHnWs3u9m8QXd5hxv
 KH4QY8ARY4rA31A3ZMT+cFdcnF7eIgjW0wuEJzoKWeMlbM7il2VLYK/MGpCLLY8uYhD3R2tBI
 tl4w4I1omUG26sPzS4A1QQjLDY73tLaPFur56fHE1mD5r+mC8YKq9m7I9PdE1tC8vTtFEf03t
 LN1KtpQAruc0beK9bZRm64/kUyVJn0lVNGRAxgvFDjkdubLXEjDgEXfYIkt0jY8gj4+/8FA35
 jRK5AyG6jTas2uUegS9FDm+onrmS8c1DC4353iCP0Gm4I2Wb9Ap89ycyZp6ZXiXDQdKNzTtUF
 fI2npsVUGWtv/wcPz9VPuDtaHqlzl5GfDYxuMyLDgzSJqDdEI5aOr/R4jQOIwoo4zfV5Fhq4Y
 ksKTo9gipCulTtODp6BhuElSsJG16nlOb8nTIWGM1UzOL8T1vCw3Zh4GqysHZ9okqZa4NOmGn
 sdl7fXu1DYHpwcYs5wAmMefRWbxCHRHvbbEWAkxYmej+kwbeuCeoxItz2oKQxXHbpH2GGfD20
 ENWTDA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230702_021441_875058_369A67BA 
X-CRM114-Status: UNSURE (   5.86  )
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

PiBTb3VyY2UgYW5kIGRlc3RpbmF0aW9uIGJ1ZmZlciBoZWlnaHQgbWF5IG5vdCBiZSB0aGUgc2Ft
ZSBiZWNhdXNlCj4gYWxpZ25tZW50IGNvbnN0cmFpbnQgYXJlIGRpZmZlcmVudC4KCkhvdyBkbyB5
b3UgdGhpbmsgYWJvdXQgdG8gdXNlIHRoZSB3b3JkaW5nIHZhcmlhbnQg4oCcYWxpZ25tZW50IGNv
bnN0cmFpbnRzIGFyZSBkaWZmZXJlbnTigJ0KaW4gYSBzdWJzZXF1ZW50IGNoYW5nZSBkZXNjcmlw
dGlvbj8KClJlZ2FyZHMsCk1hcmt1cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
