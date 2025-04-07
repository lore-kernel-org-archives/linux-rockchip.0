Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7238DC36010
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Apr 2025 18:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jYrw2gmYDhcaX2moiyfqqIz4YAi7VqkV/J9/Qk5hLQ=; b=qWIgglvy3EFsCz
	t7308OGMg04W07aREIjtLvoxdZRUiRI5G9F0T9AdjZR6eNGuxGqW5Ve4BR5Hyn3nFPQpPA5b3sgAc
	wBQ22Q4zV/0MKdtKXIv9OGhT771pwDEvihDEPSM+dg7M3BfN1nVfP0FEVX1LT58hi/F/ezTGzbTo0
	QbvkCDw+YosfMwHIlb6/BcTVURcEcGmGMb8hgWtvlb3U0wCDFDkgg2dR076oi1oeoJLgfRU1wM42B
	2psLykfa+lFhFtmGm0HEiv+fPMtKUa9YsEdmQIFlbarvF/Gmd2tXXsWudFNpt8BYYA0uNpeHNnnrb
	YVRVsrgf8mvcmNhjv9/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1r1Z-00000001VOE-1Y4c;
	Mon, 07 Apr 2025 18:16:45 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1oqB-000000011zG-14r3;
	Mon, 07 Apr 2025 15:56:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 31AC06115E;
	Mon,  7 Apr 2025 15:56:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55AEEC4CEE7;
	Mon,  7 Apr 2025 15:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744041410;
	bh=lB60eOJuf5tOWXfPKUzsxGfJef4dFGup2NjoNJe7wnM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Uh5uiJLM2GbJZh2empkgAoW7OP6kChL6dFWFY7ekUSlkXXjH/HNgLOaHvwXV+Y2vz
	 ZQ0WYyMFRITXJeVajWbn8NQrleMF6L2lu6svbF6TujpSvc8Xv2GSsmSN4hDJ1eYZzB
	 l8pLiPOZL5dLdRjxw8kb9JuL8mzyiwr3tX86QnCDuGo4L7PsbOKlIJSMylX4EPIt6V
	 7Q2ipTIQJxrwPp/Kc5herELmX9RlDXBEq2ammPU+n4F+g9bwSELzteAJBDCh369ZHn
	 nOFnK27gpbD4/1VNl0UOqVYUt0iRJpEJWU0FUiJI3j74luu1G0LAndJH5oa7JZUoAR
	 NrEpQ1ePUmF6Q==
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-abbd96bef64so874550866b.3;
        Mon, 07 Apr 2025 08:56:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVlCRNa6yjp1BaWZfF0x4xCkpoWv5GZlWVZZkyoZkq+dr5dZNAQnmHyYwEI6RTdpvEz3Cwz8vS7IUJF6kJFpPMD@lists.infradead.org, AJvYcCX4n/xe2HyGTYbJAytf06YJ4s8zl6u59bLSm5ArnVIybaAMY5wTkibQDPUWP2jCAWc2ptHy8GSHlZxUjHAqoX0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4xVch6MuQAI+Z+GgEf6AZpCU/PJlepK6lQVZgQw7MU2wM34HM
	M9G5Am7tbQ804KsBVg1LgcwU0HQbSfFDfk3J+FVwZCCrYcA8MEn4IOqj/sQIgYoCbMVKXpjNs3/
	LIN+XXID64GMiqJ5KIx6Yp/NdfA==
X-Google-Smtp-Source: AGHT+IEwypuQHtewe7oLHDK0Lin7VVDrmqaMnF/yfoZXK0Vm9Z2Mu4r1UfY0Dvl+rcyWlqG0RDs93c4ecVbGJ/eFp/s=
X-Received: by 2002:a17:907:7e88:b0:ac6:bf3d:bf45 with SMTP id
 a640c23a62f3a-ac7d19671efmr1333301966b.36.1744041408915; Mon, 07 Apr 2025
 08:56:48 -0700 (PDT)
