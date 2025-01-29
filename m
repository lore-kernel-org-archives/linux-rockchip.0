Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87659C02190
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jan 2025 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2XZDGVdEG+/x2yrIryzPddara7wukBrGi5o/DtrsbUY=; b=Rnlztz9bQRpEJ9
	qbrarWPwNczZmDEDdyX3G6Vs1vg5/fd2wsp9/KE12FT5/CSbkenrsCcEYujjtMJD6W0HoA91BVC0n
	S+hA+ISO0hAw3hSkLgwdjhs8qTGIUOJuWlxQiUieaxUGIx+rpkBRaTTG40rJgdqbbUmFPf2E6F00G
	I+UN/9sZIlw15KmiCLYqTSeVanr/JGxMWfp0MfkZUuGfW5uufVz8h3N/dCo+mFp7KWWncnNgoGcDU
	PauEmceP51cfLi1+R+RdjXXAlW4EDsOmmpA3q3WPtOUTCMfi1rv6qrrJkHEfoFBQTK4h+hQet103T
	z55uxSLiZYkSRtNBBk5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1td9Of-00000007Aqe-3WHX;
	Wed, 29 Jan 2025 14:50:29 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1td9NL-00000007Ac5-0V9k;
	Wed, 29 Jan 2025 14:49:08 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5d3cf094768so12796972a12.0;
        Wed, 29 Jan 2025 06:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738162145; x=1738766945; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wy9Kd1tRNPjJ7fX39Zk0IB/RiCX0HA9i6UGO0pbaFf0=;
        b=ngn0cm1HVxWWVbuFJMA/u168vi2dxVqEyc406dh/mVoRSu/F4rh/DJ+oJoEF40wLAN
         +j0q4K+L3SafkOrt3cSUaI1oZXL2sPoS3QhlopeBYwuRI/ukWO3/cSfuImu4qh/ymw2g
         8CslkJh68RXZJ2uoJrzLVI9rb8ofl5Tqv49s/2F1rjyM6D33EEnSNadeRhcdXNYMR+mD
         qEJzB1mtoyOdTSWBv/65wVrRtLEBg6uZV1/gfprp/+x5cupishkf1voBH8zjWX+QDDEr
         ZhNuJ8gEDaNY4NNiCkBOYr7dtnMUuulOERuG+6xrgl9m6RC4EBdpKyivfBcX5Fyh8VdL
         HS3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738162145; x=1738766945;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wy9Kd1tRNPjJ7fX39Zk0IB/RiCX0HA9i6UGO0pbaFf0=;
        b=UJfQ8wR5C4/G7nYNR6jgNIB5qL83Wao6Bp7zZ4uB6ui2FY8Oqui3RDIjLqdYtQ1PiZ
         ni7SrVPKi/d6jCBtt7uiMDBs0Wt7hyrI4eAlJnQYgF+rwZ8dzqIQz6LZTkzmkTCv/Zb4
         mPHg8HHq+wyxTwngQDFpfJ2flZmRjp17d3Muzqqz6GeV9VHEgLqTiP81O35DfJM5hiDR
         eWqZ6UxoB6vay4opIG6OrKMBmVbvZ4sJAVXeCdI92Cdx/Qz1Nts5kyz0ddQBpshVkf9N
         j+UWGyNIpFzn3b2kCbe6XzycyUZ4VbkrtmbAaDxNLhqmJFlGw4aeCax2XJIW8rqQrmqz
         K+GA==
X-Forwarded-Encrypted: i=1; AJvYcCVcwT7qt+h0FJIqRUhy7XpFYm1Q9OPR63mtX+aKavNP+FSfYhOoVjqAkl3L/YEffUniLJnhN8KhSqy5ziifiRA=@lists.infradead.org, AJvYcCX3SMd2eyOgVjIfH03glOd9D2v/MNWCiXmtM9WMgIlIWOyGQBs89siH+LJJLfg3wN+evBMvP8xLp8jjj7/FHpPC@lists.infradead.org
X-Gm-Message-State: AOJu0YyQT1lbB6yBYa/s2y47OQ6ipzbH4XdSJ3tBh1mfn7MyavDsFxgI
	qfCS38jxswPpIKN7VgZKmF+eGPPi4fYK7FcZEeSLJNBRlaet4xR5
