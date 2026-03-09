Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD94FF417F1
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Mar 2026 14:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sldrthMf5BMrZSiclhrZEWXtY+vH1hOrxzuKsbUznuQ=; b=eb5SNhcCENnSLq
	R3FhYDOgZX2r6dt1UWvXxW7U8rSzndU7WeMBCVQ2zGnJSIQuog/uXs11fQvVggLkF3OclnPEkgGn5
	iuCLs7KU5Y58HiXK+h0ktxvoM8pz2Ee72QTTE5RVhzL/6/AY4AqCmQ+A8sZxqvIZn9bTy7fkdH8zH
	PCvpmd0ZJnVTUPuBThZFgCdMF6DWGqCbmKA9mRHaiMg0DceKzFDffjPQQRfHBI47Zcw+ENGm8OCR6
	9QzJ/zpa9U/ivpG1/PEh0LMRF52jYJEbv0IxDF5aOd6fahRdmob1ubUWooFlqmCeiPAg1R8I+Symm
	s3ghmBx5QO/p8UCMt/3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzc33-00000007XBW-47kq;
	Mon, 09 Mar 2026 14:57:33 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzc31-00000007XAB-0ZZn
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Mar 2026 14:57:32 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-38a45bc61e9so14147741fa.0
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Mar 2026 07:57:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773068248; cv=none;
        d=google.com; s=arc-20240605;
        b=DxYcPjgtE5O5GmuuFhWueRQMzvHTKP/eopQgy3BywbVQ//pUJMz5HLh2ITZsAU5Ata
         tIftK0AhEYNQ72BBnMY26W9z9coFDMibMt5favbPWbIle4qU8esYUq0h4zcCTXSY1aFk
         6Y0a0Wv7Z0ZV6lvL756RfMp6lMChYkkaVSnN3GFLZzey4tsC4HJq5WLYjYnq7L42TwIE
         9Sx4kQLHeM9DKhfUtqM/py69JljkBFqXVX+nrB9FfIz2Whr246Wxfq1ZwHgK1gR1NbjF
         AGJSta2xApJH98cpvluvgSkgsypzxK/2i4cv8o3830kejVrK48VyNYpyaOPxQHbjCrwn
         7qeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=203p8V8fa1O69uWIwahNnr1A5Lm4LwlXFs1SL4Pk5u8=;
        fh=YhLtjq0zSJ4l7X0weALaxowlVXSU6y/LT5hTxUIHKrk=;
        b=T8zrBYjFrko41nXholI/JfNAhXpcpUdqogy77I1vf4nyG9z7V/QSaUUwmWgbr1WLnz
         ns+J3F53rC0z/fEUQ4zwOIU9lIeG6i4dA/J1Q+VwS8tT9BQIFuPmsdMWccKhBXZw1QlG
         yVShn3ah6YYYgSlUgzkiwiRG4zGPdohCnhDmw2WP4CuqeoVXtYIjP4TZq4D/R0rWGC+2
         41bNkAfF12y4wTF3R9hja5HRq/VmjVdv248PAHRqqV82b9eSxVYSNqBxw1lntIhQCtJ2
         2eUyZtttLSFlbGcCxd6wZzG/0TqXq4RlsIrAQmpzE9JEJZl7ushLd8TMtPI5HHrpIzC+
         ptJw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773068248; x=1773673048; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=203p8V8fa1O69uWIwahNnr1A5Lm4LwlXFs1SL4Pk5u8=;
        b=gw+erpeZNBrL1hYlPXo1PUnOucAVuM+TLZLw93KcWP5IupRncxgTlNfwyYgxS2yds2
         +9z5Ur9Vsl/s2D+xuB0pys7Je3pqo7IQ2dbgiYJiuOlLUzLPZYpuNDNXPym2RFCureb+
         4f6JXAp62y8v/rH4t5lqCblOkQ8OCJsxn4ZTsy2LxNZA/FBe1I8q+SH7UK7mGu4T3zVC
         nmxvVQmscQTdOz64OrJDlOVzOZTTDOGwxXuS9OGtIPRjbyEzzv1aFBV/FNkQYd0Heal3
         UPxnEnQEi70RW+kh5q6m082ZlJS2h6Y2e3GX7XJOujhK/YU5lLqkLtxrNPDOIQRldU9m
         0PtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773068248; x=1773673048;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=203p8V8fa1O69uWIwahNnr1A5Lm4LwlXFs1SL4Pk5u8=;
        b=tUb3TUbR/5pFultxxnM7bYfd81IWMgkZ/tiuYkMbc5c9o2M8h6+mKVt7PUZOZKhINV
         QG/MuYiReZ6odmdUdxQjELOU5LvWvdzrmhIvuIptoDZBibNLD6TwHYCazyi6qzrjDJR1
         j2e8YuOIzmsa0DpE+sqRq+4pTIvJxfazwqRObwoRuJdsCtjshcbfGiy2OzI6b/Ch908X
         S+rmVT85oyXt0LzkuuMm8JBPs/c2cmyAe1knESxxc1wWGWKX/Mbg6P4aml/t6SVdMxNU
         xHwcivXasMfk0MsCsz3ntsAPz8x0iJ1VeHmhbYTajHiBKtAUUxGbu1N+1FmTnFIxNTuu
         hD9A==
