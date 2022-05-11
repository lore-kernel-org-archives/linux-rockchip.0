Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EECBC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 16:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57/ytZZuUcB+RKDf22M8ewETJSepS6xLSOs2SKRbQWs=; b=dsnncXaN48qkQ5
	V4cVoRUjTOpcEhiMgXULiQph+fr09KTLO1oGOcZLpP9beB4Nhh/k+R63ykCD5NdtH2fNHN0vjfPhC
	F9IDmK9zlCLlixVmBbzBn1vDJ5/2CW5+EmNDPZzsOXJ9OMO3ArUpSebv++TQyDmw2hrhVksl8z9WC
	9QV0W5PsL3TiRnYKh1tHsCR2kL1uCe+NbTIEu1pQ4lJ57loas04S1T9cAVWv/xq3RBnaCIncG+F+j
	TtYfpOX8Q2o0y31otgtnT9ySjMwi7WFwZlHYtS2erQyCckhGKtsT84PLO+vSR75EzX0LLeacJ3ec/
	OPBOusHPgbP9/6w/SqVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nop2D-007kgt-Hx; Wed, 11 May 2022 16:17:57 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nop1p-007kWe-0u; Wed, 11 May 2022 16:17:38 +0000
Received: by mail-lj1-x231.google.com with SMTP id a30so3241307ljq.9;
 Wed, 11 May 2022 09:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=puEukUMjobRiu6VL4L2nI73nB+b0/MudIIsYaS8fpK8=;
 b=J+dK9tuSgD/x1t0dwVrjJfXL5UaO3A7d5vlUYx478jq3ok51XqRUx9H/VrmwRYye+C
 uBL5/cDIQ7QoeCOds2mtpbN4jjbxPExHy3iDVbpjWLWb+05R2XU0SC8XV9HsHW+tnAbc
 P5gaNF4RRm9nmX0FyZI1/uWZ5vMBWTc1xG9+tiCf3XgK8JfryN6cJGvp2KtHKPZOMCWC
 m9zXabiy1Jz0ke1Et97sVtOFYyploht1/HI8JvRtzDqMSYKFm81ss3+2eJ8FMnNKEGz6
 uercJY6mwV2kCN9EKNg3TXU6ORLncUS44t6TcuNfiruW4OkvtUZuKr5LUFakg0+mGQd0
 YiNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=puEukUMjobRiu6VL4L2nI73nB+b0/MudIIsYaS8fpK8=;
 b=dmSX40l0xGdThilNEuerTBY7JZ1TvGkx0bwqy1ke7IOssWUgwTCZ6H2N20D/fTGuIY
 ZP1dksAk/30r1cUjhP71a0XRFPsu64izHbCgGPTd0GSRcBrBa4MNzoF6iVLviOP72C7z
 imLQO47G1MsAPnLqcG8myzPG5iZ2VL6AUfXpfz9+a9PIhlJJgWr29sEVZe9BxXHSNS4H
 iQL96DxdbNd4mz3ZGLfQ2IV0t8enu3/l+RoBei1LUcT0oMS2Q16+Tx0MBqxSEjP6+BXZ
 FAyMN23ZXchQiGw7zu4BxjI1z+sPElhTg6DtNTY5/Ce4AIwKLGlWJwD7U+hSxdk0S5Da
 jw9Q==
X-Gm-Message-State: AOAM532MT+YH335tWoZJ8V3ADcheJUei4wU3yQ8lz4te8+LHzXDXQnpI
 +vDn21VpAoamb1x1y3q0X6VEROinDr0=
X-Google-Smtp-Source: ABdhPJwdsU3w0YALq/Qkp/LIqwDvsMOn4fl+sXvw/dZ3txf5at4nGBDWtKQ44tHcUKawwQUnIFAwQA==
X-Received: by 2002:a2e:9d97:0:b0:250:85c2:1072 with SMTP id
 c23-20020a2e9d97000000b0025085c21072mr17377573ljj.501.1652285846734; 
 Wed, 11 May 2022 09:17:26 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 z26-20020a2eb53a000000b002509c3290efsm409113ljm.105.2022.05.11.09.17.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 May 2022 09:17:26 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYpujdqejDz_K2M0aUhPYNFVgTuqnUwkOA6jcxgDdJ+RoA@mail.gmail.com>