X-Gm-Gg: ASbGnct5j+pnHZFfG6e+O4VtfpCfG8pPo17W2Bm2V7C/ysuJ/4F6uaCQ3o34WpLDfqT
	jml5gidKE+RHCOGcj29K77+Bh151vY0dic5azeBRWoibV++Wl61U+hQgUXaiYFVZVdSTjIuJlUK
	rePiUgd6xvJYDTPvH7lxEI+G4ZfIPrq4hbBgq2AqhY9PJdx7HLV+MTMejGUtvdh3oj2fy9pFv0a
	+8dfWmPbs37xOqEIJ9KhyOgbxQeebar0vjXpHeMWCulgp3lm00i4kqzrD0nY7xnr8swWcm9DPDI
	JcHZcJMJUwWdZsHYGTxW7PGIIU4HXutae33/ivMKXByd9SlloLffFemqbYo5Un8mkdlZzaw7
X-Google-Smtp-Source: AGHT+IH2RX223oR2m9txbeNFTWl5Np8ejjscYRjYqWj/WLr3tsu0nZkXz1s69kvMjRYyH6ERTmSECQ==
X-Received: by 2002:a05:6402:5251:b0:5d9:cde9:29c6 with SMTP id 4fb4d7f45d1cf-5dc5effb151mr3128289a12.27.1738162144793;
        Wed, 29 Jan 2025 06:49:04 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc18628a5dsm9075610a12.26.2025.01.29.06.49.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Jan 2025 06:49:04 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.300.87.4.3\))
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <5969581.LvFx2qVVIh@arisu>
Date: Wed, 29 Jan 2025 15:48:51 +0100
Message-Id: <CE4343FE-94AA-4F84-8C43-8366013AED84@gmail.com>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <20240615015734.1612108-2-detlev.casanova@collabora.com>
 <3333233.eAoTOS8U2s@bagend> <5969581.LvFx2qVVIh@arisu>