X-Forwarded-Encrypted: i=1; AJvYcCVNuXKJXntJc74CvcnmR3q8Zjh/3UUEdhwJx3/+X4/9ApOm1qlCFt3BSerAG0/2b3VhUXe8fK8Dg06iIfcioQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyy4uPKAlfZPShnujQaneEfjg+WBycurJiILRJpn2HG7wkT7Jrz
	RMxAR6CcXkiXQqJX53De1LOWEq32Tu33mZEa6AMFXNhyJ9z3dxSzi4zGH4fXRHAOTl7Ly2aLH3a
	1jiB/Ggn30FCO/ErrbASC5wG49mNQL7A=
X-Gm-Gg: ATEYQzxXZEHN+heYFnDcHOmwo5sGi/QZXrNTDXOD/JHd52fNe8WcfpzrpFBxNvM57kw
	BMUD+TbzZR625AMtuNzcWXBTIMkBQ6NfMwN7/kKl3rah8gJBmqGQOoeT/sa/F7hxEtFyORPkmBN
	Bd3B0JHLGfiGOqLuZAs5YhINr1fqNg2uiffJ8aKwJN28kfcOMoOQBqQAnvhAIDQ2tnWhzzQ3SRU
	9yaD4Un4231lHZXJs2PWGDh/86SvVkUftRrRVkwXTBFx4jNJXmIV/0BoFtqhi1ONT4uN3oAD+bL
	hbMp5L0YZkwb3S3VIV/NOHijCVMPLs4rwMeGiXra7TYMUdzs7lRsl8zfKZmsXerkXuQbs89fwLW
	zXHPLdCM=
X-Received: by 2002:a05:651c:2114:b0:38a:2e66:c9f8 with SMTP id
 38308e7fff4ca-38a40da3e0dmr40369381fa.32.1773068248273; Mon, 09 Mar 2026
 07:57:28 -0700 (PDT)
MIME-Version: 1.0
References: <20260216010219.2131484-1-festevam@gmail.com>
In-Reply-To: <20260216010219.2131484-1-festevam@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 9 Mar 2026 11:57:17 -0300
X-Gm-Features: AaiRm53IxFEt-LOkrgzXXjheCaCCVTZVH7guavkF2brnrHw-jNlZBEZtsHWY-9E
Message-ID: <CAOMZO5CNB25j=JoK6C7CGsXFq5Vg2j=nfrbaL163qjeWYa4J5g@mail.gmail.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
To: heiko@sntech.de
Cc: jonas@kwiboo.se, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Fabio Estevam <festevam@nabladev.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_075731_190759_19BD5FA8 
X-CRM114-Status: UNSURE (   8.20  )
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

SGkgSGVpa28sCgpPbiBTdW4sIEZlYiAxNSwgMjAyNiBhdCAxMDowMuKAr1BNIEZhYmlvIEVzdGV2
YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBGYWJpbyBFc3RldmFtIDxm
ZXN0ZXZhbUBuYWJsYWRldi5jb20+Cj4KPiBBZGQgdGhlIFBNVSBHUkYgYW5kIElPQyBjb21wYXRp
YmxlIHN0cmluZ3MgZm9yIHRoZSBSVjExMDNCIFNvQy4KPgo+IFNpZ25lZC1vZmYtYnk6IEZhYmlv
IEVzdGV2YW0gPGZlc3RldmFtQG5hYmxhZGV2LmNvbT4KPiBSZXZpZXdlZC1ieTogS3J6eXN6dG9m
IEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBvc3MucXVhbGNvbW0uY29tPgoKSSdtIHNv
cnJ5IHRvIGJvdGhlciB5b3UsIGJ1dCBjYW4geW91IHBsZWFzZSBsZXQgbWUga25vdyBpZiB5b3Ug
YXJlCmhhcHB5IHdpdGggdGhpcyBzZXJpZXM/CgpUaGFua3MKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
