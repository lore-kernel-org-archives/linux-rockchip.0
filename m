Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A8DCCCA470
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Oct 2025 05:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJ9IzeyDpQGwLWIvSBNrK4UeQGC838B2sjMd0aTAj4Y=; b=y05MqvATCwE6k0
	X2mVPg5YYAMlChcW2ITGKiEzJ3CE6nAcNYGVwlf0tTVb+CO9vtwWQR0v55/RH8yLiNMDSZy6zrg8B
	L/ohlenR3i8BAc3nBzR0PqmUlDDpsYBwJEu/OD2hcUbRRWzcCludf6cGr0i1zq62kY1EvvxnG6u7Y
	c2Pa5x+/dzqGn0+SPgkOFLhrrdZFpwjMVbu1pITNm8UKIHiX3OYkc81JwT6pHI18fBvdGD6zxVd3c
	DXSW1WQoBieXHcFYu8dGh2S7BNvL/baf/ZIztcLhKmeAHOEBB6b5GXoW5ksAjYXXZXX+cMYRuw3uL
	rtJkUS8lXdYU7yR/1SKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6j1C-00000005CXO-2bO4;
	Thu, 09 Oct 2025 05:16:46 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6j1A-00000005CWc-1JN6
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Oct 2025 05:16:45 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-87a0801ba1aso67221085a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Oct 2025 22:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759987003; x=1760591803; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tyqb1CztMqi3UzPCCUo4PJPR7YENee+9JSUveio1sPI=;
        b=AQGJtaQm7W1Ps4XuApeaEvalV1zLZLcpiPDicegiWd4GUHeUHp9P/nioxl6yFyrPMq
         uI0SZOEMTFS9IMG97mkn1v1e/+/4VCrbnH8UHihoHGsYgM5QnheowRzTmYg/ejKAhTZ7
         PpqfBwiOw51d1ktvJHIXFjcti6Q2r07drC3/iPjv0u/XGoiuEl7/2s61F5HEtoedN0qC
         39enPxV+jI/Vyh9Hv7Jj2DhkEPzviLWJozR9QOKTD+CudnkVlWREiCgKY8K8H277ChAV
         LEfdJJMyPzg6rX3YZBKwC4pJn4uoiE56vd3CLrb+MzQht6BmSwXc6K56dBLodVks+6go
         uUcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759987003; x=1760591803;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tyqb1CztMqi3UzPCCUo4PJPR7YENee+9JSUveio1sPI=;
        b=TcCBlN8ws3jD5kJ/tLdnTbwIKusl7zNk4Oqa2/l9TBl3pgJZE6Y/vnQS0hvpX5usrw
         tb1FerLLgH6xsJ4+w7j73yUH6ugUV+s/UNfxLJNBOi+q07sHlgq36RqJXzjEpkSyLjQN
         irIWP4QFXiPX0fEAw+HSyo1ytH1S3LBr98es+mXUB1J2O9okmuRbVbUQyrd3nQbYiCFH
         fIMM5F1zBL7DM8GEa9ojemqtGXNnGuQWItbHEA7DFQQ/njJki+Ug6qeTsyKbzM/Fmeue
         ipFynHARI475puIj4spQDI1baErtc2uMkse0Jri5CpUAPfPdgSU9ISr+iTAwESRtd2hJ
         rBYg==
X-Forwarded-Encrypted: i=1; AJvYcCW7KWQdM47HdG8YejIenisSJ5hqYEGDz6H2RN8orESEi8Qh3l5VwZHJEQKIreVPOATJb59NPTTYClRSdmzr1Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3URcW8tb93pscZgwXyp4Tf8ZVCKRksRVWCji183nrTeaa49lv
	D7tGXmeHm6llMHrZHd+wcHCS/Etga8wbGFtLUSmBCmqlR4XrQqAHtoMcXTC1fAHywC2kymnLynA
	U60hwYmi6J4BxrOGEfMyNRQV6auQBLdw=
X-Gm-Gg: ASbGncs0vRAspZnkXUZ3EDbmGAAX/+wX5+f3D0CyjeGuF822zT+V6j5zQYoi1qLnf3l
	mG/KLo2pM+qki6qCeIfckTmNg0zO7DRLJ8uS9Ry10v+bBa+b+3k+L8rJEA9M0/IdpabB1mYQJLm
	2XgEjrs908K3EcCxC7zWw1kYLJHqUf1q8SxO9TMt4NMKKkY8c1JxpINlOHwBn87uXBugg4HdhdC
	fU8eMMx0Y5GezsNwnmqTxlFmj1yP4TscIIRug8x4aw=
X-Google-Smtp-Source: AGHT+IH7cynlxmysIGXABGaRxHRjaSOMuEx+1JjoUFV9WJpw/MAcUpWK0V9ARSZ1SYD2oraMIpI9j58hrMErsazHIU0=
X-Received: by 2002:a05:6214:2601:b0:80a:7bd3:e61d with SMTP id
 6a1803df08f44-87b2ef6325amr77155716d6.34.1759987002596; Wed, 08 Oct 2025
 22:16:42 -0700 (PDT)
