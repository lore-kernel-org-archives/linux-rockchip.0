Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7170BC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 07:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PVxFEf5eGLNeP3Sb/fT1RmzAKQT4ZMZXwCMMqfkthY=; b=iV/D8O0orADNXY
	nPEu7ZIO3uR/MK+lP5xJwcKPmPGnQA1TTjVuBGvPQsxbTJiG4888i7eivk7a/wOasj+re3CiRyVcx
	NkpHuucsmT/BKo7SmapXbQaBlx30e630Xwdi3qW+U9/9g7n9HLsrpmKCJwXuaShvvpgA1LdKFnIH+
	RqWi6whjRGkWZ+Gol9u+ebV0sPRl/3zxJ1n8UI6mWhPtldtxHK8Kc/fvc62I7lHC0iRTKGJ4j0sHs
	3k5dNlx286k2MzbENHKBfSV3Jbt3nJdUw++3aEfu0ayOJ/o7foVM9KMImzKenXJekmk344oB6uQeP
	33WD2ylmjtCyLUIeLcnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shOKh-0000000FYwX-0BWc;
	Fri, 23 Aug 2024 07:03:39 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shOKd-0000000FYvF-3XPZ
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 07:03:37 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-534366c194fso933305e87.0
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2024 00:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1724396613; x=1725001413; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=631IyQQFrTSi5qSS+uAt8xZOc4toTWziEe/GEentgL4=;
        b=l64VfIiPzJTXeS6Woch3+1o+6XlC5/8JbYL7pH4YXhWw8Cn/qhZ9Q7175pQ4Kovfd0
         wUJtYVCbthMy0pw4W7xDqx2PZgAgDG4aQKV53ZBgFVkLciRBS8TemPEfGT+lnC5oaG1a
         wtjEwYQH/li+PfMN1jRJppRkU9qmkbS3n8dYgNHFpvkyfOMEe3EGmHWewVsgRPoeuL6A
         BzbcxJtj4MAYx/SSkrhuBppAc5EjxiWNg23KL5lmukAS6iOdlIIMvIPPch9L4+uumBHC
         8DNjCtoQksTyAws8a0SEolWoI56e05vUJdZKlzN59qDcK+ocsE7M6Fq37DrDGkDqlCkl
         xPww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724396613; x=1725001413;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=631IyQQFrTSi5qSS+uAt8xZOc4toTWziEe/GEentgL4=;
        b=KvPWlXykm2aHl9JAEEOkQt9FLAYXbbRbL6G+gf/+W7lNMKNYC//gSerKytLZNep23k
         67uIcWXlgmOIFNnUDtMjkzVL1oWiNjoJ9dchi6n6QlWw4xqXSJT0n3oGEVGLv7Q1FTzI
         Vfw3LuGy8dd53Ll9x/lXWu+hxadvkJrXiNSn6ceub7H8z9fEuXoZ2JFvbbm2UJVZmhPO
         D96eeNb+BA9PMCFJQT6HPzW5ilQUx/wtf9z48D5a0iWvZevSjG0CiBBQbB0GyfpkhQhr
         MCkEX7ji2Ci0aPujpvnSkkvi3qO/w6AfVI0Zi+boJGxHAsr5WAIT8BtCV5WdhzvqBHiE
         O9gA==
X-Forwarded-Encrypted: i=1; AJvYcCXzNdhf77YAYaDse+8Jl10v5X4aYzUYagmmPopg4HCLoGjR6mup128kAXX9tbUs2wesa4sIV1m26zdvECXstA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxMwtCUQpBCpm0vGRaAtRtD87EVrVPR2saAb6pHpcWNIeHXs0us
	nxLAdtrnBuMNQvj/S3o7eh1P+EqaEahEnOLMA5xVDrzJJoc90A8YinJd0hwcDGTZJ0EO9K+YNVF
	dKuFDKCalPlTzBuO5S8o0Bfy0tB0ydnXel2LP7Q==
X-Google-Smtp-Source: AGHT+IHY49T3oJIuQgQ/+y4wG4KjjwuaGjX4iUjBSV6dFDznjIAjomIHYM3UH7bhzmqjoQsvR5HkDstbYmlY4IRkH+8=
X-Received: by 2002:a05:6512:3ba3:b0:530:ad9f:8757 with SMTP id
 2adb3069b0e04-534387be3f9mr814471e87.45.1724396612600; Fri, 23 Aug 2024
 00:03:32 -0700 (PDT)
