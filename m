Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AF1AC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 17:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsxCvhSDoB35aoZ3AJyvH5PrV69tgy+aO5+KedZdN/Y=; b=AVhabJQ+HZFXxW
	9wBNJuNGFapGISlV9N13mpjNzP+5UdWJQatR7cqvJedOq+JkxBbzl0YaQd2vMGQZ9m9uVTziP+OFc
	P83GpHhl02Fh+O6hgIvOMCB3DgFJPaHgb8BW/XQUY+DiHnvis9eRNQvqFLxLupwKqbU4gDtKmw9+l
	B1hDlPjRvJDhXDscyEYr+dvEawooqUhUJMAxAbeXYkou6y3RGWG+g6xzTkuDJdbAm59VG8LBgp0ay
	kmj8EajvR/s37PqVkW9K4Y8kKRno+bFO0MoBdVNalgs4JWxDqPQi40W162JOcV56FMaRDc28rBZdx
	TxUkQ3btv7cl1acD/KYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnkpV-00Al3X-62; Sun, 08 May 2022 17:36:25 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnkpJ-00Al16-KP; Sun, 08 May 2022 17:36:15 +0000
Received: by mail-lj1-x22f.google.com with SMTP id s27so14625741ljd.2;
 Sun, 08 May 2022 10:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=mc7TiSQQPMEbeG7ZiGyr90EpIeFsqchzoclKo6O9CMM=;
 b=gUkllS2et5oszpd7JkVRNeiQpsgPZCMyY06ClaMcq2HPeBS55Ms4O6ZxRUvvjJzV7c
 cxur5bB/6PRxSl+VVwtO0IQliO1EMeiy9/OOjVkRzObOf5FgJBG1HZF2mLaT38abXUVv
 mdVB8jDgsKPD2lesVSF32r/JfZZv8Kl5JbaghfvbV1f+pXk0RslhW5CyZ6F9u1dqBSA1
 COFHklgkncn4QH7RvPkwayNxdpXlcnWxV0YHw2kSB/eMqGK9IEb8nhlyPEpyBDDdTt6L
 KvWkz0Td0+G0pZ6dH6j+CaZUJ0mlx2auQf7w+MqHmSulkD7LyfiGtYJK5Pgw3fHi1Jqk
 3wsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=mc7TiSQQPMEbeG7ZiGyr90EpIeFsqchzoclKo6O9CMM=;
 b=bdXhFrqv0br2ubSTwIT8VgLKZDHkfrhfFGPmTmF86hrZHw0U0I6wQoX+8P9vPjOzmJ
 9e7e4mmwQnDWZGeuMcNkUL6f2TyEFKT76mpmubNzyWWQ62EeCO/6cITYyJyqSK5nkSCK
 /dq365JuQNaXYVBGUWogZXbXYjiJak6cyOLLN6Gzr1hwXCAMPplW4lzyhHtTWfKuLokg
 SqwkNmM9QB8vEJsYLk98GaS+LLZ7Zal4Bl8mgooxVSHbaVdH8zJKfuB5PGu9lLyL2J1Y
 epefJu8cKUec3edDhodHi/Cga6NiqE00EtGN5Nc4wvW3yL0yHqt36ko6hDPPjSQwpDH8
 urDg==
X-Gm-Message-State: AOAM5335OGZNpsE/nzJxDL0NmQkfONnCs7C11Q4gO+FIraJdDO29XrUj
 OoxiQbAK187KRZQ2GP9Z97M=
X-Google-Smtp-Source: ABdhPJwLMv2nyA/yngcxESrM+hZXLDw0uuoQfsv9WXtNUoRf8+z/DZ4YNbFrhZR6S+KuhO0sh0XJzQ==
X-Received: by 2002:a2e:b044:0:b0:250:b16e:45df with SMTP id
 d4-20020a2eb044000000b00250b16e45dfmr4916785ljl.180.1652031371805; 
 Sun, 08 May 2022 10:36:11 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 x12-20020a2e584c000000b0024f3d1daed3sm1486496ljd.91.2022.05.08.10.36.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 08 May 2022 10:36:11 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
Date: Sun, 8 May 2022 19:36:09 +0200
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
Message-Id: <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_103613_710386_F4E904CF 
X-CRM114-Status: UNSURE (   9.58  )
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
bC5jb20+IHcgZG5pdSAwOC4wNS4yMDIyLCBvIGdvZHouIDE4OjUzOgo+IAo+PiAKPj4gSSB3YXMg
dHJ5aW5nIHRvIGRvIHRoaXMgaW4gZHRzIGh0dHBzOi8vcGFzdGViaW4uY29tLzY3d3U5UXJIIGJ1
dCBjZWMgaXMgc3RpbGwgbm9uLWZ1bmN0aW9uYWwKPj4gCj4+IE1heWJlIFlvdSBoYXZlIHNvbWUg
aGludHMvcG9pbnRlcnMgaGVyZT8KPiAKPiBBZGQgdGhlIGZvbGxvd2luZyB0byB0aGUgSERNSSBu
b2RlOgo+IGFzc2lnbmVkLWNsb2NrcyA9IDwmY3J1IENMS19IRE1JX0NFQz47Cj4gYXNzaWduZWQt
Y2xvY2stcmF0ZXMgPSA8MzI3Njg+OwoKSSB0aGluayBpIGhhdmUgdGhpcyBhbHJlYWR5IChwbHMg
c2VlIEwyMzEvTDIzMiBpbiBodHRwczovL3Bhc3RlYmluLmNvbS82N3d1OVFySCApCgo+IAo+PiAK
Pj4gYnIKPj4gCj4+IGJ0dzogbXkgZHRzIGdpdmVzIG1lIHdvcmtpbmcgdXNiMiBwb3J0MC9wb3J0
MSBhbmQgdXNiMyBwb3J0MC4gYnV0IHVzYjMgcG9ydDEgaXMgbm9uLXdvcmtpbmcKPj4gbWF5YmUg
eW91IGtub3cgd2hhdCBpcyBtaXNzaW5nPwo+IAo+IFlvdSdyZSBtaXNzaW5nICZ1c2IycGh5MF9v
dGcuCgpNYXliZSBpIG1pc3Mgc29tZXRoaW5nIGJ1dCBhZGRpbmc6IAoKJnVzYjJwaHkwX290ZyB7
CglwaHktc3VwcGx5ID0gPCZ2Y2M1djBfdXNiX2hvc3Q+OwoJc3RhdHVzID0gIm9rYXkiOwp9OwoK
YnJlYWtzIHdvcmtpbmcgdXNiMyBwb3J0MAooc28gbm9uZSBvZiB1c2IzIHBvcnRzIGFyZSB3b3Jr
aW5nKQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
