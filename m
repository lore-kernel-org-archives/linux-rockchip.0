Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C08BBCA5FB3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Oct 2026 11:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BJ0cb5RI+m3cucJzfP0WlVzRWsQu3QtYtyngKYNYKiM=; b=ZoV9Rw6ZG052iw
	gJkyiQrz0/byU68GsRY3cnErGll+kbzqXv8kUTEbtXEJ22fFuM8e0DT3O0fwTiTarAQe3XChyQaQH
	W+7EVEYVbG8CF3ERglvEpM/Ucy3/AzjQVXHNFgtw++UfDwKi7r55OAd38cUWaW/xOmYbACqiFRljS
	YL6D3A3OsaBfP8tUshacVVzJdeK4Xj5XJD8UjRhkreKd0EBKuwcMWSqkgblHzGCZO6mFvVjAzM8pP
	JBZN4SqO2j7MhpCYYmHpztNHiVpNh0yRhLtJZMN2HbAA0AI0ibMbOv/dlhVr5fyfQV1s5d+bLk1ih
	h/7BePUPJ3PvCnkKngmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCFIx-00000008gaI-3d3a;
	Thu, 01 Oct 2026 11:50:27 +0000
Received: from mail-wr2-x0e.google.com ([2a00:1450:4864:30::e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCFIv-00000008gZh-1zcP
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Oct 2026 11:50:26 +0000
Received: by mail-wr2-x0e.google.com with SMTP id ffacd0b85a97d-48aff407b13so240557f8f.3
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Oct 2026 04:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790855423; x=1791460223; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=FT0Dgt5e18RHtkOZyURX3IzLv5nYyC3WvwY8rFhFXVw=;
        b=SacSMpOYwpFO/0pk8HDGdwCzKfvnUU+9bEqWYJd54bebL1yPd+XKDz10QBwIsoIKed
         c83XOcdUs+CPoMIbIXM9okcQFwVO973y0/Z6XG1FRFBXZmvb6fkZipvBMose4kWJAzgB
         jw/yj457m0EUKSNpwCaKKqwUeUv0T3si4+DjrCFRApzalCzW7J7LDJ+oqZ6BYMLnlpY5
         uvNwwgfpHSWWaItK2xCvBeeosKnzoR4+PrglCeDQLRjTnZvjEQy652vG/MVJ5fppmaZx
         PDUr0OZF7jYD5q0PFRVPQzNjFZmOX8+2RtDVnpnRM69Fx7RbrI2sN3DlPTmjr5EFm5/r
         M6sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790855423; x=1791460223;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FT0Dgt5e18RHtkOZyURX3IzLv5nYyC3WvwY8rFhFXVw=;
        b=j8+LqAH1edsRkqtsdNanWTh75REeQICyTgEAmrehDB9Had//E4Ep5LKOkFHeJgCwTn
         ZN+shaCWodWlrEocsQ31YK1hSFB6RW0+oS3tGFg4H48DgYCSVX6uqWbJirHlli9wGQ29
         8dNLfJecRkUfomqCCyU+3A2l2au0TxhHx/V7b4Npb2Vx7EqOFqO9WPAOYYN9afebzC9v
         PgX5I59aQg2txi3whulZBZLFXpb1ZKDFF+PWmY7henRExdBgfiei+RLtS5Q96f+pphBV
         LWqiPclqS0Hhv+v1Pxic7kowjUrGf+M9ldFSSILrrAMjb1uXfkquvUBaP9Wd8hUtR+PR
         JASw==
X-Forwarded-Encrypted: i=1; AKwUvBzO1qcddbIH4NohcOH3cU4saO1FWGHwbP+u4YYFhor6ayCfkZ31/UczspslStlk+OYPE86vZURaMAmO7smEfQ==@lists.infradead.org
X-Gm-Message-State: AFuF++nmdOhgX0U79U33oT9hizATUGHtzM4uM2+BQ1vxfFWJYm1TVNaX
	HD2q1mTfoj64oX8x90YsjQYifqW5AL3xAJQNzKKMakW7rYKHssSbpdDu
X-Gm-Gg: AYBFou0K1AZo/NI+HPVdhHTb4ksRy3aiqzgg2feKbjFedvcHqb1FsAwZNDvx39gW4B0
	zbXsG7yiYmfPYAiZGvjVKiqRDICZY8qiBzAXrsf+uVV2/g1VSeV9q1fxDMBk1IxUdFCmP0iZyvr
	HBz8Hgozjqati9iuBgRuGLaFdS57EWqrGefrOT8ungiJRkT7BuGxV/XMEmcS1YKXlNDzN0xVrMP
	q5zCEFALPI7wT7c7K0mrsFg3n8HCXLMjPP/SQXaMjutPHUWCBdJAHssBVPj/A5awl3U5Y98Sk78
	ZW7cEqYy/MUa9iVC0ZvkjYcwjv6brcqpKjz10+WkyudTBhP2aQw/yEl4ftqLw33VjuhjtqUtYmT
	CqgkWaX0cUrDxKuTJQWs+6OqC8jm5OWLr6ZdB0sVrtrxQwipe+aoHxywM+j5a2AnpH8RvyP3Ypl
	a5OF2oQLAzBYodfc/LBrlyFvj+3bn8neg8BGllHmGdO7491xBtIQRwt3FdZvtJYUyzWEfBuC72d
	JdFLvcOj+RnWNIWf3jTmsijB+ZzmY2egZxkVG0I74SLjSCfVG+yI9S55Skrw4gFUlbDeLFgRMPw
	Bw==
X-Received: by 2002:a05:600c:8b6e:b0:4a0:73b:a222 with SMTP id 5b1f17b1804b1-4a01ab4e548mr75513495e9.0.1790855422802;
        Thu, 01 Oct 2026 04:50:22 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B894800E6F933EC01173D6E.dsl.pool.telekom.hu. [2001:4c4e:1b89:4800:e6f9:33ec:117:3d6e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a023ebe694sm37475235e9.10.2026.10.01.04.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 04:50:22 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: =?UTF-8?q?H=C3=BCseyin=20BIYIK?= <boogiepop@gmx.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Oded Gabbay <ogabbay@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and some numbers
Date: Thu,  1 Oct 2026 13:49:58 +0200
Message-ID: <20261001114958.24236-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260903185147.49411-1-royalnet026@gmail.com>
References: <20260801131656.58450-1-royalnet026@gmail.com> <ad1e526e-a4cf-4c34-88ff-1884ef2f3dfe@kwiboo.se> <286e8418-fae6-4979-96d1-e13abb04b3a1@kwiboo.se> <3204a0d0-969d-4ac6-adfd-29c57f1c3e0a@kwiboo.se> <20260819125932.5853-1-royalnet026@gmail.com> <82c8b17e-7215-45ea-84d1-9991ba6fb541@kwiboo.se> <20260819184807.6665-1-royalnet026@gmail.com> <f5241666-9657-4f49-958f-476fd366e408@gmx.com> <20260902110432.22069-1-royalnet026@gmail.com> <20260903091646.7183-1-royalnet026@gmail.com> <2f88072c-6aa3-4294-a35d-722d1c7a405c@email.android.com> <20260903185147.49411-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_045025_531095_C78D2022 
X-CRM114-Status: GOOD (  10.13  )
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

SGkgSMO8c2V5aW4sCgpBIGNvcnJlY3Rpb24gdG8gbXkgdHdvIG1haWxzIG9mIDMgU2VwdGVtYmVy
IGluIHRoaXMgdGhyZWFkLCB3aGVyZSBJCnRvbGQgeW91IHRoYXQgdGhlIE5QVSByZWFkYmFjayBm
cm9tIEJMMzEgd2FzIHRoZSBjb3VudGVyIGFuZCBub3QgdGhlCnJlcXVlc3QuIFlvdSB3ZXJlIHJp
Z2h0IGFuZCBJIHdhcyB3cm9uZy4KClRoZSByZWFkaW5nIHN0b3BwZWQgYXQgY2xrX3NjbWlfbnB1
X2dldF9yYXRlKCkgaW4gcmszNTg4X2Nsay5jLiBUaGUKY2FsbCBnb2VzIHRocm91Z2ggcGxhdF9z
Y21pX2Nsb2NrX2dldF9yYXRlKCkgaW4KcGxhdC9yb2NrY2hpcC9jb21tb24vc2NtaS9zY21pX2Ns
b2NrLmMsIHdoaWNoIHJldHVybnMgdGhlIGxhc3QKYWNjZXB0ZWQgcmF0ZSAoY2xvY2stPmN1cl9y
YXRlKSB3aGVuZXZlciAtPmdldF9yYXRlKCkgcmV0dXJucyAwLiBTbwoibm8gZmFsbGJhY2siIHdh
cyBmYWxzZTogYSB6ZXJvIGluIE5QVUdSRisweDI0IGNvbWVzIGJhY2sgYXMgdGhlIGxhc3QKcmF0
ZSB0aGUgZmlybXdhcmUgYWNjZXB0ZWQsIHdoaWNoIGF0IGFuIGFjY2VwdGVkIE9QUCBpcyB0aGUg
cmF0ZSBhc2tlZApmb3IsIGFuZCB0aGF0IGlzIGV4YWN0bHkgd2hhdCBJIHNhdywgMTAwMDAwMDAw
MCBpbiBhbGwgMTA0IHNhbXBsZXMgYXQKdGhlIDEgR0h6IE9QUC4gVGhlIEdQVSByZWFkYmFjayBv
biB0aGUgc2FtZSBCTDMxIG1vdmVkICgxMDQ3IHRvCjEwNTQgTUh6KSwgc28gb24gdGhlIEdQVSBh
IGNvdW50ZXIgaXMgYmVpbmcgcmVhZC4gVGhlIFRSTSBsaXN0cyBOUFUKR1JGIDB4MjQgYXMgTlBV
X0dSRl9OUFVUT1BfQ09OLCBidXQgdGhlIEdQVSBzdGF0dXMgd29yZCB5b3VyIGNvbW1pdApyZWFk
cyBhdCBHUFUgR1JGIDB4MTggaXMgbm90IGluIHRoZSBUUk0gZWl0aGVyLCBzbyB0aGUgb2Zmc2V0
IGFsb25lCnNldHRsZXMgbm90aGluZy4gV2hhdCBJIGhhdmUgaXMgdGhlIEVMMSByZWFkIG9mIE5Q
VSBHUkYgMHgyNCwgMCBpbiBhbGwKMjAgc2FtcGxlcywgYW5kIHRoaXM6IG9uIDE1IFNlcHRlbWJl
ciwgd2l0aCB0aGUgcmFpbCBwaW5uZWQgYXQgODUwIG1WLApyZXF1ZXN0cyBvZiA4MDAsIDkwMCBh
bmQgMTAwMCBNSHogcmVhZCBiYWNrIGV4YWN0bHkgODAwLCA5MDAgYW5kIDEwMDAsCmFsdGhvdWdo
IHlvdXIgdGFibGUgcHJvZ3JhbXMgdGhlIHNhbWUgcmluZyBsZW5ndGggZm9yIGFsbCB0aHJlZS4g
T25lCmNvdW50ZXIgY2Fubm90IHJldHVybiB0aHJlZSBudW1iZXJzIGZvciBvbmUgcmluZyBhdCBv
bmUgdm9sdGFnZS4KCldoYXQgc3RhbmRzOiB0aGUgQ1JVIHNlbGVjdG9yIChDTEtTRUxfQ09ONzQg
Yml0IDApIHNob3dzIHRoZSBQVlRQTEwKcGF0aCwgYW5kIHRoZSBpbmZlcmVuY2UgbnVtYmVycyBp
biB0aG9zZSBtYWlscyBhbmQgaW4gdGhlIHYyIGNvdmVyIGFyZQp1bmNoYW5nZWQuIFdoYXQgSSB3
aXRoZHJhdzogInNlY3VyZSB3b3JsZCBzZWVzIHRoZSBjb3VudGVyIiwgInRoZQpjb3VudGVyIGlz
IGFsaXZlIGluIHNpbGljb24iLCAiRUwzIHJlcG9ydHMgcmF3IG1lYXN1cmVtZW50cyIgYW5kICJ0
aGUKcmVhZGJhY2sgaXMgdGhlIGNvdW50ZXIiOyAiY29uc3RhbnQgdG8gdGhlIE1IeiIsIHdoaWNo
IEkgb2ZmZXJlZCBpbgpwbGFjZSBvZiAibG9ja3MiLCBnb2VzIHdpdGggdGhlbSBhcyBhIHN0YXRl
bWVudCBhYm91dCB0aGUgaGFyZHdhcmU7CmFuZCAidGhlIGNsZWFuIHRlbGVtZXRyeSBwYXRoIGZv
ciByb2NrZXQgRFZGUyIgaG9sZHMgZm9yIHRoZSBHUFUgYW5kCnRoZSBDUFVzLCBub3QgZm9yIHRo
ZSBOUFUuIFRoZSBhY3R1YWwgTlBVIFBWVFBMTCBmcmVxdWVuY3kgaXMgbm90Cm1lYXN1cmVkIG9u
IG15IGJvYXJkLiBJIHdpbGwgc2F5IHRoZSBzYW1lIGluIHRoZSB2MyBjb3Zlci4gU29ycnkgZm9y
CmFyZ3Vpbmcgd2l0aCB5b3UgYWJvdXQgaXQuCgpBbiBMTE0gKENsYXVkZSkgZm91bmQgdGhlIGZh
bGxiYWNrIGFuZCBkcmFmdGVkIHRoaXMgbWFpbCBpbiBFbmdsaXNoOwpJIHJlYWQgaXQgYmFjayBp
biBTZXJiaWFuIGJlZm9yZSBzZW5kaW5nLgoKSWdvcgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
