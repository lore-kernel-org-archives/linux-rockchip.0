Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E04F7C5DF85
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 18:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMkho35rXyYOnKcjjGTxmn1lvTtC0h/TpJHRxdF1wPY=; b=JypomSpKtcI5D/
	s8iy+eqppDqIagHrEqAXcBNniiO0WWkfZXfGnGOMfgHaXH093G1K3Q3N7EKEe7l3zRzUpSoq30vA0
	B07G6nvK810iRt4uqOF9kKWItCg4btBwZ8Poe2BMGWyIw0RHe72fcTeurKcFMF8xG9sA/wH4YviO/
	ojZsQ9YQ1n6KHFGodW4pm07d93Cah1WaETMRoxNSFfcCn3sJuJ6BjTQ9fUSi5rgldw6KA8ej+jX87
	rNVYPZzm7fxxaXRChvFjcm2NThIpQyj0lzfR/qXOfyH19TG3DbfXh9VGEOpIEBG07A6rNinxW9g/n
	BUxQh+Kszys1Ma1pM8gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwlL4-0000000AOmz-3bSz;
	Wed, 19 Aug 2026 18:48:38 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwlL1-0000000AOmN-1DGx
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Aug 2026 18:48:37 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-47fe45db360so161468f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Aug 2026 11:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787165313; x=1787770113; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=EW739r7Mim0OCsUop6lWVdH7PWAyT2daLn1wLOzX3fI=;
        b=MjjdDhC/pL8O9fcOAUMPq4IMhQNC8UUIIOiQZB+dQqEGYH9/yTX5Rt6pyUsS0NvIeQ
         5wzGvSnoPGjbWQecKbSPTks5uh9dZ5Zb7UwZ5/rHXBCjjLcbmFhBRxzwb+ABCAAJzkCR
         Wdd8WsRE2bTdFYTRgoXBHMPknoDL8DzlVWTWQVVMl4rhg7rwBQqyHXHtX4f/na6NOU2N
         6plLzcPp+G4Gp9ugzNMNB52EmSuRLAGhI9QVm9Si4W786+tsY1J+EAavaJGLSrXu6EbD
         h54IAvJ13WEXdzCjPAsuVUAJnNZryNzJ9C9AsvT28xkzDxgq5J+Fq8omjaWBWr+D8vV0
         8CKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787165313; x=1787770113;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EW739r7Mim0OCsUop6lWVdH7PWAyT2daLn1wLOzX3fI=;
        b=Aj+xQyPZzxdHw/Uv35Iyo4Siar8e00LN1T7GUPYvQRabnneO6NPLcaNGP6zObytbJm
         LxfrQObf5W3taL5E7cKQT28kV6b6dbVkkIUjJIFH9PmgXMN3E60IYrwf1O1bs88oWAGx
         nvPVPhGRQDa3ZKUk8yOqFQVDbIt+oIdvShiQHT7LsJ3zz9dKOhOv3iIcrBiDAkyHRyO2
         MSknonaQxzBE6S50JnE9YpnOomRbvDhASx7V5NPv7fiidaLALXI5v4g/46umxki+VYgj
         DN6aTUQsqC65QcNQ8ZE5sX2f/R2OesYJ0vwE1HhfJAxHlt/Pe/4n8qFOurrJOH9TTmc9
         qIRw==
X-Forwarded-Encrypted: i=1; AHgh+RqKUbwXdcxmnO6NI1HDT7H7tjMuCqGBwTy7IBuYtrrUFp3EgIIRts4cuQAhcS3+U9u1exkOC5mhTvUAVTU9gg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0mPgHi0X0S+qVyZHR23qK/IdgjuXK1V3fmQvbqzkXQNe6gDLb
	BncsX+NiSaqQibsIYZc/c/WjY9XbmLF8jZjy5/tXvNq9jwu5B+d6wt1Bg86qOw==
X-Gm-Gg: AR+sD10yXDu+LyHJKTSmVkV5g0LtZh7C+sJFm/UpUK+Cn/8dtnSJbhfWkDaav9XWu2M
	IoDHUz36NCkYCOXO0cGib8YF7UGoUDXXaYlmpo63jVmjNzh1fRM3UReKadMos4nmWDhU2F/HtYi
	K98L2Y8tOqmHQfwj/MF3bCrfSA6ieVi+JTK+KpmWxgvMtQMjhnGY2tEUxYRADMo1kas/0XvaziI
	xKKdfE4EpaChLteaog+nQ1eLNUhbkOJb6Y7XIf7fb/WjE5dG0D8TpVVgaH4oPT8LqKmprR9oixP
	x8aHQtWopJUrmEA92zW1Qve5PFN5SKMuQZjRH6pNvoDdYiSaiTimSWxW3dd5R+up8cph+N8hKC4
	+mqplLq4xYc23v1TbA2uTHvnI+RFrcthmcNINXbZL+ogkIqaq32mw50aXWFjIN3iR4GLhh4islL
	7FSBHbpNBV1q3e0RVK5cx6LP2ks6im4aG9sxsgDKsbz6i5xtYajLz02JfaDUycOLYFofYPg8ikF
	KNEU4y6DemcooNwxR7UmbVEKIx9vTaRalxYz7+4bLciUfUbS0PDrVTbRpPBeKjhg8C5F0iRTiIp
	e2e0