MIME-Version: 1.0
References: <20250929065714.27741-1-jjm2473@gmail.com> <20250929065714.27741-4-jjm2473@gmail.com>
 <d8ad476c-d0c7-4e97-9e76-540a539ffb52@lunn.ch> <CAP_9mL4ofig-X-w9wx1A5D_eVXROo6AVFBSwp4mh=kj7webpPA@mail.gmail.com>
 <7e219aef-88a0-4184-9553-30dcbc8dbd79@lunn.ch> <CAP_9mL6utQjN_2EZ4vs3K8jzcxHxvKWNTNEXZ9fAx4HuA=DNXA@mail.gmail.com>
 <aOVgid5q0_AhPXFB@shell.armlinux.org.uk>
In-Reply-To: <aOVgid5q0_AhPXFB@shell.armlinux.org.uk>
From: jjm2473 <jjm2473@gmail.com>
Date: Thu, 9 Oct 2025 13:16:31 +0800
X-Gm-Features: AS18NWCLtV0rRwWtVTBZ2YLKRiIGf1OTLHzIEDkTF7un8JPPGbserUWPiMMjbPw
Message-ID: <CAP_9mL5UbWH_hn0AHm=OGZ1_X7yY-W-XXxx3hXC7iPNzHH+q+w@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, heiko@sntech.de, quentin.schulz@cherry.de, 
	kever.yang@rock-chips.com, naoki@radxa.com, honyuenkwun@gmail.com, 
	inindev@gmail.com, ivan8215145640@gmail.com, neil.armstrong@linaro.org, 
	mani@kernel.org, dsimic@manjaro.org, pbrobinson@gmail.com, alchark@gmail.com, 
	didi.debian@cknow.org, jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251008_221644_358549_80A751D4 
X-CRM114-Status: GOOD (  13.23  )
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

UnVzc2VsbCBLaW5nIChPcmFjbGUpIDxsaW51eEBhcm1saW51eC5vcmcudWs+IOS6jjIwMjXlubQx
MOaciDjml6XlkajkuIkgMDI6NDjlhpnpgZPvvJoKPgo+IE9uIFdlZCwgT2N0IDA4LCAyMDI1IGF0
IDAxOjI5OjU3QU0gKzA4MDAsIGpqbTI0NzMgd3JvdGU6Cj4gPiA+IFZlbmRvcnMgZ2V0IHRoaW5n
cyB3cm9uZywgaW5jbHVkaW5nIHRoaXMuICdyZ21paScgbWVhbnMgdGhlIFBDQiBhZGRzCj4gPiA+
IHRoZSAybnMgZGVsYXkuIE5lYXJseSBldmVyeSBSb2NrY2hpcCBib2FyZCBmb2xsb3dzIFJvY2tj
aGlwIGJyb2tlbgo+ID4gPiB2ZW5kb3IgcmVjb21tZW5kYXRpb25zLCBhbmQgdGhlbiBpIGNvbWUg
YWxvbmcsIHBvaW50IG91dCBob3cgaXQgaXMKPiA+ID4gd3JvbmcsIGFuZCBhc2sgZm9yIGl0IHRv
IGJlIGZpeGVkLCBiZWZvcmUgYmVpbmcgbWVyZ2VkIHRvIE1haW5saW5lLgo+ID4KPiA+IEkgd2ls
bCB0cnkgYHJnbWlpLWlkYCBhbmQgcmVzY2FuIHt0eHxyeH1fZGVsYXksIGp1c3QgbGlrZQo+ID4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwOTI1MDkyOTIzLjIxODQxODctMy1oZWlr
b0BzbnRlY2guZGUvCj4KPiBUaGUgY3VycmVudCBzaXR1YXRpb24gaXMuLi4KPgo+IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL3IvMjAyNDAzMDQwODQ2MTIuNzExNjc4LTItdWtsZWluZWtAZGViaWFu
Lm9yZwo+Cj4gTm90aWNlIHRoYXQgdGhlIHR4X2RlbGF5IGFuZCByeF9kZWxheSBhcmUgcmVtb3Zl
ZCAtIGJlY2F1c2Ugd2l0aAo+ICJyZ21paS1pZCIgdGhlIHN0bW1hYyBnbHVlIGRyaXZlciBpZ25v
cmVzIHRoZSBkZWxheSB2YWx1ZXMuCj4KPiAtLQo+IFJNSydzIFBhdGNoIHN5c3RlbTogaHR0cHM6
Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVzLwo+IEZUVFAgaXMgaGVyZSEg
ODBNYnBzIGRvd24gMTBNYnBzIHVwLiBEZWNlbnQgY29ubmVjdGl2aXR5IGF0IGxhc3QhCgpJICBj
aGFuZ2UgcGh5LW1vZGUgdG8gInJnbWlpLWlkIiwgYW5kIHJlbW92ZSB7dHh8cnh9X2RlbGF5LCBp
dCB3b3JrcyBmaW5lIQpXaWxsIGFwcGx5IHRoYXQgdG8gdGhlIG5leHQgdmVyc2lvbi4KClRoYW5r
cyEKCiAgTGlhbmdiaW4gTGlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