Date: Wed, 11 May 2022 18:17:24 +0200
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 kernel test robot <lkp@intel.com>
Message-Id: <90DDF759-AF9B-40FD-BACA-AD1E76BF4C8E@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <812AC0DB-A6D0-4DA3-BCDC-7743E8F61821@gmail.com>
 <CAMdYzYozewYUbM=Q+iJ2wdM5TrB6dGrjS6zh0qmVgWD4XPVR+Q@mail.gmail.com>
 <ABC61229-B851-4BB7-8B55-688F8A8D841A@gmail.com>
 <CAMdYzYrsaNED+oMj+z2b4fK7pt32Qg=nXDk3SA0KFDDCJ2XY0g@mail.gmail.com>
 <F1728C93-CFF8-4C51-B95C-A5049E0DC46A@gmail.com>
 <CAMdYzYpRVZ2hrGiYeQLqSduOZyKuZenw9bViS7oW7d3MWN7Z8g@mail.gmail.com>
 <CAMdYzYpujdqejDz_K2M0aUhPYNFVgTuqnUwkOA6jcxgDdJ+RoA@mail.gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_091733_104715_D603A72D 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
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
bC5jb20+IHcgZG5pdSAxMS4wNS4yMDIyLCBvIGdvZHouIDAwOjQ5Ogo+IAo+IEkndmUgcHVsbGVk
IHlvdXIgZHRzIGFuZCB3aXRoIGEgZmV3IGZpeGVzIGdvdCBhIHdvcmtpbmcgc3lzdGVtIGZyb20K
PiBpdC4gQXQgbGVhc3Qgb24gdGhlIHYxLjEgYm9hcmQgY2VjIGlzIGZ1bmN0aW9uYWw6Cj4gVG90
YWwgZm9yIGR3aGRtaS1yb2NrY2hpcCBkZXZpY2UgL2Rldi9jZWMwOiAxLCBTdWNjZWVkZWQ6IDEs
IEZhaWxlZDoKPiAwLCBXYXJuaW5nczogMAoKUGV0ZXIsCgpUaHggZm9yIHRoaXMuClRoaXMgaXMg
Z29vZCBuZXdzLgoKSSBzZWUgNCBwb3RlbnRpYWwgcm9vdCBjYXVzZXMgd2h5IGl0IG5vdCB3b3Jr
cyBmb3IgbWU6Cm5vdCBtdXR1YWwtZXhjbHVzaXZlOgoxXG15IERUUyBoYXMgZXJyb3JzIG5lZWRl
ZCBmaXgKMlxteSBrZXJuZWwgY29uZmlnIG5lZWRzIHR3ZWFraW5nIGZvciBjZWMgb24gcmszNTY4
CjNcbXkgcm9jazMgdjEuMzEgaHcgbmVlZHMgc29tZSBleHRyYSBkdCBsb3ZlIChvdmVyIHlvdXJz
IHYxLjEpIHRvIGdldCBjZWMgd29ya2luZwo0XG15IGJvb3Rsb2FkZXIgcGFzc2VzIGh3IHRvIGtl
cm5lbCBpbiBzdGF0ZSB0aGF0IGNlYyBpcyBub24tZnVuY3Rpb25hbCAKICAKTWF5IHlvdSBwbHMg
c2VuZCBtZSB2aWEgUE0gdG8gcGlvdHIub25pc3pjenVrQGdtYWlsLmNvbSB5b3VycyBrZXJuZWwg
Y29uZmlnICYgd29ya2luZyBmb3IgeW91IGR0cz8KSWYgaSBmYWlsIHdpdGggMS8yLzMgdGhlbiBp
J2xsIG5lZWQgZ28gd2l0aCB5b3VycyBib29sb2FkZXIuLi4KCmxldHMgdHJ5IHNlZSBpcyAxLzIv
MyB3aXRoIHlvdXIgZHQgYW5kIC5jb25maWcgcGxlYXNlPwoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