To: Detlev Casanova <detlev.casanova@collabora.com>
X-Mailer: Apple Mail (2.3826.300.87.4.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_064907_158532_3CF05650 
X-CRM114-Status: GOOD (  10.91  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IERldGxldiBDYXNhbm92YSA8ZGV0bGV2LmNh
c2Fub3ZhQGNvbGxhYm9yYS5jb20+IHcgZG5pdSAxNSBjemUgMjAyNCwgbyBnb2R6LiAyMTo0NDoK
Pj4gCj4+IAo+PiAKCj4gWWVzLCB0aGUgdmRwdTM0eCBkZWNvZGVyIG9uIHJrMzU2eCBzb2NzIHNo
b3VsZCBiZSBzdXBwb3J0ZWQgYnkgdGhpcyBkcml2ZXIgYnV0IAo+IEkgZG9uJ3QgaGF2ZSBib2Fy
ZHMgdG8gdGVzdCB0aGF0IHVuZm9ydHVuYXRlbHkuCj4gCgpEZXRsZXYsCgpKdXN0IEZZSToKCkkg
ZG9uZSBzb21lIHRlc3RzIG9mIHJrdmRlYzIgb24gNi4xMi4xMSBvbiAzNTg4LCAzNTY4IGFuZCAz
NTY2CgpGb3IgZW5hYmxpbmcgcmt2ZGVjMiBvbiAzNTZ4IGk6Ci1hZGQgMzU2eCBjb21wYXRpYmxl
IGluIHJrdmRlYzIuYwotYWRkIGR0c2kgbm9kZXMgbGlrZSB0aGlzOiBodHRwczovL2dpdGh1Yi5j
b20vd2FycG1lL21pbmlteXRoMi9ibG9iL21hc3Rlci9zY3JpcHQva2VybmVsL2xpbnV4LTYuMTIv
ZmlsZXMvMTA3OC1hcm02NC1kdHNpLXJvY2tjaGlwLXJrMzU2eC1hZGQtcmt2ZGVjMi12aWRlby1k
ZWNvZGVyLW5vZGVzLnBhdGNoCgpXaXRoIHRoaXMgaSBjYW4gc2F5Ogotb24gcmszNTg4IGkgaGF2
ZSBzb21lIGhldmMgNGsgZGVjb2RpbmcgcGVyZmVjdGx5IGJ1dCBzb21lIG90aGVycyBhcmUgZmFp
bGluZwotb24gcmszNTY2LzM1Njggb25seSBzdWJzZXQgb2YgMzU4OOKAmXMgc2FtcGxlcyBpcyBk
ZWNvZGVkIHdlbGwuIChidXQgaXMgd29ya3MgdGhlbiB3b3JrcyBwZXJmZWN0bHkgZmluZSkKLXdo
ZW4gbm90IGZhaWxpbmcgb24gMzU4OCBzYW1wbGUgZmFpbHMgb24gMzU2eCAtIGlzIHNlZSBlcnJv
cnMgbGlrZToKClsgICA5NS42NjY2NjldIGlvdmE6IDB4MDAwMDAwMDBmMmU4MDAwMCBhbHJlYWR5
IG1hcHBlZCB0byAweDAwMDAwMDAwMzczNzgwMDAgY2Fubm90IHJlbWFwIHRvIHBoeXM6IDB4MDAw
MDAwMDAyZjhjMDAwMCBwcm90OiAweDMKWyAgIDk1Ljc0NTA4Ml0gaW92YTogMHgwMDAwMDAwMGYy
ZjQ2MDAwIGFscmVhZHkgbWFwcGVkIHRvIDB4MDAwMDAwMDAzNzJiNjAwMCBjYW5ub3QgcmVtYXAg
dG8gcGh5czogMHgwMDAwMDAwMDNhNDAzMDAwIHByb3Q6IDB4MwpbICAgOTUuODIyMDEyXSBpb3Zh
OiAweDAwMDAwMDAwZjJlZTYwMDAgYWxyZWFkeSBtYXBwZWQgdG8gMHgwMDAwMDAwMDM3MTI2MDAw
IGNhbm5vdCByZW1hcCB0byBwaHlzOiAweDAwMDAwMDAwM2E4MDMwMDAgcHJvdDogMHgzClsgICA5
NS44OTY4MDJdIGlvdmE6IDB4MDAwMDAwMDBmMmVjNjAwMCBhbHJlYWR5IG1hcHBlZCB0byAweDAw
MDAwMDAwMjlmZTYwMDAgY2Fubm90IHJlbWFwIHRvIHBoeXM6IDB4MDAwMDAwMDAzYTQwMzAwMCBw
cm90OiAweDMKIHR1cm5pbmctb2ZmIGlvbW11IG1ha2VzIGFib3ZlIGVycm9ycyBkaXNhcHBlYXIg
LSBidXQgc2FtcGxlIHN0aWxsIGZhaWxzLgoKSWYgYW55Ym9keSBoaW50cyBtZSBmb3Igd2F5L3Rv
b2wgdG8gYW5hbHlzZSBvZiBwbGF5aW5nL2ZhaWxpbmcgc2FtcGxlcyB0byBjYXRjaDogd2hhdCBl
bmNvZGluZyBzcGVjaWZpY3MgbWFrZXMgZ2l2ZW4gc2FtcGxlIGZhaWxpbmcgdG8gZGVjb2RlICBv
biBya3ZkZWMyIC0gaSdsbCBiZSBtb3JlIHRoYXQgaGFwcHkgdG8gcHJvdmlkZSBkZXRhaWxz4oCm
ICAgICAKKGRvaW5nIHNpbXBsZSBtZWRpYWluZm8gPGZpbGU+IHNob3dzIG5vIGRpZmZlcmVuY2Vz
IGZvciBtZeKApikKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