X-Received: by 2002:a05:600c:4f56:b0:498:8e6:d463 with SMTP id 5b1f17b1804b1-499aa19a75fmr67821295e9.1.1787165313072;
        Wed, 19 Aug 2026 11:48:33 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B9296006957154F80580DB7.dsl.pool.telekom.hu. [2001:4c4e:1b92:9600:6957:154f:8058:db7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499a9b7c987sm40444085e9.1.2026.08.19.11.48.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Aug 2026 11:48:32 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	=?UTF-8?q?H=C3=BCseyin=20BIYIK?= <boogiepop@gmx.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Oded Gabbay <ogabbay@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and some numbers
Date: Wed, 19 Aug 2026 20:48:00 +0200
Message-ID: <20260819184807.6665-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <82c8b17e-7215-45ea-84d1-9991ba6fb541@kwiboo.se>
References: <20260801131656.58450-1-royalnet026@gmail.com> <ad1e526e-a4cf-4c34-88ff-1884ef2f3dfe@kwiboo.se> <286e8418-fae6-4979-96d1-e13abb04b3a1@kwiboo.se> <3204a0d0-969d-4ac6-adfd-29c57f1c3e0a@kwiboo.se> <20260819125932.5853-1-royalnet026@gmail.com> <82c8b17e-7215-45ea-84d1-9991ba6fb541@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_114835_355391_42A4D38A 
X-CRM114-Status: GOOD (  15.80  )
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

SGkgSm9uYXMsCgpPbiA4LzE5LzIwMjYgNjoyMCBQTSwgSm9uYXMgS2FybG1hbiB3cm90ZToKPiBD
b3JyZWN0LCB0aGUgcG93ZXIgZG9tYWluIG11c3QgYmUgcG93ZXJlZCBvbiB3aGVuIFBWVFBMTCBp
cyB1c2VkLCBJCj4gdGhvdWdodCB0aGlzIGhhZCBhbHJlYWR5IGJlZW4gY29uY2x1ZGVkLiBJdCBp
cyBoYXJkIHRvIGZ1bGx5IGtlZXAgdHJhY2sKPiB3aGVuIGNvbnRleHQga2VlcHMgYmVpbmcgcmVt
b3ZlZCBpbiBlYWNoIG5ldyBtYWlsIDstKQoKRmFpciBwb2ludCB0YWtlbiAtIEkgd2lsbCBrZWVw
IG1vcmUgb2YgdGhlIHF1b3RlZCBjb250ZXh0IGZyb20gaGVyZSBvbi4KQW5kIHllczogd2hhdCB0
aGUgcmVzZXQgcnVuIGFkZGVkIG92ZXIgdGhlIGVhcmxpZXIgY29uY2x1c2lvbiBpcyBvbmx5CnRo
ZSBkaWZmZXJlbnRpYWwgcGFydCAoYnVzIGNsb2NrcyBtZWFzdXJhYmx5IGNvbnRyaWJ1dGUgbm90
aGluZyksIHBsdXMKdGhhdCB0aGUgZmFpbHVyZSBpcyBhbiBpbW1lZGlhdGUgZmlybXdhcmUtbGV2
ZWwgcmVzZXQgcmF0aGVyIHRoYW4gYQpyZWNvdmVyYWJsZSBlcnJvci4KCj4gSXQgaXMgcHJvYmFi
bHkgbm90IGp1c3Qgc2V0X3JhdGUsIHdpdGggUEQgYW5kL29yIENMS3MgZGlzYWJsZWQganVzdAo+
IHJlYWRpbmcgY2xrX3N1bW1hcnkgdG8gcmVhZCBTQ01JIGNsb2NrIHJhdGUgY2FuIGlzc3VlIFNF
cnJvciBvciBhIGZyZWV6ZS4KClRoYXQgaXMgYSB2ZXJ5IHVzZWZ1bCBkYXRhIHBvaW50IC0gaXQg
d2lkZW5zIHRoZSBoYXphcmQgZnJvbSAicmF0ZQpjaGFuZ2VzIiB0byAiYW55IFNDTUkgY2xvY2sg
b3AiLCBzbyB0aGUgc2VyaWVzJyBndWFyZHMgaGF2ZSB0byBjb3ZlcgpnZXRfcmF0ZSBwYXRocyB0
b28uIEl0IHdpbGwgYmUgcXVvdGVkIGluIHRoZSBjb3ZlciBsZXR0ZXIuCgo+IFRvIG15IGtub3ds
ZWRnZSB0aGVyZSBhcmUgc3RhdHVzIHJlZ3MgdGhhdCBjYW4gYmUgdXNlZCB0byBnZXQgdGhlCj4g
bWVhc3VyZWQgcmF0ZSBvZiB0aGUgUFZUUExMLCBhdCBsZWFzdCB1cHN0cmVhbSBURi1BIGhhdmUg
YSBjb21taXQgWzNdCj4gZm9yIFJLMzU4OCB0aGF0IGNoYW5nZXMgdG8gcmVwb3J0IHRoZSBtZWFz
dXJlZCByYXRlIHdoZW4gUFZUUExMIG1vZGUgaXMKPiB1c2VkLgoKVGhpcyB3YXMgZXhhY3RseSB0
aGUgbWlzc2luZyBwaWVjZSAtIHRoYW5rIHlvdS4gSSB0cmllZCBpdCBmcm9tIHRoZQprZXJuZWwg
c2lkZSB0b25pZ2h0LCBhbmQgaGVyZSBpcyBhbiBob25lc3QgbmVnYXRpdmUgcmVzdWx0OiB3aXRo
IHRoZQpyaW5nIGRlbW9uc3RyYWJseSBsaXZlIChDT043NCBiaXQwPTEsIENPTjAuLjIgcmVhZGJh
Y2sgbWF0Y2hpbmcgdGhlClRGLUEgdGFibGUgZm9yIDEgR0h6KSwgdGhlIGRvbWFpbiBvbiwgcGNs
a19ucHVfcm9vdCBoZWxkLCBhbGwgdGhyZWUKTlBVIFBWVE0gZ2F0ZXMgaW4gQ0xLR0FURV9DT04o
MjkpIG9wZW5lZCAoYml0cyAxMi8xNC8xNSksIHVkZWxheSgyKQpiZWZvcmUgZWFjaCByZWFkLCBh
bmQgZXZlbiB3aXRoIHRoZSB3aG9sZSBzZXRfcmF0ZSBzZXF1ZW5jZSByZS1ydW4gYnkKdGhlIGZp
cm13YXJlIGFmdGVyIHRoZSBnYXRlcyB3ZXJlIG9wZW5lZCAtIE5QVSBHUkYrMHgyNCByZWFkcyBh
IGhhcmQKMHgwMDAwMDAwMCBmcm9tIEVMMSwgdHdlbnR5IHNhbXBsZXMgcGVyIGFybSwgZm91ciBh
cm1zLgoKU28gYSBxdWVzdGlvbiBmb3IgeW91IGFuZCBmb3IgSMO8c2V5aW4gKGFkZGVkIHRvIENj
KTogaXMgdGhhdApTVEFUVVMgcmVnaXN0ZXIgcGVyaGFwcyByZWFkYWJsZSBmcm9tIEVMMyBvbmx5
LCB3aXRoIEVMMSByZWFkcyBhcwp6ZXJvPyBUaGF0IHdvdWxkIGV4cGxhaW4gZXZlcnl0aGluZywg
c2luY2UgWzNdIHJlYWRzIGl0IGluc2lkZSB0aGUKZmlybXdhcmUuIElmIHNvLCB0aGUgY2xlYW4g
cGF0aCBpcyB0aGUgb25lIFszXSBhbHJlYWR5IGltcGxlbWVudHMgLQphZnRlciBteSB0cmlwIEkg
d2lsbCBjaGVycnktcGljayBpdCBpbnRvIHRoZSBCTDMxIG15IGJvYXJkIHJ1bnMgKGl0IGlzCnBs
YWluIHVwc3RyZWFtIHYyLjEyIHRoZXJlKSBhbmQgcmUtbWVhc3VyZSB0aHJvdWdoIHBsYWluIGNs
a19nZXRfcmF0ZSwKd2hpY2ggYWxzbyBzcGFyZXMgdGhlIGtlcm5lbCBhbnkgR1JGIGFjY2VzcyBh
dCBhbGwuCgpbM10gaHR0cHM6Ly9naXQudHJ1c3RlZGZpcm13YXJlLm9yZy9wbHVnaW5zL2dpdGls
ZXMvVEYtQS90cnVzdGVkLWZpcm13YXJlLWEuZ2l0LysvZDJkNjkyODY0MWJhY2ZhMjM3MGE5YmIz
OGNkZGRhZDIyOWQ5OWFkNgoKUmVnYXJkcywKSWdvcgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
