Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF1C8C27C6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 20:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hfryrB7vffjccfhcOYDka/KZFHdEPZDzZbzjEXKKzQU=; b=N0P7ha0xy8mHc4
	UNclRyyi6JLciUvxnYHiJOK3XIQOD2P+BtfFiydL+14zYTCe6slx+l+fENK0O5UxgOyzVXhurSta6
	dsDaEGGvde4zMO42qkQAXW1jnbvGXQNe3QpT2kcFmogc/eDOE0ysp6AFxKjVoHtJ2+hvwWf6hh3Bb
	VczPVZ78EJY4JeopZqWhZIB4+/luiAU6LpJuDHBro9VT8reZivqYKlxxk+C+uXEa05XD3f02u22nX
	SBA7tpPuln912wT6BtA+bUI7eyHnAXYxalSgHvOuQXe/iZlLt39WNrbD0gPJlJrsnbtcX94AMKL+O
	uISJcuLDtvj/tc+XbTPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIDYs-00000003zrh-0Lrl;
	Fri, 14 Jun 2024 20:30:14 +0000
Received: from mail-oo1-xc32.google.com ([2607:f8b0:4864:20::c32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIDYo-00000003zqV-0ZF0
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jun 2024 20:30:11 +0000
Received: by mail-oo1-xc32.google.com with SMTP id 006d021491bc7-5bacd59e562so1269548eaf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2024 13:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1718397007; x=1719001807; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xJhJt3J2nxJAuqKZHd0QwEciJsDRhZULynwju7SQhhA=;
        b=vv9XoinbAdgbZCP7GpT7cuCiIx6yR/dqluy+YELK2692p/FGePuUcPVYZSik/r1LGc
         Snx/vPaQjCr2rKXnGesQm2rGX/neRABtSPpL+hzA+CKFx+mzWtYCWlh21qX3BFI2cKD6
         lJ2MZyjIKXVxn0fYox6ckAm+S4noeshyo0A87OlL0Q2PPHp4VyClWAQf6N8jhno1HJ0D
         k104Uah/ZD6v795A9NFYKwccRR97epVMK2idOPQ+YM8QXALRbWA16ARbKpsSkCQv2LjM
         7OEi974U3CKgdyCTDJrTUEFSBDZee1XpKLTNo62rHP0UhZ0FXBnGyVNf2eqiTO9WY/1R
         2wow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718397007; x=1719001807;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xJhJt3J2nxJAuqKZHd0QwEciJsDRhZULynwju7SQhhA=;
        b=LpqSi73ntZ2Kxufov77ExT9zPYG8qusto1tyJfK7bo7BBEC48RE98XPZtXaQyTFMje
         sYw5qxAcLfz3LkArNyqI7KRqvXPi/xg9IvMxd/LyuKaek9hYte6PjMLViCBOmmZmNgOv
         h40SElV6fv88e/V3O8+ZiVNtjfx/V7BzjajrdSTDja9xZljjvUZ4suiQTSibn3Xxru89
         JXLB0kzWKAxIKIoIzbtg8gVCTDS0JTeIKglCKj1M8erz58ZLK+pQd0ovgweCdZmAN35D
         i74LAxSyHCCkGWfASmq0FjVRbZnmrp0dKQv3PJHz//MQemzAs21pnXYfA3LH9ihtqKem
         Af4w==
X-Forwarded-Encrypted: i=1; AJvYcCWLyMK6W4qEkhgNIlQeyh10XpmwzPZ7hHdJpDpSTx3AeqlLj6wUb/JjgnFT5x8O24HLSUd7QpmNCs/rEFcTFLBY2kh+2bT0anVbbOYnF719v42v
X-Gm-Message-State: AOJu0Yw3jVfKVZZLlA+NSJcAfJCs8CLO8riqKe1QrdTkqelHIyFXFRtH
	BtpOqk+nT8ZkK2PKn6djdDuOY4T37JRHOihmGAYOv7J09E+S2UAP+WZWm8Jw5dg=
X-Google-Smtp-Source: AGHT+IF4C0ydFkr3IsNAr6Blq5SSboC1En/cdpILPHYan7A2ZMTQYSAcMnFNnwq4qkuN3PHcllTO7w==
X-Received: by 2002:a05:6358:9103:b0:19f:5317:49a1 with SMTP id e5c5f4694b2df-19fb51658f7mr465229255d.28.1718397007051;
        Fri, 14 Jun 2024 13:30:07 -0700 (PDT)
Received: from nicolas-tpx395.mtl.collabora.ca (mtl.collabora.ca. [66.171.169.34])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5efc23asm22245446d6.126.2024.06.14.13.30.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 13:30:06 -0700 (PDT)
Message-ID: <0faecb255d7e1e67153321d9009f9fc8c0810cd7.camel@ndufresne.ca>
Subject: Re: [PATCH 6/9] accel/rocket: Add a new driver for Rockchip's NPU
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jeffrey Hugo <quic_jhugo@quicinc.com>, Tomeu Vizoso
 <tomeu@tomeuvizoso.net>,  Joerg Roedel <joro@8bytes.org>, Will Deacon
 <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>, Oded Gabbay
 <ogabbay@kernel.org>, Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>, David
 Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>,  Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp
 Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Fri, 14 Jun 2024 16:30:04 -0400
In-Reply-To: <8f93c724-3c86-c0f4-3a84-8a72817e684c@quicinc.com>
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
	 <20240612-6-10-rocket-v1-6-060e48eea250@tomeuvizoso.net>
	 <8f93c724-3c86-c0f4-3a84-8a72817e684c@quicinc.com>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_133010_412209_746BF56C 
X-CRM114-Status: UNSURE (   6.63  )
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

SGksCgpMZSB2ZW5kcmVkaSAxNCBqdWluIDIwMjQgw6AgMTA6MTYgLTA2MDAsIEplZmZyZXkgSHVn
byBhIMOpY3JpdMKgOgo+ID4gKwl2ZXJzaW9uID0gcm9ja2V0X3JlYWQoY29yZSwgUkVHX1BDX1ZF
UlNJT04pICsgKHJvY2tldF9yZWFkKGNvcmUsIFJFR19QQ19WRVJTSU9OX05VTSkgJiAweGZmZmYp
Owo+ID4gKwlkZXZfaW5mbyhyZGV2LT5kZXYsICJSb2NrY2hpcCBOUFUgY29yZSAlZCB2ZXJzaW9u
OiAlZFxuIiwgY29yZS0+aW5kZXgsIHZlcnNpb24pOwo+IAo+IEEgcHJvcGVybHkgd29ya2luZyBk
cml2ZXIgc2hvdWxkIGJlIHNpbGVudCBieSBkZWZhdWx0LgoKVGhpcyBpcyBub3QgdW5pdmVyc2Fs
bHkgYWNjZXB0ZWQgc3RhdGVtZW50LiBNb3N0IGRyaXZlcnMgZG8gaGF2ZSBhIG9uZSBsaW5lCiJw
cm9iZWQvZGV0ZWN0ZWQiIGtpbmQgb2YgcmVwb3J0LgoKTmljb2xhcwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