MIME-Version: 1.0
References: <5552256.Sb9uPGUboI@phil>
In-Reply-To: <5552256.Sb9uPGUboI@phil>
From: Rob Herring <robh@kernel.org>
Date: Mon, 7 Apr 2025 10:56:37 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJo+9ycUFHVZ2Darh_RWaRuJGX6KKQGsbeuDWav7vKA2g@mail.gmail.com>
X-Gm-Features: ATxdqUFJPngLMLFKdy7L4W0Pm0-UEMG8nDV-9UTClAhrHanA2WHbpGaiUSuF7Mg
Message-ID: <CAL_JsqJo+9ycUFHVZ2Darh_RWaRuJGX6KKQGsbeuDWav7vKA2g@mail.gmail.com>
Subject: Re: [GIT PULL] Rockchip dts64 changes for 6.15 #3
To: Heiko Stuebner <heiko@sntech.de>
Cc: arm@kernel.org, soc@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
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

T24gV2VkLCBNYXIgMTksIDIwMjUgYXQgNjo1NuKAr1BNIEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4gSGkgc29jIG1haW50YWluZXJzLAo+Cj4gSSBtYWRlIGFuIGVy
cm9yIGFuZCBhY2NpZGVudGlhbGx5IGFwcGxpZWQgYSBwYXRjaCB0aGF0IHdhcyBtZWFudCBmb3IK
PiB0aGUgbWZkIHRyZWUuIFRoYW5rZnVsbHkgU3RlcGhlbiBub3RpY2VkIHRoYXQgd2hlbiB0aGUg
ZHVwbGljYXRlCj4gY29tbWl0IGFwcGVhcmVkIGluIGxpbnV4LW5leHQuCgpCb3RoIGNvbW1pdHMg
YXJlIGluIHY2LjE1LXJjMSBub3cgYW5kIHRoZSByZXZlcnQgaXMgbm90LCBzbyB0aGlzCnNob3Vs
ZCBub3QgZ2V0IGFwcGxpZWQvcHVsbGVkLiBPciB5b3Ugd2lsbCBuZWVkIHRvIHJldmVydCB0aGUg
cmV2ZXJ0LgoKUm9iCgo+Cj4KPiBQbGVhc2UgcHVsbC4KPiBUaGFua3MKPiBIZWlrbwo+Cj4KPiBU
aGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDczZDI0NmI0NDAyYzMzNTZmNmIzZDEz
NjY1ZGUzYTUxZWVhN2I1NTU6Cj4KPiAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiByZW1vdmUgZXRo
bTBfY2xrMF8yNW1fb3V0IGZyb20gU2lnZTUgZ21hYzAgKDIwMjUtMDMtMTUgMTU6NDk6MDAgKzAx
MDApCj4KPiBhcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoKPgo+ICAgZ2l0
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L21taW5kL2xpbnV4LXJv
Y2tjaGlwLmdpdCB0YWdzL3Y2LjE1LXJvY2tjaGlwLWR0czY0LTMKPgo+IGZvciB5b3UgdG8gZmV0
Y2ggY2hhbmdlcyB1cCB0byBjZWUyNGJjNzNkNGYzZjQ3MzQ0YTFhNTQxMDBhNjljNzJmMWRiMDYx
Ogo+Cj4gICBSZXZlcnQgImR0LWJpbmRpbmdzOiBtZmQ6IHN5c2NvbjogQWRkIHJrMzUyOCBRb1Mg
cmVnaXN0ZXIgY29tcGF0aWJsZSIgKDIwMjUtMDMtMTkgMDA6MjI6MTggKzAxMDApCj4KPiAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCj4gUmV2ZXJ0IG9mIG9uZSBjb21taXQgdGhhdCB3YXMgYXBwbGllZCBhY2NpZGVudGlhbGx5
IGFuZCBzaG91bGQgaW5zdGVhZAo+IGdvIHRocm91Z2ggdGhlIE1GRCB0cmVlLiBJdCBpcyBhbHJl
YWR5IHBhcnQgb2YgdGhhdCB0cmVlIGFzCj4gY29tbWl0IDdmM2UzZTcyMjhiYiAoImR0LWJpbmRp
bmdzOiBtZmQ6IHN5c2NvbjogQWRkIHJrMzUyOCBRb1MgcmVnaXN0ZXIKPiBjb21wYXRpYmxlIiku
Cj4KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gSGVpa28gU3R1ZWJuZXIgKDEpOgo+ICAgICAgIFJldmVydCAiZHQtYmlu
ZGluZ3M6IG1mZDogc3lzY29uOiBBZGQgcmszNTI4IFFvUyByZWdpc3RlciBjb21wYXRpYmxlIgo+
Cj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lzY29uLnlhbWwgfCAy
IC0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQo+Cj4KPgo+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
