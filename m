Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99EBAC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 May 2022 13:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SKQaVXO0Mk0O96LfTybbIBfOm2DGsgvdYR8s2wCMhsE=; b=hle0Fwh/AIvjvS
	LV8smSodP4+RGFc/XVvPfeRjTsug8m9nh+MRCNEgyT4I0gyMAM6Aqc/9TKpYzV2ZWMtkDpDd4eY75
	xdDGn07lK6YFpPsZShOC2A/MotNwdrWZIsWTSMehGPrGwy+oE+FLVi0mi2hsxR309cMff50lxMLxT
	UpfRB1HTnzf/sLriols/y3lQl+EK/s+R77hvLAOgDwGiTRG8Pz4ML8WZ6dWA2yyfEyH8RX6CjbujM
	qFlihuxHpEMUchU5OwtfnJQtR21B2uV23NpRoi0I5oZz3k8gqbXjEOFVsliWGZ7U6ur2sWGxYo783
	r5DMn51p1KGCpKeSANmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npsID-001Z7B-Co; Sat, 14 May 2022 13:58:49 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npsI2-001Z4f-1l; Sat, 14 May 2022 13:58:39 +0000
Received: by mail-lf1-x135.google.com with SMTP id bu29so18995984lfb.0;
 Sat, 14 May 2022 06:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=WFXcfLyV82TN1IHaZmk8t/+knPV2lzNY8wGFyy7H1XU=;
 b=Dy8KXqN/xkldZpue0XYKALuvc2JxE/lAHRiJb67GQ/97IgXVeS+pBcFtFl9UU2Oufa
 dzfW4iUn4ZT9X/PNPUnIKtkqBVjXzelZxGZwG38zD219RAR5Ht1dZQoxks+m22GmAt5H
 +p50Yr6mfnbJphf0/Gi0XPWWTfdAEOM+XoyYpx+UhdOANVa7AqR3uvR9sBtku/mMz16v
 nGgcCu/eGBRqSc4ivvEsHGYJ0nkh+G8utlyKE92sJLETlCNIAyMxz5JDQfUr+DJhkHUY
 9SDqSRTRUUUsmIvIPx6CIubA600LDqf7yXHYzFU3ST8YsnWPeQD623unpbVVnrIOKrG4
 o/Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=WFXcfLyV82TN1IHaZmk8t/+knPV2lzNY8wGFyy7H1XU=;
 b=P2+ojhgMiyyre+ySaW34lpiEdIwS1TaeAcf0gfSOqXbX68MQUEETWVqdxaDfGonuVB
 xHd9I5AgaVpll1+MtsOR23FV/P6rvx0UTfkPNJbi2pDl4gD9Eh9fwCvvFHtfaB7nXe1w
 hg0+syFdyDOoE7BWcnQrTRWJH839IyK9PNvon7omNhUP9vfpW1iJlUpoGAXm/176biT8
 4eKvAUYlZwpR3MjTh6gW+K/rTUFE1wQiLapKehu38ah0vip/9Yhh20l9Yzrc7tGanfwx
 xBlTMjraizCaChhDIumpiK/HU6OZJWg2X/uIKSnA9TlGg3pcUAJYYBg62Yhl8pDQlA3N
 K5CA==
X-Gm-Message-State: AOAM532lV/gt3aQzpzVDO2MODtQCDQtFQCzVqs+rM+Laif5EBCFE7Oti
 sgTp6/CBq7oHG0/BpCiYqRL/6xPUqy4=
X-Google-Smtp-Source: ABdhPJxOBSnngxlxkFS9HgODgvy8FFmIRWFKtGDuWxolf96hSsSZHXsgBM1SM0qhLe6rv0jxdjDiOQ==
X-Received: by 2002:ac2:43a1:0:b0:472:1de:bbdc with SMTP id
 t1-20020ac243a1000000b0047201debbdcmr6768984lfl.48.1652536714934; 
 Sat, 14 May 2022 06:58:34 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 z13-20020ac24f8d000000b0047255d21134sm719016lfs.99.2022.05.14.06.58.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 May 2022 06:58:34 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
Date: Sat, 14 May 2022 15:58:30 +0200
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
 dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 kernel test robot <lkp@intel.com>