MIME-Version: 1.0
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
In-Reply-To: <20240823034314.62305-1-ye.zhang@rock-chips.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 23 Aug 2024 09:03:21 +0200
Message-ID: <CAMRc=MfsSXXu5uJE3FjvpTeEJEkLYwsKbiQdCO=d7L50cXREzg@mail.gmail.com>
Subject: Re: [PATCH v2] gpio: rockchip: Update the GPIO driver
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, heiko@sntech.de, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, mika.westerberg@linux.intel.com, 
	andriy.shevchenko@linux.intel.com, tao.huang@rock-chips.com, 
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com, 
	elaine.zhang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_000336_164103_0D97C9DA 
X-CRM114-Status: GOOD (  12.63  )
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

T24gRnJpLCBBdWcgMjMsIDIwMjQgYXQgNTo0NeKAr0FNIFllIFpoYW5nIDx5ZS56aGFuZ0Byb2Nr
LWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBHUElPIGRyaXZlciBzdXBwb3J0IGFjcGkgYW5kIG5ldyB2
ZXJzaW9uLCBzZXQgaW5wdXQgZGlyZWN0aW9uIGluCj4gaXJxX3JlcXVlc3RfcmVzb3VyY2VzLCBm
aXggZGl2aXNpb24gZXJyb3IgYW5kIGRlYm91bmNlIGNvbmZpZyBlcnJvci4KPgo+IENoYW5nZXMg
c2luY2UgdjE6Cj4gLSBTcGxpdCBjb21taXRzIHdpdGggbXVsdGlwbGUgY2hhbmdlcyBpbnRvIHNl
cGFyYXRlIGNvbW1pdHMuCj4gLSBBZGp1c3QgYmFja3BvcnRhYmxlIGZpeCB0byB0aGUgZm9yZWZy
b250Lgo+IC0gTW9kaWZ5IG1lc3NhZ2VzIG9mIHNvbWUgY29tbWl0cy4KPgo+IFllIFpoYW5nICgx
MSk6Cj4gICBncGlvOiByb2NrY2hpcDogYXZvaWQgZGl2aXNpb24gYnkgemVybwo+ICAgZ3Bpbzog
cm9ja2NoaXA6IHJlbGVhc2UgcmVmZXJlbmNlIHRvIGRldmljZSBub2RlCj4gICBncGlvOiByb2Nr
Y2hpcDogcmVzb2x2ZSBvdmVyZmxvdyBpc3N1ZXMKPiAgIGdwaW86IHJvY2tjaGlwOiByZXNvbHZl
IHVuZGVyZmxvdyBpc3N1ZQo+ICAgZ3Bpbzogcm9ja2NoaXA6IGZpeCBkZWJvdW5jZSBjYWxjdWxh
dGUKPiAgIGdwaW86IHJvY2tjaGlwOiBVcGRhdGUgZGVib3VuY2UgY29uZmlnIGZ1bmN0aW9uCj4g
ICBncGlvOiByb2NrY2hpcDogc3VwcG9ydCAnY2xvY2stbmFtZXMnIGZyb20gZHQgbm9kZXMKPiAg
IGdwaW86IHJvY2tjaGlwOiBzdXBwb3J0IG5ldyB2ZXJzaW9uIGdwaW8KPiAgIGdwaW86IHJvY2tj
aGlwOiBTZXQgaW5wdXQgZGlyZWN0aW9uIHdoZW4gcmVxdWVzdCBpcnEKPiAgIGdwaW86IHJvY2tj
aGlwOiBzdXBwb3J0IEFDUEkKPiAgIGdwaW86IHJvY2tjaGlwOiBkcml2ZXIgd29ya3Mgd2l0aG91
dCBwaW5jdHJsIGRldmljZQo+Cj4gIGRyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMgfCAyOTcg
KysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE4
MSBpbnNlcnRpb25zKCspLCAxMTYgZGVsZXRpb25zKC0pCj4KPiAtLQo+IDIuMzQuMQo+CgpJIHRo
aW5rIHNvbWV0aGluZyB3ZW50IHdyb25nIGhlcmUsIHRoZSBwYXRjaGVzIGFyZSBub3QgbnVtYmVy
ZWQgbGlrZQp0aGV5IHNob3VsZC4KCkJhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