Message-Id: <9567EECF-A154-4FE1-A03C-5ED080409030@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
To: Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_065838_134773_AABD1B46 
X-CRM114-Status: GOOD (  11.36  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFp
bC5jb20+IHcgZG5pdSAwOS4wNS4yMDIyLCBvIGdvZHouIDE4OjAwOgo+IAo+IElmIHlvdSB3YW50
IHRvIGNvbmZpcm0gdGhlIGhhcmR3YXJlIGlzIGNvbmZpZ3VyZWQgY29ycmVjdGx5IHlvdSBjYW4K
PiByZW1vdmUgdGhlIGNlYyBwaW4gZnJvbSB0aGUgaGRtaSBub2RlIGFuZCBzZXQgdXAgYSBjZWMt
Z3BpbyBub2RlLgo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjE4LXJjNS9z
b3VyY2UvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL2NlYy1ncGlvLnR4
dAoKUGV0ZXIsIFNhc2NoYQoKSSBjb25maWd1cmVkIGNlYy1ncGlvIGFuZCBjYW4gY29uZmlybTog
d2l0aCBncGlvIGNlYyB3b3JrcyBvbiBteSByb2NrMy1hIGJvYXJkIHYxLjMxLgoKU28gc3VtbWFy
aXNpbmcgbXkgdGVzdHM6CgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cm9jazMtYSB2MS4xICAgcm9jazMtYSB2MS4zMSAgIHJvY2szLWIKCnJhZHhhIGRlYmlhbjogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgb2sgICAgICAgICAgICAgb2sgICAgICAgICAgICAg
ICAgb2sKCm90aGVyIHBwbCBtYWlubGluZSA1LjE4OiAgICAgICAgICAgICAgIG9rICAgICAgICAg
ICAgIG4vdCAgICAgICAgICAgICAgICBuL3QKCm1lIHdpdGggbWFpbmxpbmUgNS4xODogICAgICAg
ICAgICAgICAgIG4vdCAgICAgICAgICAgIG5vayAgICAgICAgICAgICAgb2sKCm1lIHdpdGggbWFp
bmxpbmUgNS4xOCBncGlvLWNlYzogIG4vdCAgICAgICAgICAgICBvayAgICAgICAgICAgICAgICBu
L3QKCk5vbi13b3JraW5nIGNvbWJpbmF0aW9uIGlzOiByb2NrMy1hIHYxLjMxIGh3IG9uIG1haW5s
aW5lIDUuMTguIApGb3IgbWUgaXQgbG9va3MgbGlrZSB0aGVyZSBpcyBidWcgaW4gY2FzZSB3aGVu
IHJrMzU2OCB1c2luZyBjZWMgb24gaGRtaXR4bTFfY2VjIGxpbmUuCihUaGUgc2FtZSBiaW5hcmll
cyB3b3JraW5nIG9rIG9uIG15IHJvY2szLWIgd2hlcmUgY2VjIGlzIG9uIGhkbWl0eG0wX2NlYyBs
aW5lLiBJdCBhbHNvIHdvcmtzIG9uIFBldGVyJ3Mgcm9jazNhIHYxLjEgLSB3aGljaCBhbHNvIHVz
ZXMgaGRtaXR4bTBfY2VjIGxpbmUpLgoKSXQgbG9va3MgbGlrZSB1cHBlciBjZWMgZHJpdmVyIGNh
biB0YWxrIHRvIGxvd2VyIGRyaXZlciAoZHctaGRtaT8pIGJ1dCBub3RoaW5nIGlzIHJlY2VpdmVk
IGZyb20gbG93ZXIgZHJpdmVyLCBhcyBteSBhcHAgc2F5czoKQ0VDQWRhcHRlcjogQ0VDIGRldmlj
ZSBjYW4ndCBwb2xsIFRWOiBUViBkb2VzIG5vdCByZXNwb25kIHRvIENFQyBwb2xscwoKYnR3OiBJ
IHZlcmlmaWVkIHdpdGggb3NjaWxsb3Njb3BlIGNvbm5lY3RlZCB0byBoZG1pdHhtMV9jZWMgbGlu
ZTogc3RhcnRpbmcgY2VjLWNvbXBsaWFuY2UgLXYgLVQgc2hvd3MgZXhwZWN0ZWQgc2VyaWVzIG9m
IDBWIHB1bHNlcyBvbiBoZG1pdHhtMV9jZWMgbGluZS4uLi4KCiAgICAKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
